Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29A73E009C3; Fri, 22 Jan 2016 07:52:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1AD8E00928
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 07:52:43 -0800 (PST)
Received: by mail-io0-f169.google.com with SMTP id 77so91871345ioc.2
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 07:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=9xyVoWQTrET0uyJmUsJG4oy4cqqD3ppmXkXBw11SYSQ=;
	b=Km02gIfHJnlUBHLbNcLdJEMEVH436xvThT5sfobQN7UM+G8487HaXcU7FKGsctcWF4
	lxNB7a5L83GtNL091dDQq8pGtaIST2vZOqsTcGlJt0JzxRtjdhVPqoIQK3MVux6iyITE
	OFSRXn2Vm5lr8bE8/A2eTSOj7Jvd7uuC2Te4gav4x1lYbD2811Rgr/Onc+xmEfHvpR3n
	y4LIjSDRcC6uwpnNz9HCqQqxWjnl5jcJm1F5P3Hb8U9lAI1HQbgCZZVb4F7Ow8d2lzuI
	wHPxUtOmgxiiiuZ45bHEA1IiXFTcyCeQtL1d+B7NsfTHtlp/Nmfkjr2Oahq3f9VkMG7W
	UK1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=9xyVoWQTrET0uyJmUsJG4oy4cqqD3ppmXkXBw11SYSQ=;
	b=Lo7lLo8m2dnAlh6JiKl2CmHI1g7DRy+00Sd/X4dalpOEAItMYOl3gDK58WYkqUbnYZ
	WMY9iBQt/2Jqa9bfPS5A6t9d4ivZRzOxr95sSwQE9z6BH/QKn0Pi4aFxjqzMf/TZ8uX2
	mF0g+7pICcvHFD0LTue9UEgYsup0KHUrqzjLBkZm8BGv4/TVWNJwIlnoNmXBzddXu9Z4
	JTrommhtaCi/bKL367C0UadSFwSS7584LAMgWxggdxJrA14Crf5YDDvt3Ak+lnFRuiWI
	qsfQM5Ky/+3UD4phGXOtG/2Zc9t/Y2KClPcMLna52+6j9trzHFpU4HYzqXAz8mj1ueyV
	G8pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc:content-type;
	bh=9xyVoWQTrET0uyJmUsJG4oy4cqqD3ppmXkXBw11SYSQ=;
	b=mO+KzsDTnw1HfNOTqRTA+fXDJLduNjHiSne4dSlXJukpZ/CY9jSEh+6CuhSGjnc7aE
	iYE12F+pKxTZdBmkxsjaTGDfNH6iPvFlXzYCvfLWaYTp6vffEYx6MNu77VNW1hLtFxql
	IC2rhRvBFa4/5aC8my6Xt24jPIhHz3uU4Vn3bLneP7188cdtqAxA0UZMAT1i5umRLWsi
	/UTd5bSRzEXfazUQqb4ndaK2Sa5CxA9/+i+pkXx/cCUBhskbbk48yKU4mx/kE2qcwNYk
	DGhgKwG9zzTh6zI5MHgi/sG1qVpi+k/n+rT7dADdRj+rcXnM8GvnmwbU+PFDg6yZrwyE
	JKxg==
X-Gm-Message-State: AG10YOR1ppATCfNrAI625r3R0IJrzo7McsIHSUu0+eENV1sZNShYFufPL91oM1YtvQvPD5rTGeIVaUNTPVck6w==
X-Received: by 10.107.28.80 with SMTP id c77mr4828475ioc.98.1453477962706;
	Fri, 22 Jan 2016 07:52:42 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.104.194 with HTTP; Fri, 22 Jan 2016 07:52:22 -0800 (PST)
