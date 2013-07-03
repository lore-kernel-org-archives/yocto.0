Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 699DFE0141B
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2013 19:44:25 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id kq13so6920949pab.11
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2013 19:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:content-type;
	bh=EPJC6FTT2VyCk5LTaIZgoZjqiezzcU9BMCYcbY5lJ4c=;
	b=Sf+ky+6dQwxaOxEcTvhHWRkPacV0NC9P9d0qmPkTHDAWjTzgohlNe0xqswgdo+ZT6N
	ezP+P66uuLKOUyFPXysWC1trH1nQ6tSz+J4ru8XlKhK6S4WIGyUuKvmTl/WwNHwnlUaT
	PMn/TmkrNrxG9Z4cLEt3IZSv7bkARjaJS2Yh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:content-type:x-gm-message-state;
	bh=EPJC6FTT2VyCk5LTaIZgoZjqiezzcU9BMCYcbY5lJ4c=;
	b=jHHwXz+Lx3zBX5TpJ+L8M229sZyjG587v8yvsQJFrnhxCqKSu5swv3Kb37srKC5S1m
	5SvF6KM7tr+McioB51NCrrpLxl63lx78RvjhQsm7zN51ek3SgeaLSi3rh+3Prbj3x46l
	TK6KG0hQc6sUlPehAhhXDT9snrpYkrNmPIjsdclUYhPXUaNP2AroSkwmJ9EWSXAbkzFi
	t04Fq8F3FmDZS6JlG1BaCxg5gx+fggS+C3zXO31xU8rZU1atHShoNNf/M76DQeRwnUiL
	3C/SVRjJzeUyhKSwQgLK2PC+0Us4IrAC0XGfDszxBUkisra5+WBe+6ecBqRsKXaVUQ4+
	OwEA==
X-Received: by 10.66.122.131 with SMTP id ls3mr571640pab.2.1372819465732;
	Tue, 02 Jul 2013 19:44:25 -0700 (PDT)
Received: from pride.localdomain (static-50-43-35-82.bvtn.or.frontiernet.net.
	[50.43.35.82])
	by mx.google.com with ESMTPSA id fn9sm20317691pab.2.2013.07.02.19.44.23
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 02 Jul 2013 19:44:24 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <51D39006.5000000@yoctoproject.org>
Date: Tue, 02 Jul 2013 19:44:22 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Enigmail-Version: 1.5.1
X-Gm-Message-State: ALoCoQl5OaIlZ5MKgYT+CtbWnVY3roHruNWfIrb6KJTHVYyROXlFdcGqlM20mqIb+zUUQlZ4Xp8K
Subject: Yocto Project 1.5_M2.rc1 build underway
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
X-List-Received-Date: Wed, 03 Jul 2013 02:44:29 -0000
X-Groupsio-MsgNum: 14802
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms060704090509040103020305"

--------------ms060704090509040103020305
Content-Type: multipart/alternative;
 boundary="------------010803010207080603000408"

--------------010803010207080603000408
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

The Yocto Project 1.5_M2.rc1 build is underway. As tasks complete
artifacts will start appearing at:

http://autobuilder.yoctoproject.org/pub/nightly/20130703-1

poky                	eaa5df34af42b6a37f6506847d0f3ef6ba0d298a <https://gi=
t.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Deaa5df34af42b6a37f6506=
847d0f3ef6ba0d298a>
meta-fsl-arm    	daf582c93a7283fb0af3b25fe2ada48f4c9985c4 <https://git.yo=
ctoproject.org/cgit/cgit.cgi/meta-fsl-arm/commit/?id=3Ddaf582c93a7283fb0a=
f3b25fe2ada48f4c9985c4>
meta-fsl-ppc    	b889029dca03fcb7e55c671aa5006fe8be1eefb0 <https://git.yo=
ctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/commit/?id=3Db889029dca03fcb7e5=
5c671aa5006fe8be1eefb0>
meta-intel        	e0d6134ed2e2687ff9f2ee77701666447842bf33 <https://git.=
yoctoproject.org/cgit/cgit.cgi/meta-intel/commit/?id=3De0d6134ed2e2687ff9=
f2ee77701666447842bf33>
meta-minnow  		286a72ba3f5e29432be1dd77127de5bdc2d988c3 <https://git.yoct=
oproject.org/cgit/cgit.cgi/meta-minnow/commit/?id=3D286a72ba3f5e29432be1d=
d77127de5bdc2d988c3>=20
meta-qt3         	b73552fb998fd30a01dbee5a172e432a16078222 <https://git.y=
octoproject.org/cgit/cgit.cgi/meta-qt3/commit/?id=3Db73552fb998fd30a01dbe=
e5a172e432a16078222>
eclipse-poky    	e35dfd79e3970f88a8273125890a54f75f108b97 <https://git.yo=
ctoproject.org/cgit/cgit.cgi/eclipse-poky/commit/?id=3De35dfd79e3970f88a8=
273125890a54f75f108b97>=20

