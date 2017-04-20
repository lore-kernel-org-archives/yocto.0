Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1884CE0092B; Thu, 20 Apr 2017 11:24:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64C26E0083C
	for <yocto@lists.yoctoproject.org>;
	Thu, 20 Apr 2017 11:24:14 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id l44so8647107wrc.2
	for <yocto@lists.yoctoproject.org>;
	Thu, 20 Apr 2017 11:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5zaU/kaTc7FNPOJX6MV2ld0E01z3uUzQGcGeb8AMyUA=;
	b=EMBFzqzUPbSCgGnLWWjGevL16miKPlMFZTzSU58Mbacdf3g7ZxoMTDtY5pu0WPiqvP
	8TdD9MiFKgFlCtXcrqa02B7jWjn4s2Sv7pkMBu7ts9cyqsOryLlnmjN/hI5iRUgD4ywf
	IlLKYt+7sAZ+F15w+SG2Wuvf/qRe2GRq5cslLWA4sRKQ3ab0k28LD4za6KnC3AyOadcJ
	MCdCw3bnNoYMTiYgBcJxoXEFF8FxHfav34/r0HnIifvjFy4Z9XdaX837z+QN7DxCinLx
	TMW8VJDQIwIqorDWwA77cSgOPELc2tyor8i9epl7qkplyhA7UFK4o163I4KEIMPPU76B
	jN4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5zaU/kaTc7FNPOJX6MV2ld0E01z3uUzQGcGeb8AMyUA=;
	b=tiUkgXdVI1NKLiUEMIL+VwyOZsqx6I77QFSb/lwt8O2y+ZhOZKOTX+x5f+x8JVpVCR
	CgNq+CB/3B5UoUikgEQI+6/PGX/gfVG9AeEt26WsSR30poJCVgzJIEplJlfvOBWEWiwI
	BklLIU7TanJud3Jnxl9YYqrFWInhVlmjjkaoYZpwOOw2mQpvFDKDvmAgL5NHZgSiYo9B
	b+PnotAACTB2AxZJ8NFslreHObDAiVRmgVeJfcUcesyct7gorxLPyhADoXlgI9hfEru2
	bHgNNhAy+3id1CZFW6wNWHzqL0DqSy/he7ZW8aw3vJR8vlM1R5F3x+kloKC7RpAklXYM
	nC0w==
X-Gm-Message-State: AN3rC/4FLAeaNbL6q2ahwTZewJQwOL46B3JVr9w6VZsJgcWlKNXdTRha
	VCjmqRz8+JskAPFH3fyQXQASL9+sFw==
X-Received: by 10.223.152.174 with SMTP id w43mr9872501wrb.151.1492712653301; 
	Thu, 20 Apr 2017 11:24:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.172.100 with HTTP; Thu, 20 Apr 2017 11:24:12 -0700 (PDT)
In-Reply-To: <CA+chaQdjQ+OK9MFUR+=coaheD=6V-BD6Ud87i9n45koihM=ySA@mail.gmail.com>
References: <20170420162022.20237-1-Martin.Jansa@gmail.com>
	<CAJ86T=UO-oVaH-nJ=qg3_zsQBNrwXJnokiuwD_sAbwMZKvt2CA@mail.gmail.com>
	<CA+chaQdjQ+OK9MFUR+=coaheD=6V-BD6Ud87i9n45koihM=ySA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 20 Apr 2017 11:24:12 -0700
Message-ID: <CAJ86T=VxRGXCkp+2nhr_vLF9KtMiuvSnB2=zqnsBL25GW1JG1Q@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-gplv2] gnutls: add older gnutls compatible with nettle
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
X-List-Received-Date: Thu, 20 Apr 2017 18:24:16 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 20, 2017 at 11:07 AM, Martin Jansa <martin.jansa@gmail.com> wrote:
> I'll check the exact error message, but do_configure was failing for me when
> I did first build without this dependency.
>
> Most likely because this option was removed with 3.5.1 upgrade in:
> commit e8ef5912aac0104d9a47d6d10a95e64426d8840e
> Author: Alexander Kanavin <alexander.kanavin@linux.intel.com>
> Date:   Tue Jun 28 11:06:16 2016 +0300
>
>     gnutls: update to 3.5.1
>
>     Remove no longer supported --disable-crywrap option.
>     Add a checksum for the LICENSE file with licensing overview.
>
>     Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
>     Signed-off-by: Ross Burton <ross.burton@intel.com>
>

OK, that makes sense. I have my own gnutls_3.3.27.bb recipe and wasn't
seeing the problem because I use a local gnutls.inc which still has
that option.

> I've verified that even with this build dependency the main libgnutls
> package doesn't runtime depend on libidn, which is enough for us, if you
> have strong opinion about --disable-crywrap then we can return it in the
> recipes-support/gnutls/gnutls_3.3.27.bb

Looking at configure.ac, I think restoring --disable-crywrap in
gnutls_3.3.27.bb is the cleanest solution.

