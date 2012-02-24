Return-Path: <halstead@happypunch.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B6B1E003E3
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 14:35:35 -0800 (PST)
Received: by pbbrp8 with SMTP id rp8so2038420pbb.35
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 14:35:35 -0800 (PST)
Received-SPF: pass (google.com: domain of halstead@happypunch.com designates
	10.68.225.73 as permitted sender) client-ip=10.68.225.73; 
Authentication-Results: mr.google.com; spf=pass (google.com: domain of
	halstead@happypunch.com designates 10.68.225.73 as permitted
	sender) smtp.mail=halstead@happypunch.com;
	dkim=pass header.i=halstead@happypunch.com
Received: from mr.google.com ([10.68.225.73])
	by 10.68.225.73 with SMTP id ri9mr12842679pbc.70.1330122935144
	(num_hops = 1); Fri, 24 Feb 2012 14:35:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=happypunch.com; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:content-type;
	bh=lMfpnrNL5nLUuTM7xdV8rx8NMAfoaqwiWMyMPfBMz+I=;
	b=dlWnDZZWER+sKgFFtEJuomZvZbh6ma6AqBVtpsHlY/ZPloB0uGBCiwaSS+xqIZEAPg
	vPV9cYTDEYGThj8CJmhAi3nGBOB079YJ5KUqFoxGKLB47O5blN6TJS5T3snS6lru6CzI
	clfSo9j2KG43Mv3t/gFNtNMOaKPXezOsWAIKg=
Received: by 10.68.225.73 with SMTP id ri9mr10610766pbc.70.1330122935077;
	Fri, 24 Feb 2012 14:35:35 -0800 (PST)
Received: from [192.168.1.5] (static-50-43-40-121.bvtn.or.frontiernet.net.
	[50.43.40.121])
	by mx.google.com with ESMTPS id vy2sm5440549pbb.48.2012.02.24.14.35.32
	(version=SSLv3 cipher=OTHER); Fri, 24 Feb 2012 14:35:33 -0800 (PST)
Sender: Michael Halstead <halstead@happypunch.com>
Message-ID: <4F4810B9.7090007@yoctoproject.org>
Date: Fri, 24 Feb 2012 14:35:37 -0800
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
X-Enigmail-Version: 1.3.5
X-Gm-Message-State: ALoCoQlTbJatk/jGnYTxj69IC/xW6akX7KJeYZkT5BXiXTnK1+JGGwM4eqcgwNTLJhV6DJUZ7YR5
Subject: Bugzilla downtime begins in 30 minutes
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
X-List-Received-Date: Fri, 24 Feb 2012 22:35:35 -0000
X-Groupsio-MsgNum: 4930
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms090902060201080303020101"

--------------ms090902060201080303020101
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

We are starting the bug tracker upgrade in 30 minutes. There will be
some downtime during the transition because we are both upgrading and
moving to new servers.

I will send another list mail went the process is complete.

Michael Halstead
Sys Admin / Yocto Project


