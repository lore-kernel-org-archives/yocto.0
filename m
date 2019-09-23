Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15D09E00D4F; Mon, 23 Sep 2019 07:38:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BEF4E00D4A
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 07:38:20 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x8NEcFqg008322
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Mon, 23 Sep 2019 09:38:16 -0500
To: Hongxu Jia <hongxu.jia@windriver.com>, jason.wessel@windriver.com,
	yocto@yoctoproject.org
References: <1569164228-26934-1-git-send-email-hongxu.jia@windriver.com>
	<1569164228-26934-4-git-send-email-hongxu.jia@windriver.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <763d3bb7-b97f-838d-a31c-b8f7bdc38e10@kernel.crashing.org>
Date: Mon, 23 Sep 2019 09:38:14 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1569164228-26934-4-git-send-email-hongxu.jia@windriver.com>
Subject: Re: [meta-openssl102-fips][PATCH 3/15] fipscheck: add generation of the checksums in pkg_postinst
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
X-List-Received-Date: Mon, 23 Sep 2019 14:38:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 9/22/19 9:56 AM, Hongxu Jia wrote:
> Refer https://pagure.io/fipscheck/c/489bc3ab3f73707e12b6c2644d80af5ff6fbbf70
> 
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ---
>  recipes-connectivity/openssh/fipscheck_1.5.0.bb | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/recipes-connectivity/openssh/fipscheck_1.5.0.bb b/recipes-connectivity/openssh/fipscheck_1.5.0.bb
> index 68051d2..0a06bd3 100644
> --- a/recipes-connectivity/openssh/fipscheck_1.5.0.bb
> +++ b/recipes-connectivity/openssh/fipscheck_1.5.0.bb
> @@ -27,4 +27,22 @@ EXTRA_OECONF += " \
>  EXTRA_OEMAKE += " \
>      -I${STAGING_LIBDIR_NATIVE}/ssl/fips-2.0/include \
>  "
> +do_install_append() {
> +    install -d ${D}${libdir}/fipscheck
> +}
>  
> +inherit qemu
> +
> +pkg_postinst_${PN} () {
> +    if [ -n "$D" ]; then
> +        ${@qemu_run_binary(d, '$D', '${bindir}/fipshmac')} \
> +            -d $D${libdir}/fipscheck $D${bindir}/fipscheck $D${libdir}/libfipscheck.so.1.2.1 && \
> +        ln -s libfipscheck.so.1.2.1.hmac $D${libdir}/fipscheck/libfipscheck.so.1.hmac
> +    else
> +        ${bindir}/fipshmac -d ${libdir}/fipscheck ${bindir}/fipscheck \
> +            ${libdir}/libfipscheck.so.1.2.1 && \
> +        ln -s libfipscheck.so.1.2.1.hmac ${libdir}/fipscheck/libfipscheck.so.1.hmac
> +    fi
> +}

The way this works has changed a bit since I really knew it.  I was looking in
the manpages.bbclass and they have the following:

>         if ${@bb.utils.contains('PACKAGECONFIG', 'manpages', 'true', 'false', d)}; then
>                 if test -n "$D"; then
>                         if ${@bb.utils.contains('MACHINE_FEATURES', 'qemu-usermode', 'true','false', d)}; then
>                                 sed "s:\(\s\)/:\1$D/:g" $D${sysconfdir}/man_db.conf | ${@qemu_run_binary(d, '$D', '${bindir}/mandb')} -C - -u -q $D${mandir}
>                                 mkdir -p $D${localstatedir}/cache/man
>                                 mv $D${mandir}/index.db $D${localstatedir}/cache/man
>                         else
>                                 $INTERCEPT_DIR/postinst_intercept delay_to_first_boot ${PKG} mlprefix=${MLPREFIX}
>                         fi
>                 else
>                         mandb -q
>                 fi
>         fi


That is checking for the presence of the MACHINE_FEATURE.  I'm not sure I like
that in this case though since it makes these recipes machine specific.

But I do think we need the delay until first boot part.

Jason, I know you've been working on first boot things for a while, any opinion?

--Mark

> +
> +FILES_${PN} += "${libdir}/fipscheck"
> 

