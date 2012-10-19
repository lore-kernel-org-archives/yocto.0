Return-Path: <b.hutchman@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B668E00348
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 14:00:04 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id x4so1032218obh.35
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 13:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=503T4Oh3ciN+JJoEQrhZNHzCCMEXrvDi63gpZZqnkmc=;
	b=MeQxg6YNR95MeH0YWCTIN2inUjLtpLs9fQzG9mTqUhT2Btbr4VQVNnmvMXQaaaxj9O
	8JyhCrzw1N50g+u6tXa7jH67purrVZoJ3R7Nx3dZUGKoEVa1YgeF65RLaK2S0HD1sk//
	yVxczJurQ75w9lXAeZNLsq+PwcWy4TOGj06L0h+qSprvJ6z4+znMgFmD2GBPp3Dsa+51
	hNUQE0hIE9JxN9spFJxXRXji4CeFTNqRYQOrxdyOIOv9kX2NzLnvLJUd5o5OreDHG3Nl
	B/TMHzHpmly80HapZtf82JmmoNPCXCpqpiGZo+1CitIeFALtMnVout6P+NT0iHjBri7j
	dOww==
MIME-Version: 1.0
Received: by 10.60.6.33 with SMTP id x1mr2638585oex.78.1350680399303; Fri, 19
	Oct 2012 13:59:59 -0700 (PDT)
Received: by 10.76.22.198 with HTTP; Fri, 19 Oct 2012 13:59:59 -0700 (PDT)
In-Reply-To: <CAFZh4h-K7Jjmbzy-kx_XauZtGB-xwinUzL8GWJCQ9uqmxWhLJw@mail.gmail.com>
References: <CAFZh4h_OQBiRAYWbeXuLV6m0wLeohb2rD4NZe+MgfDgqAwXmvw@mail.gmail.com>
	<CAFZh4h-K7Jjmbzy-kx_XauZtGB-xwinUzL8GWJCQ9uqmxWhLJw@mail.gmail.com>
Date: Fri, 19 Oct 2012 16:59:59 -0400
Message-ID: <CAFZh4h9extb4N7544sOKxkAe_osQuFryWUUMKN_x9SPYhJbJPg@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Building meta-toolchain-sdk fails on some strange cannot parse db2omf.lang stuff
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Oct 2012 21:00:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

OK, I killed my shell somehow so I kicked off the build again in a
fresh new shell and got a slightly different failure (look like a
segfault this time) but still on gnome-doc-utils:

