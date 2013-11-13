Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10658E01389
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 09:23:03 -0800 (PST)
Received: from [216.57.91.130] (helo=[10.204.207.200])
	by smtp.twobit.us with esmtpsa
	(TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
	(envelope-from <flihp@twobit.us>)
	id 1Vge9N-0008Vl-Ic; Wed, 13 Nov 2013 17:22:46 +0000
Message-ID: <5283B56B.4040305@twobit.us>
Date: Wed, 13 Nov 2013 12:22:51 -0500
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130922 Icedove/17.0.9
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1384320159-1000-1-git-send-email-flihp@twobit.us>
In-Reply-To: <1384320159-1000-1-git-send-email-flihp@twobit.us>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 216.57.91.130
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=ALL_TRUSTED,URI_HEX
	autolearn=no version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: Re: [meta-selinux][RFC] refpolicy: Add generic refpolicy recipe with configurable policy type.
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
X-List-Received-Date: Wed, 13 Nov 2013 17:23:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

This requires a few tweaks before it will work as advertised. I had a
variable set in a distro.conf that interfered. I'll send out a v2 in a bit.

- Philip

On 11/13/2013 12:22 AM, Philip Tricca wrote:
> This RFC is a significant departure from the way the policy packages are
> currently set up. The noteworthy differences are:
> 1) the POLICY_TYPE variable can be set as configuration outside the policy recipe
> 2) a single refpolicy recipe can be used to build all 3 policy types
> 3) DEFAULT_POLICY from selinux-config can be set outside the config recipe
> 4) refpolicy depends on the config and sets the DEFAULT_POLICY accordingly
> 
> This approach was taken to allow the use of a policy type beyond MLS. I've
> left the other refpolicy-* recipes in tact but if this approach is acceptable
> they could be removed if we're willing to accept the limitation that only
> one policy may be installed on a given image. If this limitation isn't \
> acceptable then they can be left as is.
> 
> Comments and input would be appreciated.
> 
> Cheers,
> - Philip
> 
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  .../packagegroups/packagegroup-selinux-minimal.bb   |    3 +--
>  recipes-security/refpolicy/refpolicy_2.20130424.bb  |   19 +++++++++++++++++++
>  recipes-security/selinux/selinux-config_0.1.bb      |    2 +-
>  3 files changed, 21 insertions(+), 3 deletions(-)
>  create mode 100644 recipes-security/refpolicy/refpolicy_2.20130424.bb
> 
> diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> index 072320d..af29da1 100644
> --- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> +++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> @@ -13,6 +13,5 @@ ALLOW_EMPTY_${PN} = "1"
>  RDEPENDS_${PN} = "\
>  	policycoreutils-semodule \
>  	policycoreutils-sestatus \
> -	selinux-config \
> -	refpolicy-mls \
> +	refpolicy \
>  "
> diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.bb b/recipes-security/refpolicy/refpolicy_2.20130424.bb
> new file mode 100644
> index 0000000..c00aca3
> --- /dev/null
> +++ b/recipes-security/refpolicy/refpolicy_2.20130424.bb
> @@ -0,0 +1,19 @@
> +SUMMARY = "The SELinux reference policy."
> +DESCRIPTION = "\
> +This is the reference policy for the SELinux mandatory access control \
> +system. There are 3 supported policy types: standard, MCS and MLS. The \
> +standard policy is the most simple of the three providing the standard \
> +type enforcement policy. The MCS policy adds an additional element to the \
> +SELinux label called a category. Finally the MLS variant allows giving data \
> +labels such as \"Top Secret\" and preventing such data from leaking to \
> +processes or files with lower classification. \
> +"
> +
> +PR = "r0"
> +
> +POLICY_TYPE ??= "mls"
> +DEFAULT_POLICY = "${POLICY_TYPE}"
> +
> +RDEPENDS_${PN} = "selinux-config"
> +
> +include refpolicy_${PV}.inc
> diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes-security/selinux/selinux-config_0.1.bb
> index 27d9995..293218e 100644
> --- a/recipes-security/selinux/selinux-config_0.1.bb
> +++ b/recipes-security/selinux/selinux-config_0.1.bb
> @@ -1,4 +1,4 @@
> -DEFAULT_POLICY = "mls"
> +DEFAULT_POLICY ??= "mls"
>  
>  SUMMARY = "SELinux configuration"
>  DESCRIPTION = "\
> 