> On Thu, Apr 20, 2017 at 7:59 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
>>
>> On Thu, Apr 20, 2017 at 9:20 AM, Martin Jansa <martin.jansa@gmail.com>
>> wrote:
>> > * gnutls depends on nettle-3.1* since 3.4.0:
>> >   The requirement for nettle was bumped from 3.0 to 3.1 in gnutls_3_4_0
>> >
>> > https://gitlab.com/gnutls/gnutls/commit/c84129af91b21d33ffe086e507632771b0e76498
>> >   and from 2.7 to 3.0 a bit earlier also in gnutls_3_4_0
>> >
>> > https://gitlab.com/gnutls/gnutls/commit/3fa80cf68919f07b3351b2722278ba463d6e731c
>> > * add recipe for last release in 3.3 branch which is compatible
>> >   with nettle 2.7.1 used in meta-gplv2
>> >
>> > Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
>> > ---
>> >  .../gnutls/configure.ac-fix-sed-command.patch      | 31
>> > ++++++++++++++++++++++
>> >  recipes-support/gnutls/gnutls_3.3.27.bb            | 23
>> > ++++++++++++++++
>> >  2 files changed, 54 insertions(+)
>> >  create mode 100644
>> > recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
>> >  create mode 100644 recipes-support/gnutls/gnutls_3.3.27.bb
>> >
>> > diff --git
>> > a/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
>> > b/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
>> > new file mode 100644
>> > index 0000000..44a9934
>> > --- /dev/null
>> > +++ b/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
>> > @@ -0,0 +1,31 @@
>> > +From eb93aa7b986c84da60a3db40afb29d1a70c50223 Mon Sep 17 00:00:00 2001
>> > +From: Robert Yang <liezhi.yang@windriver.com>
>> > +Date: Sat, 17 Jan 2015 17:02:15 +0000
>> > +Subject: [PATCH] configure.ac: fix sed command
>> > +
>> > +The "sed 's/.bak//g'" matchs "bitbake", which would cause strange
>> > errors
>> > +when the S contains "bitbake", fix to "sed 's/\.bak$//'`"
>> > +
>> > +Upstream-Status: Pending
>> > +
>> > +Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
>> > +---
>> > + configure.ac | 2 +-
>> > + 1 file changed, 1 insertion(+), 1 deletion(-)
>> > +
>> > +diff --git a/configure.ac b/configure.ac
>> > +index c6818a0..1c4582d 100644
>> > +--- a/configure.ac
>> > ++++ b/configure.ac
>> > +@@ -466,7 +466,7 @@ if test "$NEED_LIBOPTS_DIR" = "true";then
>> > +       dnl replace libopts-generated files with distributed backups, if
>> > present
>> > +       missing_baks=
>> > +       for i in ${srcdir}/src/*-args.c.bak ${srcdir}/src/*-args.h.bak;
>> > do
>> > +-              nam=`echo $i|sed 's/.bak//g'`
>> > ++              nam=`echo $i|sed 's/\.bak$//'`
>> > +               if test -f $i;then
>> > +                       cp -f $i $nam
>> > +               else
>> > +--
>> > +2.0.1
>> > +
>> > diff --git a/recipes-support/gnutls/gnutls_3.3.27.bb
>> > b/recipes-support/gnutls/gnutls_3.3.27.bb
>> > new file mode 100644
>> > index 0000000..2828581
>> > --- /dev/null
>> > +++ b/recipes-support/gnutls/gnutls_3.3.27.bb
>> > @@ -0,0 +1,23 @@
>> > +require recipes-support/gnutls/gnutls.inc
>> > +
>> > +LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504
>> > \
>> > +
>> > file://COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
>> > +
>> > +FILESEXTRAPATHS_prepend =
>> > "${COREBASE}/meta/recipes-support/${BPN}/${BPN}:"
>> > +
>> > +SRC_URI += " \
>> > +    file://correct_rpl_gettimeofday_signature.patch \
>> > +    file://configure.ac-fix-sed-command.patch \
>> > +    file://use-pkg-config-to-locate-zlib.patch \
>> > +"
>> > +SRC_URI[md5sum] = "8ee8cebd7f7575b11f232766a21c31d3"
>> > +SRC_URI[sha256sum] =
>> > "8dfda16c158ef5c134010d51d1a91d02aa5d43b8cb711b1572650a7ffb56b17f"
>> > +
>> > +# This version doesn't support this option added in newer gnutls
>> > +# ERROR: gnutls-3.3.27-r0 do_configure: QA Issue: gnutls: configure was
>> > passed unrecognised options: --with-idn [unknown-configure-option]
>> > +PACKAGECONFIG[libidn] = ""
>> > +# but it has the dependency
>> > +DEPENDS += "libidn"
>>
>> That dependency was removed for gnutls 3.3.x by:
>>
>>
>> http://git.openembedded.org/openembedded-core/commit/?id=6fd51f5c15a380eae630fe853ba0eccde7b9a369
>>
>> > +# This version doesn't support this option added in newer gnutls
>> > +EXTRA_OECONF_remove = "--without-libunistring-prefix"
>> > --
>> > 2.12.2
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>
>

