Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE8FCE0084D; Fri, 12 Dec 2014 11:54:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CEE6E002A6
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 11:53:59 -0800 (PST)
Received: by mail-pd0-f176.google.com with SMTP id r10so5748375pdi.7
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 11:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=58/U+tp+ucGyawplMSdhwnEvFIPsVdNnxklpfMIDwAg=;
	b=c+mzXEAWK/iMJ73Zp0Tx8DQvJak27rwPyOdnCQ+M2w9zii+8D5NYVGoly3+7/NGX3N
	DRx3A53jpf7mKrmLqvRMlW0dpdW0ZiaXOAuNdbjrSWg7Zk4d7YAuF/QI4JgiFeIdENow
	JDi0PFlbvLGqmy/l3hssTWiH124FdnLIdWhA/mlrK3F7IDVbjMWY3sHSQNUjFNwEpG2e
	M9CvDqkfVSujrYYQvTsLM3DaRt6LecXQh2woEYfNZrHMttJhGI1DAi6BM0X2JbI7oKVN
	1bp9VxMn/fOy3UiWEcO737Uh+EQI7ytJMTjPzPO7IWn4NXllIEACqdWgQFKRHRO8zn7T
	bsOA==
X-Received: by 10.68.174.161 with SMTP id bt1mr29850924pbc.28.1418414039418;
	Fri, 12 Dec 2014 11:53:59 -0800 (PST)
Received: from ?IPv6:2601:c:9380:601:bc85:f27a:33c6:7194?
	([2601:c:9380:601:bc85:f27a:33c6:7194])
	by mx.google.com with ESMTPSA id fn7sm2263246pad.38.2014.12.12.11.53.57
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 12 Dec 2014 11:53:58 -0800 (PST)
Message-ID: <548B47D4.5010109@gmail.com>
Date: Fri, 12 Dec 2014 11:53:56 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>, 
	Joe MacDonald <Joe_MacDonald@mentor.com>,
	Li xin <lixin.fnst@cn.fujitsu.com>
References: <20141211004713.GC4102@mentor.com>
	<1077253035.5058800.1418282511482.JavaMail.yahoo@jws10079.mail.ne1.yahoo.com>
	<745801400.5088417.1418284290520.JavaMail.yahoo@jws100150.mail.ne1.yahoo.com>
In-Reply-To: <745801400.5088417.1418284290520.JavaMail.yahoo@jws100150.mail.ne1.yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH] samhain: add new recipe
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
X-List-Received-Date: Fri, 12 Dec 2014 19:54:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks for the updates. I jut got back from vacation and will look into 
the changes soon.

- Armin