In-Reply-To: <56A1D2D1.1060305@mlbassoc.com>
References: <56A1D2D1.1060305@mlbassoc.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 22 Jan 2016 08:52:22 -0700
X-Google-Sender-Auth: L7J-km1NPvvuQCC_QA3MOTLNXxY
Message-ID: <CABcZANn0aCBu2PsMHGmSmOny6WZ5djeFEYA87YzyK0Ahp4eNLQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Fixing packaging errors
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
X-List-Received-Date: Fri, 22 Jan 2016 15:52:47 -0000
Content-Type: multipart/alternative; boundary=001a11409b18a7f49c0529ee3557

--001a11409b18a7f49c0529ee3557
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 21, 2016 at 11:57 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> ERROR: QA Issue: non -dev/-dbg/nativesdk- package contains symlink .so:
> graphviz path
> 'work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/packages-split/graphviz/usr/lib/graphviz/libgvplugin_gd.so'
> [dev-so]
>
> Looking at the installed image, I see:
>
> $ ls -l
> tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0/image/usr/lib/graphviz/
> total 3016
> -rwxr-xr-x 3 gthomas gthomas    1107 Jan 22 07:48 libgvplugin_core.la
> lrwxrwxrwx 1 gthomas gthomas      25 Jan 22 07:48 libgvplugin_core.so ->
> libgvplugin_core.so.6.0.0
> lrwxrwxrwx 1 gthomas gthomas      25 Jan 22 07:48 libgvplugin_core.so.6 ->
> libgvplugin_core.so.6.0.0
> -rwxr-xr-x 1 gthomas gthomas  341780 Jan 22 07:48
> libgvplugin_core.so.6.0.0
> -rwxr-xr-x 3 gthomas gthomas    1143 Jan 22 07:48
> libgvplugin_dot_layout.la
> lrwxrwxrwx 1 gthomas gthomas      31 Jan 22 07:48
> libgvplugin_dot_layout.so -> libgvplugin_dot_layout.so.6.0.0
> lrwxrwxrwx 1 gthomas gthomas      31 Jan 22 07:48
> libgvplugin_dot_layout.so.6 -> libgvplugin_dot_layout.so.6.0.0
> -rwxr-xr-x 1 gthomas gthomas  616340 Jan 22 07:48
> libgvplugin_dot_layout.so.6.0.0
> -rwxr-xr-x 3 gthomas gthomas    1451 Jan 22 07:48 libgvplugin_gd.la
> lrwxrwxrwx 1 gthomas gthomas      23 Jan 22 07:48 libgvplugin_gd.so ->
> libgvplugin_gd.so.6.0.0
> lrwxrwxrwx 1 gthomas gthomas      23 Jan 22 07:48 libgvplugin_gd.so.6 ->
> libgvplugin_gd.so.6.0.0
> -rwxr-xr-x 1 gthomas gthomas  141248 Jan 22 07:48 libgvplugin_gd.so.6.0.0
> -rwxr-xr-x 3 gthomas gthomas    1155 Jan 22 07:48
> libgvplugin_neato_layout.la
> lrwxrwxrwx 1 gthomas gthomas      33 Jan 22 07:48
> libgvplugin_neato_layout.so -> libgvplugin_neato_layout.so.6.0.0
> lrwxrwxrwx 1 gthomas gthomas      33 Jan 22 07:48
> libgvplugin_neato_layout.so.6 -> libgvplugin_neato_layout.so.6.0.0
> -rwxr-xr-x 1 gthomas gthomas 1949008 Jan 22 07:48
> libgvplugin_neato_layout.so.6.0.0
> -rwxr-xr-x 3 gthomas gthomas    2504 Jan 22 07:48 libgvplugin_rsvg.la
> lrwxrwxrwx 1 gthomas gthomas      25 Jan 22 07:48 libgvplugin_rsvg.so ->
> libgvplugin_rsvg.so.6.0.0
> lrwxrwxrwx 1 gthomas gthomas      25 Jan 22 07:48 libgvplugin_rsvg.so.6 ->
> libgvplugin_rsvg.so.6.0.0
> -rwxr-xr-x 1 gthomas gthomas   10764 Jan 22 07:48
> libgvplugin_rsvg.so.6.0.0
>
> I have two questions about this.
> * What is wrong with the setup of the libgvplugin_gd library
>   and how can I fix it?
>

