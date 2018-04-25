Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5002E009CA; Wed, 25 Apr 2018 10:49:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AF8BE005A9
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 10:49:37 -0700 (PDT)
Received: by mail-qt0-f178.google.com with SMTP id z23-v6so27949110qti.5
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 10:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=1vkQQH6z6O54QwIseMsdE2jklBARRgoBYslF8Gqb0tw=;
	b=S7qnFCkwzsl3PsmEi3NU6jxNT9oh8vIkXcrRtwqk9/5r+N9oieiX0O9ruoJdURed3v
	h8ZKItjvmlmn6kDSMZSmWOg7nMWnGvwSoJ/j0q4vxmUMshh/spp2yvt0MU+jqX25c82I
	T6zTaAFifI1zt+9cauvo6Zebr2W5E90AnTtGpfTDFGkzPm/C4HS0TER3RwoZkBWrinCV
	lD8iyCA7kKsGiqnBP5ujNk4BXKOUjda5nwvUXuLs40OCqt596BDR7+mkCLtk4WbLkapA
	A5JLzgbBOhVobP6/qC1pSpE3PSCRKLVFuumGyjwgv4XnPr98Ls4bjFV5RdLzTlgXljh6
	YPfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=1vkQQH6z6O54QwIseMsdE2jklBARRgoBYslF8Gqb0tw=;
	b=K014qSSp2/pvFbSNxFGORXm4yom0BFUKMwEgvBbdIIbujaxmVgNbpmyJfAn3V7T+ci
	ZUhJxVbsZ7eNtkiVsVfVQFAvZ6nVwC9AyL5YXZ2oSnFfVmgFTxC1vUo8UHjHYWZDS0AZ
	G8puUl122RS+JZ5Ebib+QHA6zoznqi+ii2w1F03el2HEPAaXydc6XVQEuhg3Jv5xJ8by
	wjsvBXzjqOOwLRpxItheaaapjpfsJoDxWhPNvepOq2o6errJuYpPXIjYH+vP5iGmT1NF
	L+06X3L1lY87sOwZ4CjMOKZbRab0p1nwqyj2YLAR8EZk5Il54vci0nLiltk8JTHHgJPY
	mroQ==
X-Gm-Message-State: ALQs6tAlJ/Ydz8rXcww8t8khngCtJZ0pGwbogS6mbT+tDeVCcZfTWFMQ
	tD4/QDPtrkYX1GYR+ree4zMo9EKSnRcA3ehPf1WuKw==
X-Google-Smtp-Source: AIpwx49ZRewXrz7FoaJQL/10NHbs9nxKC2lVF7qIlfCbIfxNb2ozjMW9FRshpo8Ew2icfhis80HhNlBHY4Lg7cI9nKQ=
X-Received: by 2002:aed:222b:: with SMTP id
	n40-v6mr32671284qtc.146.1524678577093; 
	Wed, 25 Apr 2018 10:49:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Wed, 25 Apr 2018 10:49:36 -0700 (PDT)
In-Reply-To: <20180425150333.GA9349@graute-opti>
References: <20180425150333.GA9349@graute-opti>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 25 Apr 2018 19:49:36 +0200
Message-ID: <CAGAf8LzpCD-SC54z88pE_=iYQ2ANg+4pzhYNRH_Qk1L6i-V-8A@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 25 Apr 2018 17:49:39 -0000
Content-Type: multipart/alternative; boundary="000000000000fc0198056aafe47f"

--000000000000fc0198056aafe47f
Content-Type: text/plain; charset="UTF-8"

> I try to compile yocto jethro environment which is working
> on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04 .

What would be the benefit for the successful compiling of YOCTO Jethro on
Kubuntu 16.04 over Ubuntu 14.04???

Zoran
_______

On Wed, Apr 25, 2018 at 5:03 PM, Oliver Graute <oliver.graute@gmail.com>
wrote:

