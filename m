Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B020DE009CA; Wed, 25 Apr 2018 11:27:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_10_20, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 279C9E005A9
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 11:27:32 -0700 (PDT)
Received: by mail-qt0-f180.google.com with SMTP id j42-v6so215406qtj.12
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 11:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=OlGamFg+j7yd12bdsbXGlNCjW6hCaXwRSjfIvQBSMqk=;
	b=ZmRdj7m6+6Zg6HuEqiQXCPsQX1a+JjYEOUnCEh+J7/Mv6PBPN/czVS8s9MeHG83iTw
	CtT2sE14DN7Au/XHHS4SXJQezrdJ5RF17Lyt8Wx8c3z+tUqcqztTlYNV11h5uonmpJyS
	5p1yWf83CynA8jN7sz5C/qKwso7o5nAhL4aMwwcD3vzBDxNeSlpcdo63/mp76wuOvli/
	8bO1IL74npZAU22/M3cQ17K7bZEZTZq8ZOUPM4c2r18srpKxr/dXWaZyr1uyxJ6Yq8tV
	5qFzXdSyQfZs6p7yTMLHeERgjrTZAru7grfDB0iKaTWRTni0z5oC3lMU2szva7QCm8an
	k10w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=OlGamFg+j7yd12bdsbXGlNCjW6hCaXwRSjfIvQBSMqk=;
	b=NR6jzFziVtpAnbbKGI4NBx+MWKTIO7IoB3i3OB9Xyzd77G5JtWv8HanXhpg0/GiA20
	L6qCUGnH6H+oRgyaanK8/St5+xBXEJSDMqwekNGNxP5AkuvvnT/XT9I9bihHr3Z7OfTc
	bQNy+D9PjAWKGQOKkIg01pYZ6K4JUjUzWsC25V7bsbL2l+TYjbEt3XfE/k2TceYTDsNL
	CD7RJckTWr7Ln6BWusMDUfCDEWfysXvJUk5FOiCAYL/rlcwKo2XpUnEOKb67ThCZ5916
	R9w+wgnCX6BVtrausq91lbkW+fywfNF+X6/SJtQmsBayLnLCDDcw41ESIbNNNK0vr/lH
	Vvwg==
X-Gm-Message-State: ALQs6tA7lkVSNLZJ+mYAaQ+Pb8LiwXIs0wq9dRYcfUA+Af4UQWM1LabE
	pVm83BjEdkFhz5UtT2WOgdsOVe0XXXXvrxwtjzU=
X-Google-Smtp-Source: AIpwx49bN5f4YzTjkS7XNOwvKxWFB+DVktKTnQuAyCGyWIAvGIbyGd6yznlKECtNL3VHHnfiSWH0YSEq3cBfK77e4s4=
X-Received: by 2002:aed:222b:: with SMTP id
	n40-v6mr32811345qtc.146.1524680851985; 
	Wed, 25 Apr 2018 11:27:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Wed, 25 Apr 2018 11:27:31 -0700 (PDT)
In-Reply-To: <CAEv37YsacVBmZXtShCij9OxkXmQpUX92QnS=tg_ESO_0NkT3ow@mail.gmail.com>
References: <20180425150333.GA9349@graute-opti>
	<CAGAf8LzpCD-SC54z88pE_=iYQ2ANg+4pzhYNRH_Qk1L6i-V-8A@mail.gmail.com>
	<CAEv37YsacVBmZXtShCij9OxkXmQpUX92QnS=tg_ESO_0NkT3ow@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 25 Apr 2018 20:27:31 +0200
Message-ID: <CAGAf8LwbckOBQ-daHV26oSVzeRDiXLRT4X_PVfpGPyqQMD2h8g@mail.gmail.com>
To: Jean-Pierre Sainfeld <jean-pierre@anki.com>,
	Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 25 Apr 2018 18:27:34 -0000
Content-Type: multipart/alternative; boundary="0000000000009417a4056ab06c9b"

