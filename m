Return-Path: <elena.reshetova@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3C64E00BE1; Thu, 14 Jan 2016 06:33:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A6DCE00B83
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 06:33:49 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Jan 2016 06:33:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,294,1449561600"; 
	d="p7s'?scan'208";a="890446405"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
	by orsmga002.jf.intel.com with ESMTP; 14 Jan 2016 06:33:47 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.131]) by
	IRSMSX109.ger.corp.intel.com ([163.33.3.23]) with mapi id
	14.03.0248.002; Thu, 14 Jan 2016 14:33:46 +0000
From: "Reshetova, Elena" <elena.reshetova@intel.com>
To: Philip Balister <philip@balister.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Package naming "exceptions" in Yocto
Thread-Index: AdFOnt+REXL+9ejPTSCXvzFH/VA3OgALPrUAAAMVemA=
Date: Thu, 14 Jan 2016 14:33:45 +0000
Message-ID: <2236FBA76BA1254E88B949DDB74E612B41A4FD54@IRSMSX102.ger.corp.intel.com>
References: <2236FBA76BA1254E88B949DDB74E612B41A4F981@IRSMSX102.ger.corp.intel.com>
	<56979C72.8080309@balister.org>
In-Reply-To: <56979C72.8080309@balister.org>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: Package naming "exceptions" in Yocto
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
X-List-Received-Date: Thu, 14 Jan 2016 14:33:54 -0000
X-Groupsio-MsgNum: 27981
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0008_01D14EE9.550F5630"

------=_NextPart_000_0008_01D14EE9.550F5630
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

>Please note there is a security page on the wiki:

>https://wiki.yoctoproject.org/wiki/Security

>and there is a security list at:

>yocto-security@yoctoproject.org

>The list isn't very active, but it should be copied on all security
discussions. If you are interested you should be subscribed to this list.

>If I hadn't read the email, I wouldn't have realized this was about
security issues.

Well, security is just an example use-case, but the question is generic,
that's why I asked on yocto list. 

Best Regards,
Elena.

On 01/14/2016 02:43 AM, Reshetova, Elena wrote:
> Hi,
> 
>  
> 
> I have a small question about "exceptional" names of packages in yocto/OE.
> Kernel package is being one example with the name "linux-yocto" vs.
> traditional "linux_kernel". 
> 
> Are there more such yocto-specific packages (of course excluding FW 
> and other bsp-related packages)? A look over the package list didn't 
> reveal any, but I wanted to double check.
> 
>  
> 
> The reason I am asking is that in case when we try to determine the 
> package CVEs against the NVD database, in these particular exception 
> cases, we probably want to check not only "linux-yocto", but also 
> "linux_kernel" open package CVEs with regards to specified version to 
> make sure we cover as much as we can.
> 
>  
> 
> Best Regards,
> Elena.
> 
>  
> 
> 
> 
> 

