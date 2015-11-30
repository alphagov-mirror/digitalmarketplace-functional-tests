@not-production @functional-test @ssp-gcloud
Feature: Submitting a new service for IaaS
  In order to submit my services as a supplier user
  I want to answer questions about my service

  Background: Log in as a supplier
    Given I am on the 'Supplier' login page
    When I login as a 'Supplier' user
    Then I should be on the supplier home page

  Scenario: Select lot
    Given I am at '/suppliers'
    When I click 'Continue your G-Cloud 7 application'
    And I click 'Add, edit and delete services'

    When I click 'Infrastructure as a Service (IaaS)'
    And I click 'Add a service'
    Then I am taken to the 'Service name' page

  Scenario: Provide a service name
    Given I am on the service name page for 'iaas'
    When I fill in 'serviceName' with 'My IaaS'
    And I click 'Save and continue'
    Then I should be on the 'My IaaS' page

  Scenario: Edit a service name
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Service name' page
    When I fill in 'serviceName' with 'My IaaS service'
    And I click 'Save and continue'
    Then I should be on the 'Service description' page

  Scenario: Provide a service description
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Service description' page
    And I fill in 'serviceSummary' with:
      """
      My IaaS service that does stuff with stuff.
      """
    And I click 'Save and continue'
    Then I should be on the 'Service type' page

  Scenario: Select a service type
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Service type' page
    And I check 'Compute' for 'serviceTypes'
    And I click 'Save and continue'
    Then I should be on the 'Features and benefits' page

  Scenario: Features and benefits
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Features and benefits' page
    And I fill in 'input-serviceFeatures-1' with 'Super greatness'
    And I fill in 'input-serviceBenefits-1' with 'Great superness'
    And I click 'Save and continue'
    Then I should be on the 'Pricing' page

  Scenario: Pricing
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Pricing' page
    And I fill in 'input-priceString-MinPrice' with '100'
    And I fill in 'input-priceString-MaxPrice' with '1000'
    And I select 'Unit' from 'input-priceString-Unit'
    And I select 'Second' from 'input-priceString-Interval'
    And I choose 'Yes' for 'vatIncluded'
    And I choose 'No' for 'educationPricing'
    And I choose 'Yes' for 'trialOption'
    And I choose 'No' for 'freeOption'
    And I click 'Save and continue'
    Then I should be on the 'Terms and conditions' page

  Scenario: Terms and conditions
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Terms and conditions' page
    And I choose 'No' for 'terminationCost'
    And I choose 'Month' for 'minimumContractPeriod'
    And I click 'Save and continue'
    Then I should be on the 'Support' page

  Scenario: Support
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Support' page
    And I check 'Service desk' for 'supportTypes'
    And I choose 'Yes' for 'supportForThirdParties'
    And I fill in 'supportAvailability' with '24/7'
    And I fill in 'supportResponseTime' with '1 hour'
    And I choose 'No' for 'incidentEscalation'
    And I click 'Save and continue'
    Then I should be on the 'Open standards' page

  Scenario: Open standards
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Open standards' page
    And I choose 'Yes' for 'openStandardsSupported'
    And I click 'Save and continue'
    Then I should be on the 'Onboarding and offboarding' page

  Scenario: Onboarding and offboarding
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Onboarding and offboarding' page
    And I choose 'No' for 'serviceOnboarding'
    And I choose 'Yes' for 'serviceOffboarding'
    And I click 'Save and continue'
    Then I should be on the 'Analytics' page

  Scenario: Analytics
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Analytics' page
    And I choose 'No' for 'analyticsAvailable'
    And I click 'Save and continue'
    Then I should be on the 'Cloud features' page

  Scenario: Cloud features
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Cloud features' page
    And I choose 'Yes' for 'elasticCloud'
    And I choose 'No' for 'guaranteedResources'
    And I choose 'No' for 'persistentStorage'
    And I click 'Save and continue'
    Then I should be on the 'Provisioning' page

  Scenario: Provisioning
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Provisioning' page
    And I choose 'Yes' for 'selfServiceProvisioning'
    And I fill in 'provisioningTime' with '5 hours'
    And I fill in 'deprovisioningTime' with '6 hours'
    And I click 'Save and continue'
    Then I should be on the 'Open source' page

  Scenario: Open source
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Open source' page
    And I choose 'Yes' for 'openSource'
    And I click 'Save and continue'
    Then I should be on the 'API access' page

  Scenario: API access
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'API access' page
    And I choose 'Yes' for 'apiAccess'
    And I fill in 'apiType' with 'JSON'
    And I click 'Save and continue'
    Then I should be on the 'Networks and connectivity' page

  Scenario: Networks and connectivity
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Networks and connectivity' page
    And I check 'Internet' for 'networksConnected'
    And I click 'Save and continue'
    Then I should be on the 'Access' page

  Scenario: Access
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Access' page
    And I check 'Opera' for 'supportedBrowsers'
    And I choose 'Yes' for 'offlineWorking'
    And I check 'PC' for 'supportedDevices'
    And I click 'Save and continue'
    Then I should be on the 'Certifications' page

  Scenario: Certifications
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Certifications' page
    And I fill in 'input-vendorCertifications-1' with 'Stuff magic'
    And I click 'Save and continue'
    Then I should be on the 'Data storage' page

  Scenario: Data storage
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Data storage' page
    And I choose 'No' for 'datacentresEUCode'
    And I choose 'Yes' for 'datacentresSpecifyLocation'
    And I choose 'Uptime Institute Tier 1' for 'datacentreTier'
    And I choose 'Yes' for 'dataBackupRecovery'
    And I choose 'Yes' for 'dataExtractionRemoval'
    And I click 'Save and continue'
    Then I should be on the 'Data-in-transit protection' page

  Scenario: Data-in-transit protection
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Data-in-transit protection' page
    And I check 'input-dataProtectionBetweenUserAndService-1' for 'dataProtectionBetweenUserAndService'
    And I choose 'independent validation of assertion' for 'dataProtectionBetweenUserAndService--assurance'
    And I check 'input-dataProtectionWithinService-3' for 'dataProtectionWithinService'
    And I choose 'independent validation of assertion' for 'dataProtectionWithinService--assurance'
    And I check 'input-dataProtectionBetweenServices-1' for 'dataProtectionBetweenServices'
    And I choose 'CESG-assured components' for 'dataProtectionBetweenServices--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Asset protection and resilience' page

  Scenario: Asset protection and resilience
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Asset protection and resilience' page
    And I check 'input-datacentreLocations-1' for 'datacentreLocations'
    And I choose 'service provider assertion' for 'datacentreLocations--assurance'
    And I check 'input-dataManagementLocations-1' for 'dataManagementLocations'
    And I choose 'service provider assertion' for 'dataManagementLocations--assurance'
    And I choose 'UK' for 'legalJurisdiction'
    And I choose 'service provider assertion' for 'legalJurisdiction--assurance'
    And I choose 'Yes' for 'datacentreProtectionDisclosure'
    And I choose 'service provider assertion' for 'datacentreProtectionDisclosure--assurance'
    And I check 'input-dataAtRestProtections-1' for 'dataAtRestProtections'
    And I choose 'service provider assertion' for 'dataAtRestProtections--assurance'
    And I choose 'CESG or CPNI-approved erasure process' for 'dataSecureDeletion'
    And I choose 'service provider assertion' for 'dataSecureDeletion--assurance'
    And I choose 'CESG-assured destruction service (CAS(T))' for 'dataStorageMediaDisposal'
    And I choose 'service provider assertion' for 'dataStorageMediaDisposal--assurance'
    And I choose 'Yes' for 'dataSecureEquipmentDisposal'
    And I choose 'service provider assertion' for 'dataSecureEquipmentDisposal--assurance'
    And I choose 'No' for 'dataRedundantEquipmentAccountsRevoked'
    And I choose 'service provider assertion' for 'dataRedundantEquipmentAccountsRevoked--assurance'
    And I fill in 'serviceAvailabilityPercentage' with '99.99'
    And I choose 'service provider assertion' for 'serviceAvailabilityPercentage--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Separation between consumers' page

  Scenario: Separation between consumers
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Separation between consumers' page
    And I choose 'Public cloud' for 'cloudDeploymentModel'
    And I choose 'service provider assertion' for 'cloudDeploymentModel--assurance'
    And I choose 'No other consumer' for 'otherConsumers'
    And I choose 'service provider assertion' for 'otherConsumers--assurance'
    And I choose 'Yes' for 'servicesSeparation'
    And I choose 'service provider assertion' for 'servicesSeparation--assurance'
    And I choose 'Yes' for 'servicesManagementSeparation'
    And I choose 'service provider assertion' for 'servicesManagementSeparation--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Governance' page

  Scenario: Governance
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Governance' page
    And I choose 'Yes' for 'governanceFramework'
    And I choose 'service provider assertion' for 'governanceFramework--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Configuration and change management' page

  Scenario: Configuration and change management
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Configuration and change management' page
    And I choose 'Yes' for 'configurationTracking'
    And I choose 'service provider assertion' for 'configurationTracking--assurance'
    And I choose 'Yes' for 'changeImpactAssessment'
    And I choose 'service provider assertion' for 'changeImpactAssessment--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Vulnerability management' page

  Scenario: Vulnerability management
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Vulnerability management' page
    And I choose 'Yes' for 'vulnerabilityAssessment'
    And I choose 'service provider assertion' for 'vulnerabilityAssessment--assurance'
    And I choose 'Yes' for 'vulnerabilityMonitoring'
    And I choose 'service provider assertion' for 'vulnerabilityMonitoring--assurance'
    And I choose 'No' for 'vulnerabilityMitigationPrioritisation'
    And I choose 'service provider assertion' for 'vulnerabilityMitigationPrioritisation--assurance'
    And I choose 'Yes' for 'vulnerabilityTracking'
    And I choose 'service provider assertion' for 'vulnerabilityTracking--assurance'
    And I choose 'Yes' for 'vulnerabilityTimescales'
    And I choose 'service provider assertion' for 'vulnerabilityTimescales--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Event monitoring' page

  Scenario: Event monitoring
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Event monitoring' page
    And I choose 'Yes' for 'eventMonitoring'
    And I choose 'service provider assertion' for 'eventMonitoring--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Incident management' page

  Scenario: Incident management
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Incident management' page
    And I choose 'Yes' for 'incidentManagementProcess'
    And I choose 'service provider assertion' for 'incidentManagementProcess--assurance'
    And I choose 'No' for 'incidentManagementReporting'
    And I choose 'service provider assertion' for 'incidentManagementReporting--assurance'
    And I choose 'Yes' for 'incidentDefinitionPublished'
    And I choose 'service provider assertion' for 'incidentDefinitionPublished--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Personnel security' page

  @listing_page
  Scenario: Go to listing page and the service is not complete
    Given I am at the 'Infrastructure as a Service services' page
    Then My service should be in the list

    When I click my service
    Then I should be on the 'My IaaS service' page
    And The string 'Answer required' should be on the page
    And The 'Mark as complete' button should not be on the page

  Scenario: Personnel security
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Personnel security' page
    And I check 'Security clearance national vetting (SC)' for 'personnelSecurityChecks'
    And I choose 'service provider assertion' for 'personnelSecurityChecks--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Secure development' page

  Scenario: Secure development
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Secure development' page
    And I choose 'Yes' for 'secureDevelopment'
    And I choose 'service provider assertion' for 'secureDevelopment--assurance'
    And I choose 'Yes' for 'secureDesign'
    And I choose 'service provider assertion' for 'secureDesign--assurance'
    And I choose 'Yes' for 'secureConfigurationManagement'
    And I choose 'service provider assertion' for 'secureConfigurationManagement--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Supply-chain security' page

  Scenario: Supply-chain security
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Supply-chain security' page
    And I choose 'Yes' for 'thirdPartyDataSharingInformation'
    And I choose 'service provider assertion' for 'thirdPartyDataSharingInformation--assurance'
    And I choose 'Yes' for 'thirdPartySecurityRequirements'
    And I choose 'service provider assertion' for 'thirdPartySecurityRequirements--assurance'
    And I choose 'Yes' for 'thirdPartyRiskAssessment'
    And I choose 'service provider assertion' for 'thirdPartyRiskAssessment--assurance'
    And I choose 'Yes' for 'thirdPartyComplianceMonitoring'
    And I choose 'service provider assertion' for 'thirdPartyComplianceMonitoring--assurance'
    And I choose 'Yes' for 'hardwareSoftwareVerification'
    And I choose 'service provider assertion' for 'hardwareSoftwareVerification--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Authentication of consumers' page

  Scenario: Authentication of consumers
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Authentication of consumers' page
    And I choose 'Yes' for 'userAuthenticateManagement'
    And I choose 'service provider assertion' for 'userAuthenticateManagement--assurance'
    And I choose 'Yes' for 'userAuthenticateSupport'
    And I choose 'service provider assertion' for 'userAuthenticateSupport--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Separation and access control within management interfaces' page

  Scenario: Separation and access control within management interfaces
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Separation and access control within management interfaces' page
    And I choose 'Yes' for 'userAccessControlManagement'
    And I choose 'service provider assertion' for 'userAccessControlManagement--assurance'
    And I choose 'Yes' for 'restrictAdministratorPermissions'
    And I choose 'service provider assertion' for 'restrictAdministratorPermissions--assurance'
    And I choose 'Yes' for 'managementInterfaceProtection'
    And I choose 'service provider assertion' for 'managementInterfaceProtection--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Identity and authentication' page

  Scenario: Identity and authentication
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Identity and authentication' page
    And I check 'Username and two-factor authentication' for 'identityAuthenticationControls'
    And I choose 'service provider assertion' for 'identityAuthenticationControls--assurance'
    And I click 'Save and continue'
    Then I should be on the 'External interface protection' page

  Scenario: External interface protection
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'External interface protection' page
    And I choose 'Yes' for 'onboardingGuidance'
    And I choose 'service provider assertion' for 'onboardingGuidance--assurance'
    And I check 'Encrypted PSN service' for 'interconnectionMethods'
    And I choose 'service provider assertion' for 'interconnectionMethods--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Secure service administration' page

  Scenario: Secure service administration
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Secure service administration' page
    And I check 'Dedicated devices on a segregated network' for 'serviceManagementModel'
    And I choose 'service provider assertion' for 'serviceManagementModel--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Audit information provision to consumers' page

  Scenario: Audit information provision to consumers
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Audit information provision to consumers' page
    And I choose 'None' for 'auditInformationProvided'
    And I choose 'service provider assertion' for 'auditInformationProvided--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Secure use of the service by the customer' page

  Scenario: Secure use of the service by the customer
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Secure use of the service by the customer' page
    And I check 'Corporate/enterprise devices' for 'deviceAccessMethod'
    And I choose 'service provider assertion' for 'deviceAccessMethod--assurance'
    And I choose 'Yes' for 'serviceConfigurationGuidance'
    And I choose 'service provider assertion' for 'serviceConfigurationGuidance--assurance'
    And I choose 'Yes' for 'trainingProvided'
    And I choose 'service provider assertion' for 'trainingProvided--assurance'
    And I click 'Save and continue'
    Then I should be on the 'Service definition' page

  Scenario: Service definition
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Service definition' page
    And I choose file 'test.pdf' for 'serviceDefinitionDocumentURL'
    And I click 'Save and continue'
    Then I should be on the 'Terms and conditions document' page

  Scenario: Terms and conditions document
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Terms and conditions document' page
    And I choose file 'test.pdf' for 'termsAndConditionsDocumentURL'
    And I click 'Save and continue'
    Then I should be on the 'Pricing document' page

  Scenario: Pricing document
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'Pricing document' page
    And I choose file 'test.pdf' for 'pricingDocumentURL'
    And I click 'Save and continue'
    Then I should be on the 'SFIA rate card' page

  Scenario: SFIA rate card document
    Given I am on ssp page 'iaas'
    When I navigate to the 'Edit' 'SFIA rate card' page
    And I choose file 'test.pdf' for 'sfiaRateDocumentURL'
    And I click 'Save and continue'
    Then I should be on the 'My IaaS service' page

  Scenario: Mark as complete
    Given I am on the summary page
    Then The string 'Answer required' should not be on the page
    And The 'Mark as complete' button should be on the page

  Scenario: Verify text on summary page
    Given I am on the summary page
    Then Summary row 'Service type' should contain 'Infrastructure as a Service'
    And Summary row 'Service name' should contain 'My IaaS service'
    And Summary row 'Service summary' should contain 'My IaaS service that does stuff with stuff.'
    And Summary row 'Choose the categories that apply to your service' should contain 'Compute'
    And Summary row 'Service features' should contain 'Super greatness'
    And Summary row 'Service benefits' should contain 'Great superness'
    And Summary row 'Service price' should contain '£100 to £1000 per unit per second'
    And Summary row 'VAT included' should contain 'Yes'
    And Summary row 'Education pricing' should contain 'No'
    And Summary row 'Trial option' should contain 'Yes'
    And Summary row 'Free option' should contain 'No'
    And Summary row 'Termination cost' should contain 'No'
    And Summary row 'Minimum contract period' should contain 'Month'
    And Summary row 'Support service type' should contain 'Service desk'
    And Summary row 'Support accessible to any third-party suppliers' should contain 'Yes'
    And Summary row 'Support availability' should contain '24/7'
    And Summary row 'Standard support response times' should contain '1 hour'
    And Summary row 'Incident escalation process available' should contain 'No'
    And Summary row 'Open standards supported and documented' should contain 'Yes'
    And Summary row 'Service onboarding process included' should contain 'No'
    And Summary row 'Service offboarding process included' should contain 'Yes'
    And Summary row 'Real-time management information available' should contain 'No'
    And Summary row 'Elastic cloud approach supported' should contain 'Yes'
    And Summary row 'Guaranteed resources defined' should contain 'No'
    And Summary row 'Persistent storage supported' should contain 'No'
    And Summary row 'Self-service provisioning supported' should contain 'Yes'
    And Summary row 'Service provisioning time' should contain '5 hours'
    And Summary row 'Service deprovisioning time' should contain '6 hours'
    And Summary row 'Open-source software used and supported' should contain 'Yes'
    And Summary row 'API access available and supported' should contain 'Yes'
    And Summary row 'API type' should contain 'JSON'
    And Summary row 'Networks the service is directly connected to' should contain 'Internet'
    And Summary row 'Supported web browsers' should contain 'Opera'
    And Summary row 'Offline working and syncing supported' should contain 'Yes'
    And Summary row 'Supported devices' should contain 'PC'
    And Summary row 'Vendor certification(s)' should contain 'Stuff magic'
    And Summary row 'Datacentres adhere to the EU code of conduct for energy-efficient datacentres' should contain 'No'
    And Summary row 'User-defined data location' should contain 'Yes'
    And Summary row 'Datacentre tier' should contain 'Uptime Institute Tier 1'
    And Summary row 'Backup, disaster recovery and resilience plan in place' should contain 'Yes'
    And Summary row 'Data extraction/removal plan in place' should contain 'Yes'
    And Summary row 'Data protection between user device and service' should contain 'Encrypted PSN service, assured by independent validation of assertion'
    And Summary row 'Data protection within service' should contain 'VLAN, assured by independent validation of assertion'
    And Summary row 'Data protection between services' should contain 'Encrypted PSN service, assured by CESG-assured components'
    And Summary row 'Datacentre location' should contain 'UK'
    And Summary row 'Data management location' should contain 'UK'
    And Summary row 'Legal jurisdiction of service provider' should contain 'UK'
    And Summary row 'Datacentre protection' should contain 'Yes'
    And Summary row 'Data-at-rest protection' should contain 'CPA Foundation-grade assured components'
    And Summary row 'Secure data deletion' should contain 'CESG or CPNI-approved erasure process'
    And Summary row 'Storage media disposal' should contain 'CESG-assured destruction service (CAS(T))'
    And Summary row 'Secure equipment disposal' should contain 'Yes'
    And Summary row 'Redundant equipment accounts revoked' should contain 'No'
    And Summary row 'Service availability' should contain '99.99%'
    And Summary row 'Cloud deployment model' should contain 'Public cloud'
    And Summary row 'Type of consumer' should contain 'No other consumer'
    And Summary row 'Services separation' should contain 'Yes'
    And Summary row 'Services management separation' should contain 'Yes'
    And Summary row 'Governance framework' should contain 'Yes'
    And Summary row 'Configuration and change management tracking' should contain 'Yes'
    And Summary row 'Change impact assessment' should contain 'Yes'
    And Summary row 'Vulnerability assessment' should contain 'Yes'
    And Summary row 'Vulnerability monitoring' should contain 'Yes'
    And Summary row 'Vulnerability mitigation prioritisation' should contain 'No'
    And Summary row 'Vulnerability tracking' should contain 'Yes'
    And Summary row 'Vulnerability mitigation timescales' should contain 'Yes'
    And Summary row 'Event monitoring' should contain 'Yes'
    And Summary row 'Incident management processes' should contain 'Yes'
    And Summary row 'Consumer reporting of security incidents' should contain 'No'
    And Summary row 'Security incident definition published' should contain 'Yes'
    And Summary row 'Personnel security checks' should contain 'Security clearance national vetting (SC)'
    And Summary row 'Secure development' should contain 'Yes'
    And Summary row 'Secure design, coding, testing and deployment' should contain 'Yes'
    And Summary row 'Software configuration management' should contain 'Yes'
    And Summary row 'Visibility of data shared with third-party suppliers' should contain 'Yes'
    And Summary row 'Third-party supplier security requirements' should contain 'Yes'
    And Summary row 'Third-party supplier risk assessment' should contain 'Yes'
    And Summary row 'Third-party supplier compliance monitoring' should contain 'Yes'
    And Summary row 'Hardware and software verification' should contain 'Yes'
    And Summary row 'User authentication and access management' should contain 'Yes'
    And Summary row 'User access control through support channels' should contain 'Yes'
    And Summary row 'User access control within management interfaces' should contain 'Yes'
    And Summary row 'Administrator permissions' should contain 'Yes'
    And Summary row 'Management interface protection' should contain 'Yes'
    And Summary row 'Identity and authentication controls' should contain 'Username and two-factor authentication'
    And Summary row 'Onboarding guidance provided' should contain 'Yes'
    And Summary row 'Interconnection method provided' should contain 'Encrypted PSN service'
    And Summary row 'Service management model' should contain 'Dedicated devices on a segregated network'
    And Summary row 'Audit information provided' should contain 'None'
    And Summary row 'Device access method' should contain 'Corporate/enterprise devices'
    And Summary row 'Service configuration guidance' should contain 'Yes'
    And Summary row 'Training' should contain 'Yes'
    And Summary row 'Service definition document' should not contain 'Answer required'
    And Summary row 'Terms and conditions document' should not contain 'Answer required'
    And Summary row 'Pricing document' should not contain 'Answer required'
    And Summary row 'Skills Framework for the Information Age (SFIA) rate card' should not be empty

  @delete_service
  Scenario: Delete the service
    Given I am on the summary page
    When I click 'Delete this service'
    And I click 'Yes, delete “My IaaS service”'
    Then I am returned to the 'Infrastructure as a Service services' page
    And My service should not be in the list