Generally the .so for a normal library, non-plugin, is only required for
development. In this case, it's a plugin, so it'll be dlopen'd, so I expect
you could just opt-out of the QA check in this case.


> * All the rest of the libraries are set up the same.  Why don't
>   they get the same error?
>

IIRC there was a bug in the package qa bits which caused later messages to
suppress earlier due to teh use of a dictionary for the messages (the wrong
structure for this, no idea why it was done that way). There have been one
or more patches on teh list for this recently.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11409b18a7f49c0529ee3557
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Jan 21, 2016 at 11:57 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":er" class=3D"a3s=
" style=3D"overflow:hidden">ERROR: QA Issue: non -dev/-dbg/nativesdk- packa=
ge contains symlink .so: graphviz path &#39;work/cortexa9hf-vfp-neon-amltd-=
linux-gnueabi/graphviz/2.38.0-r0/packages-split/graphviz/usr/lib/graphviz/l=
ibgvplugin_gd.so&#39; [dev-so]<br>
<br>
Looking at the installed image, I see:<br>
<br>
$ ls -l tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/graphviz/2.38.0-r0=
/image/usr/lib/graphviz/<br>
total 3016<br>
-rwxr-xr-x 3 gthomas gthomas=C2=A0 =C2=A0 1107 Jan 22 07:48 <a href=3D"http=
://libgvplugin_core.la" rel=3D"noreferrer" target=3D"_blank">libgvplugin_co=
re.la</a><br>
lrwxrwxrwx 1 gthomas gthomas=C2=A0 =C2=A0 =C2=A0 25 Jan 22 07:48 libgvplugi=
n_core.so -&gt; libgvplugin_core.so.6.0.0<br>
lrwxrwxrwx 1 gthomas gthomas=C2=A0 =C2=A0 =C2=A0 25 Jan 22 07:48 libgvplugi=
n_core.so.6 -&gt; libgvplugin_core.so.6.0.0<br>
-rwxr-xr-x 1 gthomas gthomas=C2=A0 341780 <span tabindex=3D"0" class=3D"aBn=
"><span class=3D"aQJ">Jan 22 07:48</span></span> libgvplugin_core.so.6.0.0<=
br>
-rwxr-xr-x 3 gthomas gthomas=C2=A0 =C2=A0 1143 Jan 22 07:48 <a href=3D"http=
://libgvplugin_dot_layout.la" rel=3D"noreferrer" target=3D"_blank">libgvplu=
gin_dot_layout.la</a><br>
lrwxrwxrwx 1 gthomas gthomas=C2=A0 =C2=A0 =C2=A0 31 Jan 22 07:48 libgvplugi=
n_dot_layout.so -&gt; libgvplugin_dot_layout.so.6.0.0<br>
lrwxrwxrwx 1 gthomas gthomas=C2=A0 =C2=A0 =C2=A0 31 Jan 22 07:48 libgvplugi=
n_dot_layout.so.6 -&gt; libgvplugin_dot_layout.so.6.0.0<br>
-rwxr-xr-x 1 gthomas gthomas=C2=A0 616340 <span tabindex=3D"0" class=3D"aBn=
"><span class=3D"aQJ">Jan 22 07:48</span></span> libgvplugin_dot_layout.so.=
6.0.0<br>
-rwxr-xr-x 3 gthomas gthomas=C2=A0 =C2=A0 1451 Jan 22 07:48 <a href=3D"http=
://libgvplugin_gd.la" rel=3D"noreferrer" target=3D"_blank">libgvplugin_gd.l=
a</a><br>
lrwxrwxrwx 1 gthomas gthomas=C2=A0 =C2=A0 =C2=A0 23 Jan 22 07:48 libgvplugi=
n_gd.so -&gt; libgvplugin_gd.so.6.0.0<br>
lrwxrwxrwx 1 gthomas gthomas=C2=A0 =C2=A0 =C2=A0 23 Jan 22 07:48 libgvplugi=
n_gd.so.6 -&gt; libgvplugin_gd.so.6.0.0<br>
-rwxr-xr-x 1 gthomas gthomas=C2=A0 141248 <span tabindex=3D"0" class=3D"aBn=
"><span class=3D"aQJ">Jan 22 07:48</span></span> libgvplugin_gd.so.6.0.0<br=
>
-rwxr-xr-x 3 gthomas gthomas=C2=A0 =C2=A0 1155 Jan 22 07:48 <a href=3D"http=
://libgvplugin_neato_layout.la" rel=3D"noreferrer" target=3D"_blank">libgvp=
lugin_neato_layout.la</a><br>
lrwxrwxrwx 1 gthomas gthomas=C2=A0 =C2=A0 =C2=A0 33 <span tabindex=3D"0" cl=
ass=3D"aBn"><span class=3D"aQJ">Jan 22 07:48</span></span> libgvplugin_neat=
o_layout.so -&gt; libgvplugin_neato_layout.so.6.0.0<br>
lrwxrwxrwx 1 gthomas gthomas=C2=A0 =C2=A0 =C2=A0 33 <span tabindex=3D"0" cl=
ass=3D"aBn"><span class=3D"aQJ">Jan 22 07:48</span></span> libgvplugin_neat=
o_layout.so.6 -&gt; libgvplugin_neato_layout.so.6.0.0<br>
-rwxr-xr-x 1 gthomas gthomas 1949008 <span tabindex=3D"0" class=3D"aBn"><sp=
an class=3D"aQJ">Jan 22 07:48</span></span> libgvplugin_neato_layout.so.6.0=
.0<br>
-rwxr-xr-x 3 gthomas gthomas=C2=A0 =C2=A0 2504 Jan 22 07:48 <a href=3D"http=
://libgvplugin_rsvg.la" rel=3D"noreferrer" target=3D"_blank">libgvplugin_rs=
vg.la</a><br>
lrwxrwxrwx 1 gthomas gthomas=C2=A0 =C2=A0 =C2=A0 25 Jan 22 07:48 libgvplugi=
n_rsvg.so -&gt; libgvplugin_rsvg.so.6.0.0<br>
lrwxrwxrwx 1 gthomas gthomas=C2=A0 =C2=A0 =C2=A0 25 Jan 22 07:48 libgvplugi=
n_rsvg.so.6 -&gt; libgvplugin_rsvg.so.6.0.0<br>
-rwxr-xr-x 1 gthomas gthomas=C2=A0 =C2=A010764 <span tabindex=3D"0" class=
=3D"aBn"><span class=3D"aQJ">Jan 22 07:48</span></span> libgvplugin_rsvg.so=
.6.0.0<br>
<br>
I have two questions about this.<br>
* What is wrong with the setup of the libgvplugin_gd library<br>
=C2=A0 and how can I fix it?<br></div></blockquote><div><br></div><div>Gene=
rally the .so for a normal library, non-plugin, is only required for develo=
pment. In this case, it&#39;s a plugin, so it&#39;ll be dlopen&#39;d, so I =
expect you could just opt-out of the QA check in this case.<br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div id=3D":er" class=3D"a3s" st=
yle=3D"overflow:hidden">
* All the rest of the libraries are set up the same.=C2=A0 Why don&#39;t<br=
>
=C2=A0 they get the same error?</div></blockquote></div><br></div><div clas=
s=3D"gmail_extra">IIRC there was a bug in the package qa bits which caused =
later messages to suppress earlier due to teh use of a dictionary for the m=
essages (the wrong structure for this, no idea why it was done that way). T=
here have been one or more patches on teh list for this recently.<br>-- <br=
><div class=3D"gmail_signature">Christopher Larson<br>clarson at kergoth do=
t com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<=
br>Senior Software Engineer, Mentor Graphics</div>
</div></div>

--001a11409b18a7f49c0529ee3557--
