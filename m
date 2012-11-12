Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C16DE003D9
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2012 15:28:02 -0800 (PST)
Received: by mail-pb0-f48.google.com with SMTP id wy7so4777181pbc.35
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2012 15:28:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-enigmail-version:content-type
	:x-gm-message-state;
	bh=8W7cnzlSFL9P4q00hLxFCYv3cuxZNmeYOepDnslbPcY=;
	b=oG0zHdJ0JIT9RPRepnQ35XMoUp6G3RGdbCmsEBZPSL8do7BVT+9RoWXjQhlqBi7hQH
	9yh3UXNgZv3mT/OTfBdrfw5k5998dPVBSD19oZT3ABLw9AQnLoDcQu7VjhwZjt8sRFyd
	CJgzBcApRsUwWNdklnM07LXLE+bCq2t93AreUlD3oCEUsNhK+IymVtkHEWzd9n5qdnOO
	mG8VMAthsJmZ4+VoCBgymBfgQ08MFycYJz9RYNxdqXRxxTjzOyFTKRzqsMi58NFS4iXc
	pK1DcGVxhd7ui18RoTwLOqvZbLtmx31WSEFRHI5SqthU8OQIfllrIbJ5sUw7QeS9LJPQ
	MQQA==
Received: by 10.66.85.40 with SMTP id e8mr52582987paz.64.1352762882267;
	Mon, 12 Nov 2012 15:28:02 -0800 (PST)
Received: from [192.168.1.66] (static-50-43-44-186.bvtn.or.frontiernet.net.
	[50.43.44.186])
	by mx.google.com with ESMTPS id j8sm5007032paz.30.2012.11.12.15.28.00
	(version=SSLv3 cipher=OTHER); Mon, 12 Nov 2012 15:28:01 -0800 (PST)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <50A185FE.6020400@yoctoproject.org>
Date: Mon, 12 Nov 2012 15:27:58 -0800
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1352667964.git.tom.zanussi@intel.com>
	<eafe70e873312e1b893408a8157501edcf0e6415.1352667964.git.tom.zanussi@intel.com>
	<50A03344.5020005@balister.org> <1352676473.20766.1.camel@empanada>
In-Reply-To: <1352676473.20766.1.camel@empanada>
X-Enigmail-Version: 1.4.5
X-Gm-Message-State: ALoCoQnVpyrpQJhYj5fsUbu66nMnR5yI5jue4hCk8MRAW8DHnS1JQavkqEJygyQj8zHesIquEIeL
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com, meta-intel@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-intel: update MAINTAINERS with meta-intel mailing list info
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
X-List-Received-Date: Mon, 12 Nov 2012 23:28:02 -0000
X-Groupsio-MsgNum: 10511
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms040107000806060209050403"

--------------ms040107000806060209050403
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 11/11/2012 03:27 PM, Tom Zanussi wrote:
> On Sun, 2012-11-11 at 18:22 -0500, Philip Balister wrote:
>> On 11/11/2012 06:18 PM, tom.zanussi@intel.com wrote:
>>> From: Tom Zanussi <tom.zanussi@intel.com>
>>>
>>> The newly created meta-intel mailing list is where meta-intel-specifi=
c
>>> e-mail and patches should now go.  Update MAINTAINERS with that
>>> information.
>>>
>>> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
>>> ---
>>>   MAINTAINERS | 32 ++++++++++++++++++--------------
>>>   1 file changed, 18 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>> index a2231d0..d5f521b 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -1,26 +1,30 @@
>>>   This file contains a list of BSP maintainers for the BSPs contained=
 in
>>>   the meta-intel repository.
>>>
>>> -Please submit any patches against meta-intel BSPs to the Yocto maili=
ng
>>> -list (yocto@yoctoproject.org) and preface them with [meta-intel] in
>>> -the Subject: line of your e-mail(s).  The latter makes it obvious th=
at
>>> -your patches are intended for inclusion into meta-intel and also mak=
es
>>> -it easier for maintainers to notice patches intended for meta-intel
>>> -amongst all the other traffic on the Yocto mailing list.  Also, if
>>> -your patches are available via a public git repository, please also
>>> -include a URL to the repo and branch containing your patches as that=

