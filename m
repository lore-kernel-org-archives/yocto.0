Return-Path: <john.l.whiteman@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B43BCE009DA; Mon, 18 May 2015 14:53:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D52A9E0095D;
	Mon, 18 May 2015 14:53:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 18 May 2015 14:53:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,455,1427785200"; 
	d="p7s'?scan'208";a="731383251"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by orsmga002.jf.intel.com with ESMTP; 18 May 2015 14:53:24 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.200]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.102]) with mapi id
	14.03.0224.002; Mon, 18 May 2015 14:53:23 -0700
From: "Whiteman, John L" <john.l.whiteman@intel.com>
To: Sona Sarmadi <sona.sarmadi@enea.com>, "yocto-security@yoctoproject.org"
	<yocto-security@yoctoproject.org>
Thread-Topic: [yocto] CVE list vs bugzilla
Thread-Index: AdCHMQJlypVzgTuuROqRC6C4yAIJCwAEoZMgAprtdNA=
Date: Mon, 18 May 2015 21:53:23 +0000
Message-ID: <98FD722D914E8E479F2905B4691F030C8A97DFB4@ORSMSX103.amr.corp.intel.com>
References: <3230301C09DEF9499B442BBE162C5E48258EB7C5@sestoex09.enea.se>
	<3230301C09DEF9499B442BBE162C5E48258EB860@sestoex09.enea.se>
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48258EB860@sestoex09.enea.se>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>,
	"'openembedded-core@lists.openembedded.org'"
	<openembedded-core@lists.openembedded.org>
Subject: Re: CVE list vs bugzilla
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 18 May 2015 21:53:27 -0000
X-Groupsio-MsgNum: 24876
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0062_01D0917A.63321A90"

------=_NextPart_000_0062_01D0917A.63321A90
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Sona,

Have you given any further thought about using the cve-check-tool?

https://github.com/ikeydoherty/cve-check-tool

A bugzilla plugin would need to be added but it may help here to avoid
duplication.

Best Regards,

John

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Sona Sarmadi
Sent: Tuesday, May 05, 2015 8:12 AM
To: yocto-security@yoctoproject.org
Cc: 'yocto@yoctoproject.org'; 'openembedded-core@lists.openembedded.org'
Subject: Re: [yocto] CVE list vs bugzilla

Trying with correct email address :) 

Hi all,

To monitor/scan vulnerabilities (CVE), check affected packages, versions,
branches, fixed versions/branches etc ... we need either to file a bug in
bugzilla for each publically disclosed CVE or have a simple data base.
Today, we sometimes file a bug but most of the time vulnerabilities just get
fixed by someone volunteer and some vulnerabilities don't get fixed.

We have created a CVE list just for test to see if this is easier to
maintain and provides better overview, please have a look at this and let us
to know what you think:
https://docs.google.com/spreadsheets/d/13o4IPsCQ42aR2CCGzYOHdmpIEHkHUwDWlF4Q
qgI6emQ/edit#gid=0 

The alternative for maintaining such a list is filing a bug in Bugzilla. The
question is which approach is the best, here are some pros and cons:

Bugzilla: 
=======
- it takes more time to create/update a bug  in Bugzilla (not a big problem)
- history, traceable who updated
- when we have releases, we go through open bugs and try to get them fixed

Question: can we generate a report from Bugzilla, search for CVEs and find
out what CVEs have been fixed and in what branches etc?


