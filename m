Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C556E00AF0; Tue, 25 Apr 2017 00:45:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4491EE00AE4
	for <yocto@lists.yoctoproject.org>;
	Tue, 25 Apr 2017 00:45:16 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id y10so11814661wmh.0
	for <yocto@lists.yoctoproject.org>;
	Tue, 25 Apr 2017 00:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jIzVy4RMK1AQSgEnkLHTE3/pI4bS4sOx4DrH61Mmcss=;
	b=Pzx2B1wqOIYokV5ygFmErOcvCIwOAqvqnSvpjiKazjyZPFk2/KKlp8rZExx6RVa5MU
	eiOYt5oaNjIqwHkSrUjic8+WAEIS1rxwFG8KjlhCVo7dLaA0qmidqiwdMurYpycJIYlB
	stWgXH5p0GRj0eT/6USlfnuFk5Wl7sqApz1Wxr1R39nZvSaNWdjjQGcuxQJHhn3RpTGe
	wQ6nyVlplLbBCpqzKoINzfUetogKq6xUjeLmxKM+IFzKnD50uopzNIWailbtj3lzC46I
	xDBRyiaOcumOMFGULuifuU+ix6eWYyLJFEGj4NleTfolz4GVDfbsQD5tVK2sDyalkDgv
	05Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jIzVy4RMK1AQSgEnkLHTE3/pI4bS4sOx4DrH61Mmcss=;
	b=JdU+K+jBobNDsEAiFDD15dZLbWYvjx5eTG++OOhPBKZLh06HNFTDnmLiu8QAzdMnPw
	nYAAlCz29nnRb+dkjDbrY09fhtupaGkKxf9cik8YPRucOtfUU77o/j/SSTem4AW945DG
	bNOmKK8nAWQMGOFrt8KUaIQh0WtSmd8brrXWWbnkQl9x7dTBfHRmNY1o+BMKfrEFqHZK
	Q+ziDQdJ08ZylFID+7aghUaUkCkYPRBJEefOZG41VulXPyJfKddizm+LyHmaBy51uIIb
	stC5yOJUwrZzpb2tXBSuPDnVRNq/yZuixQz5ej5q/5Dt5dNeOs0qtGBcTRDpgEkKDw03
	qtMg==
X-Gm-Message-State: AN3rC/7eKfdn/2dso88wqz2fEICd9RaS92avHCz6291IG+upRpyG77y0
	OP2Tp7CM1prkVCbVwck3RxY0NtCBTA==
X-Received: by 10.28.70.129 with SMTP id t123mr12203450wma.98.1493106316061;
	Tue, 25 Apr 2017 00:45:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.172.100 with HTTP; Tue, 25 Apr 2017 00:45:15 -0700 (PDT)
In-Reply-To: <4e2320d2-3683-e53a-a743-fca98ab2b23a@topic.nl>
References: <20170420162022.20237-1-Martin.Jansa@gmail.com>
	<20170424142954.21979-1-Martin.Jansa@gmail.com>
	<4e2320d2-3683-e53a-a743-fca98ab2b23a@topic.nl>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 25 Apr 2017 00:45:15 -0700