Please begin QA as soon as possible. Thank you.

--=20
Michael Halstead
Yocto Project / Sys Admin


--------------010803010207080603000408
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DISO=
-8859-1">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    The Yocto Project 1.5_M2.rc1 build is underway. As tasks complete
    artifacts will start appearing at:<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"http://autobuilder.yoctopr=
oject.org/pub/nightly/20130703-1">http://autobuilder.yoctoproject.org/pub=
/nightly/20130703-1</a> <br>
    <br>
    <pre wrap=3D"">poky                	<a href=3D"https://git.yoctoproje=
ct.org/cgit/cgit.cgi/poky/commit/?id=3Deaa5df34af42b6a37f6506847d0f3ef6ba=
0d298a">eaa5df34af42b6a37f6506847d0f3ef6ba0d298a</a>
meta-fsl-arm    	<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/me=
ta-fsl-arm/commit/?id=3Ddaf582c93a7283fb0af3b25fe2ada48f4c9985c4">daf582c=
93a7283fb0af3b25fe2ada48f4c9985c4</a>
meta-fsl-ppc    	<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/me=
ta-fsl-ppc/commit/?id=3Db889029dca03fcb7e55c671aa5006fe8be1eefb0">b889029=
dca03fcb7e55c671aa5006fe8be1eefb0</a>
meta-intel        	<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/=
meta-intel/commit/?id=3De0d6134ed2e2687ff9f2ee77701666447842bf33">e0d6134=
ed2e2687ff9f2ee77701666447842bf33</a>
meta-minnow  		<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/meta=
-minnow/commit/?id=3D286a72ba3f5e29432be1dd77127de5bdc2d988c3">286a72ba3f=
5e29432be1dd77127de5bdc2d988c3</a>=20
meta-qt3         	<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/m=
eta-qt3/commit/?id=3Db73552fb998fd30a01dbee5a172e432a16078222">b73552fb99=
8fd30a01dbee5a172e432a16078222</a>
eclipse-poky    	<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/ec=
lipse-poky/commit/?id=3De35dfd79e3970f88a8273125890a54f75f108b97">e35dfd7=
9e3970f88a8273125890a54f75f108b97</a> </pre>
    Please begin QA as soon as possible. Thank you.<br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Michael Halstead
Yocto Project / Sys Admin</pre>
  </body>
</html>

--------------010803010207080603000408--

