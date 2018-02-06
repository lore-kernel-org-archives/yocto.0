Return-Path: <gigitekwork@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D9B2E00E9D; Mon,  5 Feb 2018 22:23:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,MISSING_HEADERS,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gigitekwork[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2971E00DB5
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 22:23:57 -0800 (PST)
Received: by mail-it0-f44.google.com with SMTP id u12-v6so11044086ite.0
	for <yocto@yoctoproject.org>; Mon, 05 Feb 2018 22:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc; 
	bh=QmZuceOjPQ4s2aQYTaSN53WCJL9pQnwRwdnnBGJnuVs=;
	b=rGrifojV5GkCdjJYyD6YDv68HB9DSN85cYOioigiTKyRhHyIkAJipWOGK3SBUU1d5w
	kkqvDU/hKGT3mTOmvpbQeqlloQ9hXCMa/lWXatRXkWXXAnydldOs40wPNO8GVyrUu66g
	zWkJ9gaiBuMUKRpW2EUrnni0KbgqLwVYrrvxEyjuk+q51DvYkx/dMwMXdNwZvcHVV3qb
	SiPjOCbHs+4YfSgsF/uI1n/0tmm24CnUrgiB/9D5+V0eIrsVxRD/oET1JTim5Xnt3OHh
	sC/8VV9AhX9O5LHcnGcLtLKQd3ZeNfRQOhA99R/xmBorRE6I+L2SnG2OWRi/LT0+mLg5
	/gFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc;
	bh=QmZuceOjPQ4s2aQYTaSN53WCJL9pQnwRwdnnBGJnuVs=;
	b=NTKL/FFUVmpZvHA0F4yj2K4ICqrHR8yuo9N/+V32yB5gyza1p7GtFYY8QHdgXxJT6y
	RZR0r8iy6Spt8ONlrWN0zuaRbjYxlma7Sul1+JcvlGihgV6N8IisKO2NnNYK5o+8gML9
	/PDh+hGtX0xn541Il3wuDORaCkuJnw0xusVi/JxIuh2Le2zUhk8gKmO6z1Tq32ZkmBwV
	p2XK0mQWKbd0t5mBH5a+0li2IIlU7LMXN9lmKTONuDo1rV9DmR16vOhWIiUTm6koaivf
	Id4TvZxedoP3QTrudDikHBnYKYA8mIUlp8KMtJVF5sFBPqhqZBdt87NK2KRJKaFrUIUO
	eelw==
X-Gm-Message-State: AKwxytclR7okbgidGbHwuAURCj4yghs/hrh6bjtBKL4olp5UJKddFi4x
	5OvuJOnI2s311Qn78OfJb81/ecoAMC/jMhWfR0lw3Q==
X-Google-Smtp-Source: AH8x2242abpCDGPFNnR6z4DXlrnR/Su9ro7uD91bRvwiAjpjTZIaFC8aSyyNfkD6/zWjoJ3DezHqY1Em2zEYcw0CsSQ=
X-Received: by 10.36.211.140 with SMTP id n134mr3198691itg.0.1517898236765;
	Mon, 05 Feb 2018 22:23:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.92.207 with HTTP; Mon, 5 Feb 2018 22:23:56 -0800 (PST)
In-Reply-To: <509c47f9-1ffa-2466-b8ac-d79009704bef@gmail.com>
References: <CAAm399QPwZssmXYXCh7RYQeZ7O3+1RobA5oRFOzXh-HcGOCjSg@mail.gmail.com>
	<509c47f9-1ffa-2466-b8ac-d79009704bef@gmail.com>
From: Gigi W <gigitekwork@gmail.com>
Date: Tue, 6 Feb 2018 08:23:56 +0200
Message-ID: <CAAm399TLwVdy4Jbf7toGeM4vLtVuDOMxpiiCUT5AQZj2q5fnnw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build directory toolchain
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
X-List-Received-Date: Tue, 06 Feb 2018 06:23:58 -0000
Content-Type: multipart/alternative; boundary="001a113b4c9035333605648539c2"

--001a113b4c9035333605648539c2
Content-Type: text/plain; charset="UTF-8"

Thanks for the input !

The idea was that we have the build directory for building our project +
full image, so everything is already there, already setup, all the
tools+libraries etc.
If a new dependency is added, your environment is updated during bitbaking
the project, so everything is updated "automatically" when you are going to
build outside.
Generating a installer and then installing that in some other location
involves extra, manual steps. Also if dependencies are added, you have to
manually generate it again and install it.
So it didn't look that simple when we started the project, and using the
toolchain derived from the build directory was more "natural"... - But this
seems to not work anymore.
As I remember that build directory toolchain (build/tmp/environment-setup-
cortexa5hf-neon-poky-linux-gnueabi) was also used and needed if one was
going to use Eclipse for building a Yocto project.(you can choose from a
"Standalone Pre-built Toolchain" or a "Build System Derived Toolchain")

But maybe, I'm missing something ... (?)
Your suggestion is to go for generating a SDK installer? Using "bitbake -c
populate_sdk myimage"

Thanks and regards

On Mon, Feb 5, 2018 at 8:11 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On 2/5/18 3:25 AM, Gigi Work wrote:
> > What is the correct/official way to setup a toolchain derived from the
> > build directory - if it has everything in there and my app compiles fine
> > using bitbake, I don't want to create a toolchain installer and install
> > separately.
>
> I think SDK is the standard way of exporting the build environment for
> external compilations. I would like to understand why would you not want
> doing that.
>
> >
> > My recipe compiles successfully using "bitbake my-recipe", but compiling
> > outside, fails:
> >
> > First I run "bitbake meta-ide-support" and then source the environment
> > (build/tmp/environment-setup-cortexa5hf-neon-poky-linux-gnueabi)
> > It fails because it cannot find cmake.
>
>
> you can also use the devtool workflow to compile your application while
> you are in the build environment.
>
> http://www.yoctoproject.org/docs/2.5/sdk-manual/sdk-
> manual.html#using-devtool-in-your-sdk-workflow
>
> >
> > I'm using the rocko branch.
> >
> > Any help is appreciated !
> > Thanks
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113b4c9035333605648539c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thanks for the input !<br><br>The idea was that =
we have the=20
build directory for building our project + full image, so everything is=20
already there, already setup, all the tools+libraries etc. <br>If a new=20
dependency is added, your environment is updated during bitbaking the=20
project, so everything is updated &quot;automatically&quot; when you are go=
ing to=20
build outside.<br>Generating a installer and then installing that in=20
some other location involves extra, manual steps. Also if dependencies=20
are added, you have to manually generate it again and install it. <br>So
 it didn&#39;t look that simple when we started the project, and using the=
=20
toolchain derived from the build directory was more &quot;natural&quot;... =
- But=20
this seems to not work anymore.<br>As I remember that build directory toolc=
hain (build/tmp/environment-setup-<wbr>cortexa5hf-neon-poky-linux-<wbr>gnue=
abi)
 was also used and needed if one was going to use Eclipse for building a
 Yocto project.(you can choose from a &quot;Standalone Pre-built Toolchain&=
quot;=20
or a &quot;Build System Derived Toolchain&quot;)<br><br>But maybe, I&#39;m =
missing something ... (?)<br></div>Your suggestion is to go for generating =
a SDK installer? Using &quot;bitbake -c populate_sdk myimage&quot;<br><br><=
/div>Thanks and regards<br></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Mon, Feb 5, 2018 at 8:11 PM, Khem Raj <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D=
"">On 2/5/18 3:25 AM, Gigi Work wrote:<br>
&gt; What is the correct/official way to setup a toolchain derived from the=
<br>
&gt; build directory - if it has everything in there and my app compiles fi=
ne<br>
&gt; using bitbake, I don&#39;t want to create a toolchain installer and in=
stall<br>
&gt; separately.<br>
<br>
</span>I think SDK is the standard way of exporting the build environment f=
or<br>
external compilations. I would like to understand why would you not want<br=
>
doing that.<br>
<span class=3D""><br>
&gt;<br>
&gt; My recipe compiles successfully using &quot;bitbake my-recipe&quot;, b=
ut compiling<br>
&gt; outside, fails:<br>
&gt;<br>
&gt; First I run &quot;bitbake meta-ide-support&quot; and then source the e=
nvironment<br>
&gt; (build/tmp/environment-setup-<wbr>cortexa5hf-neon-poky-linux-<wbr>gnue=
abi)<br>
&gt; It fails because it cannot find cmake.<br>
<br>
<br>
</span>you can also use the devtool workflow to compile your application wh=
ile<br>
you are in the build environment.<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/2.5/sdk-manual/sdk-manual.html#=
using-devtool-in-your-sdk-workflow" rel=3D"noreferrer" target=3D"_blank">ht=
tp://www.yoctoproject.org/<wbr>docs/2.5/sdk-manual/sdk-<wbr>manual.html#usi=
ng-devtool-in-<wbr>your-sdk-workflow</a><br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; I&#39;m using the rocko branch.<br>
&gt;<br>
&gt; Any help is appreciated !<br>
&gt; Thanks<br>
&gt;<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a113b4c9035333605648539c2--
