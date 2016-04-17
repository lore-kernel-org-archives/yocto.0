Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA91DE00CF8; Sun, 17 Apr 2016 14:02:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00, URI_HEX autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.1 URI_HEX URI: URI hostname has long hexadecimal
	sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FF22E00C1D
	for <yocto@yoctoproject.org>; Sun, 17 Apr 2016 14:02:31 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=[10.79.148.104])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1artoA-0004ku-SS; Sun, 17 Apr 2016 21:00:43 +0000
To: wenzong.fan@windriver.com
References: <1460103572-63539-1-git-send-email-wenzong.fan@windriver.com>
From: Philip Tricca <flihp@twobit.us>
Message-ID: <5713F9F7.8040106@twobit.us>
Date: Sun, 17 Apr 2016 14:02:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.7.0
MIME-Version: 1.0
In-Reply-To: <1460103572-63539-1-git-send-email-wenzong.fan@windriver.com>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] refpolicy-minimum: port changes for prepare_policy_store
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
X-List-Received-Date: Sun, 17 Apr 2016 21:02:34 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hello Wenzong,

On 04/08/2016 01:19 AM, wenzong.fan@windriver.com wrote:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> Apply the changes to refpolicy-minimum_2.20151208.bb:
> 
>   commit bfaf278116e6c3a04bb82c9f8a4f8629a0a85df8
>   Author: Wenzong Fan <wenzong.fan@windriver.com>
>   Date:   Tue Oct 27 06:25:04 2015 -0400
> 
>     refpolicy-minimum: update prepare_policy_store
> 
>     * update prepare_policy_store() for supporting SELinux 2.4 & CIL, the
>       logic is from refpolicy_common.inc but with minimum set of policy
>       modules;
> 
>     * add extra policy modules that required by sysnetwork, without those
>       modules the install process will fail with error:
> 
>         | Failed to resolve roletype statement at 62 of \
>           .../image/var/lib/selinux/minimum/tmp/modules/100/sysnetwork/cil
>         | Failed to resolve ast
>         | semodule:  Failed!
> 
>     Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
>     Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> 
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---

This looks great but in testing it I'm unable to use the 'minimum'
refpolicy recipe in any image. The recipe builds fine but the do_rootfs
fails trying to label the filesystem. I haven't been able to find the
root cause for this yet, but I'm seeing this behavior both before and
after adding this patch so it may be a preexisting issue?

Given all of that, I've merged this patch into master since it doesn't
seem related to the issue I'm seeing. Still, some help in resolving the
issue I'm seeing with the minimum refpolicy recipe would be appreciated.

Thanks,
Philip

>  .../refpolicy/refpolicy-minimum_2.20151208.bb      | 41 ++++++++++++++++------
>  1 file changed, 30 insertions(+), 11 deletions(-)
> 
> diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
> index b275821..47ed558 100644
> --- a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
> +++ b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
> @@ -26,23 +26,42 @@ EXTRA_POLICY_MODULES += "nscd"
>  # "login", so "login" process will access to /var/spool/mail.
>  EXTRA_POLICY_MODULES += "mta"
>  
> +# sysnetwork requires type definitions (insmod_t, consoletype_t,
> +# hostname_t, ping_t, netutils_t) from modules:
> +EXTRA_POLICY_MODULES += "modutils consoletype hostname netutils"
> +
>  POLICY_MODULES_MIN = "${CORE_POLICY_MODULES} ${EXTRA_POLICY_MODULES}"
>  
>  # re-write the same func from refpolicy_common.inc
>  prepare_policy_store () {
>  	oe_runmake 'DESTDIR=${D}' 'prefix=${D}${prefix}' install
> +	POL_PRIORITY=100
> +	POL_SRC=${D}${datadir}/selinux/${POLICY_NAME}
> +	POL_STORE=${D}${localstatedir}/lib/selinux/${POLICY_NAME}
> +	POL_ACTIVE_MODS=${POL_STORE}/active/modules/${POL_PRIORITY}
>  
>  	# Prepare to create policy store
> -	mkdir -p ${D}${sysconfdir}/selinux/
> -	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/policy
> -	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules
> -	mkdir -p ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files
> -	touch ${D}${sysconfdir}/selinux/${POLICY_NAME}/contexts/files/file_contexts.local
> -	for i in ${D}${datadir}/selinux/${POLICY_NAME}/*.pp; do
> -		bzip2 -f $i && mv -f $i.bz2 $i
> -	done
> -	cp base.pp ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/base.pp
> -	for i in ${POLICY_MODULES_MIN}; do
> -		cp ${i}.pp ${D}${sysconfdir}/selinux/${POLICY_NAME}/modules/active/modules/`basename $i.pp`
> +	mkdir -p ${POL_STORE}
> +	mkdir -p ${POL_ACTIVE_MODS}
> +
> +	# get hll type from suffix on base policy module
> +	HLL_TYPE=$(echo ${POL_SRC}/base.* | awk -F . '{if (NF>1) {print $NF}}')
> +	HLL_BIN=${STAGING_DIR_NATIVE}${prefix}/libexec/selinux/hll/${HLL_TYPE}
> +
> +	for i in base ${POLICY_MODULES_MIN}; do
> +		MOD_FILE=${POL_SRC}/${i}.${HLL_TYPE}
> +		MOD_DIR=${POL_ACTIVE_MODS}/${i}
> +		mkdir -p ${MOD_DIR}
> +		echo -n "${HLL_TYPE}" > ${MOD_DIR}/lang_ext
> +
> +		if ! bzip2 -t ${MOD_FILE} >/dev/null 2>&1; then
> +			${HLL_BIN} ${MOD_FILE} | bzip2 --stdout > ${MOD_DIR}/cil
> +			bzip2 -f ${MOD_FILE} && mv -f ${MOD_FILE}.bz2 ${MOD_FILE}
> +		else
> +			bunzip2 --stdout ${MOD_FILE} | \
> +				${HLL_BIN} | \
> +				bzip2 --stdout > ${MOD_DIR}/cil
> +		fi
> +		cp ${MOD_FILE} ${MOD_DIR}/hll
>  	done
>  }
> 