CVE spread sheet:
==============
+ Easy to update, anyone just can add info preferably automatically; we 
+ could use a tool to check with NVD (https://nvd.nist.gov/ ) daily and 
+ update the list (some human interactions needs to be done though) easy 
+ to have an overview
- ?

Any comments?

Thanks
Sona
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

------=_NextPart_000_0062_01D0917A.63321A90
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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
77wh8OJHZYwY0xFeGLiq5VZ873jSblw+oy0SiS/PuSwirkleeIhDjxM+5o9j3ALOWh2bRQtTwF/j
fOuYcdhavCKAaWRlWdyKSlUOmEvUmnexgQ8LnmELx+QOZw2jHbEgpSYMECdPvjJjNZ92fdX3e6qZ
KET87Iu6YMfONzs3bjQBsXbHOacm87mlSsUqhkTBfacuA9iATWuNdDZKiXzqXOHq5wEtkh4S2a2g
Esjyvtjj8izEm/MgMynzp9TqNb0P+a3AxA/LkByHaHhz+mUTjEWgPie18zfDAgMBAAGjggLqMIIC
5jALBgNVHQ8EBAMCB4AwPAYJKwYBBAGCNxUHBC8wLQYlKwYBBAGCNxUIhsOMdYSZ5VGD/YEohY6f
U4KRwAlngd69OZXwQwIBZAIBCDAdBgNVHQ4EFgQU9DHzjzEqS7+qtIyLKfEQTwTAc2owHwYDVR0j
BBgwFoAUHmkqtNwo/kcYTiELP7ysES/wmPUwgckGA1UdHwSBwTCBvjCBu6CBuKCBtYZUaHR0cDov
L3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIw
SXNzdWluZyUyMENBJTIwNEEuY3Jshl1odHRwOi8vY2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBv
c2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0QS5j
cmwwge8GCCsGAQUFBwEBBIHiMIHfMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9y
ZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5n
JTIwQ0ElMjA0QS5jcnQwcgYIKwYBBQUHMAKGZmh0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29t
L3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3Vp
bmclMjBDQSUyMDRBLmNydDAfBgNVHSUEGDAWBggrBgEFBQcDBAYKKwYBBAGCNwoDDDApBgkrBgEE
AYI3FQoEHDAaMAoGCCsGAQUFBwMEMAwGCisGAQQBgjcKAwwwTwYDVR0RBEgwRqApBgorBgEEAYI3
FAIDoBsMGWpvaG4ubC53aGl0ZW1hbkBpbnRlbC5jb22BGWpvaG4ubC53aGl0ZW1hbkBpbnRlbC5j
b20wDQYJKoZIhvcNAQEFBQADggEBACapF/HfPD2IneRMSR9Oh6Df7Iusc/NljBqSPAuddkjuH5bU
zYPHl9RWsjLaNm7AVOeKQD3OQFDJ9H87DRlAcdczWfJYTfkB9VTBT0Tw5Bpxs8d6rXrSnkc6je04
mQ/YgFdaVywvwGOda+CnmDNNUVXhXijV182qBBoZnZFoWgWRd9oUiteMNvMMBaH5mtv91DooUXmb
CQyEvZ1/J1m4WlwrpPjkpykJ+Pao/9iGf6EH45+ZSCt+IKr17/LSQ7dW2E6cjwK1oCZ9aCaL4n5N
IwpADO5+oLTrBpHlyfbnevNe34RrBukBFlQR8NJJVFS9K7z5FZeK+RlEJ5T1J0Td1HIwggZ1MIIF
XaADAgECAgoWS+EvAAAAAFH9MA0GCSqGSIb3DQEBBQUAMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQI
EwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSsw
KQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDRBMB4XDTE0MDUxNDIwMDQz
NFoXDTE3MDQyODIwMDQzNFowRTEZMBcGA1UEAxMQV2hpdGVtYW4sIEpvaG4gTDEoMCYGCSqGSIb3
DQEJARYZam9obi5sLndoaXRlbWFuQGludGVsLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC
AQoCggEBANS6Fo+ZZKjqHQOst4tp9EcYH3wpSGPFZ9oSZGo9bzsZa0pRtL03shkryp+2JGatUZIK
aliZrFNuXV0kmNLs/qhZISjKsvid97M3vwYECjSi5Xiuwsu5DOBnyZLFEQZKxWj9i5U6UjHc10ew
9DY2GJqByGplnAtNi7aUbVc2AxAMMSbMFWMwHs6VgmuKvcO4Rvy2Bit7oGHKJW9v3LtqZD7DzvTa
pkIArlflCXUoflXQv4AxqSubwMZ8ZgEraQqn0YaZq6xQpLon68Jzb8Ix0PJyZOpWOJ3Qj8OuOhQm
I5If4zuQutpFIp3dQGTn4Np3Uc3w0qhCZkYe59wKnYQUJ1sCAwEAAaOCAzEwggMtMAsGA1UdDwQE
AwIEMDA9BgkrBgEEAYI3FQcEMDAuBiYrBgEEAYI3FQiGw4x1hJnlUYP9gSiFjp9TgpHACWeEudlB
h4T/TgIBZAIBDTBEBgkqhkiG9w0BCQ8ENzA1MA4GCCqGSIb3DQMCAgIAgDAOBggqhkiG9w0DBAIC
AIAwBwYFKw4DAgcwCgYIKoZIhvcNAwcwHQYDVR0OBBYEFAyk6oJ3SZLzF0vTsoikd69mhvxBMB8G
A1UdIwQYMBaAFB5pKrTcKP5HGE4hCz+8rBEv8Jj1MIHJBgNVHR8EgcEwgb4wgbuggbiggbWGVGh0
dHA6Ly93d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNp
YyUyMElzc3VpbmclMjBDQSUyMDRBLmNybIZdaHR0cDovL2NlcnRpZmljYXRlcy5pbnRlbC5jb20v
cmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIw
NEEuY3JsMIHvBggrBgEFBQcBAQSB4jCB3zBpBggrBgEFBQcwAoZdaHR0cDovL3d3dy5pbnRlbC5j
b20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNz
dWluZyUyMENBJTIwNEEuY3J0MHIGCCsGAQUFBzAChmZodHRwOi8vY2VydGlmaWNhdGVzLmludGVs
LmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJ
c3N1aW5nJTIwQ0ElMjA0QS5jcnQwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwQwKQYJ
KwYBBAGCNxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMEME8GA1UdEQRIMEagKQYKKwYB
BAGCNxQCA6AbDBlqb2huLmwud2hpdGVtYW5AaW50ZWwuY29tgRlqb2huLmwud2hpdGVtYW5AaW50
ZWwuY29tMA0GCSqGSIb3DQEBBQUAA4IBAQCeocR4jpzBBnXwhNBDWHr2GwBCAASClAT6GQ2H3nvz
XXzi/rK/QaFzLm4iElyT9gYRP1NNdJIZgeIWKPaBdJrw7xZQ1icA0aJv5SL5rUw8T1Fpyvvsw6ha
PgMqME3qInmuzGCnhR/wda9cQ16zpHaqZAcAclqiu4vXyb5vFjOYmuLcFQrml2qymL4ODRMkWtMn
2IWej0+Q12asWCZlvLVY6aveXGwK44/5UtuW0h/50wsgMwcbmdIwlzCig4SH0cnoA6Ri+4v5BWXO
w/ADqI1tpH+FtNmRY1+UG4p2PbDcGQhKoqGee1hLk4BmpZMzUKQZz8UGvtj1qkXNUZ85XO+dMYID
9jCCA/ICAQEwgYcweTELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRQwEgYDVQQHEwtTYW50YSBD
bGFyYTEaMBgGA1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFs
IEJhc2ljIElzc3VpbmcgQ0EgNEECChZLUNIAAAAAUfwwCQYFKw4DAhoFAKCCAkMwGAYJKoZIhvcN
AQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTUwNTE4MjE1MzIzWjAjBgkqhkiG9w0B
CQQxFgQU/8uql7HMZoXLw6h1Qauq7BGP1E8wgZgGCSsGAQQBgjcQBDGBijCBhzB5MQswCQYDVQQG
EwJVUzELMAkGA1UECBMCQ0ExFDASBgNVBAcTC1NhbnRhIENsYXJhMRowGAYDVQQKExFJbnRlbCBD
b3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSA0QQIK
FkvhLwAAAABR/TCBmgYLKoZIhvcNAQkQAgsxgYqggYcweTELMAkGA1UEBhMCVVMxCzAJBgNVBAgT
AkNBMRQwEgYDVQQHEwtTYW50YSBDbGFyYTEaMBgGA1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzAp
BgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElzc3VpbmcgQ0EgNEECChZL4S8AAAAAUf0wgasG
CSqGSIb3DQEJDzGBnTCBmjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAoGCCqGSIb3DQMHMAsG
CWCGSAFlAwQBAjAOBggqhkiG9w0DAgICAIAwBwYFKw4DAgcwDQYIKoZIhvcNAwICAUAwDQYIKoZI
hvcNAwICASgwBwYFKw4DAhowCwYJYIZIAWUDBAIDMAsGCWCGSAFlAwQCAjALBglghkgBZQMEAgEw
DQYJKoZIhvcNAQEBBQAEggEAOPo6oGnOV2D/asHPPgr6HXNBrNWZMIntaQx6mqA2mZB0Ct0+PsIC
dksLmTbTDRhwSDIaX7FBFSDDHXm9DPyIbrgBswVxNSxChG7NnbSH/t1EH+uURhla4v96jjm5xsKv
vLZVaesRbM5R1UXSYNWS3f0dQnwOS7xfghtge9qBtjuoFNhLLKsR2fOAXCHP2OCHc8BqSrkOJyOu
yh71YkAh+FxCpt2QkkXx7aQ9O+8vJRcCsvslkx6aoxLLB+wRrNf/C7uR1ntk1CI+Aq2Ol51R6NMX
cFY8JDru9SY1vy+AmR9H3LMxucTfNH9TP+vsFNHPJk1A+/uhPVxlgERknzpd2gAAAAAAAA==

------=_NextPart_000_0062_01D0917A.63321A90--
