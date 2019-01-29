Return-Path: <ollie88r@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 056BEE00CEE; Tue, 29 Jan 2019 05:42:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ollie88r[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EB7AE00CE8
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 05:42:47 -0800 (PST)
Received: by mail-qt1-f170.google.com with SMTP id n32so22154573qte.11
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 05:42:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/yjpEzw8em3r0kXHPW1Z2738nto6uU1WMUx5JZPuISw=;
	b=CkdD5cYeyfw1OdefzeQ/fz5Dffrvfc+kJmice0LPDMImJC5E2o08dK9OdyiR+atLvD
	s3Ky6+Hq2hYFEFdm63ks6bcXCn60rbzNXbbIjy5Fn1U8i1T9f1bj0gDqOpSp9YLdS/wJ
	RM8tblmxex5wdYJ5/ihWIS271Rx6w4DWTm7tcYHISFA5XyigglJuZSGFGmZEj+VA6DUt
	CLg4Rs7Z35c4HJAecZxeEikj1OUdk6zMTqwyxSoRs6fw782eJD0U5Q3LuluCcQWh1N1A
	fqlmLMO7OiQnfhhsXB0464tNxDp1I96PNdFEO6w6yp8vi5PZVVBo4zo6WV0H6DYXdYFR
	1QNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/yjpEzw8em3r0kXHPW1Z2738nto6uU1WMUx5JZPuISw=;
	b=ky5l8BpPJSGDclZFgSPbENRrSFeKlXSE5njDLF57aQuonzBi1ll/qTtbdsRaiyzNZi
	9q3SsGUTO2PMnyXQCdSfUxfsZtKt1RAv8DnOTVAGvtYLc954hTK/dKsVmZfRpahmHHCJ
	bqJSMr+wuJVyRErXxonmkHbEOanxbOPxfV0SD7WLthaffVRlgOnW2JCpSVUemM3VDfve
	Dp323mz/WleBqhtMFyErqYJ+2FwuiqgCnpjdM+Cehv0f26MPrVMKhzou/hvqNRH8Xvn0
	sr5SSu/48SjupHnf5M2dYvHt+S88bxEG43wcSUBhvuOJmlGNHnTar0InIWYkNOxkT6zE
	qhbw==
X-Gm-Message-State: AJcUukdJ4hOePBh4wr6kBChQ8KPbe4ibGrtCZR0q+GGNmgRfOhHW9Pz5
	YduxSxDlSZSkFbX5dd1VgFL8ZSaNoFisvx840LEPJDMO
X-Google-Smtp-Source: ALg8bN6YeyMxSf37X20o0uAt19HzsTo5dUBRZUejy+FIMQGOt+p5MviX+6LMr7SXll6YnErUp8nhs86cnOEW8WiyKe0=
X-Received: by 2002:a0c:ade7:: with SMTP id x36mr23682116qvc.66.1548769366287; 
	Tue, 29 Jan 2019 05:42:46 -0800 (PST)
MIME-Version: 1.0
From: Ollie <ollie88r@gmail.com>
Date: Tue, 29 Jan 2019 14:42:35 +0100
Message-ID: <CAOa5LcH9DQmtXJofapieoBFypdZ=2QqAVrYSiqoz0rpfB=HsWQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: yocto build ruby-augeas gem
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
X-List-Received-Date: Tue, 29 Jan 2019 13:42:48 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

Can anyone please help with install issues when building the
ruby-augeas gem? Seems to be a cross compiler error.

Build error:
...
| Building native extensions.  This could take a while...
| ERROR:  Error installing ruby-augeas-0.5.0.gem:
| ERROR: Failed to build gem native extension.
|
|     current directory:
...build/arago-tmp/work/armv7ahf-neon-poky-linux-gnueabi/ruby-augeas/0.5.0-r0/image/usr/lib/ruby/gems/2.4.0/gems/ruby-augeas-0.5.0/ext/augeas
| ...build/arago-tmp/work/armv7ahf-neon-poky-linux-gnueabi/ruby-augeas/0.5.0-r0/recipe-sysroot-native/usr/bin/ruby
-r ./siteconf20190129-83521-qp9ixi.rb extconf.rb
| *** extconf.rb failed ***
| Could not create Makefile due to some reason, probably lack of necessary
| libraries and/or headers.  Check the mkmf.log file for more details.  You may
| need configuration options.
|
| Provided configuration options:
| --with-opt-dir
| --without-opt-dir
| --with-opt-include
| --without-opt-include=${opt-dir}/include
| --with-opt-lib
| --without-opt-lib=${opt-dir}/lib
| --with-make-prog
| --without-make-prog
| --srcdir=.
| --curdir
| --ruby=.../build/arago-tmp/work/armv7ahf-neon-poky-linux-gnueabi/ruby-augeas/0.5.0-r0/recipe-sysroot-native/usr/bin/$(RUBY_BASE_NAME)
| --with-augeas-config
| --without-augeas-config
| --with-pkg-config
| --without-pkg-config
| extconf.rb:27:in `<main>': augeas-devel not installed (RuntimeError)
|
| To see why this extension failed to compile, please check the
mkmf.log which can be found here:

Abbreviated output of mkmf.log:

"pkg-config --exists augeas"
| pkg-config --libs augeas
=> "-laugeas\n"
...
build/arago-tmp/work/armv7ahf-neon-poky-linux-gnueabi/ruby-augeas/0.5.0-r0/recipe-sysroot-native/lib
-Wl,-O1 -fstack-protector -rdynamic -Wl,-export-dynamic     -lruby
-laugeas -lpthread -ldl -lcrypt -lm   -lc"
...build/arago-tmp/hosttools/ld: cannot find -laugeas
collect2: error: ld returned 1 exit status
checked program was:
/* begin */
1: #include "ruby.h"
2:
3: int main(int argc, char **argv)
4: {
5:   return 0;
6: }
/* end */

package configuration for augeas is not found

And the recipe:

SUMMARY = "Shadow Password Module"
HOMEPAGE = "http://download.augeas.net/ruby"
LICENSE = "LGPLv2.1"
LIC_FILES_CHKSUM = "file://COPYING;md5=bbb461211a33b134d42ed5ee802b37ff"

SRC_URI = "http://download.augeas.net/ruby/ruby-augeas-${PV}.tgz \
    file://add_ruby_augeas_gemspec.patch \
"
SRCREV = "4231a4838fd50022b112838f114ee0586e119605"

SRC_URI[md5sum] = "a132eace43ce13ccd059e22c0b1188ac"
SRC_URI[sha256sum] =
"b82189dcc5cfa18ffaf906f1c5d57e4c3a06054d84100a0699d15fe7d92d9be1"

S = "${WORKDIR}/ruby-augeas-${PV}"

inherit ruby

DEPENDS += " \
        ruby \
        augeas \
"

RDEPENDS_${PN} += " \
        ruby \
   "

RUBY_INSTALL_GEMS = "ruby-augeas-${PV}.gem"

do_compile_prepend() {
   cp ${S}/ext/augeas/extconf.rb ${S}
}

I have also installed the ruby class cross compile patch:
https://lists.yoctoproject.org/pipermail/meta-virtualization/2016-January/001685.html
This patch looks for the extconf.rb file in the root directory, hence
the do_compile_prepend in the recipe.

Thanks in advance

