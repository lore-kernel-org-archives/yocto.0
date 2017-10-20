Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A9A4E00A62; Fri, 20 Oct 2017 10:16:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.48.72 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 13542 seconds by postgrey-1.32 at yocto-www;
	Fri, 20 Oct 2017 10:15:58 PDT
Received: from g9t5008.houston.hpe.com (g9t5008.houston.hpe.com [15.241.48.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5070BE007EF
	for <yocto@yoctoproject.org>; Fri, 20 Oct 2017 10:15:58 -0700 (PDT)
Received: from G1W8107.americas.hpqcorp.net (g1w8107.austin.hp.com
	[16.193.72.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5008.houston.hpe.com (Postfix) with ESMTPS id 520036F;
	Fri, 20 Oct 2017 17:15:58 +0000 (UTC)
Received: from G9W8455.americas.hpqcorp.net (2002:10d8:a15e::10d8:a15e) by
	G1W8107.americas.hpqcorp.net (2002:10c1:483b::10c1:483b) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Fri, 20 Oct 2017 17:15:57 +0000
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (15.241.52.13) by
	G9W8455.americas.hpqcorp.net (16.216.161.94) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Fri, 20 Oct 2017 17:15:57 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM (10.162.187.157) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Fri, 20 Oct 2017 17:15:56 +0000
Received: from TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) by
	TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM ([10.162.187.157]) with mapi id
	15.20.0077.022; Fri, 20 Oct 2017 17:15:56 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Thread-Topic: [yocto] bbappend - FILESEXTRAPATHS
Thread-Index: AdNJpinujzzVlpkoQ6e+ofeYH4nWogACwk0AAAVoZ+A=
Date: Fri, 20 Oct 2017 17:15:55 +0000
Message-ID: <TU4PR84MB017646E8F43B39C1DF196843ED430@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR84MB01764E055DD6B5F1BBC43003ED430@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
	<20171020093914.f166839216341ff7537df01b@linux.intel.com>
In-Reply-To: <20171020093914.f166839216341ff7537df01b@linux.intel.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR84MB0176;
	6:aYZWn31mmVKyu2qGNPHXxZReq6zYdnb5Yu+O36AOkyA3VQqvgTM1CNc2yVStG+Wn3mCQAiqQ5XgLPdJliDBCSe4Kqi5TitxxEFL0uFvvtauZMwA7jJsM67EIBd+TnW1FnkFK7yTCzy+6QHrRCY6Q/qZFRcYXXQe/eq0ZFB7S8xUNWBAnpD5wRAmAjeF7g4+s+9VkRelyHPxCxkUFgS0nmBpK3Za44jX8Wmcdi2mZXNDN1UYEx9kGGTMH9rnDnm4TR5NOy9UnE4nbkm1mD/MtjyzM94dTjudp1mDLrcXTeF34RqHf1tbiJ5keEX2uj8ejumW/ubcQQY7krllWxsciwA==;
	5:NmBkGGWlrKQbJmAIUWrgWBGZjony+6lv1fGklsCeU7FJhBa+CD38bqI24C5Lx6w6VSurk7KTS1oE+x9yK9JYFQOR0/tE5hMqEIsNeEj29UgqAsMtKXepZKt344m7PCNdSjaTmOPAIXn6+EdEfN7tRg==;
	24:Tgcuo8zdE3d/+Z1svbqRCdtxJckeWAKqVuKbNuEYt2eXm8rvrS/i55jQ9hEf4k/YebS5LjiqSHA2excjEVEweUX7RCXJXON0qVm/6qzJD+w=;
	7:0cp+VeIApCw31UaoD20ObeDsJ9ueqtsOgYSP5LUH1Pjt3YFJhsZjOXUKWpytEhwhUGILnpoXH8HWPmC9nmTAj7Lw8dPhJiQpWIbeEG2fEWGfkA7udD9INqIkiORG8Ql6SMUC0dRY34ENoU/DF+sU9FDrG/raGC84F61vlcZpDe0iEmDWbKFAbDrWLcVxZtMyvwx3XtWKy3UqKTcqEvzI+fkw7nv1Y0xzoVy2ThdI3D0=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 52a039f8-18ba-43b8-c370-08d517de39b5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(48565401081)(4534020)(4602075)(4627075)(201703031133081)(201702281549075)(2017052603199)(49563074);
	SRVR:TU4PR84MB0176; 
x-ms-traffictypediagnostic: TU4PR84MB0176:
x-exchange-antispam-report-test: UriScan:(227479698468861)(228905959029699)(17755550239193); 
x-microsoft-antispam-prvs: <TU4PR84MB01761983B0661AC23114A0DCED430@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(102415395)(6040450)(2401047)(5005006)(8121501046)(3231020)(93006095)(93001095)(3002001)(10201501046)(100000703101)(100105400095)(6055026)(6041248)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123562025)(20161123555025)(20161123560025)(20161123558100)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:TU4PR84MB0176; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:TU4PR84MB0176; 
x-forefront-prvs: 0466CA5A45
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(376002)(346002)(39860400002)(52314003)(13464003)(199003)(24454002)(189002)(6436002)(77096006)(5660300001)(6116002)(74316002)(6916009)(9686003)(55016002)(6506006)(86362001)(478600001)(53546010)(229853002)(3846002)(102836003)(25786009)(3280700002)(14454004)(97736004)(316002)(3660700001)(99936001)(2950100002)(101416001)(76176999)(7736002)(2900100001)(54356999)(53936002)(6246003)(305945005)(2906002)(105586002)(7696004)(4326008)(50986999)(189998001)(33656002)(81166006)(8936002)(8676002)(66066001)(106356001)(68736007)(81156014);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR84MB0176;
	H:TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2017 17:15:55.9778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR84MB0176
X-OriginatorOrg: hpe.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bbappend - FILESEXTRAPATHS
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
X-List-Received-Date: Fri, 20 Oct 2017 17:16:00 -0000
X-Groupsio-MsgNum: 38466
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0197_01D349A5.8EB144D0"

------=_NextPart_000_0197_01D349A5.8EB144D0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

"We do not want to force users to place patches inside a particular folder
(policy), instead the system offer a mechanism to place these any place you
want (other recipes choose PN, for example)"

I understand that and I agree with it, at the same time, I do not get the
requirement to put FILESEXTRAPATHS.  If it is missing, I feel that bitbake
should have a default behavior that is to use the same FILESPATHS as defined
in bb but under the bbappend location.

If people want to change that behavior, then they add FILESEXTRAPATHS.

--
Yannick Koehler

-----Original Message-----
From: Leonardo Sandoval [mailto:leonardo.sandoval.gonzalez@linux.intel.com] 
Sent: Friday, October 20, 2017 10:39 AM
To: Koehler, Yannick <yannick.koehler@hpe.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] bbappend - FILESEXTRAPATHS

On Fri, 20 Oct 2017 13:30:06 +0000
"Koehler, Yannick" <yannick.koehler@hpe.com> wrote:

> Hi,
> 
>  
> 
> I have been using Yocto for over 2 years now, and whenever I create a 
> new bbappend file, I always have to remember that FILESEXTRAPATHS 
> variable, often typing it wrong, EXTRAFILESPATHS or FILEEXTRAPATHS or 
> FILESEXTRAPATH, etc.
> 
>  
> 
> I did a quick check on my setup and on 102 bbappend recipe found, 
> there are
> 73 that uses the FILESEXTRAPATHS variable, so that is around 71% of them.

> 
>  
> 
> I was wondering if the team would enhance the user/dev experience here 
> and modify bitbake behavior as to not require this variable and be 
> able to "override" any FILESPATH that already exists with the bbappend 
> location.  So that for example the FILESPATH "files" would be looked 
> up in the bbappend folder location before the initial bb recipe folder 
> location automatically without having to manually enter a FILESEXTRAPATHS
statement.

One easy way to avoid this error is to place the FILESEXTRAPATHS variable
inside a custom bbclass them inherit it from the recipe, at least it is less
prone to typos. We do not want to force users to place patches inside a
particular folder (policy), instead the system offer a mechanism to place
these any place you want (other recipes choose PN, for example)

> 
>  
> 
> Or alternatively, a script or command to create an initial skeleton 
> bbappend with the initial .bb in comment
> 
>  
> 
>                bbappend mylayer recipename.bb
> 
>                # Create a file under mylayer/recipes-*/*.bbappend 
> (using % for version when not specified on cmd line) with the original 
> .bb in comment and a section containing FILESEXTRAPATHS
> 

Right, I think there is no tool to create bbappends from the command line.

Anyway, feel free to file a bug (bugzilla.yoctoproject.org) with your
enhancement.


>  
> 
> I think this would greatly help when creating those files.
> 
>  
> 
> --
> 
> Yannick Koehler
> 
> HPE Aruba
> 


--
Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>

------=_NextPart_000_0197_01D349A5.8EB144D0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIROjCCBBkw
ggMBAhBhcMtJjF+YRSnnsKbZUFt6MA0GCSqGSIb3DQEBBQUAMIHKMQswCQYDVQQGEwJVUzEXMBUG
A1UEChMOVmVyaVNpZ24sIEluYy4xHzAdBgNVBAsTFlZlcmlTaWduIFRydXN0IE5ldHdvcmsxOjA4
BgNVBAsTMShjKSAxOTk5IFZlcmlTaWduLCBJbmMuIC0gRm9yIGF1dGhvcml6ZWQgdXNlIG9ubHkx
RTBDBgNVBAMTPFZlcmlTaWduIENsYXNzIDIgUHVibGljIFByaW1hcnkgQ2VydGlmaWNhdGlvbiBB
dXRob3JpdHkgLSBHMzAeFw05OTEwMDEwMDAwMDBaFw0zNjA3MTYyMzU5NTlaMIHKMQswCQYDVQQG
EwJVUzEXMBUGA1UEChMOVmVyaVNpZ24sIEluYy4xHzAdBgNVBAsTFlZlcmlTaWduIFRydXN0IE5l
dHdvcmsxOjA4BgNVBAsTMShjKSAxOTk5IFZlcmlTaWduLCBJbmMuIC0gRm9yIGF1dGhvcml6ZWQg
dXNlIG9ubHkxRTBDBgNVBAMTPFZlcmlTaWduIENsYXNzIDIgUHVibGljIFByaW1hcnkgQ2VydGlm
aWNhdGlvbiBBdXRob3JpdHkgLSBHMzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAK8K
DcLVLNtnuS3llCfdpb7gsE2Ps2FWPNZ8w/TNPobLooji4dikacW14r/BpkdQXkY5i9WWurVvFL8Q
zicTngVHmzF6E9gf2dMCN4utLEfwjoEGpw0wDOv3PA8gHdxyRu6lAshbw8lWaUzFGMGRewvVEwCb
vO/DSD5GYCCFKtWQts2LoMwy3bf9QFWyUBxWrsyNd03HIE2nMXbvaJKKkB4IgVayrWmjUtDLHMQj
PR+Z/kzoFmOOxgiO9jH20vrldt21HJKjSc3NAc1ozalpuqPrHQ2cpCCmwaDF0UZMF23SrGY/lozg
hNQ2/yJZxfkRYKhfBH3yGvYlQmEPxEq4PokCAwEAATANBgkqhkiG9w0BAQUFAAOCAQEANCYVPMCN
TUNJHb3pIZLXZpy33sW40ORdX3YiwCb5hDo6+Yy1++xg8ejOBLDI3acDjzDzmN+k5qQx39McC0bc
ciA/ru4FPKQzPws5rHB4c0uZK98wwlSwqDtVof4WKM1CvXRugNsnRKfORF3UG5CYDR5ClLEALATQ
dKMCBSJjY82DtfvBbWJraXX9XXBBufW/fN++wTJzIiGLWIF7FZF6uuNkSLB/+zYl2pXQ8SQUF90Y
gGtGIzlU9Y5iCQQdlJCmm+Yl4kJFqriQrb4Ij6kLQhiUz3I54bFD4CjPt+dabBNrSbP/4xh8iYsz
Xawz16f52jpVyVgQ+arvWrbPS0vfKjCCBlwwggVEoAMCAQICECNSxTxdjNDjyAs6sGHstj0wDQYJ
KoZIhvcNAQELBQAwgcoxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5WZXJpU2lnbiwgSW5jLjEfMB0G
A1UECxMWVmVyaVNpZ24gVHJ1c3QgTmV0d29yazE6MDgGA1UECxMxKGMpIDE5OTkgVmVyaVNpZ24s
IEluYy4gLSBGb3IgYXV0aG9yaXplZCB1c2Ugb25seTFFMEMGA1UEAxM8VmVyaVNpZ24gQ2xhc3Mg
MiBQdWJsaWMgUHJpbWFyeSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eSAtIEczMB4XDTE1MDMxNzAw
MDAwMFoXDTI1MDMxNjIzNTk1OVowgcgxCzAJBgNVBAYTAlVTMSswKQYDVQQKEyJIZXdsZXR0IFBh
Y2thcmQgRW50ZXJwcmlzZSBDb21wYW55MR8wHQYDVQQLExZTeW1hbnRlYyBUcnVzdCBOZXR3b3Jr
MTUwMwYDVQQLEyxDbGFzcyAyIE1hbmFnZWQgUEtJIEluZGl2aWR1YWwgU3Vic2NyaWJlciBDQTE0
MDIGA1UEAxMrSGV3bGV0dCBQYWNrYXJkIEVudGVycHJpc2UgQ29sbGFib3JhdGlvbiBDQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBALPCN6KJCXCb6w8M+5y13OdMY59h1fzLt1fwNiyK
Sgd3REDsdZPuvQmGBNuSeG/+ttnZ5xF+e3dVtpTAKm+lsUZDAXnstPYNVhfwRC9Pu4ijX8goHcpz
9AkS8fcPvxb3/I5LNygCxd9uZWhkyskg8+Fxv7fyzvkOM0hShZLvb+F79NUN9wcLLK4yeTTB9743
7sv5QnUfb9Fw/KSSX5kWfAilnxgfKx0gQ65ooeD61e4XsyAgzLrCYd8YaRwL6lWHVSkHgZqeijj3
/OMyyovQnpNfcijOA5HNjdx4ebY5IJpuva8UVIDyoGBjsiL3jnwg00TbMnU5bYOviPMky3jiY28C
AwEAAaOCAjwwggI4MDcGCCsGAQUFBwEBBCswKTAnBggrBgEFBQcwAYYbaHR0cDovL3BraS1vY3Nw
LnN5bWF1dGguY29tMBIGA1UdEwEB/wQIMAYBAf8CAQAwbAYDVR0gBGUwYzBhBgtghkgBhvhFAQcX
AjBSMCYGCCsGAQUFBwIBFhpodHRwOi8vd3d3LnN5bWF1dGguY29tL2NwczAoBggrBgEFBQcCAjAc
GhpodHRwOi8vd3d3LnN5bWF1dGguY29tL3JwYTAvBgNVHR8EKDAmMCSgIqAghh5odHRwOi8vcy5z
eW1jYi5jb20vcGNhMi1nMy5jcmwwDgYDVR0PAQH/BAQDAgEGMCgGA1UdEQQhMB+kHTAbMRkwFwYD
VQQDExBTeW1hbnRlY1BLSS0yLTg2MB0GA1UdDgQWBBT24EWCywxLDrRYiCH1jke+JIZgUDCB8AYD
VR0jBIHoMIHloYHQpIHNMIHKMQswCQYDVQQGEwJVUzEXMBUGA1UEChMOVmVyaVNpZ24sIEluYy4x
HzAdBgNVBAsTFlZlcmlTaWduIFRydXN0IE5ldHdvcmsxOjA4BgNVBAsTMShjKSAxOTk5IFZlcmlT
aWduLCBJbmMuIC0gRm9yIGF1dGhvcml6ZWQgdXNlIG9ubHkxRTBDBgNVBAMTPFZlcmlTaWduIENs
YXNzIDIgUHVibGljIFByaW1hcnkgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgLSBHM4IQYXDLSYxf
mEUp57Cm2VBbejANBgkqhkiG9w0BAQsFAAOCAQEALhMGTAylk1RlpYV8PavJ0UHCZWmouoY6FKpZ
Z9sdW/E+o31zGsq1kaarZQikzWVqEPsRgzHs3ybmHZV26hpx2N86gjOh9V7aG0GmiHJZAh8YqzZc
Pek7EwQvyOTavxXMi5CmywQI0AHonwnGI5EOb4wk5RcUZcyziiVK/vcIrnoTuslYzvbH35Gu2tXR
k65EQvGslTaNuIfkiJXJ/twfzKGqdG6I2mOqpofLMcKUSNvjp8LNeOnGsBDiS3hwpEIGyELjKhlm
Q0HJIArUxI5dstktuUWF+BYQBAwMOU+ihPu8yFLR1evsnmGK2gOe1JDBUwws3/wbNj3RAkrFe9ki
TzCCBrkwggWhoAMCAQICEEwqEIb5xqVgvXbWxLB51EMwDQYJKoZIhvcNAQELBQAwgcgxCzAJBgNV
BAYTAlVTMSswKQYDVQQKEyJIZXdsZXR0IFBhY2thcmQgRW50ZXJwcmlzZSBDb21wYW55MR8wHQYD
VQQLExZTeW1hbnRlYyBUcnVzdCBOZXR3b3JrMTUwMwYDVQQLEyxDbGFzcyAyIE1hbmFnZWQgUEtJ
IEluZGl2aWR1YWwgU3Vic2NyaWJlciBDQTE0MDIGA1UEAxMrSGV3bGV0dCBQYWNrYXJkIEVudGVy
cHJpc2UgQ29sbGFib3JhdGlvbiBDQTAeFw0xNzA5MTEwMDAwMDBaFw0xOTA5MTEyMzU5NTlaMIGo
MSswKQYDVQQKFCJIZXdsZXR0IFBhY2thcmQgRW50ZXJwcmlzZSBDb21wYW55MSYwJAYDVQQLFB1F
bXBsb3ltZW50IFN0YXR1cyAtIEVtcGxveWVlczEPMA0GA1UECxQGUy9NSU1FMRgwFgYDVQQDDA9Z
YW5uaWNrIEtvZWhsZXIxJjAkBgkqhkiG9w0BCQEWF3lhbm5pY2sua29laGxlckBocGUuY29tMIIB
IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1vKQTVsLIot3H3MJBLuIre47UX0modzWnS82
E+DQfofa6nL9IOYbkyj8q565UKKUaW78HGBWqXz33UlRb6Et0dFMFiqfluawYxF7NGjAHtn/PMiu
8kPwZBrz7ZjkyzOdifC+mDlqUUl/QlehQK83a3FTCTHRRbdc77uSLfyyygIvZndP5YE8/nx4BHez
FrbCyL/goIMzCSfXrdql8GSSCT5FdAMWiwYa/A0pC0k2R2fq6bZ95agWHxUVGONYYyvJhCm5D8J/
rr0/dWSAoCUL3HqFOmZ11nO1mdLSJmsO6CfB8TrKWIhC1MNdoGh/lr4osYG2jOO9U1yfcG+hcbRb
YQIDAQABo4ICuzCCArcwIgYDVR0RBBswGYEXeWFubmljay5rb2VobGVyQGhwZS5jb20wDAYDVR0T
AQH/BAIwADAOBgNVHQ8BAf8EBAMCBaAwYQYDVR0fBFowWDBWoFSgUoZQaHR0cDovL29uc2l0ZWNy
bC52ZXJpc2lnbi5jb20vSGV3bGV0dFBhY2thcmRFbnRlcnByaXNlQ29tcGFueVNNSU1FL0xhdGVz
dENSTC5jcmwwHwYDVR0jBBgwFoAU9uBFgssMSw60WIgh9Y5HviSGYFAwHQYDVR0OBBYEFJ1v66fm
7YscfvtcG1BXfCBX/rrvMDcGCCsGAQUFBwEBBCswKTAnBggrBgEFBQcwAYYbaHR0cDovL2hwZS1v
Y3NwLnN5bWF1dGguY29tMFcGCSqGSIb3DQEJDwRKMEgwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3
DQMCAgFAMA4GCCqGSIb3DQMEAgIAgDAKBggqhkiG9w0DBzALBglghkgBZQMEAQIwggEkBgNVHSAE
ggEbMIIBFzCCARMGC2CGSAGG+EUBBxcCMIIBAjAmBggrBgEFBQcCARYaaHR0cDovL3d3dy5zeW1h
dXRoLmNvbS9jcHMwgdcGCCsGAQUFBwICMIHKGoHHQXV0aG9yaXR5IHRvIGJpbmQgSGV3bGV0dCBQ
YWNrYXJkIEVudGVycHJpc2UgZG9lcyBub3QgY29ycmVzcG9uZCB3aXRoIHVzZSBvciBwb3NzZXNz
aW9uIG9mIHRoaXMgY2VydC4gSXNzdWVkIHRvIGZhY2lsaXRhdGUgY29tbXVuaWNhdGlvbiB3aXRo
IEhld2xldHQgUGFja2FyZCBFbnRlcnByaXNlLiBTeW1hbnRlYydzIENQUyBpbmNvcnAgYnkgcmVm
LjAWBgNVHSUBAf8EDDAKBggrBgEFBQcDBDANBgkqhkiG9w0BAQsFAAOCAQEARejP7zkYSH88vlbv
0xD4qOCssYynG3WD+w+ZJK4o+/nQ2s7kojhIIaVo1AfmYKKFbMpRRVV/xpHMJoJsgrBb9DHJyYjj
rGDg7K63/JmJZjC2lxUahyFyiJYhn314f14CRRBSRSdZTtvERwAghjJo595QCj5SDa88hGrVX3MY
vADSaowkDVRe/MVzeugG7gjMFuxB5gAvPYUhUfhBBicQP1aE98MI5lMt7qBJkVD8PEp1MY4dIrnk
fQjVlCFJAgsxPmuYI8YMjxo50JDVWjFSskSP5wDntC4EF3S3rbbd2okIMO+rxIllVUG8kuzmxVvg
8KpjaimASuKDDSw7pt4n1DGCBOAwggTcAgEBMIHdMIHIMQswCQYDVQQGEwJVUzErMCkGA1UEChMi
SGV3bGV0dCBQYWNrYXJkIEVudGVycHJpc2UgQ29tcGFueTEfMB0GA1UECxMWU3ltYW50ZWMgVHJ1
c3QgTmV0d29yazE1MDMGA1UECxMsQ2xhc3MgMiBNYW5hZ2VkIFBLSSBJbmRpdmlkdWFsIFN1YnNj
cmliZXIgQ0ExNDAyBgNVBAMTK0hld2xldHQgUGFja2FyZCBFbnRlcnByaXNlIENvbGxhYm9yYXRp
b24gQ0ECEEwqEIb5xqVgvXbWxLB51EMwCQYFKw4DAhoFAKCCAtcwGAYJKoZIhvcNAQkDMQsGCSqG
SIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTcxMDIwMTcxNTUzWjAjBgkqhkiG9w0BCQQxFgQUSpVs
1JNwJU/qWc+Zrix6aJysNp0wgZMGCSqGSIb3DQEJDzGBhTCBgjALBglghkgBZQMEASowCwYJYIZI
AWUDBAEWMAoGCCqGSIb3DQMHMAsGCWCGSAFlAwQBAjAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcN
AwICAUAwBwYFKw4DAhowCwYJYIZIAWUDBAIDMAsGCWCGSAFlAwQCAjALBglghkgBZQMEAgEwge4G
CSsGAQQBgjcQBDGB4DCB3TCByDELMAkGA1UEBhMCVVMxKzApBgNVBAoTIkhld2xldHQgUGFja2Fy
ZCBFbnRlcnByaXNlIENvbXBhbnkxHzAdBgNVBAsTFlN5bWFudGVjIFRydXN0IE5ldHdvcmsxNTAz
BgNVBAsTLENsYXNzIDIgTWFuYWdlZCBQS0kgSW5kaXZpZHVhbCBTdWJzY3JpYmVyIENBMTQwMgYD
VQQDEytIZXdsZXR0IFBhY2thcmQgRW50ZXJwcmlzZSBDb2xsYWJvcmF0aW9uIENBAhBMKhCG+cal
YL121sSwedRDMIHwBgsqhkiG9w0BCRACCzGB4KCB3TCByDELMAkGA1UEBhMCVVMxKzApBgNVBAoT
Ikhld2xldHQgUGFja2FyZCBFbnRlcnByaXNlIENvbXBhbnkxHzAdBgNVBAsTFlN5bWFudGVjIFRy
dXN0IE5ldHdvcmsxNTAzBgNVBAsTLENsYXNzIDIgTWFuYWdlZCBQS0kgSW5kaXZpZHVhbCBTdWJz
Y3JpYmVyIENBMTQwMgYDVQQDEytIZXdsZXR0IFBhY2thcmQgRW50ZXJwcmlzZSBDb2xsYWJvcmF0
aW9uIENBAhBMKhCG+calYL121sSwedRDMA0GCSqGSIb3DQEBAQUABIIBAH/GUkBtRcvn90iwack+
2PYm4SJTsHG4clRIjEk1n12MNyPbKPu2uANd+kDjlLxrhblo6EOr+pU4GPN57xz6+zKpPvlF53AF
KjEBsDS7fwyT0n/9zV21tMytL92QZGNnKH0HJS7NTB/UIPdBhu1fFgO/LQX1qBr0nPv4iW6h334I
X6I1Df5GsxvBHZRLlaGQxQ2zy3kZS6Temme16JTAfOaGEgdFybnywAGGmMNZXUKgxtZbpJGQvt3p
Ouar8GyaHs/NrjI8qrP7eJZ6R4G2mepZg9SRWtsnRmARihKrJ+lLxCu1gLQXbf71ST9YrQly0qb1
81sVFgJXrhAgbKoPcJIAAAAAAAA=

------=_NextPart_000_0197_01D349A5.8EB144D0--
