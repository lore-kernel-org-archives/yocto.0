Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AFDCE0086B; Fri, 17 Aug 2018 12:11:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
	[209.85.167.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B33E0E00828
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2018 12:11:02 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id f135-v6so6598070lfg.10
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2018 12:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=0FjwZMwDFr1C4NY+pD/FYkMzHx3lvkhE8FEIo+WgtHU=;
	b=ENK3+akr9YQe2XhfnqsUqtCUzf1L33TufY6aiHokasRuvcKaH7gImye5fzJ2Yv37Ok
	aM6w8Fzb3aTAiS7EMxnd2aI4ayFLCFwlKZjnDD16i1Aq/ZO4V850pLirqHXF7qG5atm5
	jil7FVAGIZVzGBDmNRxd4vsgLGOnggvkxgo/7mu9k8yIBiAoCKkBUGf/NixqxvuVHU6m
	95pfPxdQvQt3pPl7XNKmc9F0mzHxdGlhKzAaDm7nVTgekI32kZ/MHNvUX89rr4lpt/0i
	Kf68kTBREAjs27yhIv5R302RmjKp/4ENHx5BdvUINrChgNfHtiWIjmdKmCR3++pTa+XN
	pgEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=0FjwZMwDFr1C4NY+pD/FYkMzHx3lvkhE8FEIo+WgtHU=;
	b=t6dhN3pzLC92CUKq6/aShXj/RiJDKOkCcCleumx0B5qMYkmzysXc+nOucwowUXB573
	9LvOOR2BX0MalmLFKmqksZe1rTent+or+pE3nAp+LTb9MQbz5l2yV8tcNoMWyX12NV7V
	vC7UbFKaSnP8NrJ2eAjlCGQ9kpCnv1eocoLBflxBykBiuJ0vkWyx/djsT3eIbPWo9rR1
	RKU0i299YaTiO4R7f9QS+q8fp88akXwIqQAkemAiPDv0Zaf1HciIQYxw1uJBDi559Ct8
	OonRvNKzGY/QVgblPEd2y5gNjZQwRU/LCLS3FYCghhSP3CAVCuWRbLE7pfijThIyABwb
	BSlw==
X-Gm-Message-State: AOUpUlGq0yLajBw4lt+hocvEVayUW7Kzs5wxcpJo1FYsE0kvkl/K4psH
	Nbq2Vl9JFPQvvZa9BfCSkfNi/jQoaR8cDqPIpuk=
X-Google-Smtp-Source: AA+uWPzRRL+W7e8buwJWE+nkfA4Dmc7TbjBwCihuyQGXRoIYSD1eAvegZZbU/O0mPZVpT4YlnJC4LpItdDlGCmEYE5I=
X-Received: by 2002:a19:c715:: with SMTP id
	x21-v6mr7685458lff.110.1534533061524; 
	Fri, 17 Aug 2018 12:11:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:1712:0:0:0:0:0 with HTTP; Fri, 17 Aug 2018 12:11:00
	-0700 (PDT)
From: Davis Roman <davis.roman84@gmail.com>
Date: Fri, 17 Aug 2018 15:11:00 -0400
Message-ID: <CACfi_Z2Zvwiq-iB7ckmmT0LgthOPRxCMC6OCSW3ywbZ2=oSY4A@mail.gmail.com>
To: bitbake-devel@lists.openembedded.org, 
	Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core@lists.openembedded.org
Subject: how to store a modification of a bbclass in the poky layer in my own layer.
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
X-List-Received-Date: Fri, 17 Aug 2018 19:11:03 -0000
Content-Type: text/plain; charset="UTF-8"

Hello!


I've made a modification in poky/meta/classes/libc-package.bbclass (
shown below)

However I don't want this change to be stored here long term and
instead feel that it should live in my project specific layer,
meta-hon-grip.

After checking with bitbake-layers, I saw that my layer has a higher
priority than the poky layer so my layer should be checked first ( or
so I thought)

I copied the modified version of libc-packages.bbclass into
meta-hon-grip/classes and I restored the version in the poky layer to
its original state.

After making this change, I found that the modified version in my
layer is not being used and instead the version in the poky layer is
the one in play.

I'm trying to figure out what else to try.

Any suggestions would be greatly appreciated!

Thank you,

Davis

diff --git a/meta/classes/libc-package.bbclass
b/meta/classes/libc-package.bbclass
index 467d567..72d447a 100644
--- a/meta/classes/libc-package.bbclass
+++ b/meta/classes/libc-package.bbclass
@@ -287,7 +287,7 @@ python package_do_split_gconvs () {
                 bb.error("locale_arch_options not found for
target_arch=" + target_arch)
                 raise bb.build.FuncFailed("unknown arch:" +
target_arch + " for locale_arch_options")

-            localedef_opts += " --force --old-style --no-archive --prefix=%s \
+            localedef_opts += " --force --no-archive --prefix=%s \
                 --inputfile=%s/%s/i18n/locales/%s --charmap=%s %s/%s" \
                 % (treedir, treedir, datadir, locale, encoding,
outputpath, name)

@@ -295,7 +295,7 @@ python package_do_split_gconvs () {
                 (path, i18npath, gconvpath, localedef_opts)
         else: # earlier slower qemu way
             qemu = qemu_target_binary(d)
-            localedef_opts = "--force --old-style --no-archive --prefix=%s \
+            localedef_opts = "--force --no-archive --prefix=%s \
                 --inputfile=%s/i18n/locales/%s --charmap=%s %s" \
                 % (treedir, datadir, locale, encoding, name)

