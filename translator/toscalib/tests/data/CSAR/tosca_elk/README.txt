README:

This TOSCA simple profile deployes nodejs, mongodb, elasticsearch, logstash and kibana each on a separate server with monitoring enabled for nodejs server where a sample nodejs application is running. The syslog and collectd are insatlled on a nodejs server.

Entry information for processing through an orchestrator is contained in file TOSCA-Metadata/TOSCA.meta. This file provides high-level information such as CSAR version or creator of the CSAR. Furthermore, it provides pointers to the entry template under 'Entry-Definitions' key. The entry template itself may contain pointer to  one or more files that are used to define TOSCA base type, unless provided by Orchestrator as built-in TOSCA basetypes, and other non-normative types. These are typically provided under 'imports' section in the entry template file. Those type definitions will be read and processed by orchestrator or TOSCA parser to create an internal graph showing dependencies and relationship between various TOSCA types. The entry template may have reference to various artifacts required for deployment and will be processed accordingly.
 