Message-ID: <CAJ86T=XbwjCd0v=35kxxMhfJdtq5wxqJY70z5p=Z+KkXCuaTYw@mail.gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCHv2][meta-gplv2] gnutls: add older gnutls compatible with nettle
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
X-List-Received-Date: Tue, 25 Apr 2017 07:45:19 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 24, 2017 at 10:20 PM, Mike Looijmans
<mike.looijmans@topic.nl> wrote:
> On 24-04-17 16:29, Martin Jansa wrote:
>>
>> * gnutls depends on nettle-3.1* since 3.4.0:
>>   The requirement for nettle was bumped from 3.0 to 3.1 in gnutls_3_4_0
>>
>> https://gitlab.com/gnutls/gnutls/commit/c84129af91b21d33ffe086e507632771b0e76498
>>   and from 2.7 to 3.0 a bit earlier also in gnutls_3_4_0
>>
>> https://gitlab.com/gnutls/gnutls/commit/3fa80cf68919f07b3351b2722278ba463d6e731c
>> * add recipe for last release in 3.3 branch which is compatible
>>   with nettle 2.7.1 used in meta-gplv2
>>
>> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
>> ---
>>  .../gnutls/configure.ac-fix-sed-command.patch      | 31
>> ++++++++++++++++++++++
>>  recipes-support/gnutls/gnutls_3.3.27.bb            | 23 ++++++++++++++++
>>  2 files changed, 54 insertions(+)
>>  create mode 100644
>> recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
>>  create mode 100644 recipes-support/gnutls/gnutls_3.3.27.bb
>>
>> diff --git
>> a/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
>> b/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
>> new file mode 100644
>> index 0000000..44a9934
>> --- /dev/null
>> +++ b/recipes-support/gnutls/gnutls/configure.ac-fix-sed-command.patch
>> @@ -0,0 +1,31 @@
>> +From eb93aa7b986c84da60a3db40afb29d1a70c50223 Mon Sep 17 00:00:00 2001
>> +From: Robert Yang <liezhi.yang@windriver.com>
>> +Date: Sat, 17 Jan 2015 17:02:15 +0000
>> +Subject: [PATCH] configure.ac: fix sed command
>> +
>> +The "sed 's/.bak//g'" matchs "bitbake", which would cause strange errors
>> +when the S contains "bitbake", fix to "sed 's/\.bak$//'`"
>> +
>> +Upstream-Status: Pending
>> +
>> +Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
>> +---
>> + configure.ac | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +diff --git a/configure.ac b/configure.ac
>> +index c6818a0..1c4582d 100644
>> +--- a/configure.ac
>> ++++ b/configure.ac
>> +@@ -466,7 +466,7 @@ if test "$NEED_LIBOPTS_DIR" = "true";then
>> +       dnl replace libopts-generated files with distributed backups, if
>> present
>> +       missing_baks=
>> +       for i in ${srcdir}/src/*-args.c.bak ${srcdir}/src/*-args.h.bak; do
>> +-              nam=`echo $i|sed 's/.bak//g'`
>> ++              nam=`echo $i|sed 's/\.bak$//'`
>
> How about:
>  nam=`basename $i .bak`

This patch is a rebased version of the one in oe-core, so the oe-core
version should probably be the first candidate for any such
improvements.

>> +               if test -f $i;then
>> +                       cp -f $i $nam
>> +               else
>> +--
>> +2.0.1
>> +
>> diff --git a/recipes-support/gnutls/gnutls_3.3.27.bb
>> b/recipes-support/gnutls/gnutls_3.3.27.bb
>> new file mode 100644
>> index 0000000..c98da34
>> --- /dev/null
>> +++ b/recipes-support/gnutls/gnutls_3.3.27.bb
>> @@ -0,0 +1,23 @@
>> +require recipes-support/gnutls/gnutls.inc
>> +
>> +LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
>> +
>> file://COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
>> +
>> +FILESEXTRAPATHS_prepend =
>> "${COREBASE}/meta/recipes-support/${BPN}/${BPN}:"
>> +
>> +SRC_URI += " \
>> +    file://correct_rpl_gettimeofday_signature.patch \
>> +    file://configure.ac-fix-sed-command.patch \
>> +    file://use-pkg-config-to-locate-zlib.patch \
>> +"
>> +SRC_URI[md5sum] = "8ee8cebd7f7575b11f232766a21c31d3"
>> +SRC_URI[sha256sum] =
>> "8dfda16c158ef5c134010d51d1a91d02aa5d43b8cb711b1572650a7ffb56b17f"
>> +
>> +# This version doesn't support this option added in newer gnutls
>> +# ERROR: gnutls-3.3.27-r0 do_configure: QA Issue: gnutls: configure was
>> passed unrecognised options: --with-idn [unknown-configure-option]
>> +PACKAGECONFIG[libidn] = ""
>> +# but it still has the libidn dependency, without this option
>> +EXTRA_OECONF += "--disable-crywrap"
>> +
>> +# This version doesn't support this option added in newer gnutls
>> +EXTRA_OECONF_remove = "--without-libunistring-prefix"
>>
>
>
>
> Kind regards,
>
> Mike Looijmans
> System Expert
>
> TOPIC Products
> Materiaalweg 4, NL-5681 RJ Best
> Postbus 440, NL-5680 AK Best
> Telefoon: +31 (0) 499 33 69 79
> E-mail: mike.looijmans@topicproducts.com
> Website: www.topicproducts.com
>
> Please consider the environment before printing this e-mail
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

