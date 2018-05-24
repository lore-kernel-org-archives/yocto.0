Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7F8FE007D4; Thu, 24 May 2018 14:25:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F27FE006F1
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 14:25:33 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 May 2018 14:25:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,437,1520924400"; d="scan'208,217";a="42601630"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
	by fmsmga008.fm.intel.com with ESMTP; 24 May 2018 14:25:33 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
	FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Thu, 24 May 2018 14:25:33 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.70]) by
	fmsmsx118.amr.corp.intel.com ([169.254.1.138]) with mapi id
	14.03.0319.002; Thu, 24 May 2018 14:25:32 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Burton, Ross"
	<ross.burton@intel.com>, "Bystricky, Juro" <juro.bystricky@intel.com>, 
	"denys@ti.com" <denys@ti.com>, "Eggleton, Paul" <paul.eggleton@intel.com>, 
	"Hatle, Mark G (Wind River)" <mark.hatle@windriver.com>, "Jordan, Robin L"
	<robin.l.jordan@intel.com>, "akuster@mvista.com" <akuster@mvista.com>, 
	"MacLeod, Randy (Wind River)" <randy.macleod@windriver.com>, "Purdie,
	Richard" <richard.purdie@intel.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Sullivan, California L"
	<california.l.sullivan@intel.com>, "Brindle, Amanda R"
	<amanda.r.brindle@intel.com>, "Orling, Timothy T"
	<timothy.t.orling@intel.com>
Thread-Topic: Yocto Project Bug Triage
Thread-Index: AdPohFwIbW7NkOtaQw+RvFhDVr96gALIWAjA
Date: Thu, 24 May 2018 21:25:31 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155EC7311A7D@fmsmsx111.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 24 May 2018 15:03:57 -0700
Cc: 'Manjukumar Harthikote Matha' <MANJUKUM@xilinx.com>,
	'Chandana Kalluri' <ckalluri@xilinx.com>
Subject: Yocto Project Bug Triage
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
X-List-Received-Date: Thu, 24 May 2018 21:25:34 -0000
X-Groupsio-MsgNum: 41238
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7311A7Dfmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7311A7Dfmsmsx111amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


...........................................................................=
..............................................................
--> Join Skype Meeting<https://meet.intel.com/stephen.k.jolley/76SHKH6Z>
  Trouble Joining? Try Skype Web App<https://meet.intel.com/stephen.k.jolle=
y/76SHKH6Z?sl=3D1>
Join by phone
+1(916)356-2663 (or your local bridge access #) Choose bridge 5.<tel:+1(916=
)356-2663%20(or%20your%20local%20bridge%20access%20#)%20Choose%20bridge%205=
.> (Global)               English (United States)
Find a local number<https://dial.intel.com>

Conference ID: 1931452285
 Forgot your dial-in PIN?<https://dial.intel.com> |Help<https://o15.officer=
edir.microsoft.com/r/rlidLync15?clid=3D1033&p1=3D5&p2=3D2009>

[!OC([1033])!]
...........................................................................=
..............................................................



--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7311A7Dfmsmsx111amrcor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12pt;"><=
a name=3D"_InsertRtfSavedPosition"></a>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
<div><font face=3D"Calibri" size=3D"1" color=3D"#404040"><span style=3D"fon=
t-size:8pt;">..............................................................=
...........................................................................=
</span></font></div>
<a name=3D"OutJoinLink"></a>
<div><font face=3D"Calibri" size=3D"4" color=3D"#0066CC"><span style=3D"fon=
t-size:14pt;"><font face=3D"Wingdings">=E0</font> <a href=3D"https://meet.i=
ntel.com/stephen.k.jolley/76SHKH6Z"><font size=3D"4"><span style=3D"font-si=
ze:16pt;"><u>Join Skype Meeting</u></span></font></a><font color=3D"black">=
&nbsp;
</font><a name=3D"OutSharedNoteBorder"></a>&nbsp;&nbsp; <a name=3D"OutShare=
dNoteLink"></a> </span></font></div>
<div style=3D"margin-top:3pt;margin-bottom:12pt;padding-left:16pt;"><font f=
ace=3D"Calibri" size=3D"2"><span style=3D"font-size:10pt;">Trouble Joining?=
 <a href=3D"https://meet.intel.com/stephen.k.jolley/76SHKH6Z?sl=3D1"><font =
color=3D"#0066CC"><u>Try Skype Web App</u></font></a><u>
</u></span></font></div>
<div><font face=3D"Calibri" size=3D"3"><span style=3D"font-size:13pt;">Join=
 by phone</span></font></div>
<div style=3D"margin-bottom:2pt;"><font face=3D"Calibri" size=3D"2"><span s=
tyle=3D"font-size:11pt;"><a href=3D"tel:&#43;1(916)356-2663 (or your local =
bridge access #) Choose bridge 5."><font size=3D"2" color=3D"#0066CC"><span=
 style=3D"font-size:10pt;"><u>&#43;1(916)356-2663 (or your
local bridge access #) Choose bridge 5.</u></span></font></a><font size=3D"=
2"><span style=3D"font-size:10pt;"> (Global)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; English (United=
 States) </span></font></span></font></div>