NOTE: Running task 2539 of 3592 (ID: 1796,
/home/hutch/ion-u/yocto/build/../poky-edison-6.0/meta/recipes-gnome/gnome/gnome-doc-utils_0.20.6.bb,
do_compile)
NOTE: package gnome-doc-utils-0.20.6-r5: task do_compile: Started
ERROR: Function 'do_compile' failed (see
/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/temp/log.do_compile.15190
for further information)
ERROR: Logfile of failure stored in:
/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/temp/log.do_compile.15190
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
'common-linux', 'common-glibc', 'i586-linux', 'common']
| NOTE: make GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1
| Making all in data
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data'
| Making all in icons
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons'
| Making all in hicolor
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor'
| Making all in 48x48
| make[4]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/48x48'
| Making all in status
| make[5]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/48x48/status'
| make[5]: Nothing to be done for `all'.
| make[5]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/48x48/status'
| make[5]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/48x48'
| make[5]: Nothing to be done for `all-am'.
| make[5]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/48x48'
| make[4]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/48x48'
| Making all in scalable
| make[4]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/scalable'
| Making all in status
| make[5]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/scalable/status'
| make[5]: Nothing to be done for `all'.
| make[5]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/scalable/status'
| make[5]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/scalable'
| make[5]: Nothing to be done for `all-am'.
| make[5]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/scalable'
| make[4]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/scalable'
| make[4]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor'
| make[4]: Nothing to be done for `all-am'.
| make[4]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor'
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor'
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons'
| make[3]: Nothing to be done for `all-am'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons'
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/icons'
| Making all in templates
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/templates'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/templates'
| Making all in watermarks
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/watermarks'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data/watermarks'
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data'
| make[2]: Nothing to be done for `all-am'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data'
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/data'
| Making all in po
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/po'
| make[1]: Nothing to be done for `all'.
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/po'
| Making all in rng
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/rng'
| Making all in mallard
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/rng/mallard'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/rng/mallard'
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/rng'
| make[2]: Nothing to be done for `all-am'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/rng'
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/rng'
| Making all in xslt
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt'
| Making all in gettext
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/gettext'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/gettext'
| Making all in docbook
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/docbook'
| Making all in common
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/common'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/common'
| Making all in html
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/html'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/html'
| Making all in omf
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/omf'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/omf'
| Making all in utils
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/utils'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/utils'
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/docbook'
| make[3]: Nothing to be done for `all-am'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/docbook'
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/docbook'
| Making all in mallard
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/mallard'
| Making all in cache
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/mallard/cache'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/mallard/cache'
| Making all in common
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/mallard/common'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/mallard/common'
| Making all in html
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/mallard/html'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/mallard/html'
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/mallard'
| make[3]: Nothing to be done for `all-am'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/mallard'
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/mallard'
| Making all in common
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/common'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt/common'
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt'
| make[2]: Nothing to be done for `all-am'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt'
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xslt'
| Making all in tools
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/tools'
| make[1]: Nothing to be done for `all'.
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/tools'
| Making all in xml2po
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xml2po'
| Making all in xml2po
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xml2po/xml2po'
| Making all in modes
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xml2po/xml2po/modes'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xml2po/xml2po/modes'
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xml2po/xml2po'
| make[3]: Nothing to be done for `all-am'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xml2po/xml2po'
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xml2po/xml2po'
| Making all in examples
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xml2po/examples'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xml2po/examples'
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xml2po'
| make[2]: Nothing to be done for `all-am'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xml2po'
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/xml2po'
| Making all in doc
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/doc'
| Making all in gnome-doc-make
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make'
| xsltproc -nonet -o gnome-doc-make-C.omf --stringparam
db2omf.basename gnome-doc-make --stringparam db2omf.format 'docbook'
--stringparam db2omf.dtd "-//OASIS//DTD DocBook XML V4.4//EN"
--stringparam db2omf.lang C --stringparam db2omf.omf_dir
"/usr/share/omf" --stringparam db2omf.help_dir "/usr/share/gnome/help"
--stringparam db2omf.omf_in
"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/gnome-doc-make.omf.in"
 ../../xslt/docbook/omf/db2omf.xsl C/gnome-doc-make.xml || { rm -f
"gnome-doc-make-C.omf"; exit 1; }
| /bin/sh: line 1: 15337 Segmentation fault      xsltproc -nonet -o
gnome-doc-make-C.omf --stringparam db2omf.basename gnome-doc-make
--stringparam db2omf.format 'docbook' --stringparam db2omf.dtd
"-//OASIS//DTD DocBook XML V4.4//EN" --stringparam db2omf.lang C
--stringparam db2omf.omf_dir "/usr/share/omf" --stringparam
db2omf.help_dir "/usr/share/gnome/help" --stringparam db2omf.omf_in
"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/gnome-doc-make.omf.in"
../../xslt/docbook/omf/db2omf.xsl C/gnome-doc-make.xml
| make[2]: *** [gnome-doc-make-C.omf] Error 1
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/doc'
| make: *** [all-recursive] Error 1
| ERROR: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20.6-r5/temp/log.do_compile.15190
for further information)
NOTE: package gnome-doc-utils-0.20.6-r5: task do_compile: Failed
ERROR: Task 1796
(/home/hutch/ion-u/yocto/build/../poky-edison-6.0/meta/recipes-gnome/gnome/gnome-doc-utils_0.20.6.bb,
do_compile) failed with exit code '1'
ERROR: '/home/hutch/ion-u/yocto/build/../poky-edison-6.0/meta/recipes-gnome/gnome/gnome-doc-utils_0.20.6.bb'
failed

