Return-Path: <b.hutchman@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 794A4E00348
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 13:47:06 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id h2so1030777oag.35
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 13:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=sYaWbz8MQsdX+KeKIWvEDwi8LzeB/P2XhSyzINgHcZI=;
	b=dFFCYQhxZSEeo1wkO8Bm68flZuFqjEhA0+Y5pvUPLoVG6WuEHx2jr7FBS1Qd1zaAWQ
	n14yOVfTAyyWCqlVMwbvf8ELmUG24HPnyf5IEraQhJtMS12RJ/0LgVhjTs4reSdfSjCw
	mnMKx2kr5xsbkXlf8KfTtDjR+k58AZty2qEurCpnpRDwAChuF/Yv7w6xsy/DCw81VwlO
	OXtslz3ZzqFqe0+Qhznhrp5+dn71uRRLMFIPDnye1Sq1ymF4mKP7iJNKqkkvsEPjh3ad
	ruOrzWyFJ3Zw2aU52jjmwydwkZJXrZN/jPz5VWzkp0N/Et8UvmTm66JyOTKKssE1rNgP
	5UFw==
MIME-Version: 1.0
Received: by 10.60.13.198 with SMTP id j6mr2559651oec.51.1350679625959; Fri,
	19 Oct 2012 13:47:05 -0700 (PDT)
Received: by 10.76.22.198 with HTTP; Fri, 19 Oct 2012 13:47:05 -0700 (PDT)
In-Reply-To: <CAFZh4h_OQBiRAYWbeXuLV6m0wLeohb2rD4NZe+MgfDgqAwXmvw@mail.gmail.com>
References: <CAFZh4h_OQBiRAYWbeXuLV6m0wLeohb2rD4NZe+MgfDgqAwXmvw@mail.gmail.com>
Date: Fri, 19 Oct 2012 16:47:05 -0400
Message-ID: <CAFZh4h-K7Jjmbzy-kx_XauZtGB-xwinUzL8GWJCQ9uqmxWhLJw@mail.gmail.com>
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
X-List-Received-Date: Fri, 19 Oct 2012 20:47:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Here is more context for the curious:

