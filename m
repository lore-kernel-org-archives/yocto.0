Return-Path: <michael.allwright@ulb.ac.be>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EC6CE00D33; Tue, 10 Jul 2018 00:10:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [164.15.128.114 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mxin.ulb.ac.be (mxin.ulb.ac.be [164.15.128.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47059E00C99
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 00:10:54 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EuBQB7W0Rb/y/dVdFcHQEBBQELAYJTd?=
	=?us-ascii?q?oFhKIN6gR2THIIKiDaHboUigWYBCoRsAoJHITcVAQIBAQIBAQICAmkohTgBAQE?=
	=?us-ascii?q?DASNWBQkCCwsNKgICGwYBEgEFARwZhQgDDQidXzyLCYIchxENKxlrgToFiHSBV?=
	=?us-ascii?q?z+Dcy6CVoFyARIBgyCCVQKZJisHAoFwiiqDDIgHhVaLB4Z6DyGBNiNhcU0ggQQ?=
	=?us-ascii?q?GgjKCJReOGT0wiyiCOQEB?=
X-IPAS-Result: =?us-ascii?q?A2EuBQB7W0Rb/y/dVdFcHQEBBQELAYJTdoFhKIN6gR2THII?=
	=?us-ascii?q?KiDaHboUigWYBCoRsAoJHITcVAQIBAQIBAQICAmkohTgBAQEDASNWBQkCCwsNK?=
	=?us-ascii?q?gICGwYBEgEFARwZhQgDDQidXzyLCYIchxENKxlrgToFiHSBVz+Dcy6CVoFyARI?=
	=?us-ascii?q?BgyCCVQKZJisHAoFwiiqDDIgHhVaLB4Z6DyGBNiNhcU0ggQQGgjKCJReOGT0wi?=
	=?us-ascii?q?yiCOQEB?=
Received: from mail-wr1-f47.google.com ([209.85.221.47])
	by smtp.ulb.ac.be with ESMTP/TLS/AES128-GCM-SHA256;
	10 Jul 2018 09:10:52 +0200
Received: by mail-wr1-f47.google.com with SMTP id g6-v6so4457982wrp.0
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 00:10:53 -0700 (PDT)
X-Gm-Message-State: APt69E0zG1bEhUGBHqGgL0YVbZt15ERbhrdUPXtV3Yi9hQdhU2UMfreO
	M6qBdTXJBqs0z72PDbnfBx/m2n5c8bQ9M+B4D1o=
X-Google-Smtp-Source: AAOMgpc98NpR3ZZ3PnyMILs8YnjbaGenDhKoDZtjcG+6JwVvz+Lh/D2tdC8m7JzCqDeNclTTWRi6SVS9Mb/ZzcRJ148=
X-Received: by 2002:adf:a015:: with SMTP id
	k21-v6mr16125796wrk.202.1531206652807; 
	Tue, 10 Jul 2018 00:10:52 -0700 (PDT)
MIME-Version: 1.0
References: <CALcgO_4bg5JX1Zf93fJY671GnCLk_sDR6qesPBcym9q3QiACbw@mail.gmail.com>
	<CAJ86T=Wea6yCsqxn+ZfMQ=tXC2d8FWxGv9b7TFZ1E57FLBhyjA@mail.gmail.com>
	<CALcgO_5bC0R6+KbkvGzUWasA89iV4eWb71xyV_qj9qzFeytz-g@mail.gmail.com>
	<CAJ86T=U7SaXgaoPc4sYJf3FeVvAY2rqHEkZ=9Z92nzn3vH2KDQ@mail.gmail.com>
	<CALcgO_7c3OdgMiDQuHwDDr-YTrqibkZ0J6UEBYy++vKjGtq6HQ@mail.gmail.com>
In-Reply-To: <CALcgO_7c3OdgMiDQuHwDDr-YTrqibkZ0J6UEBYy++vKjGtq6HQ@mail.gmail.com>
From: Michael Allwright <michael.allwright@ulb.ac.be>
Date: Tue, 10 Jul 2018 09:11:23 +0200
X-Gmail-Original-Message-ID: <CALcgO_6Wr2WhXSXwYeE3dQZZfmTtfP2sTQuC=PGVd2-w3Yg=9Q@mail.gmail.com>
Message-ID: <CALcgO_6Wr2WhXSXwYeE3dQZZfmTtfP2sTQuC=PGVd2-w3Yg=9Q@mail.gmail.com>
To: armccurdy@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: Including a header from an external kernel module
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
X-List-Received-Date: Tue, 10 Jul 2018 07:10:56 -0000
Content-Type: multipart/alternative; boundary="0000000000009e517a05709fd4b1"

--0000000000009e517a05709fd4b1
Content-Type: text/plain; charset="UTF-8"

Am I correct in expecting that, if I do everything correctly, my header
file from module-a should end up
in ~/poky/build/tmp/work-shared/machine/kernel-source/include/linux/mfd

Michael Allwright

Postdoctoral Researcher at IRIDIA
Phone: +32 2 650 2273
Email: michael.allwright@ulb.ac.be


On Tue, 10 Jul 2018 at 07:53, Michael Allwright <michael.allwright@ulb.ac.be>
wrote:

>
>
> On Tue., 10 Jul. 2018, 00:15 Andre McCurdy, <armccurdy@gmail.com> wrote:
>
>> On Mon, Jul 9, 2018 at 3:07 PM, Michael Allwright
>> <michael.allwright@ulb.ac.be> wrote:
>> > Yes, it ended up in the development package in the do_install_append
>> > attempt
>>
>> How did you confirm that (ie that the header ended up in the
>> module-a-dev package) ?
>
>
> In the build directory, I can see that the header file is in the
> module-a-dev directory under split packages.
>
>
>> > , but I couldn't #include it in the second module (file didn't exist
>> > in the include search paths).
>>
>> Did you add:
>>
>>   DEPENDS = "module-a"
>>
>> to the module-b recipe?
>>
>
> Yes, I did this.
>
> > I would point out though, that I am interested in what is the correct
>> way to
>> > do this, and not just in finding some workaround / hack so that it
>> works...
>>
>> That's good to hear.
>>
>
> So am I on the right track or should I be doing this differently?
>
>
>> > On Mon., 9 Jul. 2018, 19:47 Andre McCurdy, <armccurdy@gmail.com> wrote:
>> >>
>> >> On Mon, Jul 9, 2018 at 8:27 AM, Michael Allwright
>> >> <michael.allwright@ulb.ac.be> wrote:
>> >> > Hello,
>> >> >
>> >> > I think it would be useful to extend the hello-mod recipe in
>> >> > meta-skeleton
>> >> > to demonstrate some slightly more complicated scenarios. For
>> example, I
>> >> > am
>> >> > trying to find out how to have two external kernel modules A and B,
>> >> > where
>> >> > module B #includes a header file provided by module A.
>> >> >
>> >> > I have made module B depend on module A, however, I believe I am
>> still
>> >> > missing one or two steps in my recipe for module A such that the
>> header
>> >> > file
>> >> > is copied into the shared kernel staging directory where module B can
>> >> > find
>> >> > it.
>> >> >
>> >> > So far I have tried the following:
>> >> >
>> >> > FILES_${PN}-dev += "/usr/include/linux/mfd/module-a.h"
>> >> >
>> >> > FILES_kernel-headers += "${includedir}/linux/mfd/module-a.h"
>> >> >
>> >> > do_install_append () {
>> >> >    install -d ${D}${includedir}/linux/mfd
>> >> >    install -m 644 ${S}/module-a
>> ${D}${includedir}/linux/mfd/module-a.h
>> >> > }
>> >>
>> >> And what happened after you tried the above? Did the header not end up
>> >> in the -dev package for module A? Did the module A recipe not create a
>> >> -dev package? Something else?
>> >>
>> >> > In module B, I want to be able to:
>> >> >
>> >> > #include <linux/mfd/module-a.h>
>> >> >
>>
>

--0000000000009e517a05709fd4b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Am I correct in expecting that, if I do everything correct=
ly, my header file from module-a should end up in=C2=A0~/poky/build/tmp/wor=
k-shared/machine/kernel-source/include/linux/mfd<br clear=3D"all"><div><div=
 dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"lt=
r"><div><div dir=3D"ltr"><div style=3D"font-size:12.8px"><br></div><div sty=
le=3D"font-size:12.8px">Michael Allwright</div><div style=3D"font-size:12.8=
px"><span style=3D"font-size:12.8px"><br></span></div><div style=3D"font-si=
ze:12.8px"><span style=3D"font-size:12.8px">Postdoctoral Researcher at IRID=
IA</span><br></div><div style=3D"font-size:12.8px"><span style=3D"font-size=
:12.8px">Phone:=C2=A0+32 2 650 2273</span><br></div><div style=3D"font-size=
:12.8px">Email: <a href=3D"mailto:michael.allwright@ulb.ac.be" target=3D"_b=
lank">michael.allwright@ulb.ac.be</a></div></div></div></div></div></div></=
div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue,=
 10 Jul 2018 at 07:53, Michael Allwright &lt;<a href=3D"mailto:michael.allw=
right@ulb.ac.be">michael.allwright@ulb.ac.be</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"auto"><div><br><br><div class=3D"gmail=
_quote"><div dir=3D"ltr">On Tue., 10 Jul. 2018, 00:15 Andre McCurdy, &lt;<a=
 href=3D"mailto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Mon, Jul 9, 2018 =
at 3:07 PM, Michael Allwright<br>
&lt;<a href=3D"mailto:michael.allwright@ulb.ac.be" rel=3D"noreferrer" targe=
t=3D"_blank">michael.allwright@ulb.ac.be</a>&gt; wrote:<br>
&gt; Yes, it ended up in the development package in the do_install_append<b=
r>
&gt; attempt<br>
<br>
How did you confirm that (ie that the header ended up in the<br>
module-a-dev package) ?</blockquote></div></div><div dir=3D"auto"><br></div=
><div dir=3D"auto">In the build directory, I can see that the header file i=
s in the module-a-dev directory under split packages.</div><div dir=3D"auto=
"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
&gt; , but I couldn&#39;t #include it in the second module (file didn&#39;t=
 exist<br>
&gt; in the include search paths).<br>
<br>
Did you add:<br>
<br>
=C2=A0 DEPENDS =3D &quot;module-a&quot;<br>
<br>
to the module-b recipe?<br></blockquote></div></div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">Yes, I did this.</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
&gt; I would point out though, that I am interested in what is the correct =
way to<br>
&gt; do this, and not just in finding some workaround / hack so that it wor=
ks...<br>
<br>
That&#39;s good to hear.<br></blockquote></div></div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">So am I on the right track or should I be doing thi=
s differently?</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div clas=
s=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
&gt; On Mon., 9 Jul. 2018, 19:47 Andre McCurdy, &lt;<a href=3D"mailto:armcc=
urdy@gmail.com" rel=3D"noreferrer" target=3D"_blank">armccurdy@gmail.com</a=
>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Jul 9, 2018 at 8:27 AM, Michael Allwright<br>
&gt;&gt; &lt;<a href=3D"mailto:michael.allwright@ulb.ac.be" rel=3D"noreferr=
er" target=3D"_blank">michael.allwright@ulb.ac.be</a>&gt; wrote:<br>
&gt;&gt; &gt; Hello,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I think it would be useful to extend the hello-mod recipe in<=
br>
&gt;&gt; &gt; meta-skeleton<br>
&gt;&gt; &gt; to demonstrate some slightly more complicated scenarios. For =
example, I<br>
&gt;&gt; &gt; am<br>
&gt;&gt; &gt; trying to find out how to have two external kernel modules A =
and B,<br>
&gt;&gt; &gt; where<br>
&gt;&gt; &gt; module B #includes a header file provided by module A.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I have made module B depend on module A, however, I believe I=
 am still<br>
&gt;&gt; &gt; missing one or two steps in my recipe for module A such that =
the header<br>
&gt;&gt; &gt; file<br>
&gt;&gt; &gt; is copied into the shared kernel staging directory where modu=
le B can<br>
&gt;&gt; &gt; find<br>
&gt;&gt; &gt; it.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; So far I have tried the following:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; FILES_${PN}-dev +=3D &quot;/usr/include/linux/mfd/module-a.h&=
quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; FILES_kernel-headers +=3D &quot;${includedir}/linux/mfd/modul=
e-a.h&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; do_install_append () {<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 install -d ${D}${includedir}/linux/mfd<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 install -m 644 ${S}/module-a ${D}${includedir}/l=
inux/mfd/module-a.h<br>
&gt;&gt; &gt; }<br>
&gt;&gt;<br>
&gt;&gt; And what happened after you tried the above? Did the header not en=
d up<br>
&gt;&gt; in the -dev package for module A? Did the module A recipe not crea=
te a<br>
&gt;&gt; -dev package? Something else?<br>
&gt;&gt;<br>
&gt;&gt; &gt; In module B, I want to be able to:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; #include &lt;linux/mfd/module-a.h&gt;<br>
&gt;&gt; &gt;<br>
</blockquote></div></div></div>
</blockquote></div>

--0000000000009e517a05709fd4b1--
