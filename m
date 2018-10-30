Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56CB9E00950; Tue, 30 Oct 2018 10:59:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
	[209.85.167.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77864E008D7
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 10:59:56 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id p17so3152447lfh.4
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 10:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3yJgfEihC5N8uOU9KZ0yG3veNgeuY+sQXxavqfk2yPE=;
	b=FW4MJsfCXrFGOaJY8sGXleanCBAMzSqeL71kyQOifADphyVS3g0Oqz3JeDqZPddZ6K
	OsOvzz2BBgVwa3eFh3GShJaXNFcgB+3sE/keL50I/cdZLdwaT2wsLkJZ29NRGTxu05x/
	/LN4gQxlL9tCmGlmpJ4Sd+1pm7GZKSpW/nB20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3yJgfEihC5N8uOU9KZ0yG3veNgeuY+sQXxavqfk2yPE=;
	b=GtCT/Fc9eJVeETIeIf+gN0efu0HHnWF0WypeLe5QaLA5g3eB8YwPpvRYBLOyfQEOD8
	nzkswp8HxznABbVxpFZD+XpSUd9h8o9QUcEpKF51QCVkRBmatXgyNhFhX2OCPjWaxkP7
	Xu77mHVfkbFdXhvs64kWTdtBcTQ8hmPOrByEjdl4kdJdwYfgVhLySfSfQe+qAgf5t94A
	EtBycFimfzvX3/ZlDpynkcZ0toDfyWb7G8h0M6aKUd59/QWqZTInEDGCSvT1NUL2TMh2
	IqaZRc1SONZZHUEFJc0rDesO7MKdjLLGxMRs7Gl31M2SFjhpwpJvFB3gxc/9L/ZF0NrX
	37OA==
X-Gm-Message-State: AGRZ1gL90t5DmxKrad82yU1l/G653DIwlO+bCB91ambAPkh/st0w0v5w
	kiRRpTCUSKYYGfXf0IkZLd9yQyXfKNlMdTd9E0UYVw==
X-Google-Smtp-Source: AJdET5dlZJU6Yyk84Qu9DnEYDeAqzHbyLM+6p+vHSzczpdO+xm14l3EeTOE9NZ/2PpbXSw2bO3Bw5S+9JaGAnx1xwtc=
X-Received: by 2002:a19:ab1a:: with SMTP id
	u26-v6mr2690293lfe.103.1540922395066; 
	Tue, 30 Oct 2018 10:59:55 -0700 (PDT)
MIME-Version: 1.0
References: <28fb384c-5521-f1d9-076e-f25c9c04b125@gmail.com>
In-Reply-To: <28fb384c-5521-f1d9-076e-f25c9c04b125@gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 30 Oct 2018 18:59:42 +0100
Message-ID: <CAP71WjxiavLMpJS9mC72cOb5kBxfk7qPHB-bD8xW1AoNVZ4GkQ@mail.gmail.com>
To: xerofoify <xerofoify@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Help with Nano Recipe
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
X-List-Received-Date: Tue, 30 Oct 2018 17:59:57 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 30, 2018 at 5:38 PM nick <xerofoify@gmail.com> wrote:
>
> Greetings All,
> I am trying to get the below recipe to build:
> SUMMARY = "Recipe to build the 'nano' editor"
>
> PN = "nano"
> PV = "2.2.6"
> LICENSE="GPLv3"
>
> SITE = "http://www.nano-editor.org/dist"
> PV_MAJOR = "${@d.getVar('PV',d,1).split('.')[0]}"
> PV_MINOR = "${@d.getVar('PV',d,1).split('.')[1]}"
> LIC_FILES_CHKSUM = "${SITE}/v${PV_MAJOR}.${PV_MINOR}/COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949"
>
> SRC_URI = "${SITE}/v${PV_MAJOR}.${PV_MINOR}/${PN}-${PV}.tar.gz"
> SRC_URI[md5sum] = "03233ae480689a008eb98feb1b599807"
> SRC_URI[sha256sum] = \
> "be68e133b5e81df41873d32c517b3e5950770c00fc5f4dd23810cd635abce67a"
> LIC_FILES_CHKSUM = "${SITE}/v${PV_MAJOR}.${PV_MINOR}/COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949

You are missing a quote at the end.

>
>
> python do_fetch() {
>     bb.plain("Downloading source tarball from ${SRC_URI} ...")
>     src_uri = (d.getVar('SRC_URI', True) or "").split()
>     if len(src_uri) == 0:
>        bb.fatal("Empty URI")
>     try:
>        fetcher = bb.fetch2.Fetch(src_uri, d)
>        fetcher.download()
>     except bb.fetch2.BBFetchException:
>        bb.fatal("Could not fetch source tarball.")
>     bb.plain("Download successful.")
> }

It is very unusual to implement a recipe this way , and you should
rely on base classes to do that for you. For reference there is a
recipe for 'nano' in meta-oe already.

http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/nano/nano_3.0.bb?h=master

>
> addtask fetch before do_build
>
> python do_unpack() {
>     bb.plain("Unpacking source tarball ...")
>     os.system("tar x -C ${WORKDIR} -f ${DL_DIR}/${P}.tar.gz")
>     bb.plain("Unpacked source tarball.")
> }
>
> addtask unpack before do_build after do_fetch
>
> python do_configure() {
>     bb.plain("Configuring source package ...")
>     os.system("cd ${WORKDIR}/${P} && ./configure")
>     bb.plain("Configured source package.")
> }
>
> addtask configure before do_build after do_unpack
>
> python do_compile() {
>     bb.plain("Compiling package...")
>     os.system("cd ${WORKDIR}/${P} && make")
>     bb.plain("Compiled package.")
> }
>
> addtask compile before do_build after do_configure
>
> do_clean[nostamp] = "1"
> do_clean() {
>     rm -rf ${WORKDIR}/${P}
>     rm -f ${TMPDIR}/stamps/*
> }
>
> addtask clean
>
> And am working why this error is occuring:
> ERROR: ParseError at /tmp/bbhello/meta-hello/recipes-editor/nano/nano.bb:15: unparsed line: 'LIC_FILES_CHKSUM = "${SITE}/v${PV_MAJOR}.${PV_MINOR}/COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949'
>
> I looked through the logs already and it was reported but only changed the file number seemed to change it. I am wondering if there is a better
> solution or why that's a bad CHSUM variable according to bitbake.
>
> Thanks,
> Nick
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

