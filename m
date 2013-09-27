Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74285E01536
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 09:19:06 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 27 Sep 2013 09:19:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,994,1371106800"; 
	d="p7s'?scan'208,217";a="300187934"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Sep 2013 09:19:05 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.14]) by
	ORSMSX110.amr.corp.intel.com ([169.254.3.84]) with mapi id
	14.03.0123.003; Fri, 27 Sep 2013 09:19:04 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Tudor Florea <Tudor.Florea@enea.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto]  [eclipse-poky] Issue in TerminalHandler
Thread-Index: Ac67YFco/qkQSfrqRtup+DfeVfe79QAPMlQg
Date: Fri, 27 Sep 2013 16:19:05 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73CB8270@ORSMSX103.amr.corp.intel.com>
References: <26724FB0BFCB3D4C91BDE184751AA3A428939DDB@sestoex09.enea.se>
In-Reply-To: <26724FB0BFCB3D4C91BDE184751AA3A428939DDB@sestoex09.enea.se>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [eclipse-poky] Issue in TerminalHandler
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
X-List-Received-Date: Fri, 27 Sep 2013 16:19:09 -0000
X-Groupsio-MsgNum: 16269
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0061_01CEBB62.9C5D6A80"

------=_NextPart_000_0061_01CEBB62.9C5D6A80
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0062_01CEBB62.9C5D9190"

------=_NextPart_001_0062_01CEBB62.9C5D9190
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

The TerminalHandler is used across board, if it's just some special case for
latencytop, can you just change the latencytop usage from vt100 to xterm?

 

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Tudor Florea
Sent: Friday, September 27, 2013 2:10 AM
To: yocto@yoctoproject.org
Subject: [yocto] [eclipse-poky] Issue in TerminalHandler

 

Hello

I'd like to have change the terminal emulator in TerminalHandler to xterm
instead of current vt100 in order to avoid having unreadable output for
latencytop due to some control characters.

Please let me know if you have some concern about this change.

Regards,

  Tudor.


------=_NextPart_001_0062_01CEBB62.9C5D9190
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'color:#1F497D'>The TerminalHandler is used across board, if =
it&#8217;s just some special case for latencytop, can you just change =
the latencytop usage from vt100 to xterm?<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'color:#1F497D'><o:p>&nbsp;</o:p></span></p><div><div =
style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>From:</span>=
</b><span style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'> =
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] =
<b>On Behalf Of </b>Tudor Florea<br><b>Sent:</b> Friday, September 27, =
2013 2:10 AM<br><b>To:</b> yocto@yoctoproject.org<br><b>Subject:</b> =
[yocto] [eclipse-poky] Issue in =
TerminalHandler<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Hello<o:p></o:p></p><p class=3DMsoNormal>I&#8217;d =
like to have change the terminal emulator in TerminalHandler to xterm =
instead of current vt100 in order to avoid having unreadable output for =
latencytop due to some control characters.<o:p></o:p></p><p =
class=3DMsoNormal>Please let me know if you have some concern about this =
change.<o:p></o:p></p><p class=3DMsoNormal>Regards,<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp; Tudor.<o:p></o:p></p></div></body></html>

------=_NextPart_001_0062_01CEBB62.9C5D9190--

