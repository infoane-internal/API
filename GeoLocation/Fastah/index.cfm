<cfoutput>
	<!--- <cfset ipAddr = 'auto' /> ---> <!--- Can automatically fetch the public ip of the current machine --->
	<cfset ipAddr = '103.163.248.35' />
	<cfset endPoint = 'https://ep.api.getfastah.com/whereis/v1/json' />
	<cfset accessKey = '638eec4613e64929aa0a4d7505b6d8cb'>

	<cfhttp result="result" method="GET" charset="utf-8" url="#endPoint#/#ipAddr#">
		<cfhttpparam name="Fastah-Key" type="header" value="#accessKey#">
	</cfhttp>
	<cfdump var="#deserializeJSON(result.filecontent)#">
</cfoutput>