On 12/10/2014 11:51 PM, Alexandru Vaduva wrote:
> Now I did. :D
>
>
> On Thursday, December 11, 2014 9:21 AM, Alexandru Vaduva
> <vaduvajanalexandru@yahoo.com> wrote:
>
>
> Thanks Joe,
>
> I added Armin for to this discussion as a head-up regarding those
> updates, since it was the one working on samhain recipe on meta-security.
>
>
> Alex Vaduva
>
>
> On Thursday, December 11, 2014 2:48 AM, Joe MacDonald
> <Joe_MacDonald@mentor.com> wrote:
>
>
> [[yocto] [meta-cgl][PATCH] samhain: add new recipe] On 14.12.10 (Wed
> 16:33) Li xin wrote:
>
>  > Samhain is an open source file integrity and intrusion detection
>  > system for Unix that uses cryptographic checksums of files to
>  > detect modifications, and allows you to trace: what changes have
>  > occured in your system, when these changes have occured, and who
>  > was logged into the system at the respective time.
>
> Samhain is already in meta-security at the same version (though without
> the patch you've included here.)
>
> Since meta-cgl depends on meta-security today, I think you probably
> should submit whatever updates are appropriate to the samhain recipe
> to meta-security, so as to avoid duplicating / diverging recipes.
>
> -J.
>
>
>  >
>  > Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com
> <mailto:lixin.fnst@cn.fujitsu.com>>
>  > ---
>  >  .../samhain/0001-Makefile.in-error-fix.patch      | 31 ++++++++++++
>  >  .../samhain/samhain/config-site.samhain-3.1.3      |  2 +
>  >  .../recipes-cgl/samhain/samhain_3.1.3.bb          | 58
> ++++++++++++++++++++++
>  >  3 files changed, 91 insertions(+)
>  >  create mode 100644
> meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch
>  >  create mode 100644
> meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3
>  >  create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
>  >
>  > diff --git
> a/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch
> b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch
>  > new file mode 100644
>  > index 0000000..cd646f6
>  > --- /dev/null
>  > +++
> b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch
>  > @@ -0,0 +1,31 @@
>  > +From a9ce38c56bf7072f292d685a48b912e6e59260a6 Mon Sep 17 00:00:00 2001
>  > +From: Li xin <lixin.fnst@cn.fujitsu.com
> <mailto:lixin.fnst@cn.fujitsu.com>>
>  > +Date: Wed, 10 Dec 2014 14:45:28 +0900
>  > +Subject: [PATCH] Makefile.in: error fix
>  > +
>  > +error:File '/usr/sbin/samhain' from samhain was already stripped,
>  > +this will prevent future debugging!
>  > +
>  > +Upstream-Status: pending
>  > +
>  > +Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com
> <mailto:lixin.fnst@cn.fujitsu.com>>
>  > +---
>  > + Makefile.in | 2 +-
>  > + 1 file changed, 1 insertion(+), 1 deletion(-)
>  > +
>  > +diff --git a/Makefile.in b/Makefile.in
>  > +index b1904d9..000de49 100644
>  > +--- a/Makefile.in
>  > ++++ b/Makefile.in
>  > +@@ -54,7 +54,7 @@ selectconfig = @selectconfig@
>  > + top_builddir = .
>  > +
>  > + INSTALL = @INSTALL@
>  > +-INSTALL_PROGRAM = @INSTALL@ -s -m 700
>  > ++INSTALL_PROGRAM = @INSTALL@ -m 700
>  > + INSTALL_SHELL = @INSTALL@ -m 700
>  > + INSTALL_DATA = @INSTALL@ -m 600
>  > + INSTALL_MAN = @INSTALL@ -m 644
>  > +--
>  > +1.8.4.2
>  > +
>  > diff --git
> a/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3
> b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3
>  > new file mode 100644
>  > index 0000000..2ce3769
>  > --- /dev/null
>  > +++
> b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3
>  > @@ -0,0 +1,2 @@
>  > +ssp_cv_lib=no
>  > +sh_cv_va_copy=yes
>  > diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
> b/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
>  > new file mode 100644
>  > index 0000000..22c8577
>  > --- /dev/null
>  > +++ b/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
>  > @@ -0,0 +1,58 @@
>  > +SUMMARY = "File Integrity and Intrusion Detection System"
>  > +DESCRIPTION = "Samhain is an open source file integrity and
> intrusion detection \
>  > +system for Unix that uses cryptographic checksums of files to \
>  > +detect modifications, and allows you to trace: what changes have \
>  > +occured in your system, when these changes have occured, and who \
>  > +was logged into the system at the respective time."
>  > +
>  > +HOMEPAGE = "http://la-samhna.de/samhain/"
>  > +SECTION = "Filesystem"
>  > +
>  > +SRC_URI =
> "http://la-samhna.de/samhain/samhain-current.tar.gz;extract=samhain-3.1.3.tar.gz
> <http://la-samhna.de/samhain/samhain-current.tar.gz;extract=samhain-3.1.3.tar.gz>\
>  > +  file://0001-Makefile.in-error-fix.patch"
>  > +SRC_URI[md5sum] = "64572a4dbfdc8065d6e9f7ca0eab0a34"
>  > +SRC_URI[sha256sum] =
> "c234afaf9ba3c6b7d240858b74423f935185de66e996405b3016ec4a288a7e1e"
>  > +LICENSE = "GPLv2"
>  > +LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
>  > +
>  > +DEPENDS = "libpthread-stubs acl zlib attr"
>  > +inherit autotools-brokensep pkgconfig
>  > +
>  > +do_unpack2() {
>  > +    cd ${WORKDIR}
>  > +    tar zxvf ${PN}-${PV}.tar.gz
>  > +}
>  > +
>  > +S = "${WORKDIR}/${BP}"
>  > +
>  > +addtask unpack2 after do_unpack before do_patch
>  > +do_configure() {
>  > +    export CONFIG_SITE=./config-site.${BP}
>  > +    ./configure \
>  > +        --host=${HOST_SYS} \
>  > +        --build=${BUILD_SYS} \
>  > +        --prefix=${prefix} \
>  > +        --sbindir=${sbindir} \
>  > +        --mandir=${mandir} \
>  > +        --sysconfdir=${sysconfdir} \
>  > +        --localstatedir=${localstatedir} \
>  > +        --with-config-file=/etc/samhain/samhainrc \
>  > +        --with-state-dir=/var/samhain \
>  > +        --with-html-file=/var/samhain/samhain.html \
>  > +        --with-data-file=/var/samhain/samhain.data \
>  > +        --with-pid-file=/var/samhain/samhain.pid \
>  > +        --with-log-file=/var/samhain/samhain.log \
>  > +        --enable-login-watch \
>  > +        --disable-khide \
>  > +        --enable-suidcheck \
>  > +        --with-trusted=0
>  > +}
>  > +
>  > +do_install() {
>  > +    install -d -m 755 ${D}/var/samhain
>  > +    install -d  ${D}/${mandir}
>  > +    oe_runmake DESTDIR=${D} install-program install-man install-data
>  > +    chmod -R a+r ${D}/${mandir}
>  > +    install -d ${D}/etc/samhain
>  > +    install -c -m 644  samhainrc.linux ${D}/etc/samhain/samhainrc
>  > +}
>  > --
>  > 1.8.4.2
>
>  >
> --
> -Joe MacDonald.
> :wq
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>

