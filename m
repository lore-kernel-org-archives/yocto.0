Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC5D3E00827; Sun, 25 Jan 2015 14:18:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 920A4E003AB
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 14:18:19 -0800 (PST)
Received: by mail-wg0-f54.google.com with SMTP id b13so6097617wgh.13
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 14:18:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Vk93OEdqOfCst/3FY8h4X1SxKunDNHOycVUlLxI7tlE=;
	b=WK6LPoQD1T36VTqDN24piP9EwPyFs4Uj+cr9b6ynTkRMDo4lEUBCTITp894P+LeMkE
	zMUxwGtv+08c2kKwnwm+e/3gEwDX1Hf4cNigOnLUa2DUAZktElCFW2Psr+i6NYsWEiIq
	c4ESMo6R14TZdo7jGpfm67GeIYVr6iDYEa+S2n7m7+D7xbN8vQB8DdxksWRM0Y3ZuzZE
	Ch9Y7oD9AFdzBBreVbH6zPvqmGory4PDyl5Wx72poNSmVL9a9U/kIhZzWKdScYz1ntI2
	lWym1QnlffWTDhupoDO3TbAbHXCwp5kmk8SBTq/RlujbsqceW8ADkxXKS6F7LtZVUXLH
	mMlw==
X-Gm-Message-State: ALoCoQkCaNbAbIdn9XgoqQCjE8YniabLxS7vReWaYGC77wASpTUsdRBAk69amtBucAtkXWb63b8x
X-Received: by 10.194.189.138 with SMTP id gi10mr38967603wjc.86.1422224298617; 
	Sun, 25 Jan 2015 14:18:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.107.132 with HTTP; Sun, 25 Jan 2015 14:17:58 -0800 (PST)
X-Originating-IP: [109.100.140.128]
In-Reply-To: <54BC4E32.60603@philipp-wagner.com>
References: <CAOrUntbLEeYVK18nbsnt5Dyiz6wYVJc5GKimwwL1qeD65=tD8w@mail.gmail.com>
	<54BAABF4.8000300@jenslucius.de>
	<CAK18fxEN7pVqNTTrbvybTdcOUhvRknxMwj1ge0R5wWnxJkQv3A@mail.gmail.com>
	<CAOrUntYKmWch0iQSsm9qxHQNcshxtH20iGrCKE2c0pY6mAW0Hg@mail.gmail.com>
	<54BC4E32.60603@philipp-wagner.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 26 Jan 2015 00:17:58 +0200
Message-ID: <CAK18fxFBvrVpZ5LqcHPyq87_HAaA9OV8r56jmiSUv_xK8+yYWw@mail.gmail.com>
To: Philipp Wagner <lists@philipp-wagner.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: armhf support for meta-raspberrypi
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
X-List-Received-Date: Sun, 25 Jan 2015 22:18:23 -0000
Content-Type: multipart/alternative; boundary=047d7bf0d3261c42ed050d816668

--047d7bf0d3261c42ed050d816668
Content-Type: text/plain; charset=UTF-8

Hello,

On Mon, Jan 19, 2015 at 2:22 AM, Philipp Wagner <lists@philipp-wagner.com>
wrote:

> Am 18.01.2015 um 23:07 schrieb Andrea Benini:
> > Thanks folks, and thank you Andrei.
> > As suggested by toolmmy and pleasant folks in this thread I'm using
> > DEFAULTTUNE option. I had already seen the arm1176jzfshf after a small
> > search into the meta-raspberry layer but I didn't know how to use it.
> > Now I have recompiled my toolchain with this option enabled and it
> > worked fine, I need to compile other tools (C, C++ libs, toolchain,
> > binutils) for my own test and I'll put it on a real Pi. It takes a while
> > but after this full recompile it seems everything is fine.
> > If someone is interested in some benchmarking or other tests please let
> > me know, my current image works. I'd like to add other packages useful
> > for a real distro (Python 2/3, mc, nano, gcc, ext utils, ...) as I did
> > before with the armel build but seems to be working without troubles so
> > I'll normally continue my job with yocto and the Pi. My armel image
> > works on Pi model A, B (256 and 512) and B+, as soon as I'll have a
> > complete armhf image I'll do complete tests on them as well.
>
> I did a comparison between softfp and hardfp a while back (i.e. using
> hard float both times, difference is just in the calling convention)
> using the standard web benchmarks Octane and sunspider with a full RPI
> image and Firefox built with the corresponding compiler options. The
> results showed no significant difference between the two, leading me to
> the conclusion that the hardfp trouble (breaking the ABI) is not worth
> the effort over softfp.
>

This is because the compile is already using the optimized instructions. So
this change is actually redundant and won't improve the performance in any
way. So, the current setup seems to be the one to use.

-- 
*Andrei Gherzan*

--047d7bf0d3261c42ed050d816668
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Mon, Jan 19, 2015 at 2:22 AM, Philipp Wagner <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:lists@philipp-wagner.com" target=3D"_blank">lists@ph=
ilipp-wagner.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Am=
 18.01.2015 um 23:07 schrieb Andrea Benini:<br>
<span class=3D"">&gt; Thanks folks, and thank you Andrei.<br>
&gt; As suggested by toolmmy and pleasant folks in this thread I&#39;m usin=
g<br>
&gt; DEFAULTTUNE option. I had already seen the arm1176jzfshf after a small=
<br>
&gt; search into the meta-raspberry layer but I didn&#39;t know how to use =
it.<br>
&gt; Now I have recompiled my toolchain with this option enabled and it<br>
&gt; worked fine, I need to compile other tools (C, C++ libs, toolchain,<br=
>
&gt; binutils) for my own test and I&#39;ll put it on a real Pi. It takes a=
 while<br>
&gt; but after this full recompile it seems everything is fine.<br>
&gt; If someone is interested in some benchmarking or other tests please le=
t<br>
&gt; me know, my current image works. I&#39;d like to add other packages us=
eful<br>
&gt; for a real distro (Python 2/3, mc, nano, gcc, ext utils, ...) as I did=
<br>
&gt; before with the armel build but seems to be working without troubles s=
o<br>
&gt; I&#39;ll normally continue my job with yocto and the Pi. My armel imag=
e<br>
&gt; works on Pi model A, B (256 and 512) and B+, as soon as I&#39;ll have =
a<br>
&gt; complete armhf image I&#39;ll do complete tests on them as well.<br>
<br>
</span>I did a comparison between softfp and hardfp a while back (i.e. usin=
g<br>
hard float both times, difference is just in the calling convention)<br>
using the standard web benchmarks Octane and sunspider with a full RPI<br>
image and Firefox built with the corresponding compiler options. The<br>
results showed no significant difference between the two, leading me to<br>
the conclusion that the hardfp trouble (breaking the ABI) is not worth<br>
the effort over softfp.<br></blockquote><div><br></div><div>This is because=
 the compile is already using the optimized instructions. So this change is=
 actually redundant and won&#39;t improve the performance in any way. So, t=
he current setup seems to be the one to use.</div></div><div><br></div>-- <=
br><div class=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"text-align=
:center"></div><div style=3D"text-align:center"><div align=3D"left"><b styl=
e=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:cente=
r">Andrei Gherzan</b><br></div></div></div></div>
</div></div>

--047d7bf0d3261c42ed050d816668--
