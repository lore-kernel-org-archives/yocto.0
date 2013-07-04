Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5F06E003E3
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 17:36:29 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id fa11so754037pad.5
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 17:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:x-enigmail-version:content-type;
	bh=RynlVq5w2gdJo/1TUynMF4T/qB1ud189Zb/OXDUmNeo=;
	b=haGYxJmAKECmjvhss6fr04bKGDZl0mzpwPscf8L/15cVhoBgl1FHgsNedhRV3i/xum
	7DufhneyMXUpz4AKjl29jBJOWTsWqEFwcpCtNV80BsG7gMXtBYK91g8HqfnrpcJ/CHkd
	AQl1/Q/SxKpnwh+KGTGpIjpxaguvWINVIX0S8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:x-enigmail-version:content-type
	:x-gm-message-state;
	bh=RynlVq5w2gdJo/1TUynMF4T/qB1ud189Zb/OXDUmNeo=;
	b=o89ZfO/m0KURQD4tzpfuV6M4NJUi6+rXwgzdDobXBK1QYn4ROs0B5DgTS8dHexC9nu
	FW57h/E6ZiUmcg+5bnfVHvfkPckBJs7AQKHaz4DVyfWIkASPUNohFtBFBnTfnOAxvz0D
	bMXXNLtFfbfJMQW+ymv2WyuXiXuBmInj7vP9vpxJoxylzFH5bQygl37+o94lZ9kQ9L3S
	HKMnACBVP1IfOamQnohGCVnoPgDp0y5Xlohutm+IBJwWfYa8Hhl9ikLj5HuLTIFD3Vpj
	sKXLSss6sX/RpendyIfrTYjhH557C6BrAorKPFyPcRpZSU356QEQ+lWO4ojYOrnY+d19
	HvbQ==
X-Received: by 10.66.150.40 with SMTP id uf8mr4645054pab.66.1372898188882;
	Wed, 03 Jul 2013 17:36:28 -0700 (PDT)
Received: from pride.localdomain (static-50-43-57-222.bvtn.or.frontiernet.net.
	[50.43.57.222])
	by mx.google.com with ESMTPSA id x8sm391284pbb.39.2013.07.03.17.36.26
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Wed, 03 Jul 2013 17:36:27 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <51D4C38A.2090800@yoctoproject.org>
Date: Wed, 03 Jul 2013 17:36:26 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <51D39006.5000000@yoctoproject.org>
	<51D3A0A2.2040008@yoctoproject.org>
In-Reply-To: <51D3A0A2.2040008@yoctoproject.org>
X-Enigmail-Version: 1.5.1
X-Gm-Message-State: ALoCoQmxB2FijuV/WMZeRYgslk73WCiZYAGGXEqdrPh1jxvyl7fKmq7/sIQSftShprAAVDNB/9a0
Subject: Re: Yocto Project 1.5_M2.rc1 build status
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
X-List-Received-Date: Thu, 04 Jul 2013 00:36:29 -0000
X-Groupsio-MsgNum: 14824
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms060508070506070802000207"

--------------ms060508070506070802000207
Content-Type: multipart/alternative;
 boundary="------------070609040309020605050603"

--------------070609040309020605050603
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Adidtional autobuilder configuration errors were corrected and a third
spin of 1.5_M2.rc1 started. Please find the build at the new location:

http://autobuilder.yoctoproject.org/pub/nightly/20130703-3

poky                	eaa5df34af42b6a37f6506847d0f3ef6ba0d298a <https://gi=
t.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Deaa5df34af42b6a37f6506=
847d0f3ef6ba0d298a>
meta-fsl-arm    	daf582c93a7283fb0af3b25fe2ada48f4c9985c4 <https://git.yo=
ctoproject.org/cgit/cgit.cgi/meta-fsl-arm/commit/?id=3Ddaf582c93a7283fb0a=
f3b25fe2ada48f4c9985c4>
meta-fsl-ppc    	a2bcb25c53f935ae9a423c57ca5e2f7a2f7b1a69 (Changed since =
last build)
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

--------------070609040309020605050603
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DISO-8859-1"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    Adidtional autobuilder configuration errors were corrected and a
    third spin of 1.5_M2.rc1 started. Please find the build at the new
    location:<br>
    <a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20130703-3=
"><br>
      <span class=3D"moz-txt-link-freetext">http://autobuilder.yoctoproje=
ct.org/pub/nightly/20130703-3</span></a><br>
    <br>
    <pre wrap=3D"">poky                	<a href=3D"https://git.yoctoproje=
ct.org/cgit/cgit.cgi/poky/commit/?id=3Deaa5df34af42b6a37f6506847d0f3ef6ba=
0d298a">eaa5df34af42b6a37f6506847d0f3ef6ba0d298a</a>
meta-fsl-arm    	<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/me=
ta-fsl-arm/commit/?id=3Ddaf582c93a7283fb0af3b25fe2ada48f4c9985c4">daf582c=
93a7283fb0af3b25fe2ada48f4c9985c4</a>
meta-fsl-ppc    	a2bcb25c53f935ae9a423c57ca5e2f7a2f7b1a69 (Changed since =
last build)
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
    Please begin QA as soon as possible. Thank you.
  </body>
</html>

--------------070609040309020605050603--

--------------ms060508070506070802000207
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
DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEzMDcwNDAwMzYyNlowIwYJKoZIhvcN
AQkEMRYEFL/yfSNKFXMgaMK85FydR3PsQsHhMGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEq
MAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaQGCSsGAQQBgjcQBDGBljCBkzCBjDELMAkGA1UEBhMC
SUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRp
ZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDIgUHJpbWFyeSBJbnRlcm1l
ZGlhdGUgQ2xpZW50IENBAgIiAzCBpgYLKoZIhvcNAQkQAgsxgZaggZMwgYwxCzAJBgNVBAYTAklM
MRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZp
Y2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRp
YXRlIENsaWVudCBDQQICIgMwDQYJKoZIhvcNAQEBBQAEggEAg1i0SDaSVihWPfSoW2mdYVAl/2ru
X1LfX/H6XO80MhC9ySZhgPhAPCtnRvUxhLXLDFbJ4Iw9ZGmUbmdffPD/YykFfHkvK3BfbrgIAADH
9BhYFv0foHI2k1DSbPawtR4mJdN//OngGMQjlqr74FTzzy316DhqdteMfp0G/06V4r3nxAfS+fAT
TfV0LGMXuvFrBAD00YJcVkvGquuPKFbA+fDZIo/UK+yDr6TCIL+Z+7K7K3DNA4Ryaup8esUbEUNZ
MEah5SMXs+O6IGwX6uOTsFwFiUTdAvVJ1bAHkZ1eSjWjZbDAho8ChjvTinkLDx+cJfcEUsuWoJgb
4pwQOlVeYgAAAAAAAA==

--------------ms060508070506070802000207--