> Hello list,
>
> I try to compile yocto jethro environment which is working
> on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04.
>
> The compilations stops on gettext-native.
>
> bitbake -k fsl-image-mfgtool-initramfs
>
>  make[5]: Entering directory '/home/us/build-imx6ulevk-
> mfgtool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/
> build/gettext-tools/src'
> | ../x86_64-linux-libtool  --tag=CC   --mode=link gcc
>  -isystem/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/include
> -O2 -pipe -release 0.19.4 ../gnulib-lib/libgettextlib.la  -lc
> -no-undefined  -L/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/lib
> -L/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/lib
> -Wl,-rpath-link,/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/lib
> -Wl,-rpath-link,/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/lib
> -Wl,-rpath,/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/lib
> -Wl,-rpath,/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/lib
> -Wl,-O1 -o libgettextsrc.la -rpath /home/us/build-imx6ulevk-
> mfgtool/tmp/sysroots/x86_64-linux/usr/lib libgettextsrc_la-message.lo
> libgettextsrc_la-po-error.lo libgettextsrc_la-po-xerror.lo
> libgettextsrc_la-read-catalog-abstract.lo libgettextsrc_la-po-lex.lo
> libgettextsrc_la-po-gram-gen.lo libgettextsrc_la-po-charset.lo libgettex
>  tsrc_la-read-po.lo libgettextsrc_la-read-properties.lo
> libgettextsrc_la-read-stringtable.lo libgettextsrc_la-open-catalog.lo
> libgettextsrc_la-dir-list.lo libgettextsrc_la-str-list.lo
> libgettextsrc_la-read-catalog.lo libgettextsrc_la-color.lo
> libgettextsrc_la-write-catalog.lo libgettextsrc_la-write-properties.lo
> libgettextsrc_la-write-stringtable.lo libgettextsrc_la-write-po.lo
> libgettextsrc_la-msgl-ascii.lo libgettextsrc_la-msgl-iconv.lo
> libgettextsrc_la-msgl-equal.lo libgettextsrc_la-msgl-cat.lo
> libgettextsrc_la-msgl-header.lo libgettextsrc_la-msgl-english.lo
> libgettextsrc_la-msgl-check.lo libgettextsrc_la-file-list.lo
> libgettextsrc_la-msgl-charset.lo libgettextsrc_la-po-time.lo
> libgettextsrc_la-plural-exp.lo libgettextsrc_la-plural-eval.lo
> libgettextsrc_la-plural-table.lo libgettextsrc_la-format.lo
> libgettextsrc_la-format-c.lo libgettextsrc_la-format-sh.lo
> libgettextsrc_la-format-python.lo libgettextsrc_la-format-python-brace.lo
> libgettextsrc_la-format-lisp.lo libgettextsr
>  c_la-format-elisp.lo libgettextsrc_la-format-librep.lo
> libgettextsrc_la-format-scheme.lo libgettextsrc_la-format-java.lo
> libgettextsrc_la-format-csharp.lo libgettextsrc_la-format-awk.lo
> libgettextsrc_la-format-pascal.lo libgettextsrc_la-format-ycp.lo
> libgettextsrc_la-format-tcl.lo libgettextsrc_la-format-perl.lo
> libgettextsrc_la-format-perl-brace.lo libgettextsrc_la-format-php.lo
> libgettextsrc_la-format-gcc-internal.lo libgettextsrc_la-format-gfc-internal.lo
> libgettextsrc_la-format-qt.lo libgettextsrc_la-format-qt-plural.lo
> libgettextsrc_la-format-kde.lo libgettextsrc_la-format-boost.lo
> libgettextsrc_la-format-lua.lo libgettextsrc_la-format-javascript.lo
> libgettextsrc_la-read-desktop.lo
> | x86_64-linux-libtool:   error: 'libgettextsrc_la-message.lo' is not a
> valid libtool object
> | Makefile:2285: recipe for target 'libgettextsrc.la' failed
> | make[5]: *** [libgettextsrc.la] Error 1
> | make[5]: Leaving directory '/home/us/build-imx6ulevk-
> mfgtool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/
> build/gettext-tools/src'
> | Makefile:2206: recipe for target 'all' failed
> | make[4]: *** [all] Error 2
> | make[4]: Leaving directory '/home/us/build-imx6ulevk-
> mfgtool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/
> build/gettext-tools/src'
> | Makefile:1698: recipe for target 'all-recursive' failed
> | make[3]: *** [all-recursive] Error 1
> | make[3]: Leaving directory '/home/us/build-imx6ulevk-
> mfgtool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/
> build/gettext-tools'
> | Makefile:1564: recipe for target 'all' failed
> | make[2]: *** [all] Error 2
> | make[2]: Leaving directory '/home/us/build-imx6ulevk-
> mfgtool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/
> build/gettext-tools'
> | Makefile:380: recipe for target 'all-recursive' failed
> | make[1]: *** [all-recursive] Error 1
> | make[1]: Leaving directory '/home/us/build-imx6ulevk-
> mfgtool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/build'
> | Makefile:336: recipe for target 'all' failed
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (log file is located at
> /home/us/build-imx6ulevk-mfgtool/tmp/work/x86_64-linux/
> gettext-native/0.19.4-r0/temp/log.do_compile.5336)
> ERROR: Task 531 (virtual:native:/home/us/build/os-poky/meta/recipes-
> core/gettext/gettext_0.19.4.bb, do_compile) failed with exit code '1'
>
>
> I already tried to reinstall libtool but without success.
>
> Some ideas whats the cause for this error?
>
> Best regards,
>
> Oliver
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000fc0198056aafe47f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>&gt; I try to compile yocto jethro environment w=
hich is working<br>&gt; on a Ubuntu 14.04 installation. But not on a Kubunt=
u 16.04 .<br><br></div>What would be the benefit for the successful compili=
ng of YOCTO Jethro on Kubuntu 16.04 over Ubuntu 14.04???<br><br></div>Zoran=
<br>_______<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Apr 25, 2018 at 5:03 PM, Oliver Graute <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:oliver.graute@gmail.com" target=3D"_blank">oliver.graute@gm=
ail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello list,=
<br>
<br>
I try to compile yocto jethro environment which is working<br>
on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04.<br>
<br>
The compilations stops on gettext-native.<br>
<br>
bitbake -k fsl-image-mfgtool-initramfs<br>
<br>
=C2=A0make[5]: Entering directory &#39;/home/us/build-imx6ulevk-<wbr>mfgtoo=
l/tmp/work/x86_64-linux/<wbr>gettext-native/0.19.4-r0/<wbr>build/gettext-to=
ols/src&#39;<br>
| ../x86_64-linux-libtool=C2=A0 --tag=3DCC=C2=A0 =C2=A0--mode=3Dlink gcc=C2=
=A0 =C2=A0-isystem/home/us/build-<wbr>imx6ulevk-mfgtool/tmp/<wbr>sysroots/x=
86_64-linux/usr/<wbr>include -O2 -pipe -release 0.19.4 ../gnulib-lib/<a hre=
f=3D"http://libgettextlib.la" rel=3D"noreferrer" target=3D"_blank">libgette=
xtlib.la</a>=C2=A0 -lc -no-undefined=C2=A0 -L/home/us/build-imx6ulevk-<wbr>=
mfgtool/tmp/sysroots/x86_64-<wbr>linux/usr/lib -L/home/us/build-imx6ulevk-<=
wbr>mfgtool/tmp/sysroots/x86_64-<wbr>linux/lib -Wl,-rpath-link,/home/us/<wb=
r>build-imx6ulevk-mfgtool/tmp/<wbr>sysroots/x86_64-linux/usr/lib -Wl,-rpath=
-link,/home/us/<wbr>build-imx6ulevk-mfgtool/tmp/<wbr>sysroots/x86_64-linux/=
lib -Wl,-rpath,/home/us/build-<wbr>imx6ulevk-mfgtool/tmp/<wbr>sysroots/x86_=
64-linux/usr/lib -Wl,-rpath,/home/us/build-<wbr>imx6ulevk-mfgtool/tmp/<wbr>=
sysroots/x86_64-linux/lib -Wl,-O1 -o <a href=3D"http://libgettextsrc.la" re=
l=3D"noreferrer" target=3D"_blank">libgettextsrc.la</a> -rpath /home/us/bui=
ld-imx6ulevk-<wbr>mfgtool/tmp/sysroots/x86_64-<wbr>linux/usr/lib libgettext=
src_la-message.lo libgettextsrc_la-po-error.lo libgettextsrc_la-po-xerror.l=
o libgettextsrc_la-read-catalog-<wbr>abstract.lo libgettextsrc_la-po-lex.lo=
 libgettextsrc_la-po-gram-gen.<wbr>lo libgettextsrc_la-po-charset.lo libget=
