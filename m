Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED21CE014C1
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 15:39:29 -0700 (PDT)
Received: by mail-pd0-f174.google.com with SMTP id p12so12814pdj.5
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 15:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=x-received:sender:message-id:date:from:user-agent:mime-version:to
	:subject:x-enigmail-version:content-type;
	bh=SeTNyNeyOAw88cyaM6JJeUGOr257wfmQahaPBcn+J/s=;
	b=SNOVf2QIiAp2R8MwJf2FbWcw2GWopFw1/kMN56cXGLmDOc+1a9sI92PSMK9QhT4Ol9
	NRy0HK7UtYGXu+yrptRxToDayYHtsSs1G7/9d6+OwdF5s873oV7SzLCwCUcHID6BUp8k
	8LOH13in3W7qh+E4aOXknwO+uPV9RJyk59pOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:sender:message-id:date:from:user-agent:mime-version:to
	:subject:x-enigmail-version:content-type:x-gm-message-state;
	bh=SeTNyNeyOAw88cyaM6JJeUGOr257wfmQahaPBcn+J/s=;
	b=B1228FTHQAfn0C8lMD6wmC5ecdhj4u1+KsPHWeFdSIRYZqTr0WkFYLBdqQihaCupor
	9EBWjKetTtAN4FcN+//01vIQqGDX5ruBRxGJ+4LXrD3uf1fC5a1j2v+Ih9/6nsGZ3jbo
	Dx1cTFjqV7RpNT91k3CQbfkL8n4NuHLfQ8et0sKuFC0cb6hB4TAc/uNKK9+FBe152uZX
	b+rR2KYMZbcpXvbGutaPJCG4n8VP41H+DRbNxR/fhHP+O96tFjEtybkiJS5lr8L28S/R
	rfofUToSwoeETB1bSvnpjqMBoWVcxpfDLebbyIhXPqh1sI6+DmLu2mA5TPk4GrPPSG5F
	sOkQ==
X-Received: by 10.66.234.198 with SMTP id ug6mr1292323pac.43.1364510369782;
	Thu, 28 Mar 2013 15:39:29 -0700 (PDT)
Received: from pride.localdomain (static-50-43-57-222.bvtn.or.frontiernet.net.
	[50.43.57.222])
	by mx.google.com with ESMTPS id ce16sm833972pac.5.2013.03.28.15.39.27
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 28 Mar 2013 15:39:28 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <5154C69F.9080904@yoctoproject.org>
Date: Thu, 28 Mar 2013 15:39:27 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130311 Thunderbird/17.0.4
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
X-Enigmail-Version: 1.5.1
X-Gm-Message-State: ALoCoQlBvncaz3/OmMAal5qKSJ6h5nW+NMiYR7NAx92UndG4lVD9VCtqKC1Af07Z6s5foIb2NzgA
Subject: Improper 1.4_M5.rc1 tags pushed to git.yoctoproject.org
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
X-List-Received-Date: Thu, 28 Mar 2013 22:39:30 -0000
X-Groupsio-MsgNum: 12825
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms080508000106060407010107"

--------------ms080508000106060407010107
Content-Type: multipart/alternative;
 boundary="------------000308060604040905060605"

--------------000308060604040905060605
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Less than 16 hours ago I improperly tagged 1.4_M5.rc1. If you have
recently fetched updates from poky
<https://git.yoctoproject.org/cgit/cgit.cgi/poky/>, eclipse-poky
<https://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky/>,  meta-intel
<https://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/>, or meta-qt3
<https://git.yoctoproject.org/cgit/cgit.cgi/meta-qt3/> you will need to
delete the bad tags.

=46rom inside your poky repository run:

git tag -d 1.4_M5.rc1

If you see "Deleted tag '1.4_M5.rc1' (was c459a89)" then the tag has
been correctly deleted.
If you see "error: tag '1.4_M5.rc1' not found." then your repository
didn't have the bad tag and there is nothing else you need to do.

Repeat the steps for eclipse-poky
<https://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky/>,  meta-intel
<https://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/>, and meta-qt3
<https://git.yoctoproject.org/cgit/cgit.cgi/meta-qt3/> repositories if
needed. From inside of each repository run: git tag -d 1.4_M5.rc1

Thank you,

--=20
Michael Halstead
Yocto Project / Sys Admin


--------------000308060604040905060605
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DISO=
-8859-1">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    Less than 16 hours ago I improperly tagged 1.4_M5.rc1. If you have
    recently fetched updates from <a title=3D"poky"
      href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/">poky</a>,=

    <a title=3D"eclipse-poky"
      href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky/">e=
clipse-poky</a>,&nbsp;

    <a title=3D"meta-intel"
      href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/">met=
a-intel</a>,
    or <a title=3D"meta-qt3"
      href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/meta-qt3/">meta-=
qt3</a>
    you will need to delete the bad tags.<br>
    <br>
    From inside your poky repository run:<br>
    <br>
    git tag -d 1.4_M5.rc1<br>
    <br>
    If you see "Deleted tag '1.4_M5.rc1' (was c459a89)" then the tag has
    been correctly deleted.<br>
    If you see "error: tag '1.4_M5.rc1' not found." then your repository
    didn't have the bad tag and there is nothing else you need to do.<br>=

    <br>
    Repeat the steps for <a title=3D"eclipse-poky"
      href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky/">e=
clipse-poky</a>,&nbsp;

    <a title=3D"meta-intel"
      href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/">met=
a-intel</a>,
    and <a title=3D"meta-qt3"
      href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/meta-qt3/">meta-=
qt3</a>
    repositories if needed. From inside of each repository run: git tag
    -d 1.4_M5.rc1<br>
    <br>
    Thank you,
    <pre class=3D"moz-signature" cols=3D"72">--=20
Michael Halstead
Yocto Project / Sys Admin</pre>
  </body>
</html>

--------------000308060604040905060605--

--------------ms080508000106060407010107
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
DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEzMDMyODIyMzkyN1owIwYJKoZIhvcN
AQkEMRYEFFQsGPygbRdMguq9fAiT/OkcQHj0MGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEq
MAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaQGCSsGAQQBgjcQBDGBljCBkzCBjDELMAkGA1UEBhMC
SUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRp
ZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDIgUHJpbWFyeSBJbnRlcm1l
ZGlhdGUgQ2xpZW50IENBAgIiAzCBpgYLKoZIhvcNAQkQAgsxgZaggZMwgYwxCzAJBgNVBAYTAklM
MRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZp
Y2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRp
YXRlIENsaWVudCBDQQICIgMwDQYJKoZIhvcNAQEBBQAEggEAkaqTH/H0wJbBeH/EJNLMWpYQIks7
BpjUuoXziqL9WRbH8Yi0ngHOyteRIhFAlIDJFpxnQMTmKzWn7AzS61XBeU5mp11SfmchyEbogC+p
ydJ8b6+lcp9hriVVa3y+KcJvUSfTGTx6ZLPXt3MT/xAmGT67uxRP5oAoS7CB0Qz9/SAM1JQe5cUT
VesEP8fmKtY/I8NSJW4+8s0Fp2eZc6lRlEphXK9AnOw+yaUdHhHJo834vuQnyTTZtrxUpM2VBdNu
xiFWy89YW64Q+NZDsOqLMStAJq2ay3tMUhZ/EwjCzZxGv1KjLhXtrIdlEaMIm4BjtXZqRdd0GYt5
wbasLh+ASwAAAAAAAA==

--------------ms080508000106060407010107--
