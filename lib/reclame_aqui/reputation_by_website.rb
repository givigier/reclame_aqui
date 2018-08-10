# frozen_string_literal: true

require 'json'
require_relative 'invalid_website_exception'

module ReclameAqui
  class ReputationByWebsite
    def initialize(website)
      @website = website
    end

    def reputation
      begin
        response = do_request
        format_response JSON.parse(response.body)
      rescue
        raise ReclameAqui::InvalidWebsiteException
      end
    end

    private

    def do_request
      uri = URI.parse 'http://app02.reclameaqui.com.br/reputacao'
      http = Net::HTTP.new uri.host, uri.port
      http.post uri.path, "url=#{@website}", {}
    end

    def format_response data
      reputation = data['reputacao']
      status = reputation['status'] || []
      {
        id: reputation['empresa_id'].to_i,
        name: reputation['nome_empresa'],
        period: reputation['periodo'].to_i,
        status: status['status_id'].to_i,
        complaints: reputation['reclamacoes'].to_i,
        answered: reputation['respondidas'].to_i,
        not_answered: reputation['nao_respondidas'].to_i,
        measured: reputation['avaliadas'].to_i,
        solution_index: reputation['indice_solucao'].to_i,
        would_return: reputation['voltaria_fazer_negocio'].to_i,
        grade: reputation['nota_consumidor'].to_i,
        time_to_response: reputation['tempo_resposta'],
        chat: reputation['chat'].to_i,
        fone: reputation['fone'].to_i,
        show_selo: reputation['show_selo'].to_i
      }
    end
  end
end