------=_NextPart_000_0008_01D14EE9.550F5630
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

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
VMv3yxHO8jex40LgMIIFgjCCBGqgAwIBAgITMwAAD3rg031j5++L1QAAAAAPejANBgkqhkiG9w0B
AQUFADB5MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDASBgNVBAcTC1NhbnRhIENsYXJhMRow
GAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMg
SXNzdWluZyBDQSA0QjAeFw0xNTAyMTIyMzMzMTJaFw0xODAxMjcyMzMzMTJaMEUxGTAXBgNVBAMT
EFJlc2hldG92YSwgRWxlbmExKDAmBgkqhkiG9w0BCQEWGWVsZW5hLnJlc2hldG92YUBpbnRlbC5j
b20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC8zCTf8cWZZUKtxwMUvSAnw+W43aFU
UojRptAkTEnxL7PPHdqDP9F4q/6oIcHWhlxca0/lopd2l7h1bzb8bRdTWJwQ9Hf67xLNnhRW5Xtu
A6RW88jOU4ALNkktravhIfru5oQ9SatQOJlkRpZWid5ByI4qUe/G3PmCMdOAHFfUQDZ+CpwexUYJ
FUvDcCVAcqRTx4g/jbhAMfmJQ1RnFXj5Wxq3H0PrH7Tsb9bqXSWGxE6Vr5VQI776dWxwWSbu82CF
uUY2j6Qq902bui4Wg0pRUlG66wFbQ9YujkrrhPSScCWOkycSVUy1tguk5L1WHtj2DelrG5We/Z7T
z3IaYQsTAgMBAAGjggI1MIICMTALBgNVHQ8EBAMCB4AwPAYJKwYBBAGCNxUHBC8wLQYlKwYBBAGC
NxUIhsOMdYSZ5VGD/YEohY6fU4KRwAlngd69OZXwQwIBZAIBCDAdBgNVHQ4EFgQUojQGvJU2345o
mYdTt1O7CESK1YYwHwYDVR0jBBgwFoAU2kEjnFqPca9Xgz4g0+Nl2wzLC9swZQYDVR0fBF4wXDBa
oFigVoZUaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5h
bCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwNEIuY3JsMIGfBggrBgEFBQcBAQSBkjCBjzAiBggr
BgEFBQcwAYYWaHR0cDovL29jc3AuaW50ZWwuY29tLzBpBggrBgEFBQcwAoZdaHR0cDovL3d3dy5p
bnRlbC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2lj
JTIwSXNzdWluZyUyMENBJTIwNEIuY3J0MB8GA1UdJQQYMBYGCCsGAQUFBwMEBgorBgEEAYI3CgMM
MCkGCSsGAQQBgjcVCgQcMBowCgYIKwYBBQUHAwQwDAYKKwYBBAGCNwoDDDBPBgNVHREESDBGoCkG
CisGAQQBgjcUAgOgGwwZZWxlbmEucmVzaGV0b3ZhQGludGVsLmNvbYEZZWxlbmEucmVzaGV0b3Zh
QGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEAod197fPvlvz23dBvvgrjTi/LUl8J8o1fmbNG
YjdquDdvPNDJ4FL8t9MpeqRc+63IgyitnmvmiD+lzTibTwDSt2MY9Mck8VJDF60h7dnFFhr3k1B6
yt6cwxvdadOVB0UVwORYw+9LWvnNyhqsMz7YZtEksDkFqtTE7+vZhVDBAjhTTjtMeDz+l9JOWnkx
bJcp/RbxD3m16kRaXq5xHQQ4TfjSRw0GjZq2FafF8yrv+vcVlXYLaKT0DXKT/mCksU7aN4BE5tUx
H55A48baN+GMUI75Gk3rzh/kdNmYtJhYs63kZ8+2u/hkxEc1/wKM5h714s2+dcCznTAuLF6mXVUp
6jCCBckwggSxoAMCAQICEzMAAGceyeUJ4F3k0k4AAAAAZx4wDQYJKoZIhvcNAQEFBQAweTELMAkG
A1UEBhMCVVMxCzAJBgNVBAgTAkNBMRQwEgYDVQQHEwtTYW50YSBDbGFyYTEaMBgGA1UEChMRSW50
ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElzc3VpbmcgQ0Eg
NEEwHhcNMTUwMjEyMjMzMjMzWhcNMTgwMTI3MjMzMjMzWjBFMRkwFwYDVQQDExBSZXNoZXRvdmEs
IEVsZW5hMSgwJgYJKoZIhvcNAQkBFhllbGVuYS5yZXNoZXRvdmFAaW50ZWwuY29tMIIBIjANBgkq
hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAri/J5YL4ajWEtrCcoBdZhjVXDBMbhSL9Sa+oL2KXVmCc
gNNGSkyw9GS6QnkkJq0i7DQooSuI0ymSvWu4dhotg8SytCXuxMH0Q3WRapVw9K73ZDKz3cbFFeps
FiSAjOZ3qflZt5ZiweR/XJq8PNwgTnvajNdC+jXeEPzJV4vEsaHpBmf1xhx2SqkQhJAlb6sa2dgR
bGMLdMKR9SE+3LVNBVDyx39lSY92S+8W4iRLfLpQiN1k2hL10ubFrOchsKz2tQZt9dc7ekZLgmmy
/rxBFY70hsqjiwA5KVestkdZmUkj5bRwOL0sjOqVJaAoNkrNZGVdzpsuVz7ybt/G9ulDWwIDAQAB
o4ICfDCCAngwCwYDVR0PBAQDAgQwMD0GCSsGAQQBgjcVBwQwMC4GJisGAQQBgjcVCIbDjHWEmeVR
g/2BKIWOn1OCkcAJZ4S52UGHhP9OAgFkAgENMEQGCSqGSIb3DQEJDwQ3MDUwDgYIKoZIhvcNAwIC
AgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUrDgMCBzAKBggqhkiG9w0DBzAdBgNVHQ4EFgQUXy7oFxt5
z1FFlAs9UeyFV0CwbF4wHwYDVR0jBBgwFoAUHmkqtNwo/kcYTiELP7ysES/wmPUwZQYDVR0fBF4w
XDBaoFigVoZUaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRl
cm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwNEEuY3JsMIGfBggrBgEFBQcBAQSBkjCBjzBp
BggrBgEFBQcwAoZdaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMv
SW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwNEEuY3J0MCIGCCsGAQUF
BzABhhZodHRwOi8vb2NzcC5pbnRlbC5jb20vMB8GA1UdJQQYMBYGCCsGAQUFBwMEBgorBgEEAYI3
CgMEMCkGCSsGAQQBgjcVCgQcMBowCgYIKwYBBQUHAwQwDAYKKwYBBAGCNwoDBDBPBgNVHREESDBG
oCkGCisGAQQBgjcUAgOgGwwZZWxlbmEucmVzaGV0b3ZhQGludGVsLmNvbYEZZWxlbmEucmVzaGV0
b3ZhQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEAoQFBFD/YZhrNEYTXYuZkKHYE+KJ5cF4m
bYlT8LAVpVtdWYj3uDWMVX0aJASNa01fZNNp8FVacHQkH6RqMAO9zu8q71Y/fTZLq/wTA5mXyiER
9x+U3BvF/WPfnfzxZ1DlamT6EhkPNpR2zkWxHuI5Wz5H0TGYCcmkTJ+z7ERTBV5RvTMcBRFY4F6I
rLlcj+S616J74ohWv6QK8gZ894Jl/D0XyKYRxEhu5VGwfmRC8fXfCDL9v5zLWEcdjwwhkTGWWNB2
WOJYZCer+SGEGCYldn7YSPDOmlxpd8XlO3M1m1gAfsmnU/AjacOYnKyp/THuGC97/7NcWHfkR9vD
z1fq9jGCA/kwggP1AgEBMIGQMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxML
U2FudGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBF
eHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDRCAhMzAAAPeuDTfWPn74vVAAAAAA96MAkGBSsOAwIa
BQCgggI9MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTE2MDExNDE0
MzM0M1owIwYJKoZIhvcNAQkEMRYEFC4zwTPK+vqpC0ODkP0MZtqofMFNMIGTBgkqhkiG9w0BCQ8x
gYUwgYIwCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQBFjAKBggqhkiG9w0DBzALBglghkgBZQMEAQIw
DgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIaMAsGCWCGSAFlAwQCAzALBglg
hkgBZQMEAgIwCwYJYIZIAWUDBAIBMIGhBgkrBgEEAYI3EAQxgZMwgZAweTELMAkGA1UEBhMCVVMx
CzAJBgNVBAgTAkNBMRQwEgYDVQQHEwtTYW50YSBDbGFyYTEaMBgGA1UEChMRSW50ZWwgQ29ycG9y
YXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElzc3VpbmcgQ0EgNEECEzMAAGce
yeUJ4F3k0k4AAAAAZx4wgaMGCyqGSIb3DQEJEAILMYGToIGQMHkxCzAJBgNVBAYTAlVTMQswCQYD
VQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9u
MSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDRBAhMzAABnHsnlCeBd
5NJOAAAAAGceMA0GCSqGSIb3DQEBAQUABIIBACuD1Oh1/ozmsytvD9kGBAxCDS/7SyuUZtWCbYby
s7OYeklk5yFuGLXJHn8+T4Pp/TK+DRodTNxU6iUcRPeNmyYGUr12hNOcd3f5Jil253TDj/w+PApx
yiiXw9XGmKvF/Pzful6E5v4HPz1Ivg5TEv/gdFRnh/i8c+04NIFzAet6MJ/k4sw5bgq19k8zG2qa
6hTOsGkvVcgKEonzfCk5COtNoa7kFa5ywpRO8cc84QX4KGAxTIzU/TiiMyK5SWI7jhXx0SzmGxyf
IhSWhyjTRy4s5MMd3R6YyWl0PLm5C7RvGbK7JJwR7m0A/RLNwOHSGK6XWOHV3vOHhflU2za1T6sA
AAAAAAA=

------=_NextPart_000_0008_01D14EE9.550F5630--