--0000000000009417a4056ab06c9b
Content-Type: text/plain; charset="UTF-8"

> The benefit of the successful compiling of YOCTO Jethro on Kubuntu 16.04
over Ubuntu 14.04 would be the
> full understanding of the yocto system and its interaction with the host
system.

I do buy this argument just for the sole/only one use case: if you try to
become YOCTO distro developer by yourself! ;-)

Zoran
_______

On Wed, Apr 25, 2018 at 8:13 PM, Jean-Pierre Sainfeld <jean-pierre@anki.com>
wrote:

> The benefit of the successful compiling of YOCTO Jethro on Kubuntu 16.04
> over Ubuntu 14.04 would be the
> full understanding of the yocto system and its interaction with the host
> system.
> Yocto is a fantastic tool albeit a large piece of knowledge to swallow :-)
>
> JP Sainfeld
>
> On Wed, Apr 25, 2018 at 10:49 AM, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
>
>> > I try to compile yocto jethro environment which is working
>> > on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04 .
>>
>> What would be the benefit for the successful compiling of YOCTO Jethro on
>> Kubuntu 16.04 over Ubuntu 14.04???
>>
>> Zoran
>> _______
>>
>> On Wed, Apr 25, 2018 at 5:03 PM, Oliver Graute <oliver.graute@gmail.com>
>> wrote:
>>
>>> Hello list,
>>>
>>> I try to compile yocto jethro environment which is working
>>> on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04.
>>>
>>> The compilations stops on gettext-native.
>>>
>>> bitbake -k fsl-image-mfgtool-initramfs
>>>
>>>  make[5]: Entering directory '/home/us/build-imx6ulevk-mfgt
>>> ool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/build/get
>>> text-tools/src'
>>> | ../x86_64-linux-libtool  --tag=CC   --mode=link gcc
>>>  -isystem/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/include
>>> -O2 -pipe -release 0.19.4 ../gnulib-lib/libgettextlib.la  -lc
>>> -no-undefined  -L/home/us/build-imx6ulevk-mfg
>>> tool/tmp/sysroots/x86_64-linux/usr/lib -L/home/us/build-imx6ulevk-mfg
>>> tool/tmp/sysroots/x86_64-linux/lib -Wl,-rpath-link,/home/us/build
>>> -imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/lib
>>> -Wl,-rpath-link,/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/lib
>>> -Wl,-rpath,/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/usr/lib
>>> -Wl,-rpath,/home/us/build-imx6ulevk-mfgtool/tmp/sysroots/x86_64-linux/lib
>>> -Wl,-O1 -o libgettextsrc.la -rpath /home/us/build-imx6ulevk-mfgto
>>> ol/tmp/sysroots/x86_64-linux/usr/lib libgettextsrc_la-message.lo
>>> libgettextsrc_la-po-error.lo libgettextsrc_la-po-xerror.lo
>>> libgettextsrc_la-read-catalog-abstract.lo libgettextsrc_la-po-lex.lo
>>> libgettextsrc_la-po-gram-gen.lo libgettextsrc_la-po-charset.lo libgettex
>>>  tsrc_la-read-po.lo libgettextsrc_la-read-properties.lo
>>> libgettextsrc_la-read-stringtable.lo libgettextsrc_la-open-catalog.lo
>>> libgettextsrc_la-dir-list.lo libgettextsrc_la-str-list.lo
>>> libgettextsrc_la-read-catalog.lo libgettextsrc_la-color.lo
>>> libgettextsrc_la-write-catalog.lo libgettextsrc_la-write-properties.lo
>>> libgettextsrc_la-write-stringtable.lo libgettextsrc_la-write-po.lo
>>> libgettextsrc_la-msgl-ascii.lo libgettextsrc_la-msgl-iconv.lo
>>> libgettextsrc_la-msgl-equal.lo libgettextsrc_la-msgl-cat.lo
>>> libgettextsrc_la-msgl-header.lo libgettextsrc_la-msgl-english.lo
>>> libgettextsrc_la-msgl-check.lo libgettextsrc_la-file-list.lo
>>> libgettextsrc_la-msgl-charset.lo libgettextsrc_la-po-time.lo
>>> libgettextsrc_la-plural-exp.lo libgettextsrc_la-plural-eval.lo
>>> libgettextsrc_la-plural-table.lo libgettextsrc_la-format.lo
>>> libgettextsrc_la-format-c.lo libgettextsrc_la-format-sh.lo
>>> libgettextsrc_la-format-python.lo libgettextsrc_la-format-python-brace.lo
>>> libgettextsrc_la-format-lisp.lo libgettextsr
>>>  c_la-format-elisp.lo libgettextsrc_la-format-librep.lo
>>> libgettextsrc_la-format-scheme.lo libgettextsrc_la-format-java.lo
>>> libgettextsrc_la-format-csharp.lo libgettextsrc_la-format-awk.lo
>>> libgettextsrc_la-format-pascal.lo libgettextsrc_la-format-ycp.lo
>>> libgettextsrc_la-format-tcl.lo libgettextsrc_la-format-perl.lo
>>> libgettextsrc_la-format-perl-brace.lo libgettextsrc_la-format-php.lo
>>> libgettextsrc_la-format-gcc-internal.lo libgettextsrc_la-format-gfc-internal.lo
>>> libgettextsrc_la-format-qt.lo libgettextsrc_la-format-qt-plural.lo
>>> libgettextsrc_la-format-kde.lo libgettextsrc_la-format-boost.lo
>>> libgettextsrc_la-format-lua.lo libgettextsrc_la-format-javascript.lo
>>> libgettextsrc_la-read-desktop.lo
>>> | x86_64-linux-libtool:   error: 'libgettextsrc_la-message.lo' is not a
>>> valid libtool object
>>> | Makefile:2285: recipe for target 'libgettextsrc.la' failed
>>> | make[5]: *** [libgettextsrc.la] Error 1
>>> | make[5]: Leaving directory '/home/us/build-imx6ulevk-mfgt
>>> ool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/build/get
>>> text-tools/src'
>>> | Makefile:2206: recipe for target 'all' failed
>>> | make[4]: *** [all] Error 2
>>> | make[4]: Leaving directory '/home/us/build-imx6ulevk-mfgt
>>> ool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/build/get
>>> text-tools/src'
>>> | Makefile:1698: recipe for target 'all-recursive' failed
>>> | make[3]: *** [all-recursive] Error 1
>>> | make[3]: Leaving directory '/home/us/build-imx6ulevk-mfgt
>>> ool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/build/gettext-tools'
>>> | Makefile:1564: recipe for target 'all' failed
>>> | make[2]: *** [all] Error 2
>>> | make[2]: Leaving directory '/home/us/build-imx6ulevk-mfgt
>>> ool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/build/gettext-tools'
>>> | Makefile:380: recipe for target 'all-recursive' failed
>>> | make[1]: *** [all-recursive] Error 1
>>> | make[1]: Leaving directory '/home/us/build-imx6ulevk-mfgt
>>> ool/tmp/work/x86_64-linux/gettext-native/0.19.4-r0/build'
>>> | Makefile:336: recipe for target 'all' failed
>>> | make: *** [all] Error 2
>>> | ERROR: oe_runmake failed
>>> | ERROR: Function failed: do_compile (log file is located at
>>> /home/us/build-imx6ulevk-mfgtool/tmp/work/x86_64-linux/gette
>>> xt-native/0.19.4-r0/temp/log.do_compile.5336)
>>> ERROR: Task 531 (virtual:native:/home/us/build
>>> /os-poky/meta/recipes-core/gettext/gettext_0.19.4.bb, do_compile)
>>> failed with exit code '1'
>>>
>>>
>>> I already tried to reinstall libtool but without success.
>>>
>>> Some ideas whats the cause for this error?
>>>
>>> Best regards,
>>>
>>> Oliver
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>
> --
> Jean-Pierre Sainfeld
> 408-508-1741
>

