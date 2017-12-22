Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 903C1E00D9D; Fri, 22 Dec 2017 06:21:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42B62E00D94
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 06:21:06 -0800 (PST)
Received: by mail-qt0-f175.google.com with SMTP id e2so36476925qti.0
	for <yocto@yoctoproject.org>; Fri, 22 Dec 2017 06:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AJVKZMdoIge+yTUVo6vLXV6tTLmEezhv8jlefcg9Tb0=;
	b=jJXCLEildl83twKWGbKGyi+Ag5QiKIATc+oWiJXlMCRfSIF467hKpZhWxqx1MQLcen
	Y+8k9I+Yh1+RFkWbhb68mt0OsjdKvtoN51eUjtjdcuORnmr75FU5TgsRA4+pdYWLM/3o
	4lHuHIITCwFa6ZvQzCI4cRyL1iTwYcbGwG58Rfh3RvP/zZix8/8njZ/su9DReb/dHJ+D
	B6ttr/GNZr1sl5dC9Q4sggF7sdxeBq+B5oOPlAAzXovgvWfMk1dGnT2dmaXYR6AdTLBT
	1PmC5PpLiokrlus/08D+JCrCbGZAPhGISgsb0Varmv47iAimkHfK5Yy5GkqbL7DlaO9E
	KaqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AJVKZMdoIge+yTUVo6vLXV6tTLmEezhv8jlefcg9Tb0=;
	b=t+ayZ6IP4ik/uNAGVI/72xMOapJ2ARqlZ5zU1qa9HpgHuDH6gUMM8fLgcD7maE6P0v
	jMZ0u5a5er0N1YY59eCI8qmqx08Lo0EmyaeORWfPaUkFIGOeDuhJ1/R70oIDhGgdjVB5
	r1lpJ6kc30ONqB7It5UEyHPmuRwiCsCpIbfs61MIfrNXmGDGvJz4gmCP4kLd8LsXdGGk
	0GXBzO00GDU8qc+NxQOM21sJJ2RejiYF9NxUOvdI4Zn8mFVM7teOpKkVJsnH9ODBu7Tx
	R7p+hGlatIRHTjW2oLd/vv5IDB7k5vWXNv+41Ia4FCF/iZPnhaPBBbrRvY3I81rI6WUJ
	I0lQ==
X-Gm-Message-State: AKGB3mI4K1zyeCbF1wUncuagLlnWfuTeZg8EaewGUI8AaNbJlM7zbjLI
	ByQaTAqZTN4tYECmpmXozDQlOxzh/zhYLybjuwE=
X-Google-Smtp-Source: ACJfBou3g7X9Un+FAlHWNbcQLrlnklYTk/I+g8Pbkbe+m/+2u212LFaPfwrPEDkCsZXdL1LiF0A3ZOlXdlXuNaMEb5E=
X-Received: by 10.237.33.130 with SMTP id l2mr19926227qtc.120.1513952466047;
	Fri, 22 Dec 2017 06:21:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.182.96 with HTTP; Fri, 22 Dec 2017 06:21:05 -0800 (PST)
