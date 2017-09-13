Return-Path: <yahiafarghaly@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70AABE00CB7; Wed, 13 Sep 2017 09:16:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yahiafarghaly[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.182 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 322B2E00C9E
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 09:15:57 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id k101so3701292iod.0
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 09:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=So0cQ/kqUGfQfIR0W/uIop/vPR0865nCNuXagt3eHiA=;
	b=r/u+7sEecKvhfZRwTHXfu9akoD6VZoMLAe0XpyClTT+SAxWBd4fJ/FmrCeIZAkpsD2
	zwiNfoJB5xaS+ITFolX6EFFpRaAuAGXinGw2o/qUUPObw6nrZ0c5ZDY4jiU5MP83TZ5c
	uUq6Jxsang1zo6cQWwX9SF+whKPOpSeTaZP7WIsAbZUbmipiUbQjSXttdFypHzTUOtHh
	tgIaAyUl2uHlw/G5nlo76116WwyKFg5FaZOHRl+RaEG+6blv+ue3DRvXo4iafT6jgjkV
	sTn6KO7FXgqpSYeXhCBkN2YK2IRcdImL74jJlYlKRGbTWAA8KfNYh1NF5xmSzPR0l7Ab
	upsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=So0cQ/kqUGfQfIR0W/uIop/vPR0865nCNuXagt3eHiA=;
	b=NlY0M0LreIXlFFDqsgGiwRnhSvlVGmlffZjcaZQ37p+J0kcO3/u3tUwgSAf0nFj5uf
	VaHzNL3+ob/3VlyX7QpIQbKo77oxkc8gBJPuhvR8YqvBoK01e0JsBcSf82kajGoEnT5z
	Ueg+5PukovuT6GGgbCndRqFPvBNW78lSN1yHr3QJZ18kQyBshyuwU05ubWeElW78GH/e
	XA43vmGterVQV7WESUXCq199V6dtJiSkDMBMGTFuClOSp2h1NWEjEyOQD/eD2Omeg8sv
	ciTMMEsDQIBkWmkRVl0ISooU5QmmlJk2CwHwTQ1LzKyFVRk63/zAgxU5azQ/gpGsf7Vo
	yOwg==
X-Gm-Message-State: AHPjjUhV7RiRWtEqtu4bm5K3JIVYe6j9Cjf+lf4vNwkzGTnx47zE/u+N
	SQ7LBSHpGWKt0Vo1zL+/XNgJj0wsxNfPAgdI+MKqaF8E
X-Google-Smtp-Source: AOwi7QA54ehtJkJohVnL3Lx9eb3mm96I3LAWl0xPwWMSrq5T5Hnnr1KUGdPYTlmAvTTgvxh0ttev7pznC7j8921BE5s=
X-Received: by 10.202.76.9 with SMTP id z9mr19807738oia.253.1505319357201;
	Wed, 13 Sep 2017 09:15:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.196 with HTTP; Wed, 13 Sep 2017 09:15:56 -0700 (PDT)
In-Reply-To: <CABFXn3EX5-upvpAHh10c402Z1gmh1g2G0j=D=ubC7oYC3GEXhw@mail.gmail.com>
References: <CABFXn3EX5-upvpAHh10c402Z1gmh1g2G0j=D=ubC7oYC3GEXhw@mail.gmail.com>
From: yahia farghaly <yahiafarghaly@gmail.com>
Date: Wed, 13 Sep 2017 18:15:56 +0200
Message-ID: <CABFXn3G5LewuTHZb7cJRb1PpNVYpi4hT7nRP0DmgLz91qp6m6Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: krirobo@gmail.com
Subject: Re: [meta-ros] festival-2.3-r0 do_compile: oe_runmake failed
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
X-List-Received-Date: Wed, 13 Sep 2017 16:16:00 -0000
X-Groupsio-MsgNum: 37850
Content-Type: multipart/related; boundary="F7O9mUeERFVLVDtUjcBE"

--F7O9mUeERFVLVDtUjcBE
Content-Type: multipart/alternative; boundary="001a113df0fa8f43840559147915"

--001a113df0fa8f43840559147915
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

i just did IMAGE_INSTALL_append =3D " speech-tools festival"

error log details:

Build Configuration:
> BB_VERSION        =3D "1.34.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "universal"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "raspberrypi3"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "2.3.2"
> TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4 callconvention-ha=
rd
> cortexa7"
> TARGET_FPU        =3D "hard"
> meta
> meta-poky
> meta-yocto-bsp    =3D "pyro:ce26a57e04ad65c02087629701d96448a44e73d5"
> meta-oe
> meta-python
> meta-multimedia
> meta-networking   =3D "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"
> meta-raspberrypi  =3D "pyro:c981f01a2cdb3299eb57920cffbb5dfd4248209a"
> meta-ros          =3D "master:3ff83184bd16a9ef13660dd5df08687a6c17a458"
> meta-mylayer      =3D "pyro:ce26a57e04ad65c02087629701d96448a44e73d5"
> Initialising tasks: 100%
> |########################################################################=
####################################################|
> Time: 0:00:07
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: festival-2.3-r0 do_compile: oe_runmake failed
> ERROR: festival-2.3-r0 do_compile: Function failed: do_compile (log file
> is located at
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/temp/log.do_compile.49956)
> ERROR: Logfile of failure stored in:
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/temp/log.do_compile.49956
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32',
> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common=
']
> | DEBUG: Executing shell function do_compile
> | NOTE: make
> | ERROR: oe_runmake failed
> | config/config:43:
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/config:
> No such file or directory
> | config/common_make_rules:67:
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/common_make_r=
ules.mak:
> No such file or directory
> | Makefile:84:
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/top_level.mak=
:
> No such file or directory
> | Makefile:85:
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/install.mak:
> No such file or directory
> | make: *** No rule to make target
> '/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/fest=
ival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/install.mak'=
.
> Stop.
> | ERROR: Function failed: do_compile (log file is located at
> /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festi=
val/2.3-r0/temp/log.do_compile.49956)
> ERROR: Task
> (/yocto/poky/meta-ros/recipes-extended/festival/festival_2.3.bb:do_compil=
e)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2392 tasks of which 2390 didn't need to be
> rerun and 1 failed.
> Summary: 1 task failed:
>   /yocto/poky/meta-ros/recipes-extended/festival/festival_2.3.bb:
> do_compile
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e



=E2=80=8C

On 13 September 2017 at 08:42, yahia farghaly <yahiafarghaly@gmail.com>
wrote:

> i want to install festival on the target image,
> it gives me this error *"ERROR: festival-2.3-r0 do_compile: oe_runmake
> failed"*
> i have added the meta-oe to bblayer also .
>
> how to solve this error ?
>
> --
> Yahia Farghaly
> Graduated from Faculty of Engineering - Electronics and Communications
> Department at Cairo University.
> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
> <https://github.com/yahiafarghaly>
>
>
>
> =E2=80=8C
>



--=20
Yahia Farghaly
Graduated from Faculty of Engineering - Electronics and Communications
Department at Cairo University.
Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
<https://github.com/yahiafarghaly>

--001a113df0fa8f43840559147915
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"ltr"><img width=3D"0" height=3D"0" cla=
ss=3D"mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtra=
ck.io/trace/mail/b33bba7c396dc10728d08efdd3b0facaa555714d.png?u=3D1822760"/=
><div>i just did IMAGE_INSTALL_append =3D &#34; speech-tools festival&#34;<=
/div><div><br/></div>error log details:<div><br/></div><div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Build Configuration:<br/>BB_VERSION =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &#34;1.34.0&#34;<br/>BUILD_SYS =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =3D &#34;x86_64-linux&#34;<br/>NATIVELSBSTRING =C2=A0 =3D &#=
34;universal&#34;<br/>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &#34;arm-po=
ky-linux-gnueabi&#34;<br/>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &#=
34;raspberrypi3&#34;<br/>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &#34;poky&#34;<br/>DISTRO_VERSION =C2=A0 =C2=A0=3D &#34;2.3.2&#34;<br/=
>TUNE_FEATURES =C2=A0 =C2=A0 =3D &#34;arm armv7ve vfp thumb neon vfpv4 call=
convention-hard cortexa7&#34;<br/>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=
 &#34;hard&#34;<br/>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<b=
r/>meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br/>meta-yocto-bsp =C2=A0 =
=C2=A0=3D &#34;pyro:ce26a57e04ad65c02087629701d96448a44e73d5&#34;<br/>meta=
-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br/>meta-python =C2=A0 =C2=A0 =
=
=C2=A0=C2=A0<br/>meta-multimedia =C2=A0=C2=A0<br/>meta-networking =C2=A0 =
=3D &#34;pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7&#34;<br/>meta-raspb=
errypi =C2=A0=3D &#34;pyro:c981f01a2cdb3299eb57920cffbb5dfd4248209a&#34;<br=
/>meta-ros =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &#34;master:3ff83184bd16a9=
ef13660dd5df08687a6c17a458&#34;<br/>meta-mylayer =C2=A0 =C2=A0 =C2=A0=3D &#=
34;pyro:ce26a57e04ad65c02087629701d96448a44e73d5&#34;<br/>Initialising task=
s: 100% |##################################################################=
##########################################################| Time: 0:00:07<b=
r/>NOTE: Executing SetScene Tasks<br/>NOTE: Executing RunQueue Tasks<br/>ER=
ROR: festival-2.3-r0 do_compile: oe_runmake failed<br/>ERROR: festival-2.3-=
r0 do_compile: Function failed: do_compile (log file is located at /yocto/p=
oky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0=
/temp/log.do_compile.49956)<br/>ERROR: Logfile of failure stored in: /yocto=
/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-=
r0/temp/log.do_compile.49956<br/>Log data follows:<br/>| DEBUG: SITE files =
[&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#39;, &#39;arm-=
32&#39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39=
;, &#39;arm-linux-gnueabi&#39;, &#39;common&#39;]<br/>| DEBUG: Executing sh=
ell function do_compile<br/>| NOTE: make<br/>| ERROR: oe_runmake failed<br/=
>| config/config:43: /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-=
linux-gnueabi/festival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/=
config: No such file or directory<br/>| config/common_make_rules:67: /yocto=
/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-=
r0/recipe-sysroot/usr/share/speech-tools/config/rules/common_make_rules.mak=
: No such file or directory<br/>| Makefile:84: /yocto/poky/build/tmp/work/c=
ortexa7hf-neon-vfpv4-poky-linux-gnueabi/festival/2.3-r0/recipe-sysroot/usr/=
share/speech-tools/config/rules/top_level.mak: No such file or directory<br=
/>| Makefile:85: /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linu=
x-gnueabi/festival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rule=
s/install.mak: No such file or directory<br/>| make: *** No rule to make ta=
rget &#39;/yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnuea=
bi/festival/2.3-r0/recipe-sysroot/usr/share/speech-tools/config/rules/insta=
ll.mak&#39;.=C2=A0 Stop.<br/>| ERROR: Function failed: do_compile (log file=
 is located at /yocto/poky/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-=
gnueabi/festival/2.3-r0/temp/log.do_compile.49956)<br/>ERROR: Task (/yocto/=
poky/meta-ros/recipes-extended/festival/festival_2.3.bb:do_compile) failed =
with exit code &#39;1&#39;<br/>NOTE: Tasks Summary: Attempted 2392 tasks of=
 which 2390 didn&#39;t need to be rerun and 1 failed.<br/>Summary: 1 task f=
ailed:<br/>=C2=A0 /yocto/poky/meta-ros/recipes-extended/festival/festival_2=
.3.bb:do_compile<br/>Summary: There were 2 ERROR messages shown, returning =
a non-zero exit code</blockquote><br/><br/>=E2=80=8C</div></div><div class=
=3D"gmail_extra"><br/><div class=3D"gmail_quote">On 13 September 2017 at 0=
8:42, yahia farghaly <span dir=3D"ltr">&lt;<a href=3D"mailto:yahiafarghaly@=
gmail.com" target=3D"_blank">yahiafarghaly@gmail.com</a>&gt;</span> wrote:<=
br/><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><img width=3D"0" height=
=
=3D"0" class=3D"m_-453825925628096124mailtrack-img" alt=3D"" style=3D"disp=
lay:flex" src=3D"cid:attach_0_15D95A7DD697E76A_14359@groups.io"/>i want to =
install festival on the target image,=C2=A0<div>it gives me this error <i>&=
#34;ERROR: festival-2.3-r0 do_compile: oe_runmake failed&#34;</i><br clear=
=3D"all"/><div>i have added the meta-oe to bblayer also .</div><div><br/><=
/div><div>how to solve this error ?=C2=A0</div><span class=3D"HOEnZb"><font=
 color=3D"#888888"><div><br/></div>-- <br/><div class=3D"m_-453825925628096=
124gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><font size=3D"1"=
 color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,serif,Emoji=
Font"><span style=3D"font-size:13px">Yahia Farghaly=C2=A0</span></font><spa=
n style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,=
serif,EmojiFont;font-size:16px"></span><div><font color=3D"#777777" face=3D=
"Tahoma, sans-serif, Arial, serif, EmojiFont"><span style=3D"font-size:13px=
">Graduated from Faculty of Engineering - Electronics and Communications De=
partment at Cairo University.</span></font><br/></div><div style=3D"color:r=
gb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;fo=
nt-size:16px"><div><a href=3D"https://linkedin.com/in/yahiafarghaly" rel=3D=
"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"font-fami=
ly:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">=
Linkedin</span></font></a><font size=3D"1" color=3D"#777777" style=3D"font-=
family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13=
px">=C2=A0-=C2=A0</span></font><a href=3D"https://github.com/yahiafarghaly"=
 rel=3D"noopener noreferrer" target=3D"_blank"><font size=3D"1" style=3D"fo=
nt-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size=
:13px">GitHub</span></font></a></div></div></div></div></div></div>
<br/><br/><br/>=E2=80=8C</font></span></div></div>
</blockquote></div><br/><br clear=3D"all"/><div><br/></div>-- <br/><div cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><div><div dir=3D"ltr"><font size=3D"1" color=3D"#777777" style=3D"font-fam=
ily:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px"=
>Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,0);font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"></sp=
an><div><font color=3D"#777777" face=3D"Tahoma, sans-serif, Arial, serif, E=
mojiFont"><span style=3D"font-size:13px">Graduated from Faculty of Engineer=
ing - Electronics and Communications Department at Cairo University.</span>=
</font><br/></div><div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,=
Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><div><a href=3D"https:=
//linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"_bla=
nk"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif,Emo=
jiFont"><span style=3D"font-size:13px">Linkedin</span></font></a><font size=
=
=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,seri=
f,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0</span></font><a h=
ref=3D"https://github.com/yahiafarghaly" rel=3D"noopener noreferrer" target=
=
=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,=
serif,EmojiFont"><span style=3D"font-size:13px">GitHub</span></font></a></d=
iv></div></div></div></div></div>
</div>
</body></html>

--001a113df0fa8f43840559147915--

--F7O9mUeERFVLVDtUjcBE
Content-Id: <attach_0_15D95A7DD697E76A_14359@groups.io>
X-Attachment-Id: attach_0_15D95A7DD697E76A_14359@groups.io
Content-Type: image/gif; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7

--F7O9mUeERFVLVDtUjcBE--
