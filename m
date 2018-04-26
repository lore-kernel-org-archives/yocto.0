Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CFF4E00BAD; Wed, 25 Apr 2018 21:07:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86FF8E00B28
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 21:07:51 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id x12so6889009wmc.0
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 21:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=YurOVOSHMVAax/WlHom9yVRIp5NDL1cQhRLyHnDVtCY=;
	b=VlPxEqTi/1j7qbuE1MX2o1dXqsjjsPfp1eD0IArqtNaiGTSCJaUGkuWakacuSVzFJI
	skQnyBtjKyrXx1vt2tdXgPY8fWyOKzNsfkuuORYY5U7+Jt9wpsPiL5a4hXySroRNGjug
	dmiBccd5SHEkBpn0aHrQgt/QQfYbS4WNZ3G2iw4I0ij3Uslt4WzX474YSktEYg2D1us4
	kacDgcy45y0CYzjzemqaHt900FvhaKXju/t2kllewOhRMneFA7/M7Ee1oUL70tJYXyMl
	0fNR9XWR8QEG/8BimHROds8rgYp/nSfbLAQ2TtN1Y2IDlIqELedzh0XFEB4JeOet426x
	ZGHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=YurOVOSHMVAax/WlHom9yVRIp5NDL1cQhRLyHnDVtCY=;
	b=Kt9iftU9xsncjl5ArX+CiIq3RqfISaZ8hbxNcl+0nr3z1OQ0SXodlwzLo97LPXe/9I
	kCvvehqDfSLzX2jF4IPXdxWbxTPoNp/3nMFIhbohDpmycd+cphUSVxJa5glKZLHZ5rbM
	gX9Z06jEf5cEK+UqunClSmV8Oe88CoCKBpmUQPDzuMy6mS+AV53gmKyC09pQy4Pdubv7
	4OJjxz2+l00mtuajCTalpnEAhfBvUEY27s0KZ8F+t8+MILhdHVma3JB6Hs21OzP6thry
	/nOUHO//QcLZKKgzYh3Zluq5tUkCQ6+dXWbPhLgVtSxdUfEBNP0asx9V8aVt0B++UbWn
	KiVA==
X-Gm-Message-State: ALQs6tBgykuhZzzeWmCtT+MtOIZB889mUfbEdt31gEQYEDCunOPcZY3K
	415YpOkPOvDex4FzAe1kHLGnnUKl7ifrwXqKwOtcPw==
X-Google-Smtp-Source: AIpwx497Ptm/m25WHO5Wq3oHr/KcWtpyvyuwukliOXvKOgEJXewFPl0elbqHq6Ygth/NFMWuzKcNWTrJgkuBnlkjrPI=
X-Received: by 10.28.53.194 with SMTP id c185mr17799978wma.27.1524715670927;
	Wed, 25 Apr 2018 21:07:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.229.210 with HTTP; Wed, 25 Apr 2018 21:07:50 -0700 (PDT)
In-Reply-To: <20180425150333.GA9349@graute-opti>
References: <20180425150333.GA9349@graute-opti>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 25 Apr 2018 21:07:50 -0700
Message-ID: <CAJ86T=VSrF4P6-CCTQFJa20i+qgwQby1to4haFd88UMZaghmtQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: yocto jethro failed on gettext-native
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
X-List-Received-Date: Thu, 26 Apr 2018 04:07:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 25, 2018 at 8:03 AM, Oliver Graute <oliver.graute@gmail.com> wr=
ote:
> Hello list,
>
> I try to compile yocto jethro environment which is working
> on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04.
>
> The compilations stops on gettext-native.
>
> bitbake -k fsl-image-mfgtool-initramfs
>
>  make[5]: Entering directory '/home/us/build-imx6ulevk-mfgtool/tmp/work/x=
86_64-linux/gettext-native/0.19.4-r0/build/gettext-tools/src'
> | ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dlink gcc   -isystem/home=
/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/include -O2 -pipe=
 -release 0.19.4 ../gnulib-lib/libgettextlib.la  -lc -no-undefined  -L/home=
/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/lib -L/home/us/bu=
ild-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/lib -Wl,-rpath-link,/home/u=
s/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link=
,/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/lib -Wl,-rpath,=
/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpa=
th,/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/lib -Wl,-O1 -=
o libgettextsrc.la -rpath /home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86=
_64-linux/usr/lib libgettextsrc_la-message.lo libgettextsrc_la-po-error.lo =
libgettextsrc_la-po-xerror.lo libgettextsrc_la-read-catalog-abstract.lo lib=
gettextsrc_la-po-lex.lo libgettextsrc_la-po-gram-gen.lo libgettextsrc_la-po=
-charset.lo libgettex
>  tsrc_la-read-po.lo libgettextsrc_la-read-properties.lo libgettextsrc_la-=
read-stringtable.lo libgettextsrc_la-open-catalog.lo libgettextsrc_la-dir-l=
ist.lo libgettextsrc_la-str-list.lo libgettextsrc_la-read-catalog.lo libget=
textsrc_la-color.lo libgettextsrc_la-write-catalog.lo libgettextsrc_la-writ=
e-properties.lo libgettextsrc_la-write-stringtable.lo libgettextsrc_la-writ=
e-po.lo libgettextsrc_la-msgl-ascii.lo libgettextsrc_la-msgl-iconv.lo libge=
ttextsrc_la-msgl-equal.lo libgettextsrc_la-msgl-cat.lo libgettextsrc_la-msg=
l-header.lo libgettextsrc_la-msgl-english.lo libgettextsrc_la-msgl-check.lo=
 libgettextsrc_la-file-list.lo libgettextsrc_la-msgl-charset.lo libgettexts=