In-Reply-To: <f5f50e1c-defb-149f-f795-921f4c1e648b@sgl.com>
References: <f5f50e1c-defb-149f-f795-921f4c1e648b@sgl.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 22 Dec 2017 10:21:05 -0400
Message-ID: <CADkTA4O6+qeRdQyV_jYd+BAwnU_n8+ZsAshMM034s0qeUhjQFw@mail.gmail.com>
To: Fan Zhang <fzhang@sgl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to config kernel in my own meta layer?
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
X-List-Received-Date: Fri, 22 Dec 2017 14:21:08 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Dec 21, 2017 at 11:32 AM, Fan Zhang <fzhang@sgl.com> wrote:
> Greetings,
>
> I have a recipes that requires 128MB of CMA allocation for DMA. I followed
> the instruction in
> http://www.yoctoproject.org/docs/1.6/kernel-dev/kernel-dev.html#changing-the-configuration
> and did the following:
>
> My recipes structure:
>
> meta-mylayer\recipes-my\uio-test\
>
> 1. Then in uio-test folder, I have uio-test.bb that created by recipetool
> (in general) with some modification. uio-test.bb looks like this:
>
> #------------------------------------------------------------------
>
> # Recipe created by recipetool
> # This is the basis of a recipe and may need further editing in order to be
> fully functional.
> # (Feel free to remove these comments when editing.)
>
> # Unable to find any files that looked like license statements. Check the
> accompanying
> # documentation and source headers and set LICENSE and LIC_FILES_CHKSUM
> accordingly.
> #
> # NOTE: LICENSE is being set to "CLOSED" to allow you to at least start
> building - if
> # this is not accurate with respect to the licensing of the software being
> built (it
> # will not be in most cases) you must specify the correct value before using
> this
> # recipe for anything other than initial testing/development!
> LICENSE = "CLOSED"
> LIC_FILES_CHKSUM = ""
>
> # No information for SRC_URI yet (only an external source tree was
> specified)
> PV = "2.0.2"
> SRC_URI = "file://src"
>
> # NOTE: this is a Makefile-only piece of software, so we cannot generate
> much of the
> # recipe automatically - you will need to examine the Makefile yourself and
> ensure
> # that the appropriate arguments are passed in.
>
> do_configure () {
>     # Specify any needed configure commands here
>     :
> }
>
> do_compile () {
>     # You will almost certainly need to add additional arguments here
>     cd ${WORKDIR}/src
>     oe_runmake
> }
>
> FILES_${PN} = "/www/pages /etc/lighttpd.d"
> do_install () {
>     # This is a guess; additional arguments may be required
>     cd ${WORKDIR}/src
>     oe_runmake install 'DESTDIR=${D}'
> }
>
> DEPENDS = "libgcc boost"
> RDEPENDS_${PN} = "libgcc boost-thread boost-system lighttpd
> lighttpd-module-cgi"
> #------------------------------------------------------------------
>
> 2. Also in uio-test folder, I have uio-test.bbappend file with these
> contents:
>
> #------------------------------------------------------------------
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> SRC_URI += "file://uio-test.cfg"
>
> #----------------------^^^^^^^^^^^^^^^^^^^-------------------------
>
> 3. In uio-test/files folder, I have uio-test.cfg with the following
> contents:
>
>
> #------------------------------------------------------------------
>
> CONFIG_CMA_ALIGNMENT=8
> CONFIG_CMA=y
> CONFIG_CMA_AREAS=7
> CONFIG_DMA_CMA=y
> CONFIG_CMA_SIZE_MBYTES=128
> CONFIG_CMA_SIZE_SEL_MBYTES=y
> CONFIG_DMADEVICES=y
> CONFIG_DMA_ENGINE=y
> CONFIG_DMA_OF=y
> CONFIG_XILINX_DMA_ENGINES=y
> CONFIG_XILINX_DMA=y
> CONFIG_DMA_API_DEBUG=y
> CONFIG_HAS_DMA=y
> CONFIG_NEED_DMA_MAP_STATE=y
> CONFIG_HAVE_DMA_CONTIGUOUS=y
> CONFIG_HAVE_DMA_API_DEBUG=y
> CONFIG_HAVE_GENERIC_DMA_COHERENT=y
> CONFIG_ARM_DMA_MEM_BUFFERABLE=y
> CONFIG_ZONE_DMA_FLAG=0
> #----------------------^^^^^^^^^^^^^^^^^^^-------------------------
>
> My question: I think the cfg file is being parsed because if I change the
> folder name files to something else, bitbake will complaint about not being
> able to find uio-test.cfg. However, the final .config in built do not have
> the CMA allocated. My meta layer does have a priority higher than the
> upstream layers. What else can cause the problem here? Any suggestions?
> Thanks.

The question is ... which kernel is it ? If the kernel recipe you are
using doesn't
inherit linux-yocto, the fragments won't be applied.

And a second question, what release/branch are you using ?

On that note, I actually have a patch completed to move the core of the fragment
support to kernel.bbclass, so any kernel could use it. So if you
aren't linux-yocto
and would like to test a patch, I could send it along.

Bruce

>
> Fan Zhang
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