--0000000000009417a4056ab06c9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>&gt; The benefit of the successful compiling of =
YOCTO Jethro on Kubuntu 16.04 over Ubuntu 14.04 would be the=C2=A0<div>&gt;=
 full understanding of the yocto system and its interaction with the host s=
ystem.=C2=A0</div><br></div>I do buy this argument just for the sole/only o=
ne use case: if you try to become YOCTO distro developer by yourself! ;-)<b=
r><br></div>Zoran<br>_______<br></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Wed, Apr 25, 2018 at 8:13 PM, Jean-Pierre Sainfeld =
<span dir=3D"ltr">&lt;<a href=3D"mailto:jean-pierre@anki.com" target=3D"_bl=
ank">jean-pierre@anki.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr">The benefit of the successful compiling of YOCTO Je=
thro on Kubuntu 16.04 over Ubuntu 14.04 would be the=C2=A0<div>full underst=
anding of the yocto system and its interaction with the host system.=C2=A0<=
/div><div>Yocto is a fantastic tool albeit a large piece of knowledge to sw=
allow :-)=C2=A0</div><div><br></div><div>JP Sainfeld</div></div><div class=
=3D"gmail_extra"><div><div class=3D"h5"><br><div class=3D"gmail_quote">On W=
ed, Apr 25, 2018 at 10:49 AM, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a =
href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojs=
avljevic@gmail.com</a><wbr>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div dir=3D"ltr"><div><span><div>&gt; I try to compile yocto jethro en=
vironment which is working<br>&gt; on a Ubuntu 14.04 installation. But not =
on a Kubuntu 16.04 .<br><br></div></span>What would be the benefit for the =
successful compiling of YOCTO Jethro on Kubuntu 16.04 over Ubuntu 14.04???<=
br><br></div>Zoran<br>_______<br></div><div class=3D"m_-7912130857930463666=
HOEnZb"><div class=3D"m_-7912130857930463666h5"><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On Wed, Apr 25, 2018 at 5:03 PM, Oliver Grau=
te <span dir=3D"ltr">&lt;<a href=3D"mailto:oliver.graute@gmail.com" target=
=3D"_blank">oliver.graute@gmail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">Hello list,<br>
<br>
I try to compile yocto jethro environment which is working<br>
on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04.<br>
<br>
The compilations stops on gettext-native.<br>
<br>
bitbake -k fsl-image-mfgtool-initramfs<br>
<br>
=C2=A0make[5]: Entering directory &#39;/home/us/build-imx6ulevk-mfgt<wbr>oo=
l/tmp/work/x86_64-linux/gett<wbr>ext-native/0.19.4-r0/build/get<wbr>text-to=
ols/src&#39;<br>
| ../x86_64-linux-libtool=C2=A0 --tag=3DCC=C2=A0 =C2=A0--mode=3Dlink gcc=C2=
=A0 =C2=A0-isystem/home/us/build-imx6ul<wbr>evk-mfgtool/tmp/sysroots/x86_6<=
wbr>4-linux/usr/include -O2 -pipe -release 0.19.4 ../gnulib-lib/<a href=3D"=
http://libgettextlib.la" rel=3D"noreferrer" target=3D"_blank">libgettextlib=
.la</a><wbr>=C2=A0 -lc -no-undefined=C2=A0 -L/home/us/build-imx6ulevk-mfg<w=
br>tool/tmp/sysroots/x86_64-linux<wbr>/usr/lib -L/home/us/build-imx6ulevk-m=
fg<wbr>tool/tmp/sysroots/x86_64-linux<wbr>/lib -Wl,-rpath-link,/home/us/bui=
ld<wbr>-imx6ulevk-mfgtool/tmp/sysroot<wbr>s/x86_64-linux/usr/lib -Wl,-rpath=
-link,/home/us/build<wbr>-imx6ulevk-mfgtool/tmp/sysroot<wbr>s/x86_64-linux/=
lib -Wl,-rpath,/home/us/build-imx6<wbr>ulevk-mfgtool/tmp/sysroots/x86<wbr>_=
64-linux/usr/lib -Wl,-rpath,/home/us/build-imx6<wbr>ulevk-mfgtool/tmp/sysro=
ots/x86<wbr>_64-linux/lib -Wl,-O1 -o <a href=3D"http://libgettextsrc.la" re=
l=3D"noreferrer" target=3D"_blank">libgettextsrc.la</a> -rpath /home/us/bui=
ld-imx6ulevk-mfgto<wbr>ol/tmp/sysroots/x86_64-linux/u<wbr>sr/lib libgettext=
src_la-message.lo libgettextsrc_la-po-error.lo libgettextsrc_la-po-xerror.l=
o libgettextsrc_la-read-catalog-<wbr>abstract.lo libgettextsrc_la-po-lex.lo=
 libgettextsrc_la-po-gram-gen.l<wbr>o libgettextsrc_la-po-charset.lo libget=