NOTE: package gnome-doc-utils-0.20.6-r5: task do_compile: Started
ERROR: Function 'do_compile' failed (see
/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20=
.6-r5/temp/log.do_compile.13516
for further information)
ERROR: Logfile of failure stored in:
/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20=
.6-r5/temp/log.do_compile.13516
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
'common-linux', 'common-glibc', 'i586-linux', 'common']
| NOTE: make -j 4 GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=3D1
| Making all in data
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data'
| Making all in icons
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons'
| Making all in hicolor
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor'
| Making all in 48x48
| make[4]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/48x48'
| Making all in status
| make[5]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/48x48/status'
| make[5]: Nothing to be done for `all'.
| make[5]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/48x48/status'
| make[5]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/48x48'
| make[5]: Nothing to be done for `all-am'.
| make[5]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/48x48'
| make[4]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/48x48'
| Making all in scalable
| make[4]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/scalable'
| Making all in status
| make[5]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/scalable/status'
| make[5]: Nothing to be done for `all'.
| make[5]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/scalable/status'
| make[5]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/scalable'
| make[5]: Nothing to be done for `all-am'.
| make[5]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/scalable'
| make[4]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor/scalable'
| make[4]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor'
| make[4]: Nothing to be done for `all-am'.
| make[4]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor'
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons/hicolor'
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons'
| make[3]: Nothing to be done for `all-am'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons'
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/icons'
| Making all in templates
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/templates'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/templates'
| Making all in watermarks
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/watermarks'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data/watermarks'
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data'
| make[2]: Nothing to be done for `all-am'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data'
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/data'
| Making all in po
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/po'
| make[1]: Nothing to be done for `all'.
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/po'
| Making all in rng
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/rng'
| Making all in mallard
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/rng/mallard'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/rng/mallard'
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/rng'
| make[2]: Nothing to be done for `all-am'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/rng'
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/rng'
| Making all in xslt
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt'
| Making all in gettext
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/gettext'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/gettext'
| Making all in docbook
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/docbook'
| Making all in common
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/common'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/common'
| Making all in html
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/html'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/html'
| Making all in omf
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/omf'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/omf'
| Making all in utils
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/utils'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/docbook/utils'
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/docbook'
| make[3]: Nothing to be done for `all-am'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/docbook'
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/docbook'
| Making all in mallard
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/mallard'
| Making all in cache
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/mallard/cache'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/mallard/cache'
| Making all in common
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/mallard/common'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/mallard/common'
| Making all in html
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/mallard/html'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/mallard/html'
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/mallard'
| make[3]: Nothing to be done for `all-am'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/mallard'
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/mallard'
| Making all in common
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/common'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt/common'
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt'
| make[2]: Nothing to be done for `all-am'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt'
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xslt'
| Making all in tools
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/tools'
| make[1]: Nothing to be done for `all'.
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/tools'
| Making all in xml2po
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xml2po'
| Making all in xml2po
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xml2po/xml2po'
| Making all in modes
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xml2po/xml2po/modes'
| make[3]: Nothing to be done for `all'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xml2po/xml2po/modes'
| make[3]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xml2po/xml2po'
| make[3]: Nothing to be done for `all-am'.
| make[3]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xml2po/xml2po'
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xml2po/xml2po'
| Making all in examples
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xml2po/examples'
| make[2]: Nothing to be done for `all'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xml2po/examples'
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xml2po'
| make[2]: Nothing to be done for `all-am'.
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xml2po'
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/xml2po'
| Making all in doc
| make[1]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/doc'
| Making all in gnome-doc-make
| make[2]: Entering directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make'
| if ! test -d de/; then mkdir de/; fi
| if [ -f "C/gnome-doc-make.xml" ]; then d=3D"../"; else
d=3D"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils=
-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/";
fi; \
|       mo=3D"de/de.mo"; \
|       if [ -f "${mo}" ]; then mo=3D"../${mo}"; else
mo=3D"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-util=
s-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/${mo}";
fi; \
|       (cd de/ && \
|         PYTHONPATH=3D"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-li=
nux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/../=
../xml2po:/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-=
utils-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/../../xml2po:"
"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/../../xml2po/xml2po/xml2po=
"
-m docbook -e -t "${mo}" \
|           "${d}C/gnome-doc-make.xml" > gnome-doc-make.xml.tmp && \
|           cp gnome-doc-make.xml.tmp gnome-doc-make.xml && rm -f
gnome-doc-make.xml.tmp)
| if ! test -d de/; then mkdir de/; fi
| if [ -f "C/legal.xml" ]; then d=3D"../"; else
d=3D"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils=
-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/";
fi; \
|       mo=3D"de/de.mo"; \
|       if [ -f "${mo}" ]; then mo=3D"../${mo}"; else
mo=3D"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-util=
s-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/${mo}";
fi; \
|       (cd de/ && \
|         PYTHONPATH=3D"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-li=
nux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/../=
../xml2po:/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-=
utils-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/../../xml2po:"
"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/../../xml2po/xml2po/xml2po=
"
-m docbook -e -t "${mo}" \
|           "${d}C/legal.xml" > legal.xml.tmp && \
|           cp legal.xml.tmp legal.xml && rm -f legal.xml.tmp)
| if ! test -d de/; then mkdir de/; fi
| if [ -f "C/make-ref.xml" ]; then d=3D"../"; else
d=3D"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils=
-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/";
fi; \
|       mo=3D"de/de.mo"; \
|       if [ -f "${mo}" ]; then mo=3D"../${mo}"; else
mo=3D"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-util=
s-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/${mo}";
fi; \
|       (cd de/ && \
|         PYTHONPATH=3D"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-li=
nux/gnome-doc-utils-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/../=
../xml2po:/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-=
utils-0.20.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/../../xml2po:"
"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/../../xml2po/xml2po/xml2po=
"
-m docbook -e -t "${mo}" \
|           "${d}C/make-ref.xml" > make-ref.xml.tmp && \
|           cp make-ref.xml.tmp make-ref.xml && rm -f make-ref.xml.tmp)
| xsltproc -nonet -o gnome-doc-make-C.omf --stringparam
db2omf.basename gnome-doc-make --stringparam db2omf.format 'docbook'
--stringparam db2omf.dtd  --stringparam db2omf.lang C --stringparam
db2omf.omf_dir "/usr/share/omf" --stringparam db2omf.help_dir
"/usr/share/gnome/help" --stringparam db2omf.omf_in
"/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make/gnome-doc-make.omf.in"
 ../../xslt/docbook/omf/db2omf.xsl C/gnome-doc-make.xml || { rm -f
"gnome-doc-make-C.omf"; exit 1; }
| warning: failed to load external entity "db2omf.lang"
| cannot parse db2omf.lang
| make[2]: *** [gnome-doc-make-C.omf] Error 1
| make[2]: *** Waiting for unfinished jobs....
| make[2]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/doc/gnome-doc-make'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.2=
0.6-r5/gnome-doc-utils-0.20.6/doc'
| make: *** [all-recursive] Error 1
| ERROR: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/hutch/ion-u/yocto/build/tmp/work/i586-poky-linux/gnome-doc-utils-0.20=
.6-r5/temp/log.do_compile.13516
for further information)
NOTE: package gnome-doc-utils-0.20.6-r5: task do_compile: Failed
NOTE: package sysvinit-2.88dsf-r5: task do_populate_sysroot: Started
NOTE: package bluez-hcidump-2.1-r0: task do_populate_sysroot: Started
NOTE: package liberation-fonts-1_1.04-r1: task do_populate_sysroot: Started
NOTE: package update-rc.d-0.7-r4: task do_populate_sysroot: Started
ERROR: Task 1796
(/home/hutch/ion-u/yocto/build/../poky-edison-6.0/meta/recipes-gnome/gnome/=
gnome-doc-utils_0.20.6.bb,
do_compile) failed with exit code '1'
Waiting for 4 active tasks to finish:
0: sysvinit-2.88dsf-r5 do_populate_sysroot (pid 13689)
1: bluez-hcidump-2.1-r0 do_populate_sysroot (pid 13690)
2: liberation-fonts-1_1.04-r1 do_populate_sysroot (pid 13691)
3: update-rc.d-0.7-r4 do_populate_sysroot (pid 13692)
Waiting for 3 active tasks to finish:
0: sysvinit-2.88dsf-r5 do_populate_sysroot (pid 13689)
1: liberation-fonts-1_1.04-r1 do_populate_sysroot (pid 13691)
2: update-rc.d-0.7-r4 do_populate_sysroot (pid 13692)
NOTE: package bluez-hcidump-2.1-r0: task do_populate_sysroot: Succeeded
Waiting for 2 active tasks to finish:
0: sysvinit-2.88dsf-r5 do_populate_sysroot (pid 13689)
1: liberation-fonts-1_1.04-r1 do_populate_sysroot (pid 13691)
NOTE: package update-rc.d-0.7-r4: task do_populate_sysroot: Succeeded
Waiting for 3 active tasks to finish:
0: sysvinit-2.88dsf-r5 do_populate_sysroot (pid 13689)
1: liberation-fonts-1_1.04-r1 do_populate_sysroot (pid 13691)
2: valgrind-3.6.1-r1 do_populate_sysroot (pid 13697)
NOTE: package valgrind-3.6.1-r1: task do_populate_sysroot: Started
Waiting for 4 active tasks to finish:
0: sysvinit-2.88dsf-r5 do_populate_sysroot (pid 13689)
1: liberation-fonts-1_1.04-r1 do_populate_sysroot (pid 13691)
2: telepathy-mission-control-5.7.9-r0 do_populate_sysroot (pid 13699)
3: valgrind-3.6.1-r1 do_populate_sysroot (pid 13697)
NOTE: package telepathy-mission-control-5.7.9-r0: task
do_populate_sysroot: Started
Waiting for 5 active tasks to finish:
0: sysvinit-2.88dsf-r5 do_populate_sysroot (pid 13689)
1: telepathy-python-0.15.19-r3 do_populate_sysroot (pid 13698)
2: liberation-fonts-1_1.04-r1 do_populate_sysroot (pid 13691)
3: telepathy-mission-control-5.7.9-r0 do_populate_sysroot (pid 13699)
4: valgrind-3.6.1-r1 do_populate_sysroot (pid 13697)
NOTE: package telepathy-python-0.15.19-r3: task do_populate_sysroot: Starte=
d
Waiting for 4 active tasks to finish:
0: telepathy-python-0.15.19-r3 do_populate_sysroot (pid 13698)
1: liberation-fonts-1_1.04-r1 do_populate_sysroot (pid 13691)
2: telepathy-mission-control-5.7.9-r0 do_populate_sysroot (pid 13699)
3: valgrind-3.6.1-r1 do_populate_sysroot (pid 13697)
NOTE: package sysvinit-2.88dsf-r5: task do_populate_sysroot: Succeeded
Waiting for 3 active tasks to finish:
0: telepathy-python-0.15.19-r3 do_populate_sysroot (pid 13698)
1: telepathy-mission-control-5.7.9-r0 do_populate_sysroot (pid 13699)
2: valgrind-3.6.1-r1 do_populate_sysroot (pid 13697)
NOTE: package liberation-fonts-1_1.04-r1: task do_populate_sysroot: Succeed=
ed
Waiting for 2 active tasks to finish:
0: telepathy-mission-control-5.7.9-r0 do_populate_sysroot (pid 13699)
1: valgrind-3.6.1-r1 do_populate_sysroot (pid 13697)
NOTE: package telepathy-python-0.15.19-r3: task do_populate_sysroot: Succee=
ded
Waiting for 1 active tasks to finish:
0: valgrind-3.6.1-r1 do_populate_sysroot (pid 13697)
NOTE: package telepathy-mission-control-5.7.9-r0: task
do_populate_sysroot: Succeeded
NOTE: package valgrind-3.6.1-r1: task do_populate_sysroot: Succeeded
ERROR: '/home/hutch/ion-u/yocto/build/../poky-edison-6.0/meta/recipes-gnome=
/gnome/gnome-doc-utils_0.20.6.bb'
failed

