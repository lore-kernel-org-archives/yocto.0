Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (unknown [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3196E0175F
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 07:50:04 -0700 (PDT)
Received: from [216.57.91.130] (helo=[10.204.207.200])
	by smtp.twobit.us with esmtpsa
	(TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
	(envelope-from <flihp@twobit.us>)
	id 1VbX5r-0006cH-Fl; Wed, 30 Oct 2013 14:50:00 +0000
Message-ID: <52711C8F.3080802@twobit.us>
Date: Wed, 30 Oct 2013 10:49:51 -0400
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
X-List-Received-Date: Wed, 30 Oct 2013 14:50:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

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

Agree these should be default assignment as well. This was just an
oversight on my part. Good catch & thanks.

- - Philip

>> + EXTRA_OEMAKE += "NAME=${POLICY_NAME} \ TYPE=${POLICY_TYPE} \ 
>> DISTRO=${POLICY_DISTRO} \

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Icedove - http://www.enigmail.net/

iQIcBAEBCgAGBQJScRyPAAoJEDL3fnXC4dO6jhsP/RN8oRzJM2Hv2EYBFBQD8lB3
diOfg13xNye7shlmWUmhHppdR41eiTRQS7ozpzrZz7XsI1RFhB7Zeav9R/uRuqZa
+UkXMg0SF979Qpd1MjjFMl9itlUVFvtZsLdXQCB/OmXQB2Z/YL559UTvR/rD+RUd
qqOpRCgZrwo87O9qn4gVMktd4eG+ETyxgzaDO+BNTAmSLqO8kcxDqd3+UsBT8z/9
4P4UsAGStJNPNDpk4lUoZSZDQUtQNQjGgX3iA0mhzfO1MQ4k6zLq6cAT8Bdov8r+
4nRTHFF8WlrI6cjvjy07ffw7QrIu6Gg9m6krdXYapMYThOf7WEVU1g5uFQr4nget
VEC9Zcz6s3oRppGLDYR28scTCaNqiKyiA5CzQ3GsmhgtZVXBw0k2RBW9vNqrwdgi
rYkq523tKX7sj6WM2+leDp6GtgB6qwNqMlHT4UWMeoDdLvXc6blxZbtWhLqdEp7L
Escohx5biH7zLHrgoDHRmkvobQ4g1pP9k8MRgZIKWQ56vmPVrmvN7O3Uj9jenIk6
RcbFQhlwVhXBdRCJxCbejRRIZ1yvWFTGI/yEJ0UgHlYgE0eBFbOnyxDK/f835Ybs
pPhQCoRbetfcB1GkB9T+wxj2IP+RmXVQI7rm2SAs9IjFy3TDndKds/A9z1LJkXCa
QtMLQtTkd+o1cOTg7HLK
=QCzZ
-----END PGP SIGNATURE-----

