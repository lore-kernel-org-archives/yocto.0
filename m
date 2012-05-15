Return-Path: <halstead@happypunch.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCF7CE01408
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 16:54:37 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so430256pbb.35
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 16:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=happypunch.com; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:content-type;
	bh=ZSXn4+OQKD9Rz2pWRz6vFv5jMUvo3zLgao6RcR2dlyY=;
	b=cyqReCmJ9bxHnQMwjPTWQSKSUCVLDNCN12PSlRDh/23eP/aV3ZFY0/3MVanhrdvhNt
	1OUbh8Vy1EyKBeh2vJmZqGXivnDK8Cyhsnj7ahQKwSp9wBdgk48XUNALHf9zs/WgrRDW
	vmllv2+A5kvsxB88T5tPd8YUuYF+js929r0W8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:content-type:x-gm-message-state;
	bh=ZSXn4+OQKD9Rz2pWRz6vFv5jMUvo3zLgao6RcR2dlyY=;
	b=CIXPLC5ua3SBnSRWUj6lIYX8FlCtQuBdxTkTvAgwbPmTwSdRGXnPt1intOzcJqBJ4b
	+eCrp9ki0UIgccBWwvQRWHdS9yQaE7S091w5awTc9NHdno9V7+MmlKDD5Asc2+zep06i
	Oto11BVyiQtfSPz20azPYcsbL31BAYIKX5IpPAqewYGuNKByIBcxN3exfMPDTQD1x7MK
	VODm5c5HSqfu+Zvx8GW4nzhZY0DoZH7dR5zkX+hpXkGdwmm9RpbJ+qJyLf8bc/ThoZ3I
	SvtOThgb9FatQBCc7clNSEVnYGH3fPxOVdtcQ18ZpoSHhD8VRyrWXVM4fqqj6DIQ9gNA
	ANMQ==
Received: by 10.68.230.162 with SMTP id sz2mr10296722pbc.128.1337126076350;
	Tue, 15 May 2012 16:54:36 -0700 (PDT)
Received: from pride.incitedev.com ([199.223.124.14])
	by mx.google.com with ESMTPS id pj5sm3357891pbb.51.2012.05.15.16.54.34
	(version=SSLv3 cipher=OTHER); Tue, 15 May 2012 16:54:35 -0700 (PDT)
Sender: Michael Halstead <halstead@happypunch.com>
Message-ID: <4FB2ECB9.2020200@yoctoproject.org>
Date: Tue, 15 May 2012 16:54:33 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Enigmail-Version: 1.5pre
X-Gm-Message-State: ALoCoQlOHOqj9Q/gOVtwuXnZNElB4whBRsd1VmQOv+Yd6d1OP4xxoZhJVLxlfUDKaqaRdXb/T7XK
Subject: [Infra] Network home directories
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
X-List-Received-Date: Tue, 15 May 2012 23:54:38 -0000
X-Groupsio-MsgNum: 6691
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms000106030706050405060501"

--------------ms000106030706050405060501
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Problems:
Moving files between builders requires copying them to localhost and
back (slow) or forwarding your ssh-agent around (poor security).
Different amounts of free local storage mean pokybuild has different
size constraints on different builders which isn't helpful.

Solution:
Beth and I propose that we mount user home directories from the NAS on
the autobuilder stack so that user files are shared across the build
infrastructure. We will keep a copy of bare home directories with ssh
keys on the filesystem below the network mount so that logins will
continue to function even during a NAS outage.

Interruption:
Setting this up requires moving user home directories from /srv and
consolidating the data. This wouldn't interrupt the builders but would
keep some users from logging in for several minutes.

What we gain:
This offers the benefit of shared files across the builders as well as
keeping the local disk free for poky builds. It allows easy tear-down
and rebuilding of slave hosts because unique data is separated from
local storage.

Does this break anyone's existing workflow? Any other concerns?

Michael Halstead
Yocto Project / Sys Admin


--------------ms000106030706050405060501
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
GgUAoIICEDAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xMjA1MTUy
MzU0MzNaMCMGCSqGSIb3DQEJBDEWBBSuc+IZXG2lpNnUCNvLqt9UVoQswjBfBgkqhkiG9w0BCQ8x
UjBQMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwIC
AUAwBwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaUGCSsGAQQBgjcQBDGBlzCBlDCBjDELMAkGA1UE
BhMCSUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENl
cnRpZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDEgUHJpbWFyeSBJbnRl
cm1lZGlhdGUgQ2xpZW50IENBAgMDftEwgacGCyqGSIb3DQEJEAILMYGXoIGUMIGMMQswCQYDVQQG
EwJJTDEWMBQGA1UEChMNU3RhcnRDb20gTHRkLjErMCkGA1UECxMiU2VjdXJlIERpZ2l0YWwgQ2Vy
dGlmaWNhdGUgU2lnbmluZzE4MDYGA1UEAxMvU3RhcnRDb20gQ2xhc3MgMSBQcmltYXJ5IEludGVy
bWVkaWF0ZSBDbGllbnQgQ0ECAwN+0TANBgkqhkiG9w0BAQEFAASCAQCNuwvT/VIVRhaxs6uu6Kn5
sinZw7PAistgBCvsIb3Y7IDU+ft1XDdLPKxgFTYeEZE4k5XVnMiVrAPxyUoCw9fcWN6E9H490iFj
URbr0W1mdycuvbQeKCRajm2jpKaOp3wqDC9VJUgfz3wDTBOLdOfpl7P7aNnkoRuHXTpB5gvRed5e
55JosvuB8s5hizRNlduPQBJTocc5cgbksavhOUc8PiQabf5iMF9nFwgKwYrYOvt+GhJV7fk4JQiR
b7D9gZXD2JMjh8HVy7rXjBYsg31cvwCI3AJN94rbbXW3mVw2XKr468LiNgAWvkO9V+uFUt3/St1X
HBZCBeDha5Fx3eACAAAAAAAA

--------------ms000106030706050405060501--