--------------ms090902060201080303020101
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIINYjCCBjQw
ggQcoAMCAQICAR4wDQYJKoZIhvcNAQEFBQAwfTELMAkGA1UEBhMCSUwxFjAUBgNVBAoTDVN0YXJ0
Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRpZmljYXRlIFNpZ25pbmcxKTAn
BgNVBAMTIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MB4XDTA3MTAyNDIxMDE1NVoX
DTE3MTAyNDIxMDE1NVowgYwxCzAJBgNVBAYTAklMMRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSsw
KQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZpY2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFy
dENvbSBDbGFzcyAxIFByaW1hcnkgSW50ZXJtZWRpYXRlIENsaWVudCBDQTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAMcJg8zOLdgasSmkLhOrlr6KMoOMpohBllVHrdRvEg/q6r8jR+EK
75xCGhR8ToREoqe7zM9/UnC6TS2y9UKTpT1v7RSMzR0t6ndl0TWBuUr/UXBhPk+Kmy7bI4yW4urC
+y7P3/1/X7U8ocb8VpH/Clt+4iq7nirMcNh6qJR+xjOhV+VHzQMALuGYn5KZmc1NbJQYclsGkDxD
z2UbFqE2+6vIZoL+jb9x4Pa5gNf1TwSDkOkikZB1xtB4ZqtXThaABSONdfmv/Z1pua3FYxnCFmdr
/+N2JLKutIxMYqQOJebr/f/h5t95m4JgrM3Y/w7YX9d7YAL9jvN4SydHsU6n65cCAwEAAaOCAa0w
ggGpMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBRTcu2SnODaywFc
fH6WNU7y1LhRgjAfBgNVHSMEGDAWgBROC+8apEBbpRdphzDKNGhD0EGu8jBmBggrBgEFBQcBAQRa
MFgwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9jYTAtBggrBgEFBQcwAoYh
aHR0cDovL3d3dy5zdGFydHNzbC5jb20vc2ZzY2EuY3J0MFsGA1UdHwRUMFIwJ6AloCOGIWh0dHA6
Ly93d3cuc3RhcnRzc2wuY29tL3Nmc2NhLmNybDAnoCWgI4YhaHR0cDovL2NybC5zdGFydHNzbC5j
b20vc2ZzY2EuY3JsMIGABgNVHSAEeTB3MHUGCysGAQQBgbU3AQIBMGYwLgYIKwYBBQUHAgEWImh0
dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYBBQUHAgEWKGh0dHA6Ly93d3cu
c3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwDQYJKoZIhvcNAQEFBQADggIBAAqDCH14qywG
XLhjjF6uHLkjd02hcdh9hrw+VUsv+q1eeQWB21jWj3kJ96AUlPCoEGZ/ynJNScWy6QMVQjbbMXlt
UfO4n4bGGdKo3awPWp61tjAFgraLJgDk+DsSvUD6EowjMTNx25GQgyYJ5RPIzKKR9tQW8gGK+2+R
HxkUCTbYFnL6kl8Ch507rUdPPipJ9CgJFws3kDS3gOS5WFMxcjO5DwKfKSETEPrHh7p5shuuNktv
sv6hxHTLhiMKX893gxdT3XLS9OKmCv87vkINQcNEcIIoFWbP9HORz9v3vQwR4e3ksLc2JZOAFK+s
sS5XMEoznzpihEP0PLc4dCBYjbvSD7kxgDwZ+Aj8Q9PkbvE9sIPP7ON0fz095HdThKjiVJe6vofq
+n6b1NBc8XdrQvBmunwxD5nvtTW4vtN6VY7mUCmxsCieuoBJ9OlqmsVWQvifIYf40dJPZkk9YgGT
zWLpXDSfLSplbY2LL9C9U0ptvjcDjefLTvqSFc7tw1sEhF0n/qpA2r0GpvkLRDmcSwVyPvmjFBGq
Up/pNy8ZuPGQmHwFi2/14+xeSUDG2bwnsYJQG2EdJCB6luQ57GEnTA/yKZSTKI8dDQa8Sd3zfXb1
9mOgSF0bBdXbuKhEpuP9wirslFe6fQ1t5j5R0xi72MZ8ikMu1RQZKCyDbMwazlHiMIIHJjCCBg6g
AwIBAgIDA37RMA0GCSqGSIb3DQEBBQUAMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRD
b20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYG
A1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0EwHhcN
MTIwMTA2MTMyOTE3WhcNMTMwMTA2MDcxMjUwWjBnMRkwFwYDVQQNExBlTGJQOTQ4c1JVN2dZQXYy
MSEwHwYDVQQDDBhtaWNoYWVsQHlvY3RvcHJvamVjdC5vcmcxJzAlBgkqhkiG9w0BCQEWGG1pY2hh
ZWxAeW9jdG9wcm9qZWN0Lm9yZzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANhLuIfm
OceuHa0beGkrktR2YWPzNci0abL4tkli9NVHN7gPjrZHErqn81LXKr+lHSPe5K9H2ziM9Xy8dWpV
jcNiTvkKj2RgoCZn48TVpCA93UR/abpbUcQixLrz0aKrwbL6cgHNBwaWwH4YnBtdDpGCoBsIN1ex
hSgNX27KyhApSzrMdIgHvO5UchBiARXh2Ll+Wf7G6ph+TFq2BCGu7MI9pDn6FZwHri78KOKM7aP8
g7oUmuwauWZ855YV1rE+nE+/yeBuCdgIG2l2v2YYN+nrhhFSymolp8NgPoSztKrx7sRbOEkuC4hq
fWch+MEWos24nHnsnCw9cwMO4m+kN7sCAwEAAaOCA7MwggOvMAkGA1UdEwQCMAAwCwYDVR0PBAQD
AgSwMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQUrNEl25qGFro/pXDh
zeZZX1M1JGMwHwYDVR0jBBgwFoAUU3Ltkpzg2ssBXHx+ljVO8tS4UYIwIwYDVR0RBBwwGoEYbWlj
aGFlbEB5b2N0b3Byb2plY3Qub3JnMIICIQYDVR0gBIICGDCCAhQwggIQBgsrBgEEAYG1NwECAjCC
Af8wLgYIKwYBBQUHAgEWImh0dHA6Ly93d3cuc3RhcnRzc2wuY29tL3BvbGljeS5wZGYwNAYIKwYB
BQUHAgEWKGh0dHA6Ly93d3cuc3RhcnRzc2wuY29tL2ludGVybWVkaWF0ZS5wZGYwgfcGCCsGAQUF
BwICMIHqMCcWIFN0YXJ0Q29tIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MAMCAQEagb5UaGlzIGNl
cnRpZmljYXRlIHdhcyBpc3N1ZWQgYWNjb3JkaW5nIHRvIHRoZSBDbGFzcyAxIFZhbGlkYXRpb24g
cmVxdWlyZW1lbnRzIG9mIHRoZSBTdGFydENvbSBDQSBwb2xpY3ksIHJlbGlhbmNlIG9ubHkgZm9y
IHRoZSBpbnRlbmRlZCBwdXJwb3NlIGluIGNvbXBsaWFuY2Ugb2YgdGhlIHJlbHlpbmcgcGFydHkg
b2JsaWdhdGlvbnMuMIGcBggrBgEFBQcCAjCBjzAnFiBTdGFydENvbSBDZXJ0aWZpY2F0aW9uIEF1
dGhvcml0eTADAgECGmRMaWFiaWxpdHkgYW5kIHdhcnJhbnRpZXMgYXJlIGxpbWl0ZWQhIFNlZSBz
ZWN0aW9uICJMZWdhbCBhbmQgTGltaXRhdGlvbnMiIG9mIHRoZSBTdGFydENvbSBDQSBwb2xpY3ku
MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuc3RhcnRzc2wuY29tL2NydHUxLWNybC5jcmww
gY4GCCsGAQUFBwEBBIGBMH8wOQYIKwYBBQUHMAGGLWh0dHA6Ly9vY3NwLnN0YXJ0c3NsLmNvbS9z
dWIvY2xhc3MxL2NsaWVudC9jYTBCBggrBgEFBQcwAoY2aHR0cDovL2FpYS5zdGFydHNzbC5jb20v
Y2VydHMvc3ViLmNsYXNzMS5jbGllbnQuY2EuY3J0MCMGA1UdEgQcMBqGGGh0dHA6Ly93d3cuc3Rh
cnRzc2wuY29tLzANBgkqhkiG9w0BAQUFAAOCAQEAUjNTeM730SEKLMbJ4THlGkx3KFkaYxIKf1C1
PvZz9d6fq6VfFL1xbqSsz2og/hiCccC/GYFTKAK3W23LHjiETtNCK6pDzFTzeFxKdYOIoCcCjjxE
IF0D16A1gXBp6G9tT6yUiy916wF8Ic/Etxti4ksydRWDet1LsXXNKt8gdolgPVImHm2VRX/8M9KG
HU2/1oXXgjV2yC77sPVAaVoIBdiRdMOAS7gRt0pX+xNY+R8iItIfQO5Nf6mlRMgwXy/e+pYvSil+
T1jdMQD6k07jZ1kpPAHujuCA5p6EWs+hpDXh7fq+lmfM9zZoTWtEDIJMrLvYy2IMD3NE0clxH+GY
iTGCA9AwggPMAgEBMIGUMIGMMQswCQYDVQQGEwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjEr
MCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2VydGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3Rh
cnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVybWVkaWF0ZSBDbGllbnQgQ0ECAwN+0TAJBgUrDgMC
GgUAoIICEDAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xMjAyMjQy
MjM1MzdaMCMGCSqGSIb3DQEJBDEWBBRt0iz2u6PEk5I9J0Zy16PNlZOLDTBfBgkqhkiG9w0BCQ8x
UjBQMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwIC
AUAwBwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaUGCSsGAQQBgjcQBDGBlzCBlDCBjDELMAkGA1UE
BhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENl
cnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRl
cm1lZGlhdGUgQ2xpZW50IENBAgMDftEwgacGCyqGSIb3DQEJEAILMYGXoIGUMIGMMQswCQYDVQQG
EwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2Vy
dGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVy
bWVkaWF0ZSBDbGllbnQgQ0ECAwN+0TANBgkqhkiG9w0BAQEFAASCAQCMxo0/QtTGipurUVnEfcSq
kzJH6kVkc4C7OMZPBuCPlAGDOkAJdZqRQ7E2F8y3k9FYvtea0sktwN8k35S2+C8ipJK/rAf1gYU6
ukkV8QbS2aiHUwMj+XnV5IOO0n7wqHI5HvOQJU5kErcnmm+jFLfLD60XQtWmV8MsYsL6xXXCm9nR
XOjWPy2P28hp46njV4nYS+5Guj/BKeLIdckX/9wc2+u/RjA+IuloShYS7H1mS8MH0vC8rt5zfcVu
C9Iv0ngiwVEo+YeTEGZPsLst4ijne45f8RWvv7COwxHSHguUoa5apwJqCL17/NeRpxwCraxfjRlU
JHSh4ryMuy2nSPgtAAAAAAAA

--------------ms090902060201080303020101--