<div style=3D"margin-bottom:2pt;"><font face=3D"Calibri" size=3D"2"><span s=
tyle=3D"font-size:11pt;"><a href=3D"https://dial.intel.com"><font size=3D"2=
" color=3D"#0066CC"><span style=3D"font-size:10pt;"><u>Find a local number<=
/u></span></font></a> </span></font></div>
<div style=3D"margin-bottom:2pt;"><font face=3D"Calibri" size=3D"2"><span s=
tyle=3D"font-size:11pt;">&nbsp;</span></font></div>
<div style=3D"margin-bottom:2pt;"><font face=3D"Calibri" size=3D"2"><span s=
tyle=3D"font-size:10pt;">Conference ID: 1931452285</span></font></div>
<div><font face=3D"Calibri" size=3D"1"><span style=3D"font-size:3pt;"> <a h=
ref=3D"https://dial.intel.com"><font size=3D"2" color=3D"#0066CC"><span sty=
le=3D"font-size:10pt;"><u>Forgot your dial-in PIN?</u></span></font></a> <f=
ont size=3D"2"><span style=3D"font-size:11pt;">|</span></font><a href=3D"ht=
tps://o15.officeredir.microsoft.com/r/rlidLync15?clid=3D1033&amp;p1=3D5&amp=
;p2=3D2009"><font size=3D"2" color=3D"#0066CC"><span style=3D"font-size:10p=
t;"><u>Help</u></span></font></a>&nbsp;&nbsp;&nbsp;&nbsp;
</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
<div><font face=3D"Calibri" size=3D"1" color=3D"#CFCFCF"><span style=3D"fon=
t-size:1pt;"><font size=3D"1"><span style=3D"font-size:0.65pt;"><sub>[!OC([=
1033])!]</sub></span></font></span></font></div>
<div style=3D"margin-bottom:10pt;"><font face=3D"Calibri" size=3D"1" color=
=3D"#404040"><span style=3D"font-size:8pt;">...............................=
...........................................................................=
...............................</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
</span></font>
</body>
</html>

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7311A7Dfmsmsx111amrcor_
Content-Type: text/calendar; charset="utf-8"; method=REQUEST
Content-Transfer-Encoding: base64

