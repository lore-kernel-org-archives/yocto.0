Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26B4BE00756; Wed, 27 Apr 2016 09:19:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7360E006D3
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 09:19:21 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id k129so7277882iof.3
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 09:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=Sctk8ArkQZrZAmPwMNK6bdJA64mDZQAD77TtP7L8lBY=;
	b=dzd6frBeciSEI9vQgr4JXeC2uLqwAlZODst6CwQKrPN6rClJyoQ1CgcELpT5NaX1qG
	dE4nL3sWSB6MLCwtjKgFrfWJ5/x4NahJrZpMGjZJlVkjkYv9t0erH3NsgebZ3MBrvx5G
	s94X96C28k695q7LdrfsXET87qCpaG8rBtTHYd/e70XcyVAE6TLHSunQM1IN4tKNCMey
	/zY0iFoXwCtmgtUNsYwRfTOejscl8t+3CH7h+8VZac732G9EJNTmckJlgTkBZ1/VFXmt
	1E8OsqQ43vbJo059Vk414zyHEUXMZi1SQJiI0DDJJ1EHWnzf5n391oo+cm58XzriVmkO
	sTaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=Sctk8ArkQZrZAmPwMNK6bdJA64mDZQAD77TtP7L8lBY=;
	b=dzO/3TBLrMC+f+6YsVju7rvbniV9lX47tJLrOKxX7cs2BbdsPxZIabSAO8sYaHSKLJ
	swD7XH1f65givJC6TMW9TUmhJLQOclb+meCodkvavwJ52y7JcSCWVeoPxj9q03jZw6M7
	u2x1x9QNbMBbgOqK856Dp3XAyYuXTj8Vc4O4XeoOQzm60vRQa/dfS8/ScKbD5+j/jDid
	9RPwTKV52TDBVlE7/xJafFwSMVlguTYV4KKBNZUCbqPTNFNtdk18tC2fS0iY0lPx9shW
	lubCW7OBMK+UurQeSeIhmdA+KeEzcmd1ECccemkDYcC504v+bZwyMcYnUGTkK1k2ZTvG
	YKmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=Sctk8ArkQZrZAmPwMNK6bdJA64mDZQAD77TtP7L8lBY=;
	b=Ntsqio4BfJ4WCPw7EzZ89e6wviX7+9xM4cPkbxEGmzgdYi+OVRvdVYbC7PkJyyZSXc
	HKIkvJhI8ewgYSfNr0xeg+ywC/bi1A18+VFtbbpLEjvt3oFEXdSAYKjzUkZVzNvKhVIM
	VO+P797gelJJXRb7ldK9IRLl/LIwNPlBkKntnd5Eo1+cM9yjV119VG2PhxA67vaDqSlS
	dZSUB5ZzeDSFx1/Fv7f8cIG+F0lTTz/mePS6fjRJnM57gD0E1yTv3v2A61JI8ynpbICx
	aIK7w0Hzfy7aFaO1Sm87QEZ6CF3+efU/+mOhFlHCmzJxjB/wSdsUvelD5Y5xpmojut95
	DJSQ==
X-Gm-Message-State: AOPr4FVa3RqiqMU0zs+TeQr2bFPPLuUT1jPifbuszIGRrz9iuoPMI5HOrF6rKJs4w1I8h5awBbAxn8I6Vi17OQ==
X-Received: by 10.107.2.70 with SMTP id 67mr12043375ioc.70.1461773961139; Wed,
	27 Apr 2016 09:19:21 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.134.70 with HTTP; Wed, 27 Apr 2016 09:19:01 -0700 (PDT)
In-Reply-To: <CAFkk2KSM3yNdy1jayEkNXNrZMyWu3TNQ86=Eg33C2Dm8X70h2A@mail.gmail.com>
References: <CAFkk2KSM3yNdy1jayEkNXNrZMyWu3TNQ86=Eg33C2Dm8X70h2A@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Wed, 27 Apr 2016 09:19:01 -0700
X-Google-Sender-Auth: zOgS55C0dxqPhWvaFr9ZFklJGCQ
Message-ID: <CABcZANk4XqaniZYunL+wjYdofozm-JbX82df94c6YjLPn3N2LA@mail.gmail.com>
To: Ulf Magnusson <ulfalizer@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Dumping (inferred) do_task[vardeps] for some do_task
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
X-List-Received-Date: Wed, 27 Apr 2016 16:19:26 -0000
Content-Type: multipart/alternative; boundary=001a11396814b21da0053179c524

--001a11396814b21da0053179c524
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 27, 2016 at 9:11 AM, Ulf Magnusson <ulfalizer@gmail.com> wrote:

> I'm trying to get a feel for how BitBake infers task dependencies. The
> easiest way (but I'm open to suggestions) seems to be to dump the
> value of do_task[vardeps] for a particular recipe after the inferred
> dependencies are added.
>
> What's a good way to dump do_task[vardeps]? I tried using getVarFlag()
> in an anonymous Python function, but it only catches dependencies
> explicitly added to do_task[vardeps]. Maybe [vardeps] is never
> assigned the complete set of dependencies internally, or maybe the
> anonymous Python function is called too early.
>

That's correct, the full list is not stored in the vardeps.

generate_dependencies() in bitbake/lib/bb/data.py also looked
> promising, but maybe there's a better places further up the callstack.
>

That is a reasonable place in the code, yes. You can inspect a certain
amount of information in the signature data files, but I'm not sure it
drills down to the level you desire.

My 'bb' tool's 'show' subcommand can show not just a variable but also its
dependencies, perhaps that might be of use? I haven't touched it in ages,
but in theory it should work.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11396814b21da0053179c524
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Apr 27, 2016 at 9:11 AM, Ulf Magnusson <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:ulfalizer@gmail.com" target=3D"_blank">ulfalizer@gmail.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I&#39;m trying to g=
et a feel for how BitBake infers task dependencies. The<br>
easiest way (but I&#39;m open to suggestions) seems to be to dump the<br>
value of do_task[vardeps] for a particular recipe after the inferred<br>
dependencies are added.<br>
<br>
What&#39;s a good way to dump do_task[vardeps]? I tried using getVarFlag()<=
br>
in an anonymous Python function, but it only catches dependencies<br>
explicitly added to do_task[vardeps]. Maybe [vardeps] is never<br>
assigned the complete set of dependencies internally, or maybe the<br>
anonymous Python function is called too early.<br></blockquote><div><br></d=
iv><div>That&#39;s correct, the full list is not stored in the vardeps.=C2=
=A0</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
generate_dependencies() in bitbake/lib/bb/data.py also looked<br>
promising, but maybe there&#39;s a better places further up the callstack.<=
span class=3D"HOEnZb"><font color=3D"#888888"><br>
</font></span></blockquote></div><br>That is a reasonable place in the code=
, yes. You can inspect a certain amount of information in the signature dat=
a files, but I&#39;m not sure it drills down to the level you desire.</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">My &#39;bb&=
#39; tool&#39;s &#39;show&#39; subcommand can show not just a variable but =
also its dependencies, perhaps that might be of use? I haven&#39;t touched =
it in ages, but in theory it should work.<br>-- <br><div class=3D"gmail_sig=
nature">Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBa=
ke, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engin=
eer, Mentor Graphics</div>
</div></div>

--001a11396814b21da0053179c524--
