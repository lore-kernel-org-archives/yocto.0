Return-Path: <halstead@happypunch.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 988C8E0044A
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2012 17:14:41 -0700 (PDT)
Received: by dadz8 with SMTP id z8so1911319dad.35
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2012 17:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=happypunch.com; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:content-type;
	bh=Xu1kKKu4WkfLiVCTojc13EkyKXlC5x3HI9lAjkhT3jI=;
	b=PyBuXG/ApV1n35St+JW8Spl63ehB+H6S4+hyYzyG0eCyVV98dCGZUqkfuztuUvoVSY
	NJnJ+QeAFvAQ3QDvHup7vlay3UFrps0pTUzrLz8eMtr0vsEss4QKhGfGKOey/RMsPhhF
	e8VduTJhUpAt0MjvF4HL7Ar4TwadDpke/V+ig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:content-type:x-gm-message-state;
	bh=Xu1kKKu4WkfLiVCTojc13EkyKXlC5x3HI9lAjkhT3jI=;
	b=U1a9byRMaBAFxNvKTiYL2yzR+F+zQLbFfvdq0xX1WINd8FzTaOKXUBAkXMKzBQTkmr
	fP7UkWZI590p89y1WqRoiyxMubxw9+K76+6ywEGAueJaP/wDJwAIx7JvFn0FMMSHhtGV
	KOv7xmGSdFNQpTAC5A3y8ffGY/62Js+juVHDtq0pr1WMqfUFNraiUQ13yPbVZZWXuoQp
	uvXf9j3pRWmKUMz+IGMIxGoBPG8Gim+io/9WcbRZG8tHijgQijjsR3BIrQwROy2iFDHf
	CSCjV8Xs+BN78XtHy696sQgy2QOZCMaMlaHwEhyL9I/KzhLyUWp80g2MUzigthGTzOAf
	kAGQ==
Received: by 10.68.134.97 with SMTP id pj1mr14231538pbb.55.1346372079215;
	Thu, 30 Aug 2012 17:14:39 -0700 (PDT)
Received: from pride.localdomain (0127ahost2.starwoodbroadband.com.
	[12.105.246.2])
	by mx.google.com with ESMTPS id pj10sm2401325pbb.46.2012.08.30.17.14.35
	(version=SSLv3 cipher=OTHER); Thu, 30 Aug 2012 17:14:37 -0700 (PDT)
Sender: Michael Halstead <halstead@happypunch.com>
Message-ID: <504001EF.3020207@yoctoproject.org>
Date: Thu, 30 Aug 2012 17:14:39 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>, 
	yocto-announce@yoctoproject.org
X-Enigmail-Version: 1.4.4
X-Gm-Message-State: ALoCoQmkvUQ8EVCl5dLsIaPkl/uqP2S0bIVkbdcyN1r7QlftRELbHrjcU9w3EfYSAmwYmhr75hWf
Subject: [ANNOUNCEMENT] Yocto 1.3 Milestone 3 Released
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 Aug 2012 00:14:41 -0000
X-Groupsio-MsgNum: 9007
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms030306050906040904020909"

--------------ms030306050906040904020909
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello,

We are pleased to announce the third milestone of the coming release
of Yocto 1.3. This milestone release is available at:

=20
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m3/=
poky-yocto-1.3-m3.tar.bz2
  or
=20
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m3/poky-yocto-=
1.3-m3.tar.bz2

Additional tarballs for meta-qt3 and the eclipse plugin are available at:=


=20
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m3/=
eclipse-poky-yocto-1.3-m3.tar.bz2
=20
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m3/=
meta-qt3-yocto-1.3-m3.tar.bz2

with mirror locations at:

=20
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m3/eclipse-pok=
y-yocto-1.3-m3.tar.bz2
=20
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m3/meta-qt3-yo=
cto-1.3-m3.tar.bz2

For information on 1.3 M3 test results see:

  https://wiki.yoctoproject.org/wiki/Yocto_1.3_Milestone_Test_Report

Thank you everyone for all the hard work.

Michael Halstead
Yocto Project / Sys Admin
<michael@yoctoproject.org>

- --------------------
yocto-1.3-m3 Errata
- --------------------

Release Name: eclipse-poky-yocto-1.3-m3=20
Branch:  1.3_M3
Tag:  1.3_M3.final
Hash:  db06ec9ffe7558107502599918db298abee160cd
md5:  a75e8e18d1029180803239a72a549ebb  eclipse-poky-yocto-1.3-m3.tar.bz2=

Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m3/=
eclipse-poky-yocto-1.3-m3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m3/eclipse-pok=
y-yocto-1.3-m3.tar.bz2