------=_NextPart_000_0061_01CEBB62.9C5D6A80
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIh7DCCAyAw
ggKJoAMCAQICBDXe9M8wDQYJKoZIhvcNAQEFBQAwTjELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0Vx
dWlmYXgxLTArBgNVBAsTJEVxdWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTAeFw05
ODA4MjIxNjQxNTFaFw0xODA4MjIxNjQxNTFaME4xCzAJBgNVBAYTAlVTMRAwDgYDVQQKEwdFcXVp
ZmF4MS0wKwYDVQQLEyRFcXVpZmF4IFNlY3VyZSBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkwgZ8wDQYJ
KoZIhvcNAQEBBQADgY0AMIGJAoGBAMFdsVhnCGLuoJotHwhtkRRomAoe/toEbxOEYiHD0XzOnwXg
uAHwTjTs4oqVBGSs8WtTXwWzy2eAv0ICjv7dAQns4QAUT/z78AzdQ7pbK+EfgHCZFVeTFvEPl2q3
wmgjHMxNWTCsUR47ryvW7mNFe8XZX1DS41APOojnvxT94Me5AgMBAAGjggEJMIIBBTBwBgNVHR8E
aTBnMGWgY6BhpF8wXTELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0VxdWlmYXgxLTArBgNVBAsTJEVx
dWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTENMAsGA1UEAxMEQ1JMMTAaBgNVHRAE
EzARgQ8yMDE4MDgyMjE2NDE1MVowCwYDVR0PBAQDAgEGMB8GA1UdIwQYMBaAFEjmaPkr0rKV10fY
IyAQTzOYkJ/UMB0GA1UdDgQWBBRI5mj5K9KylddH2CMgEE8zmJCf1DAMBgNVHRMEBTADAQH/MBoG
CSqGSIb2fQdBAAQNMAsbBVYzLjBjAwIGwDANBgkqhkiG9w0BAQUFAAOBgQBYzinq/Pfetc4CuRe1
hdG54+CVzCUxDQCmkm5/tpJjnlCV0Zpv5BHeY4VumO6o/1rI01WyZnFX3sAh6z0qpyNJAQSGQnv8
7n+iFlK1Z2fTQNs7JliyKHc9rhR3Ydb6KmYnoA36p3Nc6nDxlCFlRF/6/O8paKmih3nvee9PrAd3
ODCCAz0wggKmoAMCAQICAwWw/zANBgkqhkiG9w0BAQUFADBOMQswCQYDVQQGEwJVUzEQMA4GA1UE
ChMHRXF1aWZheDEtMCsGA1UECxMkRXF1aWZheCBTZWN1cmUgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
MB4XDTA2MDIxNjE4MDEzMFoXDTE2MDIxOTE4MDEzMFowUjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMScwJQYDVQQDEx5JbnRlbCBFeHRlcm5hbCBCYXNpYyBQb2xpY3kg
Q0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDBpd/XOb9QVqEZ8mQ1042TdOIq3ATD
IsV2xDyt30yLyMR5Wjtus0bn3B+he89BiNO/LP6+rFzEwlD55PlX+HLGIKeNNG97dqyc30FElEUj
ZzTZFq2N4e3kVJ/XAEEgANzV8v9qp7qWwxugPgfc3z9BkYot+CifozexHLb/hEZj+yISCU61kRZv
uSQ0E11yYL4dRgcglJeaHo3oX57rvIckaLsYV5/1Aj+R8DM1Ppk965XQAKsHfnyT7C4S50T4lVn4
lz36wOdNZn/zegG1zp41lnoTFfT4KuKVJH5x7YD1p6KbgJCKLovnujGuohquBNfdXKpZkvz6pGv+
iC1HawJdAgMBAAGjgaAwgZ0wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBQaxgxKxEdvqNutK/D0
Vgaj7TdUDDA6BgNVHR8EMzAxMC+gLaArhilodHRwOi8vY3JsLmdlb3RydXN0LmNvbS9jcmxzL3Nl
Y3VyZWNhLmNybDAfBgNVHSMEGDAWgBRI5mj5K9KylddH2CMgEE8zmJCf1DAPBgNVHRMBAf8EBTAD
AQH/MA0GCSqGSIb3DQEBBQUAA4GBABMQOK2kVKVIlUWwLTdywJ+e2O+PC/uQltK2F3lRyrPfBn69
tOkIP4SgDJOfsxyobIrPLe75kBLw+Dom13OBDp/EMZJZ1CglQfVV8co9mT3aZMjSGGQiMgkJLR3j
Mfr900fXZKj5XeqCJ+JP0mEhJGEdVCY+FFlksJjV86fDrq1QMIIENjCCAx6gAwIBAgIBATANBgkq
hkiG9w0BAQUFADBvMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsT
HUFkZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5h
bCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowbzELMAkGA1UEBhMCU0Ux
FDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5hbCBUVFAgTmV0
d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9vdDCCASIwDQYJKoZIhvcNAQEB
BQADggEPADCCAQoCggEBALf3GjPm8gAELTngTlvtH7xsD821+iO2zt6bETOXpClMfZOfvUq8k+0D
GuOPz+VtUFrWlymUWoCwSXrbLpX9uMq/NzgtHj6RQa1wVsfwTz/oMp50ysiQVOnGXw94nZpAPA6s
YapeFI+eh6FqUNzXmk6vBbOmcZSccbNQYArHE504B4YCqOmoaSYYkKtMsE8jqzpPhNjfzp/haW+7
10LXa0Tkx63ubUFfclpxCDezeWWkWaCUN/cALw3CknLa0Dhy2xSoRcRdKn23tNbE7qzNE0S3ySvd
QwAl+mG5aWpYIxG3pzOPVnVZ9c0p10a3CitlttNCbxWyuHv77+ldU9U0WicCAwEAAaOB3DCB2TAd
BgNVHQ4EFgQUrb2YejS0Jvf6xCZU7wO94CTLVBowCwYDVR0PBAQDAgEGMA8GA1UdEwEB/wQFMAMB
Af8wgZkGA1UdIwSBkTCBjoAUrb2YejS0Jvf6xCZU7wO94CTLVBqhc6RxMG8xCzAJBgNVBAYTAlNF
MRQwEgYDVQQKEwtBZGRUcnVzdCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5l
dHdvcmsxIjAgBgNVBAMTGUFkZFRydXN0IEV4dGVybmFsIENBIFJvb3SCAQEwDQYJKoZIhvcNAQEF
BQADggEBALCb4IUlwtYj4g+WBpKdQZic2YR5gdkeWxQHIzZlj7DYd7usQWxHYINRsPkyPef89iYT
x4AWpb9a/IfPeHmJIZriTAcKhjW88t5RxNKWt9x+Tu5w/Rw56wwCURQtjr0W4MHfRnXnJK3s9EK0
hZNwEGe6nQY1ShjTK3rMUUKhemPR5ruhxSvCNr4TDea9Y355e6cJDUCrat2PisP29owaQgVR1EX1
n6diIWgVIEM8med8vSTYqZEXc4g/VhsxOBi0cQ+azcgOno4uG+GMmIPLHzHxREzGBHNJdmAPx/i9
F4BrLunMTA5amnkPIAou1Z5jJh5VkpTYghdae9C8x49OhgQwggTrMIID06ADAgECAhBS6QLKEehE
nZRlOC+jGjC7MA0GCSqGSIb3DQEBBQUAMG8xCzAJBgNVBAYTAlNFMRQwEgYDVQQKEwtBZGRUcnVz
dCBBQjEmMCQGA1UECxMdQWRkVHJ1c3QgRXh0ZXJuYWwgVFRQIE5ldHdvcmsxIjAgBgNVBAMTGUFk
ZFRydXN0IEV4dGVybmFsIENBIFJvb3QwHhcNMTMwMzE5MDAwMDAwWhcNMjAwNTMwMTA0ODM4WjB5
MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDASBgNVBAcTC1NhbnRhIENsYXJhMRowGAYDVQQK
ExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWlu
ZyBDQSA0QTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOCwzICd2ElV+gPbBPo4x92/
hd12vOs9yyyrv+lr4yHb1G8Z6M9qp75fVCkCN7BNc1EUMa34L7T9Gz4Ldbg8AHy3Oh+Xqp8ovuxa
z7ExgkeIMA5qtVpE0IDQzV1IG+9Xvf+rH6vlnwg6YvEnGoJciwkae6Yf1etHG4rQb52RXpSggwYd
99kuiht2wHZzRgf75POm8A5WOqJg7Ov0bHzcM0FcKPzN6D67sesus8iKEbpX5FRDWzNP/Ua80Dpc
iuFuVZOBBLH1to5QleFvN0CqkXHACiFMcNqvx6B1T22xE66y5hOkUWf/nlpZBlpfprceNhzoDpl9
AUXU0aPbx+8ngaMCAwEAAaOCAXcwggFzMB8GA1UdIwQYMBaAFK29mHo0tCb3+sQmVO8DveAky1Qa
MB0GA1UdDgQWBBQeaSq03Cj+RxhOIQs/vKwRL/CY9TAOBgNVHQ8BAf8EBAMCAYYwEgYDVR0TAQH/
BAgwBgEB/wIBADA2BgNVHSUELzAtBggrBgEFBQcDBAYKKwYBBAGCNwoDBAYKKwYBBAGCNwoDDAYJ
KwYBBAGCNxUFMBcGA1UdIAQQMA4wDAYKKoZIhvhNAQUBaTBJBgNVHR8EQjBAMD6gPKA6hjhodHRw
Oi8vY3JsLnRydXN0LXByb3ZpZGVyLmNvbS9BZGRUcnVzdEV4dGVybmFsQ0FSb290LmNybDA6Bggr
BgEFBQcBAQQuMCwwKgYIKwYBBQUHMAGGHmh0dHA6Ly9vY3NwLnRydXN0LXByb3ZpZGVyLmNvbTA1
BgNVHR4ELjAsoCowC4EJaW50ZWwuY29tMBugGQYKKwYBBAGCNxQCA6ALDAlpbnRlbC5jb20wDQYJ
KoZIhvcNAQEFBQADggEBACnCzaP9kqNSZ6IvBu1uUOhUj6tX5silt7Eg39Wpr8h5IxIHduZ+zCkR
xhJkccaM4jyqXJm312FPidIOetJwqOYDxe/Fne2Zs3JgnJtVBRXyMX8OkANfW0aUwvGzDGkkhJfM
t/T4MGvhxDZqD2bDOtw3Wes4g5z6nEm3H2LPKnf5uXdtq6V6uSBlVLV+i1+0f4UksP97HwE5wS4I
ibYpVcmOzhhpmCggEtiNOIrb0ktVrXnF07fTmQ8jW5ey7Tmwa4DC4WZKSVvqTkfX94eVRtkubipA
O04fTQvRKEnHcEAgCMPlFim0kNCLI9lBS+3xyr5qlilUy/fLEc7yN7HjQuAwggWKMIIEcqADAgEC
AgphHoC3AAAAAAAHMA0GCSqGSIb3DQEBBQUAMFIxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRl
bCBDb3Jwb3JhdGlvbjEnMCUGA1UEAxMeSW50ZWwgRXh0ZXJuYWwgQmFzaWMgUG9saWN5IENBMB4X
DTA5MDUxNTE5MjUxM1oXDTE1MDUxNTE5MzUxM1owVjELMAkGA1UEBhMCVVMxGjAYBgNVBAoTEUlu
dGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENB
IDNBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwY+AYuc47kg7OUdF+vVd8JVv3tXg
FHZBWk9nsKtwhD4UZrYocP/p0+PDE4iu0VN19bgFiKR0WbFRlUFZFZnlXJ7ZwJ0bMVaogQ4TV7Xu
c3HWMzxnoZkSpsNRL68G4+UEUcpChWbkFo0genKfZdnGrCNX2Pn9ysh8+sIay2T7bO1SFVLw4cSD
M7vzg+AP2k6AGecBtkeYQzUVhiZDqJtL6BUIfOhsNgb5hF5GIekUpYHGlS4/5fRZgXD8lrUlbs3y
kQsAUPDRQUFYWCK/VAi6x0u9LLyZywsnnDLTnQ5VzFKGqhTGHD/C/K66hDG+YQ+OFFrULahIKYY3
TTTcYyFBYwIDAQABo4ICXDCCAlgwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUqhZmr7c9VlNg
rg3C7fPuB8tRYH4wCwYDVR0PBAQDAgGGMBIGCSsGAQQBgjcVAQQFAgMBAAEwIwYJKwYBBAGCNxUC
BBYEFMIrCFPH6F0ywoKA6ZbAuCNCwBX5MBkGCSsGAQQBgjcUAgQMHgoAUwB1AGIAQwBBMB8GA1Ud
IwQYMBaAFBrGDErER2+o260r8PRWBqPtN1QMMIG9BgNVHR8EgbUwgbIwga+ggayggamGTmh0dHA6
Ly93d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUy
MFBvbGljeSUyMENBLmNybIZXaHR0cDovL2NlcnRpZmljYXRlcy5pbnRlbC5jb20vcmVwb3NpdG9y
eS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwUG9saWN5JTIwQ0EuY3JsMIHjBggrBgEF
BQcBAQSB1jCB0zBjBggrBgEFBQcwAoZXaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9j
ZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwUG9saWN5JTIwQ0EuY3J0MGwG
CCsGAQUFBzAChmBodHRwOi8vY2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRp
ZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcnQwDQYJKoZI
hvcNAQEFBQADggEBAJRj/V3QxLpU9OUhw6GjVdaHX3c8PmQkMlI92mEsdB0zWgoD7CEx0gGhjVXN
MMMr4L4TLglzKdrt+kLy5Waf9HP+L0xm3Jzup7M+1lOf1TI5G8mZ10f47H9HJwbB7dqCzyNR2ykQ
Kitg6QnJmSycMiVNVS9tHvDJj6AYlirFZeqtxUUSIyxa7z84iV/sXaABgwHDWRnnl2fiVYEgzRaq
9F5ak++Fh43tj7cwoR1IyRDtNmI1t91nkP/wp9Y0xMnhUeW06AIvWUDm3H8XhHX3bSySkvl67dKP
rnRFR7es5expXk3InMHAHfX7XOyaV5V0UPST8XD0fFdsBATfm5w3/sIwggZWMIIFPqADAgECAgoU
k1n3AAEAAF9GMA0GCSqGSIb3DQEBBQUAMFYxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRlbCBD
b3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSAzQTAe
Fw0xMTA0MTAwNDUwMTVaFw0xNDAzMjUwNDUwMTVaMEExFzAVBgNVBAMTDlpoYW5nLCBKZXNzaWNh
MSYwJAYJKoZIhvcNAQkBFhdqZXNzaWNhLnpoYW5nQGludGVsLmNvbTCCASIwDQYJKoZIhvcNAQEB
BQADggEPADCCAQoCggEBAKa+dkoJ3IOg6wNoxQfo4QUiQ1Swy03i5fy/G2dZf1QUeTX7TRE0YxH5
ddI5+3R012JQawhHDtAZTtCjH4vTGMYI9QqOQcHUUVTROJqgOm/Gww6PWZrw6pPtI6BioyqNROjU
iYCncRh72Q7DApt/Xal90yLhU2rrgtxM87Ak5cKPdRJ7W6NcxI14KCO70pHMf7nOq+0EEweWrnz2
fzdf+lwPmYG68J+2MrVlWZ8HtC3bFU8x5nxhbkAguWzn+5V/4uMigQoO/7XTY9FbeKzydZcz3qAe
tA7tz2ghJHBdigr24h+aFUJb5smXhKlJbI3Lx8EofmXyyla0JCjpLId6XGcCAwEAAaOCAzkwggM1
MAsGA1UdDwQEAwIEMDBEBgkqhkiG9w0BCQ8ENzA1MA4GCCqGSIb3DQMCAgIAgDAOBggqhkiG9w0D
BAICAIAwBwYFKw4DAgcwCgYIKoZIhvcNAwcwHQYDVR0OBBYEFFrRoBxGtuFe0cjYeTjWaC8mdRUc
MD0GCSsGAQQBgjcVBwQwMC4GJisGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OCkcAJZ4S52UGHhP9O
AgFkAgEMMB8GA1UdIwQYMBaAFKoWZq+3PVZTYK4Nwu3z7gfLUWB+MIHPBgNVHR8EgccwgcQwgcGg
gb6ggbuGV2h0dHA6Ly93d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJu
YWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNBKDEpLmNybIZgaHR0cDovL2NlcnRpZmljYXRl
cy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNz
dWluZyUyMENBJTIwM0EoMSkuY3JsMIH1BggrBgEFBQcBAQSB6DCB5TBsBggrBgEFBQcwAoZgaHR0
cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5h
bCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwM0EoMSkuY3J0MHUGCCsGAQUFBzAChmlodHRwOi8v
Y2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4
dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQSgxKS5jcnQwHwYDVR0lBBgwFgYIKwYB
BQUHAwQGCisGAQQBgjcKAwQwKQYJKwYBBAGCNxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3
CgMEMEsGA1UdEQREMEKgJwYKKwYBBAGCNxQCA6AZDBdqZXNzaWNhLnpoYW5nQGludGVsLmNvbYEX
amVzc2ljYS56aGFuZ0BpbnRlbC5jb20wDQYJKoZIhvcNAQEFBQADggEBAAVrYvg2/Qva9YsjRnEm
1ln0HxGtId6+oDLfa3iUD15fTM9WndhkFX5/RsKk0kQAknBr/DlzDs2h73gsfLvF4M/VHqfVJ5NM
102Tja28805aat0rtarzs7QklHvfvlPj+nSmKJSLr0NyydaGKXqoftEKuhnyhVHLNBXTHcCTiitg
WCUqnVibR+ezs3BRj3HELY6qmKnKt92ZRpzMldEfbj/Qn6ZdMteaq8Cd5jZlosNdvDd7+zRV5Wo4
lFXwKeG+f4X/H6gTVxY79lK002Xz3RG7vsOIW6DdrvXc07W7oNS1ZsVz8tcG5H5LxniPeqR4Nwb9
NeI/PbPwMgo4ETM4W5wwggZyMIIFWqADAgECAgofzX8BAAIAABdlMA0GCSqGSIb3DQEBBQUAMHkx
CzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5n
IENBIDRBMB4XDTEzMDcyMjIyMzYyOVoXDTE2MDcwNjIyMzYyOVowQTEXMBUGA1UEAxMOWmhhbmcs
IEplc3NpY2ExJjAkBgkqhkiG9w0BCQEWF2plc3NpY2EuemhhbmdAaW50ZWwuY29tMIIBIjANBgkq
hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAus8+rXFM8Hk6niQ3hvGG0u4Scg0bT919KmcyohSpUB5c
21TwlRzLyVPF91DX2dRBMuLK3RS52f/UC/FmP8PUehjLJUUQVhvdyb8PeqcSc203mX8IZgrEOIJj
P88qNxDvey6DU8db4aKW2Gl3AHQFEY+9ewujp28NvxCB0rAea+B83CIqGjyk2gSizmBs8zR99cnw
E76r3eiDUEa0PTjLRSUkvhGOpeesdqkbzJv1V2Zpf5UqIKcZ6Y482GpA5dv89CyWbAwQ4x2ezEEP
2EjlWlyaqF3Eg+ecCOVr5ScUAGgqisjDh6Asi8US2jX6GIgZSxCqYxo4+v67QVGYhXgqwQIDAQAB
o4IDMjCCAy4wRAYJKoZIhvcNAQkPBDcwNTAOBggqhkiG9w0DAgICAIAwDgYIKoZIhvcNAwQCAgCA
MAcGBSsOAwIHMAoGCCqGSIb3DQMHMB0GA1UdDgQWBBRqasYYBj1SFQNYkQLBh9HD6hYU1DALBgNV
HQ8EBAMCB4AwHwYDVR0jBBgwFoAUHmkqtNwo/kcYTiELP7ysES/wmPUwgckGA1UdHwSBwTCBvjCB
u6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRl
cm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwNEEuY3Jshl1odHRwOi8vY2VydGlmaWNhdGVz
LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1
aW5nJTIwQ0ElMjA0QS5jcmwwgfUGCCsGAQUFBwEBBIHoMIHlMGwGCCsGAQUFBzAChmBodHRwOi8v
d3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIw
QmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0QSgyKS5jcnQwdQYIKwYBBQUHMAKGaWh0dHA6Ly9jZXJ0
aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJu
YWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDRBKDIpLmNydDA8BgkrBgEEAYI3FQcELzAtBiUr
BgEEAYI3FQiGw4x1hJnlUYP9gSiFjp9TgpHACWeB3r05lfBDAgFkAgEIMB8GA1UdJQQYMBYGCCsG
AQUFBwMEBgorBgEEAYI3CgMMMCkGCSsGAQQBgjcVCgQcMBowCgYIKwYBBQUHAwQwDAYKKwYBBAGC
NwoDDDBLBgNVHREERDBCoCcGCisGAQQBgjcUAgOgGQwXamVzc2ljYS56aGFuZ0BpbnRlbC5jb22B
F2plc3NpY2EuemhhbmdAaW50ZWwuY29tMA0GCSqGSIb3DQEBBQUAA4IBAQCF84CjyCAe8e3a2LDc
2s/FMs5/f3/n9XBhyufKMFbl69YKSGHzjR+nA3M3oS6CRJUyKk02WovgcnSu1OUcHb5aARn2f7He
wLwHRatdtUD2QzDjOEbtn5vrvxHEY28cAmrQBgdg4FhjO2z7/eiAoUrj96P0cqeNfxHTu+ku24Jl
5FSbr2YpSQdIoDCaLlMz4M349n/semekzJN00AjxGW6rls77R81ktfmJhcpBVLQdWjpJm2yJ0t5s
NdiwigbAOfAtRmbyHPEpmQ0Z3enZWiYrw+VXNzCW4WL1WADt/9c4aAdfGcY75bI3oEK3oG8InWmZ
2MfdADgxJxW1ZokJsHxiMYIDcDCCA2wCAQEwgYcweTELMAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNB
MRQwEgYDVQQHEwtTYW50YSBDbGFyYTEaMBgGA1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNV
BAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElzc3VpbmcgQ0EgNEECCh/NfwEAAgAAF2UwCQYFKw4D
AhoFAKCCAb0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTMwOTI3
MTYxOTA0WjAjBgkqhkiG9w0BCQQxFgQUyesqKTdKn69vDLljnP5Bu7wAILowcgYJKoZIhvcNAQkP
MWUwYzALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAoGCCqGSIb3DQMHMAsGCWCGSAFlAwQBAjAH
BgUrDgMCGjALBglghkgBZQMEAgMwCwYJYIZIAWUDBAICMAsGCWCGSAFlAwQCATBzBgkrBgEEAYI3
EAQxZjBkMFYxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UE
AxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSAzQQIKFJNZ9wABAABfRjB1BgsqhkiG
9w0BCRACCzFmoGQwVjELMAkGA1UEBhMCVVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSsw
KQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDNBAgoUk1n3AAEAAF9GMA0G
CSqGSIb3DQEBAQUABIIBAK7uAvLigA3k7coWgIwALbHqqKk5gje/nS64jlBTyQKSW+BD7NzT8z/1
0RH4tKZQzs9y30+TLb/D6rsSYlIvEeNp9xV7pKVHmguFM73MQxT9nnph4uTlRmQdUyD+3gFykNCX
ccH7vUrkpZn527iYvWENWYYP+gw7tJSVdO7IiCLIDgW8/hq0H4Ap/kzQSkHeZU1eSBhv1TiOYxJH
dunNrwlFy42vggUhA9/hPxTs2bnI1CnrGV23QCRworpDTGPzsyf6LmR3KYEST8qCbqctO7mGRKeN
UTgQ2wRjiFE5Xg2QFaT8EJFMa6hlnAugujEmHHl2s72L3nt8YEns1COCZeMAAAAAAAA=

------=_NextPart_000_0061_01CEBB62.9C5D6A80--
