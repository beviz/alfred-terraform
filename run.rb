query = ARGV[0]

TF_ROOT_URL = 'https://registry.terraform.io'
TF_PROVIDER_URL = "#{TF_ROOT_URL}/providers/%<source>s/%<provider>s/latest/docs"
TF_RESOURCE_URL = "#{TF_PROVIDER_URL}/resources/%<resource>s"

OFFICIAL_PROVIDERS = %w{
  aws null template random azurerm google kubernetes local external archive vault google-beta tls helm azuread time http consul dns vsphere cloudinit tfe kubernetes-alpha nomad hcp googleworkspace azurestack ad awscc opc boundary oraclepaas hcs terraform salesforce hashicups
}

unless query.gsub('-', '_') =~ /([^_]+)(_(.+))?/
  puts 'unknown query'
  exit 1
end

provider = $1
resource = $3
source = OFFICIAL_PROVIDERS.include?(provider) ? 'hashicorp' : 'integrations'

url = if resource.nil?
  TF_PROVIDER_URL % { source: source, provider: provider }
else
  TF_RESOURCE_URL % { source: source, provider: provider, resource: resource }
end

`open #{url}`
