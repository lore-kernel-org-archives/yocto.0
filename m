Return-Path: <edi@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5D2CE00807; Sun, 25 Jan 2015 02:34:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edi[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 324 seconds by postgrey-1.32 at yocto-www;
	Sun, 25 Jan 2015 02:34:31 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8EF7E00752
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 02:34:31 -0800 (PST)
Received: from zombie ([78.43.41.98]) by mail.gmx.com (mrgmx002) with ESMTPSA
	(Nemesis) id 0MCcja-1YOiMF3Ln8-009S3Y;
	Sun, 25 Jan 2015 11:29:05 +0100
Received: from ed by zombie with local (Exim 4.84) (envelope-from <edi@gmx.de>)
	id 1YFKRF-0001aA-AM; Sun, 25 Jan 2015 11:29:05 +0100
Date: Sun, 25 Jan 2015 11:29:05 +0100
From: Eduard Bloch <edi@gmx.de>
To: yocto <yocto@yoctoproject.org>
Message-ID: <20150125102905.GA5391@rotes76.wohnheim.uni-kl.de>
References: <D9D7124626ED1E43963D86B2657D5CCD03A69B7A@FRSNPREXC1.usr.ingenico.loc>
MIME-Version: 1.0
In-Reply-To: <D9D7124626ED1E43963D86B2657D5CCD03A69B7A@FRSNPREXC1.usr.ingenico.loc>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Provags-ID: V03:K0:DYWCxP6AEPXa7z1aGASeFZBwL/hEDUJepPadfSbt/VaFH67AkiW
	lwPiciisj0t1uK1vTC9cN0oUSJyDAOtenK3VBqEqY7+js37PjVCFQey3YQFAXhA56BVzDZB
	IHFUPW16E87kWdm1IlbPcEn+5AJG0Diol4UD1vbeSPTN7/Uw/9tVmrxlR9kyWtKVy/iVoX4
	r3vSB3AEV0qJmb66qVBzQ==
X-UI-Out-Filterresults: notjunk:1;
Cc: Matthieu CRAPET <Matthieu.CRAPET@ingenico.com>
Subject: populate_sdk and external toolchain
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
X-List-Received-Date: Sun, 25 Jan 2015 10:34:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hallo Yocto World,

I am having trouble with latest dora and the populate_sdk target. This
problem does not affect the stock configuration but because of some
specific features I need to use a custom toolchain from the board vendor
(made for Yocto 1.5) which is enabled with TCMODE. It contains the
compiler/binutils components and glibc but no locales.

The symptoms: it apparently tries to build the internal toolchain while
it shouldn't and fails on resulting conflicts.

It's very similar to the problem repoted for OE a couple of years ago
(quoted below, or see http://patches.openembedded.org/patch/33105/) so I
tried to add the modifications from there and from
https://www.mail-archive.com/openembedded-core@lists.openembedded.org/msg25653.html
and it didn't help at all. I couldn't spot a bug in the toolchain recipe
either, checked against
http://elinux.org/images/c/c8/ExternalToolchainsInYocto.pdf .

Does anyone have a good idea how to tackle this?

Thanks,
Eduard.

ERROR: Multiple .bb files are due to be built which each provide virtual/libc (.../soc-extra/meta-smi/recipes-core/meta/external-smi-toolchain.bb
.../smily/poky/meta/recipes-core/eglibc/eglibc_2.18.bb).

This usually means one provides something the other doesn't and should.

ERROR: Multiple .bb files are due to be built which each provide virtual/arm-cortex_a15-linux-gnueabi-compilerlibs
(.../soc-extra/meta-smi/recipes-core/meta/external-smi-toolchain.bb .../smily/poky/meta/recipes-devtools/gcc/gcc-runtime_4.8.bb).

This usually means one provides something the other doesn't and should.

ERROR: Multiple .bb files are due to be built which each provide eglibc (.../soc-extra/meta-smi/recipes-core/meta/external-smi-toolchain.bb
.../smily/poky/meta/recipes-core/eglibc/eglibc_2.18.bb).

This usually means one provides something the other doesn't and should.

ERROR: Multiple .bb files are due to be built which each provide virtual/arm-cortex_a15-linux-gnueabi-libc-for-gcc
(.../soc-extra/meta-smi/recipes-core/meta/external-smi-toolchain.bb .../smily/poky/meta/recipes-core/eglibc/eglibc_2.18.bb).

This usually means one provides something the other doesn't and should.

ERROR: Multiple .bb files are due to be built which each provide virtual/libiconv (.../soc-extra/meta-smi/recipes-core/meta/external-smi-toolchain.bb
.../smily/poky/meta/recipes-core/eglibc/eglibc_2.18.bb).

This usually means one provides something the other doesn't and should.


* Matthieu CRAPET [Thu, Jul 26 2012, 09:14:52AM]:
> Greetings,
> 
> Updated recently my oe-core and faced an unwanted side effect.
> You need to know that I'm using an externel (linaro) toolchain (my
> .bb/.inc are a clone of "sourcery" toolchain example).
> My toolchain is compiled against a custom (external) eglibc 2.15.
> 
> Since commit a0de2a56f19ae4d8cd88e46e96917a7a019fe1ab --
> image.bbclass: Add support to build the SDK in parallel with the image
> http://cgit.openembedded.org/openembedded-core/commit/?id=a0de2a56f19ae4
> d8cd88e46e96917a7a019fe1ab
> 
> my images generation are failing because it tries to compile eglib 2.16
> and do_configure fails. I have also 3 errors:
> ERROR: Multiple .bb files are due to be built which each provide
> virtual/libc (.../meta/recipes-core/eglibc/eglibc_2.15.bb
> .../meta-ingenico/recipes/external-linaro-toolchain/external-linaro-tool
> chain.bb).
>  This usually means one provides something the other doesn't and should.
> ERROR: Multiple .bb files are due to be built which each provide
> virtual/arm-ingenico-linux-gnueabi-libc-for-gcc
> (.../meta/recipes-core/eglibc/eglibc_2.15.bb
> .../meta-ingenico/recipes/external-linaro-toolchain/external-linaro-tool
> chain.bb).
>  This usually means one provides something the other doesn't and should.
> ERROR: Multiple .bb files are due to be built which each provide
> virtual/libiconv (.../meta/recipes-core/eglibc/eglibc_2.15.bb
> .../meta-ingenico/recipes/external-linaro-toolchain/external-linaro-tool
> chain.bb).
>  This usually means one provides something the other doesn't and should.
> 
> Notice that "PREFERRED_PROVIDER"s are correctly defined (like in
> distro/include/tcmode-external-sourcery.inc). And I use bitbake 1.15.3.
> 
> For now I fixed it crudely, because I don't need SDK.
> 
>  toolchain_create_sdk_siteconfig () {
> ---
> 
> populate_sdk_base.bbclass inheric toolchain-scripts which adds the
> (unwanted) eglibc dependency.
> Maybe this should be conditional from TOOLCHAIN_TARGET_TASK value?  Or
> dependencies should be added only when calling
> task-core-standalone-sdk-target?
> In my use case, when I bitbake an image recipe, I don't want to deal
> with SDK.
> 
> Concerning errors, is there a way to see what's not provided in order to
> fix virtual/libc message (bitbake -e) ?
> 
> Best regards,
> Matthieu
> 
> diff --git a/meta/classes/toolchain-scripts.bbclass
> b/meta/classes/toolchain-scripts.bbclass
> index 44284c3..f5fd4d7 100644
> --- a/meta/classes/toolchain-scripts.bbclass
> +++ b/meta/classes/toolchain-scripts.bbclass
> @@ -136,7 +136,7 @@ toolchain_create_sdk_env_script_for_installer () {
>  #we get the cached site config in the runtime
>  TOOLCHAIN_CONFIGSITE_NOCACHE = "${@siteinfo_get_files(d, True)}"
>  TOOLCHAIN_CONFIGSITE_SYSROOTCACHE =
> "${STAGING_DATADIR}/${TARGET_SYS}_config_site.d"
> -TOOLCHAIN_NEED_CONFIGSITE_CACHE = "${TCLIBC} ncurses"
> +TOOLCHAIN_NEED_CONFIGSITE_CACHE = "ncurses"
> 
>  #This function create a site config file

-- 
<natoka> Alfie: ;) naja, wir sind nicht in Redm**** wo man den teppich
	hochhebt und den besen auspackt und alles drunterkehrt.
<natoka> Alfie: und das was sich dann nicht mehr unterm teppich ausgeht als
	produkt deklariert und verkauft ;)

