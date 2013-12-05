Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C882BE00784
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 17:37:18 -0800 (PST)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=[10.79.148.145]) by smtp.twobit.us with esmtpsa
	(TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
	(envelope-from <flihp@twobit.us>)
	id 1VoNrr-0002Ra-LQ; Thu, 05 Dec 2013 01:36:40 +0000
Message-ID: <529FD8C6.9040808@twobit.us>
Date: Wed, 04 Dec 2013 20:37:10 -0500
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130922 Icedove/17.0.9
MIME-Version: 1.0
To: Joe MacDonald <joe@deserted.net>
References: <1384373153-17622-1-git-send-email-flihp@twobit.us>
	<20131204154049.GD5677@deserted.net>
In-Reply-To: <20131204154049.GD5677@deserted.net>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=ALL_TRUSTED,URI_HEX
	autolearn=no version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][RFC v2] refpolicy: Add generic refpolicy recipe and make policy type configurable.
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
X-List-Received-Date: Thu, 05 Dec 2013 01:37:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Hi Joe,

On 12/04/2013 10:40 AM, Joe MacDonald wrote:
> Hey Phil,
> 
> [[meta-selinux][RFC v2] refpolicy: Add generic refpolicy recipe and make policy type configurable.] On 13.11.13 (Wed 20:05) Philip Tricca wrote:
> 
>> This is a fix up for my previous RFC. I've cleaned up an error with some \
>> variable use. The intent remains the same:
>>
>> This RFC is a significant departure from the way the policy packages are
>> currently set up. The noteworthy differences are:
>> 1) the POLICY_TYPE variable can be set as configuration outside the policy recipe
>> 2) a single refpolicy recipe can be used to build all 3 policy types
>> 3) DEFAULT_POLICY from selinux-config has been changed to be the same POLICY_TYPE variable as the policy
>> 4) refpolicy depends on the config and sets the POLICY_TYPE accordingly
>>
>> This approach was taken to allow the use of a policy type beyond the default
>>  MLS. I've left the other refpolicy-* recipes in tact but if this approach is
>> acceptable they could be removed if we're willing to accept the limitation
>> that only one policy may be installed on a given image. If this limitation
>> isn't acceptable then they can be left as is.
>>
>> After thinking about this a bit I've realized that the same effect can likely
>> be achieved using the virtual provider mechanism. If this approach would be
>> preferred I'm happy to whip up a prototype.
>>
>> Comments and input would be appreciated.
> 
> I've been playing with this for a bit and I quite like both the idea.
> I'd like to see this taken to the logical conclusion you mention above,
> hit all the policy recipes.  Meaning I think it makes the most sense to
> actually approach this as a virtual provider problem.  If you're still
> willing to put together a prototype for this, I'm able to take a look at
> it in pretty short order.

I'll give it a go and see what I can come up with.

Regards,
Philip

>> Signed-off-by: Philip Tricca <flihp@twobit.us>
>> ---
>>  .../packagegroups/packagegroup-selinux-minimal.bb      |    3 +--
>>  recipes-security/refpolicy/refpolicy_2.20130424.bb     |   16 ++++++++++++++++
>>  recipes-security/selinux/selinux-config_0.1.bb         |    4 ++--
>>  3 files changed, 19 insertions(+), 4 deletions(-)
>>  create mode 100644 recipes-security/refpolicy/refpolicy_2.20130424.bb
>>
>> diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
>> index 072320d..af29da1 100644
>> --- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
>> +++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
>> @@ -13,6 +13,5 @@ ALLOW_EMPTY_${PN} = "1"
>>  RDEPENDS_${PN} = "\
>>  	policycoreutils-semodule \
>>  	policycoreutils-sestatus \
>> -	selinux-config \
>> -	refpolicy-mls \
>> +	refpolicy \
>>  "
>> diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.bb b/recipes-security/refpolicy/refpolicy_2.20130424.bb
>> new file mode 100644
>> index 0000000..f1fa2f8
>> --- /dev/null
>> +++ b/recipes-security/refpolicy/refpolicy_2.20130424.bb
>> @@ -0,0 +1,16 @@
>> +SUMMARY = "The SELinux reference policy."
>> +DESCRIPTION = "\
>> +This is the reference policy for the SELinux mandatory access control \
>> +system. There are 3 supported policy types: standard, MCS and MLS. The \
>> +standard policy is the most simple of the three providing the standard \
>> +type enforcement policy. The MCS policy adds an additional element to the \
>> +SELinux label called a category. Finally the MLS variant allows giving data \
>> +labels such as \"Top Secret\" and preventing such data from leaking to \
>> +processes or files with lower classification. \
>> +"
>> +
>> +PR = "r0"
>> +POLICY_TYPE ??= "mls"
>> +RDEPENDS_${PN} = "selinux-config"
>> +
>> +include refpolicy_${PV}.inc
>> diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes-security/selinux/selinux-config_0.1.bb
>> index 27d9995..066581e 100644
>> --- a/recipes-security/selinux/selinux-config_0.1.bb
>> +++ b/recipes-security/selinux/selinux-config_0.1.bb
>> @@ -1,4 +1,4 @@
>> -DEFAULT_POLICY = "mls"
>> +POLICY_TYPE ??= "mls"
>>  
>>  SUMMARY = "SELinux configuration"
>>  DESCRIPTION = "\
>> @@ -45,7 +45,7 @@ SELINUX=enforcing
>>  # SELINUXTYPE= can take one of these two values:
>>  #     standard - Standard Security protection.
>>  #     mls - Multi Level Security protection.
>> -SELINUXTYPE=${DEFAULT_POLICY}
>> +SELINUXTYPE=${POLICY_TYPE}
>>  " > ${WORKDIR}/config
>>  	install -d ${D}/${sysconfdir}/selinux
>>  	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Icedove - http://www.enigmail.net/

iQIcBAEBCgAGBQJSn9jGAAoJEDL3fnXC4dO6qjUP/RyPTggJI552r2dIBxcp23vj
T+ZyA2onJAtGEz/dnVDMcZWMx/KbGYYGi1L3s2xJ9+/d00nCfqUnD9kc5vdis8TI
UgC3+k6+CfqzM/loLxax+hT/I2d51BaHXWNSMod3UUSyQowfOo+FerKUHU1/Z4e0
xcOb13vwVCo9ITh0b2N4MLkWDJuyT5+pHXmOLjD3LlF10fpcMHhTIwNI3Iir9iGR
THKxf7N0vnpV69ZdHqu59QaHTIZYLXSjv5A9BvHqSbDU6J0fsHNEwNLJmN4buGwx
ed1d6uqiuCNdakaYBFi4d7OU8Y3la7NAul7ETqrA3JKpXnlhHgIVj2hA1hAAJUGs
DziXBxCy18YfTFH7SYmlfuf5UVSb/H2IneQZw3NAXZmY/1hNJFsKpfuOUOHOFY2R
33lRvZUqN3hWj/VSy6hAi8qCrmUS9qgUUWcI0sqZvcDF2HucklgrSnD2QHPdXWbW
+YhSdtz78v6Tzo+Z2I5bj+FRHNG3CvZHeBDgYmTfNNEQ3ceV+/aHFuJHLQxTpRpK
f9viqhZag0jqT0X8Tc7Uu5t998/qd+e1/8GD/COkm5baHxlec+iT8KOW0w6NCarc
/UfsNk8xIdkmZyWmWpTtkA3NoBBMF5Oa1ggTcirMtU6uxNzzIvgXGt3AF1pfia40
bQCmQcUqfL27GHcHicSH
=GhjN
-----END PGP SIGNATURE-----

