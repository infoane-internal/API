<cfoutput>
	<cfset ipAddr = '103.163.248.35' />
	<cfset endPoint = 'http://api.ipstack.com/' />
	<!--- <cfset endPoint = 'https://api.ipstack.com/' /> ---> <!--- https only works for premium account --->
	<cfset accessKey = 'cd48e134edc6b16cc9cbc353b01bd752'>

	<cfhttp result="result" method="GET" charset="utf-8" url="#endPoint#/#ipAddr#">
        <cfhttpparam name="access_key" type="url" value="#accessKey#" >
    </cfhttp>
	<cfdump var="#deserializeJSON(result.filecontent)#">
</cfoutput>