tex<br>
=C2=A0tsrc_la-read-po.lo libgettextsrc_la-read-properti<wbr>es.lo libgettex=
tsrc_la-read-stringta<wbr>ble.lo libgettextsrc_la-open-catalog.<wbr>lo libg=
ettextsrc_la-dir-list.lo libgettextsrc_la-str-list.lo libgettextsrc_la-read=
-catalog.<wbr>lo libgettextsrc_la-color.lo libgettextsrc_la-write-catalog<w=
br>.lo libgettextsrc_la-write-propert<wbr>ies.lo libgettextsrc_la-write-str=
ingt<wbr>able.lo libgettextsrc_la-write-po.lo libgettextsrc_la-msgl-ascii.l=
o libgettextsrc_la-msgl-iconv.lo libgettextsrc_la-msgl-equal.lo libgettexts=
rc_la-msgl-cat.lo libgettextsrc_la-msgl-header.l<wbr>o libgettextsrc_la-msg=
l-english.<wbr>lo libgettextsrc_la-msgl-check.lo libgettextsrc_la-file-list=
.lo libgettextsrc_la-msgl-charset.<wbr>lo libgettextsrc_la-po-time.lo libge=
ttextsrc_la-plural-exp.lo libgettextsrc_la-plural-eval.l<wbr>o libgettextsr=
c_la-plural-table.<wbr>lo libgettextsrc_la-format.lo libgettextsrc_la-forma=
t-c.lo libgettextsrc_la-format-sh.lo libgettextsrc_la-format-python<wbr>.lo=
 libgettextsrc_la-format-python<wbr>-brace.lo libgettextsrc_la-format-lisp.=
