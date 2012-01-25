Return-Path: <halstead@happypunch.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7880E0059A
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 15:34:13 -0800 (PST)
Received: by yhjj63 with SMTP id j63so3070755yhj.35
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 15:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=happypunch.com; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:content-type:x-gm-message-state;
	bh=yxSH8a0HEEwySfScKeClm6peTUeH3vwO28viscvZCt4=;
	b=MfvBIS0iO1i2lRj3pyt1kpFecbM1QqO2gcJvuwH/rahz1ruEerFn5kh89dmkZMlZPY
	1MICGrd17WKw9RarixzolrbRi7R4lEhG0Lfb1yA/NVWg1bY+lQCbt4OgnLUVlnccTkLA
	dDKYqvWNEaoubhkifdKB1r6Q3cnZhzrWNM0Wc=
Received: by 10.236.78.193 with SMTP id g41mr28231061yhe.25.1327534452836;
	Wed, 25 Jan 2012 15:34:12 -0800 (PST)
Received: from [192.168.1.2] (static-50-43-33-240.bvtn.or.frontiernet.net.
	[50.43.33.240])
	by mx.google.com with ESMTPS id j16sm5446723anm.9.2012.01.25.15.34.10
	(version=SSLv3 cipher=OTHER); Wed, 25 Jan 2012 15:34:11 -0800 (PST)
Sender: Michael Halstead <halstead@happypunch.com>
Message-ID: <4F209171.8070205@yoctoproject.org>
Date: Wed, 25 Jan 2012 15:34:09 -0800
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Enigmail-Version: 1.3.4
X-Gm-Message-State: ALoCoQnZWkrCQhZXoFhhZLSrPKPZxKELJ02A+OjCzkbJJtAPFH1eI/gTj6QavmeFtbDhmLleP6Dy
Subject: Network Outage Window Tomorrow Morning
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
X-List-Received-Date: Wed, 25 Jan 2012 23:34:14 -0000
X-Groupsio-MsgNum: 4402
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms000308090005070602010500"

--------------ms000308090005070602010500
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Our upstream network provider is performing maintenance on a problem
line card tomorrow morning. The window is between 0300 and 0600 PST
(1100-1400 UTC). They will try to route around the problem, but may
not be able to entirely. The outages are expected to be short, but
possibly repetitive. However, that is a guess based on previous
experience, NERO is reserving the window.

This affects the main website, wiki, git hosting, and our autobuilder
 interface.

Michael Halstead
Systems Administrator / Yocto Project



--------------ms000308090005070602010500
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
GgUAoIICEDAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xMjAxMjUy
MzM0MDlaMCMGCSqGSIb3DQEJBDEWBBQu+Q/oHOP80OMU0T7v+I3bdgfNqzBfBgkqhkiG9w0BCQ8x
UjBQMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwIC
AUAwBwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaUGCSsGAQQBgjcQBDGBlzCBlDCBjDELMAkGA1UE
BhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENl
cnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRl
cm1lZGlhdGUgQ2xpZW50IENBAgMDftEwgacGCyqGSIb3DQEJEAILMYGXoIGUMIGMMQswCQYDVQQG
EwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2Vy
dGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVy
bWVkaWF0ZSBDbGllbnQgQ0ECAwN+0TANBgkqhkiG9w0BAQEFAASCAQBZFHjb04OJwRLtauGPOK+o
mrq9ynDafP2iEfINXbm+fEO5BmCaDADpwNEUsciRfy1zI0yoNdS5lV/GTu0WlpXlQ0hDP6DNA9jn
tkq8OSUoqhiOULtwS46IrVvdPDN+r0pnnEYvMeiVAOWkMD0kZMRbcMAX2DM+fHKV6Gut2x9pyvA4
VguSftEzZxiBpZdgeNJQ1PXrSRlkDuz8FzICGEusqVSKwI7BmX5ZVZW0cgzeKS38iyTNa1T/aBSW
ubPO71aRHvoHNkDeJnuacbC9OTDCrNzRWV9p0ilzRyHHX16VWwrOLXdsGxOH+Tv1kDUXDgG76T+p
i3UpGGyvYb05+GQrAAAAAAAA

--------------ms000308090005070602010500--
