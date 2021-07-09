Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
 by mx.groups.io with SMTP id smtpd.web11.8735.1625822610579388003
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jul 2021 02:23:31 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: ohp.de, ip: 212.227.17.24, mailfrom: holzgreve@ohp.de)
Received: from [10.0.1.210] ([185.189.140.137]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mzz6m-1lHDz42LZO-00x2Ei for <yocto@lists.yoctoproject.org>; Fri, 09 Jul 2021
 11:23:28 +0200
Subject: Re: [yocto] #linux #dunfell How to use eclipse with autotools without yocto plugin
From: holzgreve@ohp.de
To: yocto@lists.yoctoproject.org
References: <P3Us.1625817554577445703.w9fT@lists.yoctoproject.org>
Message-ID: <4f584645-81bc-9095-0f91-0f0ec60db365@ohp.de>
Date: Fri, 9 Jul 2021 11:23:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <P3Us.1625817554577445703.w9fT@lists.yoctoproject.org>
X-Provags-ID: V03:K1:XQGA8sicn0rvWODd6+H7bUfUiXXI9lf7rgXZjXrhm/xLPP1mUTj
 iApfjHARFEhH7P+fIiL+v56Pds+1H18Rwz9Ehnupu7ojXUPoEce1YAKfxyirkGK+S6yN7UQ
 YsiuXrkS1gvuSFWsPuNdn6ugwPg4Qp+bIpqB4xRf3SHuhm138xypHkj6M8dXbcGD3sWkcyq
 5xB38tC8t0YzYqT8njGzQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8RUk93h4vkc=:22KTUO0X2xzDsXKzBYDnWu
 Bfm0jBL9SYFx8Xqv7H8WH+UqX005o/gEDuUIaIyXdB74WFI++lc46EkESZF0s6Lr/J4r9DtmT
 vcta248I51hu2vVaM+BMqxnjGe0iyKzOqpw8ksn+P1/GaLHiI5qgTe12tbm/A/G3pqkPExIBo
 W6eZ0xQqQqWuPC0+xWgW0tWvM5R1bqS/+SjYbchQch4LlAQ2m5A6uiaOKt28lghc7eO4pG093
 oxj0pxdQJyeWFJnLjMGEYroSDjn+sBqw0wXm8YkI8y0YUj7LeTiZq/ZqXaQ4sYtVUChUejx/u
 IBm2cUBm3JkxUqyKwpz9UUeFhZ5pEQvfoI7StgQCO4kiZ+s2Db5HricBd4sPhh93PktXseyJc
 xJfsQk8iyQFoD/ArY39yEuPtGKTtvrkpwxTUreT8ij1Fi1Pbn8pqrZO+wThfDb2JqpyFMjbIE
 aulCtlUmtZbTGjLMYGKtmOs01Kc3libU2j0dG7tvzWD2Yowi9I7dry8QhcBbNrBeQqvI9abYw
 g/PvGfpYk3YSoiWM/bT5jugflDUHqQ7NEAvHUFToQibNrWWcnkDiiogP1GkQ7WayoTURRzsaB
 P4bionfLoVC0i4SyCsfgkXHPG0BonIlLY2VllFr6OacmzY+yVV8XIBzMX599VYaYa25mads0m
 aq/5NEUWT0XJ21nUkI28DCHA/G49lU9w64IT/SfpLGYMg8vKxsvCN92EkrUTNzUKgNeZ4JmfT
 IyXDQc51nuhdO+j36LYFsNBAv/kbmLrPgSXhlwhD9CktTZF2y0GFoTqQbsoL0/+RJnUMzhxm5
 EqfQUEhFK+0+C/PPHreV/v4ujPnmJxB82RFzFm5rE/4cP8tnIhqIop+zhP4xtG9/Ykg+VF+
X-Groupsio-MsgNum: 54086
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="------------ms020508080305070904090506"

--------------ms020508080305070904090506
Content-Type: multipart/alternative;
 boundary="------------7519C3017D97CE9DCCEDF620"
Content-Language: en-US

--------------7519C3017D97CE9DCCEDF620
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

> Hi,
>
> we were currently upgrading our yocto system to v3.1. In the older=20
> yocto system there was the "Yocto Eclipse Plugin" available. I saw in=20
> the changelog that unfortunately that this plugin is not maintained=20
> anymore and removed.
>
> From the past we got whole bunch of autotools based projects. Is it=20
> somehow posible to use eclipse for development and debugging keeping=20
> the projects in the autotools world?
>
> I tried using the eSDK (Following:=20
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#sd=
k-working-projects=20
> <https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#s=
dk-working-projects>)
>
> Rebuilding the project from eclipse is now possible. It still=20
> complains that is can run the executable but I can start debugging. I=20
> tried to setup the debugger configuration like it was set up, when the=
=20
> "Yocto Eclipse Plugin" generated it. But when I try to debug the code,=
=20
> eclipse opens up the "Debug Perspective", also attaches to the remotly=
=20
> running gdbserver, but it never stops on breakpoints that were set in=20
> the eclipse GUI.
>
> Is there any chance to use eclipse without the plugin, without=20
> converting all the packages to CMake or plain makefile projects?
>
> Any hints or pointings to the right direction is appreciated.
>
>=20

I found the solution: My problem was that the default project=20
configuration which created by "./configure {CONFIGURE_FLAGS}" doesn't=20
do a build with debug information.

So ./configure {CONFIGURE_FLAGS} CXXFLAGS=3D"-g -O0" has to be called=20
before, and then debug is working.


Sorry for the stupid question before.


Kind regards,

Sebastian


--------------7519C3017D97CE9DCCEDF620
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <blockquote type=3D"cite"
      cite=3D"mid:P3Us.1625817554577445703.w9fT@lists.yoctoproject.org">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      Hi,<br>
      <br>
      we were currently upgrading our yocto system to v3.1. In the older
      yocto system there was the "Yocto Eclipse Plugin" available. I saw
      in the changelog that unfortunately that this plugin is not
      maintained anymore and removed.<br>
      <br>
      From the past we got whole bunch of autotools based projects. Is
      it somehow posible to use eclipse for development and debugging
      keeping the projects in the autotools world?<br>
      <br>
      I tried using the eSDK (Following:=C2=A0<a
href=3D"https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.h=
tml#sdk-working-projects"
        target=3D"_blank" rel=3D"noopener" moz-do-not-send=3D"true">https:=
//www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#sdk-working=
-projects</a>)<br>
      <br>
      Rebuilding the project from eclipse is now possible. It still
      complains that is can run the executable but I can start
      debugging. I tried to setup the debugger configuration like it was
      set up, when the "Yocto Eclipse Plugin" generated it. But when I
      try to debug the code, eclipse opens up the "Debug Perspective",
      also attaches to the remotly running gdbserver, but it never stops
      on breakpoints that were set in the eclipse GUI.<br>
      <br>
      Is there any chance to use eclipse without the plugin, without
      converting all the packages to CMake or plain makefile projects?<br>
      <br>
      Any hints or pointings to the right direction is appreciated.
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">

</pre>
    </blockquote>
    <p>I found the solution: My problem was that the default project
      configuration which created by "./configure {CONFIGURE_FLAGS}"
      doesn't do a build with debug information.</p>
    <p>So ./configure {CONFIGURE_FLAGS} <span id=3D"d067" class=3D"gj id i=
e
        fn jl b dn ju jv s jw" data-selectable-paragraph=3D"">CXXFLAGS=3D"=
-g
        -O0" has to be called before, and then debug is working.<br>
      </span></p>
    <p><span id=3D"d067" class=3D"gj id ie fn jl b dn ju jv s jw"
        data-selectable-paragraph=3D""><br>
      </span></p>
    <p><span id=3D"d067" class=3D"gj id ie fn jl b dn ju jv s jw"
        data-selectable-paragraph=3D"">Sorry for the stupid question
        before.<br>
      </span></p>
    <p><span id=3D"d067" class=3D"gj id ie fn jl b dn ju jv s jw"
        data-selectable-paragraph=3D""><br>
      </span></p>
    <p><span id=3D"d067" class=3D"gj id ie fn jl b dn ju jv s jw"
        data-selectable-paragraph=3D"">Kind regards,</span></p>
    <p><span id=3D"d067" class=3D"gj id ie fn jl b dn ju jv s jw"
        data-selectable-paragraph=3D"">Sebastian<br>
      </span></p>
  </body>
</html>

--------------7519C3017D97CE9DCCEDF620--

--------------ms020508080305070904090506
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCDC0w
ggT0MIID3KADAgECAgMP4PYwDQYJKoZIhvcNAQELBQAwRTELMAkGA1UEBhMCREUxFTATBgNVBAoM
DEQtVHJ1c3QgR21iSDEfMB0GA1UEAwwWRC1UUlVTVCBSb290IENBIDMgMjAxMzAeFw0xMzA5Mjcw
NzMwNDBaFw0yODA5MjAwODI1NTFaMFsxCzAJBgNVBAYTAkRFMRUwEwYDVQQKDAxELVRydXN0IEdt
YkgxNTAzBgNVBAMMLEQtVFJVU1QgQXBwbGljYXRpb24gQ2VydGlmaWNhdGVzIENBIDMtMSAyMDEz
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsL/U1GFo1h3boKtaIzrEMPZHGI4FKLKL
kjWJZYh1CSa4URX8j52diNu1tmcTpwKOMiv03awa2lEElvrqVEhpMHOxK42q7WG7c4d0lkc7d+cT
rexeZlGAZ8rIsXcASttIf0106PkzjHclKZrJ6iN11ToWkjpPBsE9THKJ/2awtRHDVQTq5Ode7n1a
Gay3/nNIeMf1ALe4Q93Xx2glcXU0ZgLPftRQKJF5ql800EgWWPe+tHArNBWzPh+NhoMzKfghnR+k
PyUiFHd+ZzU+FU1XAvrqw3UAzPhp4vTKVXS+IgqE9bRZW5CzBnXyZPFFtbuA3UJHPwKnS0bHNrw6
DxIjrwIDAQABo4IB1TCCAdEwHwYDVR0jBBgwFoAUP5DIfccVb/Mkj6nDL0uiDyGyL+cwQgYIKwYB
BQUHAQEENjA0MDIGCCsGAQUFBzABhiZodHRwOi8vcm9vdC1jYS0zLTIwMTMub2NzcC5kLXRydXN0
Lm5ldDBmBgNVHSAEXzBdMFsGCysGAQQBpTQCgUgBMEwwSgYIKwYBBQUHAgEWPmh0dHA6Ly93d3cu
ZC10cnVzdC5uZXQvaW50ZXJuZXQvZmlsZXMvRC1UUlVTVF9Sb290X1BLSV9DUFMucGRmMIG+BgNV
HR8EgbYwgbMwdKByoHCGbmxkYXA6Ly9kaXJlY3RvcnkuZC10cnVzdC5uZXQvQ049RC1UUlVTVCUy
MFJvb3QlMjBDQSUyMDMlMjAyMDEzLE89RC1UcnVzdCUyMEdtYkgsQz1ERT9jZXJ0aWZpY2F0ZXJl
dm9jYXRpb25saXN0MDugOaA3hjVodHRwOi8vY3JsLmQtdHJ1c3QubmV0L2NybC9kLXRydXN0X3Jv
b3RfY2FfM18yMDEzLmNybDAdBgNVHQ4EFgQUGQOq2SJFxxpiqedcmbCd3u3UuLUwDgYDVR0PAQH/
BAQDAgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwDQYJKoZIhvcNAQELBQADggEBABCOUPipaQNkTuhl
pNOQk8lDCndO0Y9nuN8+Y99m/odfdUDN2MmOg0ICPVWNyg9bIHfxytRkNlFzCrc7B9KmzPAAiu7U
wOXl3dnRrFJpluGcAbnDGRr1Ssgvb2HDmZwlU2K7TpMOt6XayFkiefx5q4WC67BbVcIPD1IZ2te0
HRdmdh7zhIz2Hw1+bfuzzSNf8/JRYojIyweGq9uDue45yhVDl86O3GJaOphjDVm5c7mTdWg1xbJ2
44PhmpQH3h1s+kfD76rg4mwAIQa3QkfX2BqMEc9ASiWm1L9iNA0Z4ng9tiuVm4LJKPVA2lZppx7+
KtmVmv0/lv+8eGKwPvw1HlUwggcxMIIGGaADAgECAhBPyMh5nYrCy2uIfpDzTuWdMA0GCSqGSIb3
DQEBCwUAMFsxCzAJBgNVBAYTAkRFMRUwEwYDVQQKDAxELVRydXN0IEdtYkgxNTAzBgNVBAMMLEQt
VFJVU1QgQXBwbGljYXRpb24gQ2VydGlmaWNhdGVzIENBIDMtMSAyMDEzMB4XDTIxMDUxMTA3MzMw
N1oXDTIzMDUxNTA3MzMwN1owgbIxCzAJBgNVBAYTAkRFMSQwIgYDVQQKExtPSFAgQXV0b21hdGlv
biBTeXN0ZW1zIEdtYkgxHDAaBgNVBAMTE1NlYmFzdGlhbiBIb2x6Z3JldmUxDzANBgNVBAcTBlJv
ZGdhdTESMBAGA1UEKhMJU2ViYXN0aWFuMRIwEAYDVQQEEwlIb2x6Z3JldmUxFTATBgNVBAUTDENT
TTAyNjE4MzMxMjEPMA0GA1UECBMGSGVzc2VuMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKC
AQEA5I/hMM9AxL9ul5PX34JFWhOmZITMmbDSapfDM3GYI0LOsLNLmWxCZ3hIc4Rv/1JfMNNpcEOu
i3ncGI5CSskWSbZry/kENNs4bykp7MGFyVbIRJxDDfFNRVqWUoNVHY0zeHt43pvngeijrvTvxS8w
Dm+VWfSdpBO3gK0t3vqpFDgX5PUvowtxal9SyJzCsxt9i1+jsE8D3LCUI6eKRZQ5mQ0jzzYGgDSB
oyPbn9p+JlX56laWJ6AQIP1WgZgs4+Ac7F8bf8hYCZz39SU9IrT6eFLnu00R6qKOW0wPsL2doU7z
/eRrgn7Z7IN75E1Z/0Js7BiAO133q2M5XFtQgm3t4QIDAQABo4IDlzCCA5MwHQYDVR0lBBYwFAYI
KwYBBQUHAwIGCCsGAQUFBwMEMB8GA1UdIwQYMBaAFBkDqtkiRccaYqnnXJmwnd7t1Li1MIIBSQYI
KwYBBQUHAQEEggE7MIIBNzBIBggrBgEFBQcwAYY8aHR0cDovL2FwcGxpY2F0aW9uLWNlcnRpZmlj
YXRlcy1jYS0zLTEtMjAxMy5vY3NwLmQtdHJ1c3QubmV0MFsGCCsGAQUFBzAChk9odHRwOi8vd3d3
LmQtdHJ1c3QubmV0L2NnaS1iaW4vRC1UUlVTVF9BcHBsaWNhdGlvbl9DZXJ0aWZpY2F0ZXNfQ0Ff
My0xXzIwMTMuY3J0MIGNBggrBgEFBQcwAoaBgGxkYXA6Ly9kaXJlY3RvcnkuZC10cnVzdC5uZXQv
Q049RC1UUlVTVCUyMEFwcGxpY2F0aW9uJTIwQ2VydGlmaWNhdGVzJTIwQ0ElMjAzLTElMjAyMDEz
LE89RC1UcnVzdCUyMEdtYkgsQz1ERT9jQUNlcnRpZmljYXRlP2Jhc2U/MG8GA1UdIARoMGYwWgYL
KwYBBAGlNAKBSAIwSzBJBggrBgEFBQcCARY9aHR0cDovL3d3dy5kLXRydXN0Lm5ldC9pbnRlcm5l
dC9maWxlcy9ELVRSVVNUX0NTTV9QS0lfQ1BTLnBkZjAIBgYEAI96AQMwggFFBgNVHR8EggE8MIIB
ODCCATSgggEwoIIBLIaBhmxkYXA6Ly9kaXJlY3RvcnkuZC10cnVzdC5uZXQvQ049RC1UUlVTVCUy
MEFwcGxpY2F0aW9uJTIwQ2VydGlmaWNhdGVzJTIwQ0ElMjAzLTElMjAyMDEzLE89RC1UcnVzdCUy
MEdtYkgsQz1ERT9jZXJ0aWZpY2F0ZXJldm9jYXRpb25saXN0hktodHRwOi8vY3JsLmQtdHJ1c3Qu
bmV0L2NybC9kLXRydXN0X2FwcGxpY2F0aW9uX2NlcnRpZmljYXRlc19jYV8zLTFfMjAxMy5jcmyG
VGh0dHA6Ly9jZG4uZC10cnVzdC1jbG91ZGNybC5uZXQvY3JsL2QtdHJ1c3RfYXBwbGljYXRpb25f
Y2VydGlmaWNhdGVzX2NhXzMtMV8yMDEzLmNybDAdBgNVHQ4EFgQUdQabPJQq4JCBCDRUQNALNPCP
yLYwDgYDVR0PAQH/BAQDAgSwMBsGA1UdEQQUMBKBEGhvbHpncmV2ZUBvaHAuZGUwDQYJKoZIhvcN
AQELBQADggEBAKd+IGuyxLSOFLgo9/EFnRE7wYtyZL/5IJYqBYVxy/KPJqF1KOCNFuoe6RzegKjc
qtazztVJkz9ThHsP3IRnR6gjB+QelndGf/2vjWtHkgJxKEIkAUovUn2n3t2DM5fSb/3kWwb/5Erd
TpUXNsAZKQm9MNqeysVVA/61gpFgiUWPkvmBSlnHEWE5QKjQ8t15ppCalHL6ZrLuJisHQQUS+xnh
ayNXQbFsfCkas1fwngCsvkfStZgZNxM7mzx4zbQKG9cGKSXz8AItUfeMQu8svkP8rZQhJ1BkPKWR
6rIEKSWLOslfguIL/iy6sF5m7PFw+VsTOnr9Ut5lR1i29rGpLwQxggN4MIIDdAIBATBvMFsxCzAJ
BgNVBAYTAkRFMRUwEwYDVQQKDAxELVRydXN0IEdtYkgxNTAzBgNVBAMMLEQtVFJVU1QgQXBwbGlj
YXRpb24gQ2VydGlmaWNhdGVzIENBIDMtMSAyMDEzAhBPyMh5nYrCy2uIfpDzTuWdMA0GCWCGSAFl
AwQCAQUAoIIB2jAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0yMTA3
MDkwOTIzMjdaMC8GCSqGSIb3DQEJBDEiBCCt6eLkNSn6olgH85EIvPYf9Pk/RENpSJiTgT56d9VQ
JzBsBgkqhkiG9w0BCQ8xXzBdMAsGCWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcw
DgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMH4G
CSsGAQQBgjcQBDFxMG8wWzELMAkGA1UEBhMCREUxFTATBgNVBAoMDEQtVHJ1c3QgR21iSDE1MDMG
A1UEAwwsRC1UUlVTVCBBcHBsaWNhdGlvbiBDZXJ0aWZpY2F0ZXMgQ0EgMy0xIDIwMTMCEE/IyHmd
isLLa4h+kPNO5Z0wgYAGCyqGSIb3DQEJEAILMXGgbzBbMQswCQYDVQQGEwJERTEVMBMGA1UECgwM
RC1UcnVzdCBHbWJIMTUwMwYDVQQDDCxELVRSVVNUIEFwcGxpY2F0aW9uIENlcnRpZmljYXRlcyBD
QSAzLTEgMjAxMwIQT8jIeZ2KwstriH6Q807lnTANBgkqhkiG9w0BAQEFAASCAQDammbizpy7VcVZ
Mi6Cz83Np+n3I8ml+Qo1X25F3CsrRQjDNr3tb0w+T0ardEnjdLb1zwfP6gTgFcqDKuOGAPZrvqIb
klG0obTBE1ec7lnpar8Uonx3PG4wLZzTbgK0MPpJZBz8ut0SZkD1O55lRScmCxFCzxz1hpzb51+N
3a7HbBQJU6hqMo5Fkk39i9TkTPGfCRT6YnCk32PhRUfZhyaPJ6rKbMtQ1Nlcka1k1mrjLmBSowVN
TZrDA0sMIag6NHJYqkk55+coZ8Xgm1Rbt6jJL3Rzmkf/N4d2eqMrCY66WiPLqruYdkebNYkwJbHW
/9m0JIRKW4MIcRDUyxfdbcpXAAAAAAAA

--------------ms020508080305070904090506--