l<wbr>o libgettextsr<br>
=C2=A0c_la-format-elisp.lo libgettextsrc_la-format-librep<wbr>.lo libgettex=
tsrc_la-format-scheme<wbr>.lo libgettextsrc_la-format-java.l<wbr>o libgette=
xtsrc_la-format-csharp<wbr>.lo libgettextsrc_la-format-awk.lo libgettextsrc=
_la-format-pascal<wbr>.lo libgettextsrc_la-format-ycp.lo libgettextsrc_la-f=
ormat-tcl.lo libgettextsrc_la-format-perl.l<wbr>o libgettextsrc_la-format-p=
erl-b<wbr>race.lo libgettextsrc_la-format-php.lo libgettextsrc_la-format-gc=
c-in<wbr>ternal.lo libgettextsrc_la-format-gfc-in<wbr>ternal.lo libgettexts=
rc_la-format-qt.lo libgettextsrc_la-format-qt-plu<wbr>ral.lo libgettextsrc_=
la-format-kde.lo libgettextsrc_la-format-boost.<wbr>lo libgettextsrc_la-for=
mat-lua.lo libgettextsrc_la-format-javasc<wbr>ript.lo libgettextsrc_la-read=
-desktop.<wbr>lo<br>
| x86_64-linux-libtool:=C2=A0 =C2=A0error: &#39;libgettextsrc_la-message.lo=
&#39; is not a valid libtool object<br>
| Makefile:2285: recipe for target &#39;<a href=3D"http://libgettextsrc.la"=
 rel=3D"noreferrer" target=3D"_blank">libgettextsrc.la</a>&#39; failed<br>
