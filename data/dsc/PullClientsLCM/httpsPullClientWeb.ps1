# https://stackoverflow.com/questions/41262835/powershell-dsc-client-cant-register-with-pull-server
# https://www.jfe.cloud/
# https://www.jfe.cloud/be-aware-of-dsc-pull-server-compatibility-issues-with-wmf-5-0-and-5-1/
# https://blogs.technet.microsoft.com/cmpfekevin/2016/09/18/schannel-ssl-and-tls-registry-keys-reporting/
[DscLocalConfigurationManager()]
Configuration httpsPullClientWeb
{
<<<<<<< HEAD
    Node 'cltweb1001.dev.adatum.com'
=======
    Node '<>'
>>>>>>> master
    {
        Settings
        {
            ConfigurationID = ''
            RefreshMode =  'Pull'
            ActionAfterReboot = 'ContinueConfiguration'
            AllowModuleOverwrite = $true
            RebootNodeIfNeeded = $true 
<<<<<<< HEAD
            # CertificateID = '37D4A4FF049E2E5CC24D7C4170F1F92306739AA1'
=======
            # CertificateID = '<>'
>>>>>>> master
        } # end settings

        ConfigurationRepositoryWeb httpsPullSvcConfig 
        {
<<<<<<< HEAD
            ServerURL = "https://cltdev1001.dev.adatum.com:8080/PSDSCPullServer.svc"
            RegistrationKey = "2a5de1da-82c6-491f-80ec-7a64829a965a"
=======
            ServerURL = "<>"
            RegistrationKey = "<>"
>>>>>>> master
            ConfigurationNames = @('SetCilentTLSProtocolValues')
            # AllowUnsecureConnection = $false
        } # end resource
        ResourceRepositoryWeb httpsPullSvcResource
        {
<<<<<<< HEAD
            ServerURL = "https://cltdev1001.dev.adatum.com:8080/PSDSCPullServer.svc"
            RegistrationKey = "2a5de1da-82c6-491f-80ec-7a64829a965a"
=======
            ServerURL = "<>"
            RegistrationKey = "<>"
>>>>>>> master
        } # end resource
    } # end node
} # end configuration

# $clients = @('cltweb1001.dev.adatum.com','cltweb1002.dev.adatum.com')
<<<<<<< HEAD
$webMofPath = "F:\data\OneDrive\02.00.00.GENERAL\repos\git\0026-azure-automation-plus-dsc-lab\data\dsc\PullClientsLCM\mof"
$ConfigDataPath = "F:\data\OneDrive\02.00.00.GENERAL\repos\git\0026-azure-automation-plus-dsc-lab\data\dsc\PullClientsLCM\httpsPullClientWebData.psd1"
=======
$webMofPath = "<...\mof>"
$ConfigDataPath = "<...\*.psd1>"
>>>>>>> master
# httpsPullClientWeb  -OutputPath $webMofPath -ConfigurationData $ConfigDataPath -Verbose
httpsPullClientWeb  -OutputPath $webMofPath -Verbose
Set-DscLocalConfigurationManager -Path $webMofPath -Force -Verbose