tex<br>
=C2=A0tsrc_la-read-po.lo libgettextsrc_la-read-<wbr>properties.lo libgettex=
tsrc_la-read-<wbr>stringtable.lo libgettextsrc_la-open-catalog.<wbr>lo libg=
ettextsrc_la-dir-list.lo libgettextsrc_la-str-list.lo libgettextsrc_la-read=
-catalog.<wbr>lo libgettextsrc_la-color.lo libgettextsrc_la-write-<wbr>cata=
log.lo libgettextsrc_la-write-<wbr>properties.lo libgettextsrc_la-write-<wb=
r>stringtable.lo libgettextsrc_la-write-po.lo libgettextsrc_la-msgl-ascii.l=
o libgettextsrc_la-msgl-iconv.lo libgettextsrc_la-msgl-equal.lo libgettexts=
rc_la-msgl-cat.lo libgettextsrc_la-msgl-header.<wbr>lo libgettextsrc_la-msg=
l-english.<wbr>lo libgettextsrc_la-msgl-check.lo libgettextsrc_la-file-list=
.lo libgettextsrc_la-msgl-charset.<wbr>lo libgettextsrc_la-po-time.lo libge=
ttextsrc_la-plural-exp.lo libgettextsrc_la-plural-eval.<wbr>lo libgettextsr=
c_la-plural-table.<wbr>lo libgettextsrc_la-format.lo libgettextsrc_la-forma=
t-c.lo libgettextsrc_la-format-sh.lo libgettextsrc_la-format-<wbr>python.lo=
 libgettextsrc_la-format-<wbr>python-brace.lo libgettextsrc_la-format-lisp.=
