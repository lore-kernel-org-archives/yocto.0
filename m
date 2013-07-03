Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-pd0-f182.google.com (mail-pd0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F748E013CB
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2013 20:55:17 -0700 (PDT)
Received: by mail-pd0-f182.google.com with SMTP id r10so4191395pdi.13
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2013 20:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:x-enigmail-version:content-type;
	bh=5rXKxChw1zgn2xF/eeKoG533k2hsBAGwxkbiTu55CM0=;
	b=hdiPtdRR89FMT0q80aI03p9aTo7zr4x0IHiCr5ALHHvib9Kw+Rsot1EzoJGIfhBR6J
	Iz4Dnb1VQTWXAQ8H3dBqeIgnn+HxQMaxSGahBerj+49p7Zw3hSPjxZl/JclkDJb3EuuV
	7J9qcoracEx1l/vuNZXrj681a8OxtVTKemk6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:x-enigmail-version:content-type
	:x-gm-message-state;
	bh=5rXKxChw1zgn2xF/eeKoG533k2hsBAGwxkbiTu55CM0=;
	b=WK3ml6LT1jMDBPgNc+ks72x9BLc7J+Av8IcR0kIRPKbYJhH74nhY4Tj/3VXlk4TkHV
	l5fJhmRIG8nKP1bu9Mf9AwvkG2h2/WZuYevw6Mted5eu7VbH07EQ0ascovH10uz0lcSM
	RjW0V+oXSWMPW6NDHrJo2g3Vqb/Wj0S509ROCxq3NB9JN8CPJdmG6cOMsumYzm5i1hR2
	f+eYeR+S9YkbgpA7YMrEZYY3c5HMWFRSeQZB+QKFFLddWeGDP7gQDVa+9zDtUsqoLp6Z
	p6kSpWjByv3LTibex4tlKB7q0h8gYavkmYoq7+nKEnEgI18ipaB/OLOy4hmK33BptCxr
	hWVA==
X-Received: by 10.68.225.197 with SMTP id rm5mr32140232pbc.159.1372823717452; 
	Tue, 02 Jul 2013 20:55:17 -0700 (PDT)
Received: from pride.localdomain (static-50-43-35-82.bvtn.or.frontiernet.net.
	[50.43.35.82]) by mx.google.com with ESMTPSA id
	pm7sm29885547pbb.31.2013.07.02.20.55.15 for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 02 Jul 2013 20:55:16 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <51D3A0A2.2040008@yoctoproject.org>
Date: Tue, 02 Jul 2013 20:55:14 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <51D39006.5000000@yoctoproject.org>
In-Reply-To: <51D39006.5000000@yoctoproject.org>
X-Enigmail-Version: 1.5.1
X-Gm-Message-State: ALoCoQk+YV+3fj8GL58S+6Rtv2ajlHfZR0y/uMSGiLIiGfbQO3fpjcsTEL8e92OrMd+QdoWuaj9i
Subject: Re: Yocto Project 1.5_M2.rc1 build underway, again
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
X-List-Received-Date: Wed, 03 Jul 2013 03:55:19 -0000
X-Groupsio-MsgNum: 14804
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms030809060801000707090604"

--------------ms030809060801000707090604
Content-Type: multipart/alternative;
 boundary="------------090609070309040101070302"

--------------090609070309040101070302
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable


After correcting some configuration errors the Yocto Project 1.5_M2.rc1
build is underway again. As tasks complete artifacts will start
appearing at their new location:

http://autobuilder.yoctoproject.org/pub/nightly/20130703-2

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


--------------090609070309040101070302
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DISO-8859-1"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <br>
    After correcting some configuration errors the Yocto Project
    1.5_M2.rc1 build is underway again. As tasks complete artifacts will
    start appearing at their new location:<br>
    <br>
    <a href=3D"http://autobuilder.yoctoproject.org/pub/nightly/20130703-2=
">
      <span class=3D"moz-txt-link-freetext">http://autobuilder.yoctoproje=
ct.org/pub/nightly/20130703-2</span>
    </a><br>
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
Yocto Project / Sys Admin

</pre>
  </body>
</html>

--------------090609070309040101070302--

--------------ms030809060801000707090604
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
DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEzMDcwMzAzNTUxNFowIwYJKoZIhvcN
AQkEMRYEFMgjgAvHwfWdT7m/G8yBCI8bRYEbMGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEq
MAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaQGCSsGAQQBgjcQBDGBljCBkzCBjDELMAkGA1UEBhMC
SUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRp
ZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDIgUHJpbWFyeSBJbnRlcm1l
ZGlhdGUgQ2xpZW50IENBAgIiAzCBpgYLKoZIhvcNAQkQAgsxgZaggZMwgYwxCzAJBgNVBAYTAklM
MRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZp
Y2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRp
YXRlIENsaWVudCBDQQICIgMwDQYJKoZIhvcNAQEBBQAEggEAlyJY/hXGqE0FIZqqBC8IGxChtY1f
MFxT0VKnLL6tzaLGvSRbCPZA/NGR55ebIBYldzO697dQR4R4EAasSNILxy9Vdyzey7VTewzsvwxi
8OQgpOgLchoubbo2SKCJxo3Zy7OA/8CQrUPkYDemyhvOykV9FXVApa88PnwNPPwri4951BIp0ed1
zfEPOc/3vz7nen2HeReDSChB5VqSn7Nc3t8Xr1VgrZET44O6My2YZrWof3ZV9I+Ppox3CfXvnkts
y5DpIn4h0zYyh4p2m72fCJdGaF+xyvsty3JzxasFuty6AFX+8jfF8GCESfagKhfUDoZrTaTwicAv
1kVd61KMfwAAAAAAAA==

--------------ms030809060801000707090604--