--------------ms060704090509040103020305
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIINjDCCBjQw
ggQcoAMCAQICASAwDQYJKoZIhvcNAQEFBQAwfTELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0
Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxKTAn
BgNVBAMTIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MTAyNDIxMDI1NVoX
DTE3MTAyNDIxMDI1NVowgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSsw
KQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFy
dENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAMsohUWcASz7GfKrpTOMKqANy9BV7V0igWdGxA8IU77L3aTxErQ+
fcxtDYZ36Z6GH0YFn7fq5RADteP0AYzrCA+EQTfi8q1+kA3m0nwtwXG94M5sIqsvs7lRP1aycBke
/s5g9hJHryZ2acScnzczjBCAo7X1v5G3yw8MDP2m2RCye0KfgZ4nODerZJVzhAlOD9YejvAXZqHk
sw56HzElVIoYSZ3q4+RJuPXXfIoyby+Y2m1E+YzX5iCZXBx05gk6MKAW1vaw4/v2OOLy6FZH3XHH
tOkzUreG//CsFnB9+uaYSlR65cdGzTsmoIK8WH1ygoXhRBm98SD7Hf/r3FELNvUCAwEAAaOCAa0w
ggGpMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBSuVYNv7DHKufcd
+q9rMfPIHeOsuzAfBgNVHSMEGDAWgBROC+8apEBbpRdphzDKNGhD0EGu8jBmBggrBgEFBQcBAQRa
MFgwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9jYTAtBggrBgEFBQcwAoYh
aHR0cDovL3d3dy5zdGFydHNzbC5jb20vc2ZzY2EuY3J0MFsGA1UdHwRUMFIwJ6AloCOGIWh0dHA6
Ly93d3cuc3RhcnRzc2wuY29tL3Nmc2NhLmNybDAnoCWgI4YhaHR0cDovL2NybC5zdGFydHNzbC5j
b20vc2ZzY2EuY3JsMIGABgNVHSAEeTB3MHUGCysGAQQBgbU3AQIBMGYwLgYIKwYBBQUHAgEWImh0
dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93d3cu
c3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwDQYJKoZIhvcNAQEFBQADggIBADqpJw3I07QW
ke9plNBpxUxcffc7nUrIQpJHDci91DFG7fVhHRkMZ1J+BKg5UNUxIFJ2Z9B90Micc/NXcs7kPBRd
n6XGO/vPc87Y6R+cWS9Nc9+fp3Enmsm94OxOwI9wn8qnr/6o3mD4noP9JphwUPTXwHovjavRnhUQ
HLfo/i2NG0XXgTHXS2Xm0kVUozXqpYpAdumMiB/vezj1QHQJDmUdPYMcp+reg9901zkyT3fDW/iv
JVv6pWtkh6Pw2ytZT7mvg7YhX3V50Nv860cV11mocUVcqBLv0gcT+HBDYtbuvexNftwNQKD5193A
7zN4vG7CTYkXxytSjKuXrpEatEiFPxWgb84nVj25SU5q/r1Xhwby6mLhkbaXslkVtwEWT3Van49r
KjlK4XrUKYYWtnfzq6aSak5u0Vpxd1rY79tWhD3EdCvOhNz/QplNa+VkIsrcp7+8ZhP1l1b2U6Ma
xIVteuVMD3X0vziIwr7jxYae9FZjbxlpUemqXjcC0QaFfN7qI0JsQMALL7iGRBg7K0CoOBzECdD3
fuZil5kU/LP9cr1BK31U0Uy651bFnAMMMkqhAChIbn0ei72VnbpSsrrSdF0BAGYQ8vyHae5aCg+H
75dVCV33K6FuxZrf09yTz+Vx/PkdRUYkXmZz/OTfyJXsUOUXrym6KvI2rYpccSk5MIIHUDCCBjig
AwIBAgICIgMwDQYJKoZIhvcNAQEFBQAwgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENv
bSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYD
VQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTAeFw0x
MjA2MTMwNDU5MjlaFw0xNDA2MTQxNjE4MzBaMIGRMRkwFwYDVQQNExBnMDFwWTYwMWJGM1BrRTY3
MQswCQYDVQQGEwJVUzEPMA0GA1UECBMGT3JlZ29uMRIwEAYDVQQHEwlIaWxsc2Jvcm8xGTAXBgNV
BAMTEE1pY2hhZWwgSGFsc3RlYWQxJzAlBgkqhkiG9w0BCQEWGG1pY2hhZWxAeW9jdG9wcm9qZWN0
Lm9yZzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMFZ+GW0VKdiyuQy3hlOvwcHxcm0
8ZwNGGah4zipYky5wVFZO7p9LjJfyF6rvd24xdkaTluxTMmd9pfq2cOVQ6c3RsPufv1yBUbytk6F
4Wk+qD0qEGjuHh5FfakcLIEsHiSn3nzaQZHaolS/yzx/A3coQS8pQrshZYqAF/ME5OxMyL8KDdtk
xatt1reDPqzvI5rKYdeEbmHsTYgd9WWHvs8MfZFHidZoAXMXU+PcsKCUxEYhgP/h9NKcTApu/Mhd
IPKn11pD+gfDM+ochGu1uxuW/t1tNJyRYDVQSDV+rpliQ7mrimSmyktIKkow02pUk4Xw3OqdYq7/
/HpVOUs5nk8CAwEAAaOCA7MwggOvMAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdJQQWMBQG
CCsGAQUFBwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQUcZFNotb1OfDmPE6GQ6MQIBh7meUwHwYDVR0j
BBgwFoAUrlWDb+wxyrn3HfqvazHzyB3jrLswIwYDVR0RBBwwGoEYbWljaGFlbEB5b2N0b3Byb2pl
Y3Qub3JnMIICIQYDVR0gBIICGDCCAhQwggIQBgsrBgEEAYG1NwECAjCCAf8wLgYIKwYBBQUHAgEW
Imh0dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93
d3cuc3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwgfcGCCsGAQUFBwICMIHqMCcWIFN0YXJ0
Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MAMCAQEagb5UaGlzIGNlcnRpZmljYXRlIHdhcyBp
c3N1ZWQgYWNjb3JkaW5nIHRvIHRoZSBDbGFzcyAyIFZhbGlkYXRpb24gcmVxdWlyZW1lbnRzIG9m
IHRoZSBTdGFydENvbSBDQSBwb2xpY3ksIHJlbGlhbmNlIG9ubHkgZm9yIHRoZSBpbnRlbmRlZCBw
dXJwb3NlIGluIGNvbXBsaWFuY2Ugb2YgdGhlIHJlbHlpbmcgcGFydHkgb2JsaWdhdGlvbnMuMIGc
BggrBgEFBQcCAjCBjzAnFiBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTADAgECGmRM
aWFiaWxpdHkgYW5kIHdhcnJhbnRpZXMgYXJlIGxpbWl0ZWQhIFNlZSBzZWN0aW9uICJMZWdhbCBh
bmQgTGltaXRhdGlvbnMiIG9mIHRoZSBTdGFydENvbSBDQSBwb2xpY3kuMDYGA1UdHwQvMC0wK6Ap
oCeGJWh0dHA6Ly9jcmwuc3RhcnRzc2wuY29tL2NydHUyLWNybC5jcmwwgY4GCCsGAQUFBwEBBIGB
MH8wOQYIKwYBBQUHMAGGLWh0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9zdWIvY2xhc3MyL2NsaWVu
dC9jYTBCBggrBgEFBQcwAoY2aHR0cDovL2FpYS5zdGFydHNzbC5jb20vY2VydHMvc3ViLmNsYXNz
Mi5jbGllbnQuY2EuY3J0MCMGA1UdEgQcMBqGGGh0dHA6Ly93d3cuc3RhcnRzc2wuY29tLzANBgkq
hkiG9w0BAQUFAAOCAQEANR/d6M8GHL/rkx3Kz9ILDxYMcekmFgefaDXNQMicUHiUw5TsIl5af1pS
Y2AvbKlA2/FZnyG8w42FuK6ZQBZJxs4/N10NW8qDmuuFTi6TyJgurj73tx9RogW50miDHMZLoMRe
avB1h8zy99L2lRPZSebpSFkrQdYDHaGRVhYMjEcWNW9cLxhR8BaAEw/KlpERv3hUQpwGMppYOE66
M7KJ3HpeR7DXfa4njL9W2hukTQNsskdWtzejHp5iQ65+5Mv+NXLmYP4uLJcR9AbttgNhwStc0P1b
LxnQkElGeUzATOBq+QsVZ7Fo6sSS7kqrhpfaPibqpj83m/wSgpKVsbZJ3DGCA9owggPWAgEBMIGT
MIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJl
IERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMiBQ
cmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0ECAiIDMAkGBSsOAwIaBQCgggIbMBgGCSqGSIb3
DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEzMDcwMzAyNDQyMlowIwYJKoZIhvcN
AQkEMRYEFFzK42RvXWgpC2LkS0Wd1aC9D1J8MGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEq
MAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaQGCSsGAQQBgjcQBDGBljCBkzCBjDELMAkGA1UEBhMC
SUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRp
ZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDIgUHJpbWFyeSBJbnRlcm1l
ZGlhdGUgQ2xpZW50IENBAgIiAzCBpgYLKoZIhvcNAQkQAgsxgZaggZMwgYwxCzAJBgNVBAYTAklM
MRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZp
Y2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRp
YXRlIENsaWVudCBDQQICIgMwDQYJKoZIhvcNAQEBBQAEggEAQuzu9Mc3G0isn9scjqupEAeHWXXr
bz+V8UNo0WjPqk/eGP65vIcCjT2hNMrzgkp2iiqhmZrQ2xIohPTyaUHTiykVIOa2/OAF6YMSlZKp
PxJlBUTpZkAiyGy19NlFzRZN07MURgdD1bSu+t3Lh14VKuhno5Zo4uO61NfjDHpE2M6nDLSI7M5o
/1qhqGz/MMAjrYWojsyD+jJViCxHmJnjGh1uqqtR5GJeNq5LHhx2nIk2KW0lEugqQOWuZ9fxzhAp
WHE8q1L3K6AiM53fpfuUf1cOuv1BoVGa0MCxRuh3uTIhz3e0VV9QnoGyOTDFTClylwx82F7MzFEQ
XHp+94b2WQAAAAAAAA==

--------------ms060704090509040103020305--
