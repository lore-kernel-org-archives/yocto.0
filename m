Return-Path: <jonas.schnelli@include7.ch>
Received: from sokrates.metanet.ch (sokrates.ch-meta.net [80.74.145.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62408E01668
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 04:00:57 -0700 (PDT)
Received: (qmail 1155 invoked from network); 30 Sep 2013 13:00:55 +0200
Received: from cable-static-142-94.teleport.ch (HELO ?10.0.1.11?)
	(87.102.142.94)
	by sokrates.ch-meta.net with ESMTPSA (AES128-SHA encrypted,
	authenticated); 30 Sep 2013 13:00:55 +0200
From: Jonas Schnelli <jonas.schnelli@include7.ch>
Message-Id: <2749DF61-2F0B-4979-99A1-79ED463DA601@include7.ch>
Date: Mon, 30 Sep 2013 13:00:54 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
X-Mailer: Apple Mail (2.1510)
Subject: meta-raspberrypi
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
X-List-Received-Date: Mon, 30 Sep 2013 11:00:59 -0000
X-Groupsio-MsgNum: 16290
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E1A1CEBA-DF3E-4EFA-A558-14BD3C0319C0";
	protocol="application/pkcs7-signature"; micalg=sha1

--Apple-Mail=_E1A1CEBA-DF3E-4EFA-A558-14BD3C0319C0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi

While building with meta-raspberrypi i encounter the following error:

ERROR: Could not inherit file classes/ sdcard_image-rpi.bbclass          =
                                                                         =
                           | ETA:  00:01:03
ERROR: Command execution failed: Exited with 1

Any ideas?

i've tried with:
https://github.com/djwillis/meta-raspberrypi
and
git://git.yoctoproject.org/meta-raspberrypi

thanks
--
/jonas=

--Apple-Mail=_E1A1CEBA-DF3E-4EFA-A558-14BD3C0319C0
Content-Disposition: attachment;
	filename=smime.p7s
Content-Type: application/pkcs7-signature;
	name=smime.p7s
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIMZDCCBW4w
ggRWoAMCAQICEBaRp8Rml5vie+KbDsgDhXIwDQYJKoZIhvcNAQEFBQAwgd0xCzAJBgNVBAYTAlVT
MRcwFQYDVQQKEw5WZXJpU2lnbiwgSW5jLjEfMB0GA1UECxMWVmVyaVNpZ24gVHJ1c3QgTmV0d29y
azE7MDkGA1UECxMyVGVybXMgb2YgdXNlIGF0IGh0dHBzOi8vd3d3LnZlcmlzaWduLmNvbS9ycGEg
KGMpMDkxHjAcBgNVBAsTFVBlcnNvbmEgTm90IFZhbGlkYXRlZDE3MDUGA1UEAxMuVmVyaVNpZ24g
Q2xhc3MgMSBJbmRpdmlkdWFsIFN1YnNjcmliZXIgQ0EgLSBHMzAeFw0xMjA5MDUwMDAwMDBaFw0x
MzEwMDUyMzU5NTlaMIIBGzEXMBUGA1UEChMOVmVyaVNpZ24sIEluYy4xHzAdBgNVBAsTFlZlcmlT
aWduIFRydXN0IE5ldHdvcmsxRjBEBgNVBAsTPXd3dy52ZXJpc2lnbi5jb20vcmVwb3NpdG9yeS9S
UEEgSW5jb3JwLiBieSBSZWYuLExJQUIuTFREKGMpOTgxHjAcBgNVBAsTFVBlcnNvbmEgTm90IFZh
bGlkYXRlZDEzMDEGA1UECxMqRGlnaXRhbCBJRCBDbGFzcyAxIC0gTmV0c2NhcGUgRnVsbCBTZXJ2
aWNlMRcwFQYDVQQDFA5Kb25hcyBTY2huZWxsaTEpMCcGCSqGSIb3DQEJARYaam9uYXMuc2NobmVs
bGlAaW5jbHVkZTcuY2gwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDC24JQ9kPXcUnZ
gA/tIkDbuwcq85siCjE8LuuHA4EbhF7RUULiYymsazkSOlCnnIgTlfzP6HAC3N30yvlN7bpbsiL5
ys7OUJDJD/vA3vRMuLkaNY+V5SfmjTnBCSEbINmKvr39Z+4r8vs4fC7ZVtAO8b+TxUV+keiD6zuQ
8k10/fxrjqWqjRp35vwuTwEGO5ztMgJvBhFfEg0A638J+w/f6qCrrLFC5/k3cJfnUiN30equZxHi
pwEifxdBEocobAwk87KfPH0Syuy/ORNe3PuUARNDT5/7sCEhwqVxmca8wkeJIqeDf4RinAtADRik
af6RXe4mhHUA9WjFSfDyz+V7AgMBAAGjgegwgeUwCQYDVR0TBAIwADBEBgNVHSAEPTA7MDkGC2CG
SAGG+EUBBxcBMCowKAYIKwYBBQUHAgEWHGh0dHBzOi8vd3d3LnZlcmlzaWduLmNvbS9ycGEwCwYD
VR0PBAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMEBggrBgEFBQcDAjAUBgpghkgBhvhFAQYHBAYW
BE5vbmUwUAYDVR0fBEkwRzBFoEOgQYY/aHR0cDovL2luZGMxZGlnaXRhbGlkLWczLWNybC52ZXJp
c2lnbi5jb20vSW5kQzFEaWdpdGFsSUQtRzMuY3JsMA0GCSqGSIb3DQEBBQUAA4IBAQBeQ2ZDn+H+
xjdcP8Od7If15S6DtZXw6mYDo8zUeJ6sh1NJ96x7dWx9De/uVI5Lck734eebDbPeAZah46v8ENX9
xJltL0aVvvifHg3TKqkGAjGB/r+Bqv5OqkUFm5lFg5pQZ5DLYxb+mWGLH23cBTlhguCGB7zWJ3Jt
pGtoF8aoZy0XyVyYU5Sx19N+pRWT1gYVRsNbtoP/HpZwrlHl7zDu0AFji0hhrpt6hNx37n6pe/PF
O1ZkD0jnNNrHPD4eyqx54cYFdNC1LeNruzBvRZQNrIgWf0t21pNnDIVxBALuu5Xd3QgBzMaIU1oR
Y+eUICWLIhejIMUT01NdKiBXKTmJMIIG7jCCBdagAwIBAgIQcRVmBUrkkSFN6bxE+azT3DANBgkq
hkiG9w0BAQUFADCByjELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYD
VQQLExZWZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTowOAYDVQQLEzEoYykgMTk5OSBWZXJpU2lnbiwg
SW5jLiAtIEZvciBhdXRob3JpemVkIHVzZSBvbmx5MUUwQwYDVQQDEzxWZXJpU2lnbiBDbGFzcyAx
IFB1YmxpYyBQcmltYXJ5IENlcnRpZmljYXRpb24gQXV0aG9yaXR5IC0gRzMwHhcNMDkwNTAxMDAw
MDAwWhcNMTkwNDMwMjM1OTU5WjCB3TELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJ
bmMuMR8wHQYDVQQLExZWZXJpU2lnbiBUcnVzdCBOZXR3b3JrMTswOQYDVQQLEzJUZXJtcyBvZiB1
c2UgYXQgaHR0cHM6Ly93d3cudmVyaXNpZ24uY29tL3JwYSAoYykwOTEeMBwGA1UECxMVUGVyc29u
YSBOb3QgVmFsaWRhdGVkMTcwNQYDVQQDEy5WZXJpU2lnbiBDbGFzcyAxIEluZGl2aWR1YWwgU3Vi
c2NyaWJlciBDQSAtIEczMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7cRH3yooHXwG
a7vXITLJbBOP6bGNQU4099oL42r6ZYggCxET6ZvgSU6Lb9UB0F8NR5GKWkx0Pj/GkQm7TDSejW6h
glFi92l2WJYHr54UGAdPWr2f0jGyVBlzRmoZQhHsEnMhjfXcMM3l2VYKMcU2bSkUl70t2olHGYjY
SwQ967Y8Zx50ABMN0Ibak2f4MwOuGjxraXj2wCyO4YM/d/mZ//6fUlrCtIcK2GypR8FUKWVDPkrA
lh/Brfd3r2yxBF6+wbaULZeQLSfSux7pg2qE9sSyriMGZSalJ1grByK0b6ZiSBp38tVQJ5op05b7
KPW6JHZi44xZ6/tu1ULEvkHH9QIDAQABo4ICuTCCArUwNAYIKwYBBQUHAQEEKDAmMCQGCCsGAQUF
BzABhhhodHRwOi8vb2NzcC52ZXJpc2lnbi5jb20wEgYDVR0TAQH/BAgwBgEB/wIBADBwBgNVHSAE
aTBnMGUGC2CGSAGG+EUBBxcBMFYwKAYIKwYBBQUHAgEWHGh0dHBzOi8vd3d3LnZlcmlzaWduLmNv
bS9jcHMwKgYIKwYBBQUHAgIwHhocaHR0cHM6Ly93d3cudmVyaXNpZ24uY29tL3JwYTA0BgNVHR8E
LTArMCmgJ6AlhiNodHRwOi8vY3JsLnZlcmlzaWduLmNvbS9wY2ExLWczLmNybDAOBgNVHQ8BAf8E
BAMCAQYwbgYIKwYBBQUHAQwEYjBgoV6gXDBaMFgwVhYJaW1hZ2UvZ2lmMCEwHzAHBgUrDgMCGgQU
S2u5KJYGDLvQUjibKaxLB4shBRgwJhYkaHR0cDovL2xvZ28udmVyaXNpZ24uY29tL3ZzbG9nbzEu
Z2lmMC4GA1UdEQQnMCWkIzAhMR8wHQYDVQQDExZQcml2YXRlTGFiZWw0LTIwNDgtMTE4MB0GA1Ud
DgQWBBR5R2EIQf04BKJL57XM9UP2SSsR+DCB8QYDVR0jBIHpMIHmoYHQpIHNMIHKMQswCQYDVQQG
EwJVUzEXMBUGA1UEChMOVmVyaVNpZ24sIEluYy4xHzAdBgNVBAsTFlZlcmlTaWduIFRydXN0IE5l
dHdvcmsxOjA4BgNVBAsTMShjKSAxOTk5IFZlcmlTaWduLCBJbmMuIC0gRm9yIGF1dGhvcml6ZWQg
dXNlIG9ubHkxRTBDBgNVBAMTPFZlcmlTaWduIENsYXNzIDEgUHVibGljIFByaW1hcnkgQ2VydGlm
aWNhdGlvbiBBdXRob3JpdHkgLSBHM4IRAItbdVaEVIULAM+vOEjOsaQwDQYJKoZIhvcNAQEFBQAD
ggEBADlNz0GZgbWpBbVSOOk5hIls5DSoWufYbAlMJBq6WaSHO3Mh8ZOBz79oY1pn/jWFK6HDXaNK
wjoZ3TDWzE3v8dKBl8pUWkO/N4t6jhmND0OojPKvYLMVirOVnDzgnrMnmKQ1chfl/Cpdh9OKDcLR
RSr4wPSsKpM61a4ScAjr+zvid+zoK2Q1ds262uDRyxTWcVibvtU+fbbZ6CTFJGZMXZEfdrMXPn8N
xiGJL7M3uKH/XLJtSd5lUkL7DojS7Uodv0vj+Mxy+kgOZY5JyNb4mZg7t5Q+MXEGh/psWVMu198r
7V9jAKwV7QO4VRaMxmgD5yKocwuxvKDaUljdCg5/wYIxggSLMIIEhwIBATCB8jCB3TELMAkGA1UE
BhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQLExZWZXJpU2lnbiBUcnVzdCBO
ZXR3b3JrMTswOQYDVQQLEzJUZXJtcyBvZiB1c2UgYXQgaHR0cHM6Ly93d3cudmVyaXNpZ24uY29t
L3JwYSAoYykwOTEeMBwGA1UECxMVUGVyc29uYSBOb3QgVmFsaWRhdGVkMTcwNQYDVQQDEy5WZXJp
U2lnbiBDbGFzcyAxIEluZGl2aWR1YWwgU3Vic2NyaWJlciBDQSAtIEczAhAWkafEZpeb4nvimw7I
A4VyMAkGBSsOAwIaBQCgggJtMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkF
MQ8XDTEzMDkzMDExMDA1NVowIwYJKoZIhvcNAQkEMRYEFDcNbiygSbNu6lr0WZvbGBmFwhkRMIIB
AwYJKwYBBAGCNxAEMYH1MIHyMIHdMQswCQYDVQQGEwJVUzEXMBUGA1UEChMOVmVyaVNpZ24sIElu
Yy4xHzAdBgNVBAsTFlZlcmlTaWduIFRydXN0IE5ldHdvcmsxOzA5BgNVBAsTMlRlcm1zIG9mIHVz
ZSBhdCBodHRwczovL3d3dy52ZXJpc2lnbi5jb20vcnBhIChjKTA5MR4wHAYDVQQLExVQZXJzb25h
IE5vdCBWYWxpZGF0ZWQxNzA1BgNVBAMTLlZlcmlTaWduIENsYXNzIDEgSW5kaXZpZHVhbCBTdWJz
Y3JpYmVyIENBIC0gRzMCEBaRp8Rml5vie+KbDsgDhXIwggEFBgsqhkiG9w0BCRACCzGB9aCB8jCB
3TELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQLExZWZXJpU2ln
biBUcnVzdCBOZXR3b3JrMTswOQYDVQQLEzJUZXJtcyBvZiB1c2UgYXQgaHR0cHM6Ly93d3cudmVy
aXNpZ24uY29tL3JwYSAoYykwOTEeMBwGA1UECxMVUGVyc29uYSBOb3QgVmFsaWRhdGVkMTcwNQYD
VQQDEy5WZXJpU2lnbiBDbGFzcyAxIEluZGl2aWR1YWwgU3Vic2NyaWJlciBDQSAtIEczAhAWkafE
Zpeb4nvimw7IA4VyMA0GCSqGSIb3DQEBAQUABIIBAC03/o2rHRUhPmpGO/5ZGlEXUTLBm1MGbK2n
wlgtVUMHxX4+2AZZVRtAZ7JpTmo7p2zbK4VcrGp+/ZjsRR25/UCbQEcVdirqlO4Ls4Xm4H7Ajzla
A8rItttbH7huSLq97n9S31qWrl0awvGlo3+wu3bTVOBNYq7mwpr1cS0IBLDS/eQhCA4IbI4MCLun
qzQa3kuHUo9rmkwHUVQnl48BalsKu1j9v5cgIm+EdlkF7QH3Lj8K10k9Joc/twUryoINwgM5DqxO
0JQ7fp1l6Oq7mmjEtvTHC2jHlu7tS0vUbFtCr/Y8ne7O/DcNBmePj2lZQbtyzkDndfzCTr3d7/fH
6DAAAAAAAAA=

--Apple-Mail=_E1A1CEBA-DF3E-4EFA-A558-14BD3C0319C0--