Release Name: meta-qt3-yocto-1.3-m3=20
Branch:  1.3_M3
Tag:  1.3_M3.final
Hash:  f8475d5c5935695d4d1dfff1d7be30f49e162094
md5:  4231e853d33ab3eaccc97020704c2f16  meta-qt3-yocto-1.3-m3.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m3/=
meta-qt3-yocto-1.3-m3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m3/meta-qt3-yo=
cto-1.3-m3.tar.bz2



Release Name: poky-yocto-1.3-m3=20
Branch:  1.3_M3
Tag:  1.3_M3.final
Hash:  8b8748c8f963900b83dc0fdd7757556f917fe4fd
md5:  c1c662f38b281d771784b2e02385309e  poky-yocto-1.3-m3.tar.bz2
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3-m3/=
poky-yocto-1.3-m3.tar.bz2
http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3-m3/poky-yocto-=
1.3-m3.tar.bz2



- --------------------
Features
- --------------------

* eglibc upgrade to 2.16, mesa upgrade to 8.0.4

* Build history improvements such as tracking runtime package name and
version changes when there is meta data changes.

* Various bitbake usability improvement including adding search path to
debug log, cleaning up runqueue exception catching in normal task failure=

case, handling broken symlinks in local mirror handling, etc.

* The combo-layer tool usability improvement including improving patch
list handling and output, allowing component pull to be done separately,
etc.

* The installer now supports EFI with a new basic EFI installer script
in the initramfs-live-install-efi recipe.

* Various bug fixes and improvement in areas such as connman,
kern-tool, disabling gtk-doc, etc.

- --------------------
Known Issues
- --------------------

2577       Segmentation fault on qemuarm from /usr/lib/libust.so.0

2775       [mpc8315e-rdb] kernel crashes when booting with 1.3 M2 RC1
20120712 build

2888       x32 build fails at gcc cross-initial do_compile

2969       Incremental RPM image generation is not working as expected

2980       toolchain issue - segmentation fault while configuring package=
s

3005       1.3 M3 build-appliance comes with old poky tree and m4-native
compile fails

Please see=20
https://wiki.yoctoproject.org/wiki/Yocto_1.3_Milestone_Test_Report for
detail.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJQP/+pAAoJEEyK+E/MEkQPsfoH/ic4Cy7jOO+A7M2aGE4U52xB
KgvnGAIHMwWOVG9HV/rKRwCZMr5VsRNpXbzTwq6ff0Yy9DMkwbkNaDVAeaeG/Ywq
20otTtlnmEamv15TjuWK54euKhTdE8oBqJMsdSDxyWoIto6t3NXEcpGmJvTe3VGG
VkUqB1cBLFP6o3W6TwJiXlQYKXXpyQnMIp9P5CuY6yJn7INH5ulYdjKIbC445GO5
jruCuvQYLme6ygcrONva3kgEngE5f+yjGiGF7xs5A4ASy/xgHdlrv90pVbMRBE86
W2aqVkXoGLD6MD4nUU20RuRXSKqvv7nFw7BrrT5+SY0w3GU0pW4dTl+HfwyzxJk=3D
=3DiSgO
-----END PGP SIGNATURE-----



--------------ms030306050906040904020909
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
DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEyMDgzMTAwMTQzOVowIwYJKoZIhvcN
AQkEMRYEFHdLChfSHXX1FmXeVGpqRwNJXx/eMGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEq
MAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaQGCSsGAQQBgjcQBDGBljCBkzCBjDELMAkGA1UEBhMC
SUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRp
ZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDIgUHJpbWFyeSBJbnRlcm1l
ZGlhdGUgQ2xpZW50IENBAgIiAzCBpgYLKoZIhvcNAQkQAgsxgZaggZMwgYwxCzAJBgNVBAYTAklM
MRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZp
Y2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRp
YXRlIENsaWVudCBDQQICIgMwDQYJKoZIhvcNAQEBBQAEggEAhG3F1IcDWWQu1AGVEf5QHgV3C6UF
gBYlDXircuP9v74+rTy4x9TVu05aDcj4A0ml0QkmugAHAHeHfEAXlMdvwLLbzzNmVnyrzhIz3VO3
gnJpMZxXR0gVia2SgZnOcmVtTycYmgCOrSW/Yn6CzFPCDReQXR2g6ux7oXqW2lasnvo6ne5C67Yf
qRbifVQ39DmOFJdieUwNJoItU+6eh9dYFXSxlDbb++lRbcH+c129kNhtKYg1vlJbp/H0u7spiugO
1gC2cAfIPnc6M0B+CLiISQlDGC3YQbGZhT7xNJF4+TkG+yKxIOWByk7QhEyagQRdW53vJUj1+fZF
5yTX056OhQAAAAAAAA==

--------------ms030306050906040904020909--