rc_la-po-time.lo libgettextsrc_la-plural-exp.lo libgettextsrc_la-plural-eva=
l.lo libgettextsrc_la-plural-table.lo libgettextsrc_la-format.lo libgettext=
src_la-format-c.lo libgettextsrc_la-format-sh.lo libgettextsrc_la-format-py=
thon.lo libgettextsrc_la-format-python-brace.lo libgettextsrc_la-format-lis=
p.lo libgettextsr
>  c_la-format-elisp.lo libgettextsrc_la-format-librep.lo libgettextsrc_la-=
format-scheme.lo libgettextsrc_la-format-java.lo libgettextsrc_la-format-cs=
harp.lo libgettextsrc_la-format-awk.lo libgettextsrc_la-format-pascal.lo li=
bgettextsrc_la-format-ycp.lo libgettextsrc_la-format-tcl.lo libgettextsrc_l=
a-format-perl.lo libgettextsrc_la-format-perl-brace.lo libgettextsrc_la-for=
mat-php.lo libgettextsrc_la-format-gcc-internal.lo libgettextsrc_la-format-=
gfc-internal.lo libgettextsrc_la-format-qt.lo libgettextsrc_la-format-qt-pl=
ural.lo libgettextsrc_la-format-kde.lo libgettextsrc_la-format-boost.lo lib=
gettextsrc_la-format-lua.lo libgettextsrc_la-format-javascript.lo libgettex=
tsrc_la-read-desktop.lo
> | x86_64-linux-libtool:   error: 'libgettextsrc_la-message.lo' is not a v=
alid libtool object

libgettextsrc_la-message.lo should be a short text file. Could you
find it in your build tree and post a copy?

> | Makefile:2285: recipe for target 'libgettextsrc.la' failed
> | make[5]: *** [libgettextsrc.la] Error 1
> | make[5]: Leaving directory '/home/us/build-imx6ulevk-mfgtool/tmp/work/x=
86_64-linux/gettext-native/0.19.4-r0/build/gettext-tools/src'
> | Makefile:2206: recipe for target 'all' failed
> | make[4]: *** [all] Error 2
> | make[4]: Leaving directory '/home/us/build-imx6ulevk-mfgtool/tmp/work/x=
86_64-linux/gettext-native/0.19.4-r0/build/gettext-tools/src'
> | Makefile:1698: recipe for target 'all-recursive' failed
> | make[3]: *** [all-recursive] Error 1
> | make[3]: Leaving directory '/home/us/build-imx6ulevk-mfgtool/tmp/work/x=
86_64-linux/gettext-native/0.19.4-r0/build/gettext-tools'
> | Makefile:1564: recipe for target 'all' failed
> | make[2]: *** [all] Error 2
> | make[2]: Leaving directory '/home/us/build-imx6ulevk-mfgtool/tmp/work/x=
86_64-linux/gettext-native/0.19.4-r0/build/gettext-tools'
> | Makefile:380: recipe for target 'all-recursive' failed
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory '/home/us/build-imx6ulevk-mfgtool/tmp/work/x=
86_64-linux/gettext-native/0.19.4-r0/build'
> | Makefile:336: recipe for target 'all' failed
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (log file is located at /home/us/bui=
ld-imx6ulevk-mfgtool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/temp/lo=
g.do_compile.5336)
> ERROR: Task 531 (virtual:native:/home/us/build/os-poky/meta/recipes-core/=
gettext/gettext_0.19.4.bb, do_compile) failed with exit code '1'
>
>
> I already tried to reinstall libtool but without success.
>
> Some ideas whats the cause for this error?

At a guess, something a little unusual with the setup of your Kubuntu
system. Combining Ubuntu 16.04 with OE 2.0 isn't so out of the
ordinary and others would certainly have hit the problem before now if
it was always seen.

Did you install all the standard host dependencies?

  https://www.yoctoproject.org/docs/2.0/yocto-project-qs/yocto-project-qs.h=
tml#packages

Did you manually upgrade or downgrade any of these host tools? Or is
the Kubuntu system a fairly clean generic installation?