>>> -makes it easier for maintainers to grab and test your patches.
>>> +Please submit any patches against meta-intel BSPs to the meta-intel
>>> +mailing list (meta-intel@yoctoproject.org).  Also, if your patches a=
re
>>> +available via a public git repository, please include a URL to the
>>> +repo and branch containing your patches as that makes it easier for
>>> +maintainers to grab and test your patches.
>>> +
>>> +The web page for users of the meta-intel mailing list is
>>> +https://lists.yoctoproject.org/listinfo/meta-intel, where you can
>>> +subscribe to the list (please do, especially if you intend on
>>> +submitting patches).
>>>
>>>   If you have problems with or questions about a particular BSP, feel=

>>> -free to contact the maintainer directly (cc:ing the Yocto mailing li=
st
>>> -puts it in the archive and helps other people who might have the sam=
e
>>> -questions in the future), but please try to do the following first:
>>> +free to contact the maintainer directly (cc:ing the meta-intel maili=
ng
>>> +list puts it in the archive and helps other people who might have th=
e
>>> +same questions in the future), but please try to do the following
>>> +first:
>>>
>>>     - look in the Yocto Project Bugzilla
>>>       (http://bugzilla.yoctoproject.org/) to see if a problem has
>>> -    already been reported
>>> +    already been reported.
>>>
>>> -  - look through recent entries of the Yocto mailing list archives
>>> +  - look through recent entries of the meta-intel mailing list
>>> +    archives (https://lists.yoctoproject.org/pipermail/meta-intel/)
>>> +    and the Yocto mailing list archives
>>>       (https://lists.yoctoproject.org/pipermail/yocto/) to see if oth=
er
>>>       people have run into similar problems or had similar questions
>>>       answered.
>>>
>> Can you setup gmane to archive the list also? Then people can follow t=
he=20
>> list using NNTP.
I've requested this list be added to Gmane. It should be picked up shortl=
y.

Michael Halstead
Yocto Project / Sys Admin

> Sounds like a good idea to me, but I'll have to defer to Michael (added=

> to CC:
>
> Tom
>
>> Philip
>
>



--------------ms040107000806060209050403
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
DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEyMTExMjIzMjc1OFowIwYJKoZIhvcN
AQkEMRYEFKm2W5K/Ddd2eOY7aAGxgRbUSM7uMGwGCSqGSIb3DQEJDzFfMF0wCwYJYIZIAWUDBAEq
MAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAw
BwYFKw4DAgcwDQYIKoZIhvcNAwICASgwgaQGCSsGAQQBgjcQBDGBljCBkzCBjDELMAkGA1UEBhMC
SUwxFjAUBgNVBAoTDVN0YXJ0Q29tIEx0ZC4xKzApBgNVBAsTIlNlY3VyZSBEaWdpdGFsIENlcnRp
ZmljYXRlIFNpZ25pbmcxODA2BgNVBAMTL1N0YXJ0Q29tIENsYXNzIDIgUHJpbWFyeSBJbnRlcm1l
ZGlhdGUgQ2xpZW50IENBAgIiAzCBpgYLKoZIhvcNAQkQAgsxgZaggZMwgYwxCzAJBgNVBAYTAklM
MRYwFAYDVQQKEw1TdGFydENvbSBMdGQuMSswKQYDVQQLEyJTZWN1cmUgRGlnaXRhbCBDZXJ0aWZp
Y2F0ZSBTaWduaW5nMTgwNgYDVQQDEy9TdGFydENvbSBDbGFzcyAyIFByaW1hcnkgSW50ZXJtZWRp
YXRlIENsaWVudCBDQQICIgMwDQYJKoZIhvcNAQEBBQAEggEAd3sUwqChit79eitoZl4l1INaosMU
6RZ1CmyDCZRiSH101Byo03GNyo1UTpb7mKKfqj58AM7YSBfVOp/daooRv1wqO6mhnNEqtK6IyYx1
r/eHZIK+rqFC+ajiTT+p3qTPt526stuav9yTMz2uRqjoGnUnSLQ2azciNj83wfLku1O34eaqA5/p
wWDSVIrRibT5Y+1TXaWMF81FOUgoW2oYtolM+fgPWRPYNsJvfbN6UNl+qz60+66pNmU7SI12JsOJ
JIeWu3m6wKx7+xgekoWZNJqPd1CQu1ttPH8NDkNYrp9UIWjVczQWJJ8Kv6E7H6YEsINdAFCSoXcq
BKAZpSA8XQAAAAAAAA==

--------------ms040107000806060209050403--