| make[5]: *** [<a href=3D"http://libgettextsrc.la" rel=3D"noreferrer" targ=
et=3D"_blank">libgettextsrc.la</a>] Error 1<br>
| make[5]: Leaving directory &#39;/home/us/build-imx6ulevk-mfgt<wbr>ool/tmp=
/work/x86_64-linux/gett<wbr>ext-native/0.19.4-r0/build/get<wbr>text-tools/s=
rc&#39;<br>
| Makefile:2206: recipe for target &#39;all&#39; failed<br>
| make[4]: *** [all] Error 2<br>
| make[4]: Leaving directory &#39;/home/us/build-imx6ulevk-mfgt<wbr>ool/tmp=
/work/x86_64-linux/gett<wbr>ext-native/0.19.4-r0/build/get<wbr>text-tools/s=
rc&#39;<br>
| Makefile:1698: recipe for target &#39;all-recursive&#39; failed<br>
| make[3]: *** [all-recursive] Error 1<br>
| make[3]: Leaving directory &#39;/home/us/build-imx6ulevk-mfgt<wbr>ool/tmp=
/work/x86_64-linux/gett<wbr>ext-native/0.19.4-r0/build/get<wbr>text-tools&#=
39;<br>
| Makefile:1564: recipe for target &#39;all&#39; failed<br>
| make[2]: *** [all] Error 2<br>
| make[2]: Leaving directory &#39;/home/us/build-imx6ulevk-mfgt<wbr>ool/tmp=
/work/x86_64-linux/gett<wbr>ext-native/0.19.4-r0/build/get<wbr>text-tools&#=
39;<br>
| Makefile:380: recipe for target &#39;all-recursive&#39; failed<br>
| make[1]: *** [all-recursive] Error 1<br>
| make[1]: Leaving directory &#39;/home/us/build-imx6ulevk-mfgt<wbr>ool/tmp=
/work/x86_64-linux/gett<wbr>ext-native/0.19.4-r0/build&#39;<br>
| Makefile:336: recipe for target &#39;all&#39; failed<br>
| make: *** [all] Error 2<br>
| ERROR: oe_runmake failed<br>
| ERROR: Function failed: do_compile (log file is located at /home/us/build=
-imx6ulevk-mfgto<wbr>ol/tmp/work/x86_64-linux/gette<wbr>xt-native/0.19.4-r0=
/temp/log.d<wbr>o_compile.5336)<br>
ERROR: Task 531 (virtual:native:/home/us/build<wbr>/os-poky/meta/recipes-co=
re/get<wbr>text/<a href=3D"http://gettext_0.19.4.bb" rel=3D"noreferrer" tar=
get=3D"_blank">gettext_0.19.4.bb</a>, do_compile) failed with exit code &#3=
9;1&#39;<br>
<br>
<br>
I already tried to reinstall libtool but without success.<br>
<br>
Some ideas whats the cause for this error?<br>
<br>
Best regards,<br>
<br>
Oliver<br>
<span class=3D"m_-7912130857930463666m_-2118460992609262099HOEnZb"><font co=
lor=3D"#888888">-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>
</div></div><br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div></div></div><sp=
an class=3D"HOEnZb"><font color=3D"#888888">-- <br><div class=3D"m_-7912130=
857930463666gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D=
"ltr">Jean-Pierre Sainfeld<div>408-508-1741</div></div></div>
</font></span></div>
</blockquote></div><br></div>

--0000000000009417a4056ab06c9b--