QkVHSU46VkNBTEVOREFSDQpNRVRIT0Q6UkVRVUVTVA0KUFJPRElEOk1pY3Jvc29mdCBFeGNoYW5n
ZSBTZXJ2ZXIgMjAxMA0KVkVSU0lPTjoyLjANCkJFR0lOOlZUSU1FWk9ORQ0KVFpJRDpQYWNpZmlj
IFN0YW5kYXJkIFRpbWUNCkJFR0lOOlNUQU5EQVJEDQpEVFNUQVJUOjE2MDEwMTAxVDAyMDAwMA0K
VFpPRkZTRVRGUk9NOi0wNzAwDQpUWk9GRlNFVFRPOi0wODAwDQpSUlVMRTpGUkVRPVlFQVJMWTtJ
TlRFUlZBTD0xO0JZREFZPTFTVTtCWU1PTlRIPTExDQpFTkQ6U1RBTkRBUkQNCkJFR0lOOkRBWUxJ
R0hUDQpEVFNUQVJUOjE2MDEwMTAxVDAyMDAwMA0KVFpPRkZTRVRGUk9NOi0wODAwDQpUWk9GRlNF
VFRPOi0wNzAwDQpSUlVMRTpGUkVRPVlFQVJMWTtJTlRFUlZBTD0xO0JZREFZPTJTVTtCWU1PTlRI
PTMNCkVORDpEQVlMSUdIVA0KRU5EOlZUSU1FWk9ORQ0KQkVHSU46VkVWRU5UDQpPUkdBTklaRVI7
Q049IkpvbGxleSwgU3RlcGhlbiBLIjpNQUlMVE86c3RlcGhlbi5rLmpvbGxleUBpbnRlbC5jb20N
CkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049eW9jdG9AeW9jdA0KIG9wcm9qZWN0Lm9yZzpNQUlMVE86eW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZw0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNU
SU9OO1JTVlA9VFJVRTtDTj0iQnVydG9uLCBSbw0KIHNzIjpNQUlMVE86cm9zcy5idXJ0b25AaW50
ZWwuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJ
T047UlNWUD1UUlVFO0NOPSJCeXN0cmlja3ksDQogIEp1cm8iOk1BSUxUTzpqdXJvLmJ5c3RyaWNr
eUBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURT
LUFDVElPTjtSU1ZQPVRSVUU7Q049ZGVueXNAdGkuYw0KIG9tOk1BSUxUTzpkZW55c0B0aS5jb20N
CkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQ
PVRSVUU7Q049IkVnZ2xldG9uLCANCiBQYXVsIjpNQUlMVE86cGF1bC5lZ2dsZXRvbkBpbnRlbC5j
b20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtS
U1ZQPVRSVUU7Q049IkhhdGxlLCBNYXINCiBrIEcgKFdpbmQgUml2ZXIpIjpNQUlMVE86bWFyay5o
YXRsZUB3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RB
VD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJKb3JkYW4sIFJvDQogYmluIEwiOk1BSUxUTzpy
b2Jpbi5sLmpvcmRhbkBpbnRlbC5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BB
UlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049YWt1c3RlckBtdg0KIGlzdGEuY29tOk1B
SUxUTzpha3VzdGVyQG12aXN0YS5jb20NCkFUVEVOREVFO1JPTEU9UkVRLVBBUlRJQ0lQQU5UO1BB
UlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049Ik1hY0xlb2QsIFINCiBhbmR5IChXaW5k
IFJpdmVyKSI6TUFJTFRPOnJhbmR5Lm1hY2xlb2RAd2luZHJpdmVyLmNvbQ0KQVRURU5ERUU7Uk9M
RT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iUHVy
ZGllLCBSaQ0KIGNoYXJkIjpNQUlMVE86cmljaGFyZC5wdXJkaWVAaW50ZWwuY29tDQpBVFRFTkRF
RTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NO
PSJTYW5nYWwsIEFwDQogb29ydiI6TUFJTFRPOmFwb29ydi5zYW5nYWxAaW50ZWwuY29tDQpBVFRF
TkRFRTtST0xFPVJFUS1QQVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVF
O0NOPSJTdWxsaXZhbiwgDQogQ2FsaWZvcm5pYSBMIjpNQUlMVE86Y2FsaWZvcm5pYS5sLnN1bGxp
dmFuQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVF
RFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iQnJpbmRsZSwgQQ0KIG1hbmRhIFIiOk1BSUxUTzphbWFu
ZGEuci5icmluZGxlQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1SRVEtUEFSVElDSVBBTlQ7UEFS
VFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iT3JsaW5nLCBUaQ0KIG1vdGh5IFQiOk1B
SUxUTzp0aW1vdGh5LnQub3JsaW5nQGludGVsLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElD
SVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iTXVlbGxlciwgUg0KIG9i
ZXJ0IjpNQUlMVE86cm9iZXJ0Lm11ZWxsZXJAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1Q
QVJUSUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJTdGV3YXJ0LCBE
DQogYXZpZCBDIjpNQUlMVE86ZGF2aWQuYy5zdGV3YXJ0QGludGVsLmNvbQ0KQVRURU5ERUU7Uk9M
RT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0nTWFu
anVrdW1hDQogciBIYXJ0aGlrb3RlIE1hdGhhJzpNQUlMVE86TUFOSlVLVU1AeGlsaW54LmNvbQ0K
QVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9
VFJVRTtDTj0iTWFjTGVvZCwgUg0KIGFuZHkgKFdpbmQgUml2ZXIpIjpNQUlMVE86cmFuZHkubWFj
bGVvZEB3aW5kcml2ZXIuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJUSUNJUEFOVDtQQVJUU1RB
VD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdBcmF2aW5kaGwNCiBhbCBHLlMuUyc6TUFJTFRP
OmFyYXZpbmRobGFsZ3NzQGVtYmVkdXIuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJUSUNJUEFO
VDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdBbGVqYW5kcm8NCiAgZGVsIENh
c3RpbGxvJzpNQUlMVE86YWxlamFuZHJvLmRlbGNhc3RpbGxvQG5pLmNvbQ0KQVRURU5ERUU7Uk9M
RT1PUFQtUEFSVElDSVBBTlQ7UEFSVFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0iQm9k
a2UsIEtpcw0KIGhvcmUgSyI6TUFJTFRPOmtpc2hvcmUuay5ib2RrZUBpbnRlbC5jb20NCkFUVEVO
REVFO1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7
Q049IkFuZywgQ2hpbiANCiBIdWF0IjpNQUlMVE86Y2hpbi5odWF0LmFuZ0BpbnRlbC5jb20NCkFU
VEVOREVFO1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRS
VUU7Q049J1ZpZ25lc2ggUg0KIGFqZW5kcmFuIChSQkVJL0VDRjMpJzpNQUlMVE86VmlnbmVzaC5S
YWplbmRyYW5AaW4uYm9zY2guY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJUSUNJUEFOVDtQQVJU
U1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdSaWNoIFRvbGwNCiBlcnRvbic6TUFJTFRP
OnJpY2gudG9sbGVydG9uQG5pLmNvbQ0KQVRURU5ERUU7Uk9MRT1PUFQtUEFSVElDSVBBTlQ7UEFS
VFNUQVQ9TkVFRFMtQUNUSU9OO1JTVlA9VFJVRTtDTj0nUGllcnJlIFl2DQogZXMgTU9SRFJFVCc6
TUFJTFRPOnBpZXJyZS15dmVzLm1vcmRyZXRAc3QuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJU
SUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdIaXRlc2ggVHINCiBp
dmVkaSc6TUFJTFRPOmh0cml2ZWRpQGZpdGJpdC5jb20NCkFUVEVOREVFO1JPTEU9T1BULVBBUlRJ
Q0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049J0NoYW5kYW5hIA0KIEth
bGx1cmknOk1BSUxUTzpja2FsbHVyaUB4aWxpbnguY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJU
SUNJUEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJNb3NlcywgRnJlDQog
ZCI6TUFJTFRPOmZyZWQubW9zZXNAaW50ZWwuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJUSUNJ
UEFOVDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSdKb3NodWEgV2ENCiB0dCc6
TUFJTFRPOmpwZXdoYWNrZXJAZ21haWwuY29tDQpBVFRFTkRFRTtST0xFPU9QVC1QQVJUSUNJUEFO
VDtQQVJUU1RBVD1ORUVEUy1BQ1RJT047UlNWUD1UUlVFO0NOPSJaaGFvLCBaaGVuDQogZmVuZyAo
V2luZCBSaXZlcikiOk1BSUxUTzp6aGVuZmVuZy56aGFvQHdpbmRyaXZlci5jb20NCkFUVEVOREVF
O1JPTEU9T1BULVBBUlRJQ0lQQU5UO1BBUlRTVEFUPU5FRURTLUFDVElPTjtSU1ZQPVRSVUU7Q049
J0lEIC0gRGF2aQ0KIGQgVG9ycmVzJzpNQUlMVE86ZHRvcnJlc0BmZXJtYXguY29tDQpERVNDUklQ
VElPTjtMQU5HVUFHRT1lbi1VUzpcbi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4NCiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLg0KIC4uLi4uLi4uLi4uLi4uLi4uXG4tLT4g
Sm9pbiBTa3lwZSBNZWV0aW5nPGh0dHBzOi8vbWVldC5pbnRlbC5jb20vc3RlcGhlbi5rDQogLmpv
bGxleS83NlNIS0g2Wj5cbiAgVHJvdWJsZSBKb2luaW5nPyBUcnkgU2t5cGUgV2ViIEFwcDxodHRw
czovL21lZXQuaW50ZWwNCiAuY29tL3N0ZXBoZW4uay5qb2xsZXkvNzZTSEtINlo/c2w9MT5cbkpv
aW4gYnkgcGhvbmVcbisxKDkxNikzNTYtMjY2MyAob3IgeQ0KIG91ciBsb2NhbCBicmlkZ2UgYWNj
ZXNzICMpIENob29zZSBicmlkZ2UgNS48dGVsOisxKDkxNikzNTYtMjY2MyUyMChvciUyMHlvDQog
dXIlMjBsb2NhbCUyMGJyaWRnZSUyMGFjY2VzcyUyMCMpJTIwQ2hvb3NlJTIwYnJpZGdlJTIwNS4+
IChHbG9iYWwpICAgICAgICANCiAgICAgICAgRW5nbGlzaCAoVW5pdGVkIFN0YXRlcylcbkZpbmQg
YSBsb2NhbCBudW1iZXI8aHR0cHM6Ly9kaWFsLmludGVsLmNvbQ0KID5cblxuQ29uZmVyZW5jZSBJ
RDogMTkzMTQ1MjI4NVxuIEZvcmdvdCB5b3VyIGRpYWwtaW4gUElOPzxodHRwczovL2RpYWwuaW50
DQogZWwuY29tPiB8SGVscDxodHRwczovL28xNS5vZmZpY2VyZWRpci5taWNyb3NvZnQuY29tL3Iv
cmxpZEx5bmMxNT9jbGlkPTEwMzMNCiAmcDE9NSZwMj0yMDA5PlxuXG5bIU9DKFsxMDMzXSkhXVxu
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLg0KIC4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uDQogLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi5cblxuXG4NClJSVUxFOkZSRVE9V0VFS0xZO1VO
VElMPTIwMTgwNTI0VDE0MzAwMFo7SU5URVJWQUw9MTtCWURBWT1USDtXS1NUPVNVDQpTVU1NQVJZ
O0xBTkdVQUdFPWVuLVVTOllvY3RvIFByb2plY3QgQnVnIFRyaWFnZQ0KRFRTVEFSVDtUWklEPVBh
Y2lmaWMgU3RhbmRhcmQgVGltZToyMDE4MDUxN1QwNzMwMDANCkRURU5EO1RaSUQ9UGFjaWZpYyBT
dGFuZGFyZCBUaW1lOjIwMTgwNTE3VDA4MzAwMA0KVUlEOjA0MDAwMDAwODIwMEUwMDA3NEM1Qjcx
MDFBODJFMDA4MDAwMDAwMDA4MERFODkxNDRBRThEMzAxMDAwMDAwMDAwMDAwMDAwDQogMDEwMDAw
MDAwQTEwMzJGRjE5OEM5N0U0NUI4MTIyQUU4OUNFREZGQTQNCkNMQVNTOlBVQkxJQw0KUFJJT1JJ
VFk6NQ0KRFRTVEFNUDoyMDE4MDUyNFQyMTI1MjdaDQpUUkFOU1A6T1BBUVVFDQpTVEFUVVM6Q09O
RklSTUVEDQpTRVFVRU5DRTozDQpMT0NBVElPTjtMQU5HVUFHRT1lbi1VUzpTa3lwZSBNZWV0aW5n
DQpYLU1JQ1JPU09GVC1DRE8tQVBQVC1TRVFVRU5DRTozDQpYLU1JQ1JPU09GVC1DRE8tT1dORVJB
UFBUSUQ6NzI2MjkyNDUwDQpYLU1JQ1JPU09GVC1DRE8tQlVTWVNUQVRVUzpURU5UQVRJVkUNClgt
TUlDUk9TT0ZULUNETy1JTlRFTkRFRFNUQVRVUzpCVVNZDQpYLU1JQ1JPU09GVC1DRE8tQUxMREFZ
RVZFTlQ6RkFMU0UNClgtTUlDUk9TT0ZULUNETy1JTVBPUlRBTkNFOjENClgtTUlDUk9TT0ZULUNE
Ty1JTlNUVFlQRToxDQpYLU1JQ1JPU09GVC1ESVNBTExPVy1DT1VOVEVSOkZBTFNFDQpCRUdJTjpW
QUxBUk0NCkFDVElPTjpESVNQTEFZDQpERVNDUklQVElPTjpSRU1JTkRFUg0KVFJJR0dFUjtSRUxB
VEVEPVNUQVJUOi1QVDE1TQ0KRU5EOlZBTEFSTQ0KRU5EOlZFVkVOVA0KRU5EOlZDQUxFTkRBUg0K

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC7311A7Dfmsmsx111amrcor_--