<wbr>lo libgettextsr<br>
=C2=A0c_la-format-elisp.lo libgettextsrc_la-format-<wbr>librep.lo libgettex=
tsrc_la-format-<wbr>scheme.lo libgettextsrc_la-format-java.<wbr>lo libgette=
xtsrc_la-format-<wbr>csharp.lo libgettextsrc_la-format-awk.lo libgettextsrc=
_la-format-<wbr>pascal.lo libgettextsrc_la-format-ycp.lo libgettextsrc_la-f=
ormat-tcl.lo libgettextsrc_la-format-perl.<wbr>lo libgettextsrc_la-format-p=
erl-<wbr>brace.lo libgettextsrc_la-format-php.lo libgettextsrc_la-format-gc=
c-<wbr>internal.lo libgettextsrc_la-format-gfc-<wbr>internal.lo libgettexts=
rc_la-format-qt.lo libgettextsrc_la-format-qt-<wbr>plural.lo libgettextsrc_=
la-format-kde.lo libgettextsrc_la-format-boost.<wbr>lo libgettextsrc_la-for=
mat-lua.lo libgettextsrc_la-format-<wbr>javascript.lo libgettextsrc_la-read=
-desktop.<wbr>lo<br>
| x86_64-linux-libtool:=C2=A0 =C2=A0error: &#39;libgettextsrc_la-message.lo=
&#39; is not a valid libtool object<br>
| Makefile:2285: recipe for target &#39;<a href=3D"http://libgettextsrc.la"=
 rel=3D"noreferrer" target=3D"_blank">libgettextsrc.la</a>&#39; failed<br>
| make[5]: *** [<a href=3D"http://libgettextsrc.la" rel=3D"noreferrer" targ=
et=3D"_blank">libgettextsrc.la</a>] Error 1<br>
| make[5]: Leaving directory &#39;/home/us/build-imx6ulevk-<wbr>mfgtool/tmp=
/work/x86_64-linux/<wbr>gettext-native/0.19.4-r0/<wbr>build/gettext-tools/s=
rc&#39;<br>
| Makefile:2206: recipe for target &#39;all&#39; failed<br>
| make[4]: *** [all] Error 2<br>
| make[4]: Leaving directory &#39;/home/us/build-imx6ulevk-<wbr>mfgtool/tmp=
/work/x86_64-linux/<wbr>gettext-native/0.19.4-r0/<wbr>build/gettext-tools/s=
rc&#39;<br>
| Makefile:1698: recipe for target &#39;all-recursive&#39; failed<br>
| make[3]: *** [all-recursive] Error 1<br>
| make[3]: Leaving directory &#39;/home/us/build-imx6ulevk-<wbr>mfgtool/tmp=
/work/x86_64-linux/<wbr>gettext-native/0.19.4-r0/<wbr>build/gettext-tools&#=
39;<br>
| Makefile:1564: recipe for target &#39;all&#39; failed<br>
| make[2]: *** [all] Error 2<br>
| make[2]: Leaving directory &#39;/home/us/build-imx6ulevk-<wbr>mfgtool/tmp=
/work/x86_64-linux/<wbr>gettext-native/0.19.4-r0/<wbr>build/gettext-tools&#=
39;<br>
| Makefile:380: recipe for target &#39;all-recursive&#39; failed<br>
| make[1]: *** [all-recursive] Error 1<br>
| make[1]: Leaving directory &#39;/home/us/build-imx6ulevk-<wbr>mfgtool/tmp=
/work/x86_64-linux/<wbr>gettext-native/0.19.4-r0/<wbr>build&#39;<br>
| Makefile:336: recipe for target &#39;all&#39; failed<br>
| make: *** [all] Error 2<br>
| ERROR: oe_runmake failed<br>
| ERROR: Function failed: do_compile (log file is located at /home/us/build=
-imx6ulevk-<wbr>mfgtool/tmp/work/x86_64-linux/<wbr>gettext-native/0.19.4-r0=
/temp/<wbr>log.do_compile.5336)<br>
ERROR: Task 531 (virtual:native:/home/us/<wbr>build/os-poky/meta/recipes-<w=
br>core/gettext/<a href=3D"http://gettext_0.19.4.bb" rel=3D"noreferrer" tar=
get=3D"_blank">gettext_0.19.4.bb</a><wbr>, do_compile) failed with exit cod=
e &#39;1&#39;<br>
<br>
<br>
I already tried to reinstall libtool but without success.<br>
<br>
Some ideas whats the cause for this error?<br>
<br>
Best regards,<br>
<br>
Oliver<br>
<span class=3D"HOEnZb"><font color=3D"#888888">-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--000000000000fc0198056aafe47f--
