Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (unknown [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEF10E017C8
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 06:03:29 -0800 (PST)
Received: from [216.57.91.130] (helo=[10.204.207.200])
	by smtp.twobit.us with esmtpsa
	(TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
	(envelope-from <flihp@twobit.us>)
	id 1Ve3hW-0002Wa-H4; Wed, 06 Nov 2013 14:03:19 +0000
Message-ID: <527A4C2F.7090804@twobit.us>
Date: Wed, 06 Nov 2013 09:03:27 -0500
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130922 Icedove/17.0.9
MIME-Version: 1.0
To: Joe MacDonald <joe@deserted.net>
References: <1383095496-6487-1-git-send-email-flihp@twobit.us>
	<1383095496-6487-2-git-send-email-flihp@twobit.us>
	<20131030142207.GE3716@deserted.net>
In-Reply-To: <20131030142207.GE3716@deserted.net>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 216.57.91.130
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 1/4] Move common POLICY_* variables to refpolicy_common.inc
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
X-List-Received-Date: Wed, 06 Nov 2013 14:03:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Hey Joe,

On 10/30/2013 10:22 AM, Joe MacDonald wrote:
> [[yocto] [meta-selinux][PATCH 1/4] Move common POLICY_* variables
> to refpolicy_common.inc] On 13.10.30 (Wed 01:11) Philip Tricca
> wrote:
> 
>> Use default assignment to allow variables to be overriden by
>> recipes that include refpolicy_common.inc
>> 
>> Signed-off-by: Philip Tricca <flihp@twobit.us> --- 
>> recipes-security/refpolicy/refpolicy_common.inc |   12
>> ++++++++++++ 1 file changed, 12 insertions(+)
>> 
>> diff --git a/recipes-security/refpolicy/refpolicy_common.inc
>> b/recipes-security/refpolicy/refpolicy_common.inc index
>> 0ca0b9d..65d679b 100644 ---
>> a/recipes-security/refpolicy/refpolicy_common.inc +++
>> b/recipes-security/refpolicy/refpolicy_common.inc @@ -24,6 +24,18
>> @@ inherit autotools pythonnative
>> 
>> PARALLEL_MAKE = ""
>> 
>> +POLICY_NAME ?= "${POLICY_TYPE}" +POLICY_DISTRO ?= "redhat" 
>> +POLICY_UBAC ?= "n" +POLICY_UNK_PERMS ?= "allow" 
>> +POLICY_DIRECT_INITRC ?= "n" +POLICY_MONOLITHIC ?= "n" 
>> +POLICY_CUSTOM_BUILDOPT ?= "" +POLICY_QUIET ?= "y" 
>> +POLICY_MLS_SENS = "16" +POLICY_MLS_CATS = "1024" 
>> +POLICY_MCS_CATS = "1024"
> 
> Any reason not to make these last three soft assignments as well? 
> They're unlikely to change and putting them here makes sense, but I
> can also imagine someone wanting to use this as a base for creating
> a simplified policy.

Would you like me to make these changes and resend?

- - Philip

>> + EXTRA_OEMAKE += "NAME=${POLICY_NAME} \ TYPE=${POLICY_TYPE} \ 
>> DISTRO=${POLICY_DISTRO} \

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Icedove - http://www.enigmail.net/

iQIcBAEBCgAGBQJSekwvAAoJEDL3fnXC4dO6e2oP/iLoGZo3LEltHEcGGslI4rwN
zkI84+zlwMPUue5Phof6oJXYCbDVTfCM4ZfHeZsoVZXwfUr5fy6hepSIVO/7RdEM
FJfAK99UqwfRYA92dEQpKn4h72RB0DcWF01k8Lxg1fWS189HFDrTJbT0IW/iOxs8
nUTX9AFtOkYdW7xhjczaLK/0aTsrq/jkjd5poUh2Os8xbM7l8r69+YlG0GycuUFu
kaMm3QiHhZxiiYSj3m+ZNEF/iBksuBA7oJqoggr8l2rQpoxXOKgoeUdnUcqnNm7D
KmvSiKNwDEcjo6dakycqeF4xbSD3msQtkimkGn4wTqfBFPcFoqkgq1gJobUw4p/4
iwDgjYQEZ/WRuoSIHqKYHkUDHElnVLwqDRsrQI0mvZITyCbkuYzgkYmCxAyIqZcG
1DpNXAgcT59EI8Qfhmm8ukaCQ9nixCQgehv7Yqsw9Ry0y2uHhqtnTHotZ3xVJVlq
5T7bPBi71wsy2VN3rmwVq3QgMClhV+TCvdQPtU7CCO28f0olAxkjKwwacsC4lQSZ
FVnQP8mWoyf7x7WVBk1cKm+MTxJpFCY0ldAt09B80/+6CPT6BCm1j3l0X4dcjvXl
cUIOU0zbOQfHyd8T9CRsAJVXUgHikZM70MnqE0QSbAKom6huacIl+ON82dqiISJf
zkdzv9hqP9k+PXv7wH4G
=JL/2
-----END PGP SIGNATURE-----

