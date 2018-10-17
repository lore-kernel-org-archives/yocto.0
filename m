Return-Path: <marwen.brikcha@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17F5AE00BBF; Wed, 17 Oct 2018 00:32:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marwen.brikcha[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.45 listed in list.dnswl.org]
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA465E00B5E
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 00:32:18 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id s6-v6so7610055ioa.11
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 00:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=u6k7qipKYUp93y+XvOKMvPne62Lgemwbu1Lp9fresGY=;
	b=VvN7gGu1B2PE4hUc1ZVsHGgonih6VKPp7izdiwVBCc59yYDsu6M90KEsO1Ipx3acWB
	tvxmNRhyRNjSuIvtsYd8OxiARjNKvhkZUTPJ/0tHpujgrhEyeq1SBjXdkzlphwDVGYKQ
	yWTSJ0TKBNed1KVUxTd/IqigY+kvYhQZvD7rY531/uzXLiCobyjfKaZZXJkUJY3ylKWG
	JwenAU8DyUJQHw+OyZE9UZUc75Nh6R2a5VvDDaF7FposHKOqUaEps8cPz+Le+sYKcOEO
	Ix9GdfakAaQ7YVzNb8GX69f1+4Ug6HTigyqAqLHnPaNfYA4kq9522jVwM39LIQ8M4jSu
	8ODw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=u6k7qipKYUp93y+XvOKMvPne62Lgemwbu1Lp9fresGY=;
	b=n3+qGqZJuIU0rn562FyVhGXMvBtFhy946U9iwN0btA7TAIRG0+S41GFC/abie+s5I2
	ASTTyNx9CBeP22HbQKEwnDpuUvq+bN5HJrI3OGj4YYSsE6TI++GLObtho8wMGvv1ri55
	U2BMfnuMmZEE2WM5OqszmlfCLW0zaJKOvH9j63f6azTeReXOsNcPX+T3gRXHBg/FVaMq
	G/JiixBx8lDkplJaE1AXe5G9I+lc7d4Rx/LSqshNGotRTYcvB9xsWx6TP337rKEm7BjB
	kN9wBXoQrueT8KmChk3LZFb7RqbnmMTyAloZAX2pAKn0F9mPQf2KPh8fpxqc94XMUfLF
	JQeA==
X-Gm-Message-State: ABuFfohk7QsCQqq/cICJRpTou80WTWVUCRm+C2h9dn+uIoivmkBMmg0f
	ONTvDLcNdu1Z2s8eWE84eCAuV6Rq/E0o5yQV4o1mRTWx
X-Google-Smtp-Source: ACcGV63FajiP4NzMZUMc/bYxM50nkxqRDZlC+kHA687UW25kj7U+sk+zFlPUB8jXvG5eYSqHPv8mMSmtOjzmB5Ys0Dc=
X-Received: by 2002:a6b:e91a:: with SMTP id
	u26-v6mr15582402iof.200.1539761537879; 
	Wed, 17 Oct 2018 00:32:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjmEbDYvLenPW1D4=x+HxOmC4JUiJ4495xCbYzp6BZkxbAzwA@mail.gmail.com>
	<CAJTo0LZPS49=UK5E_1AJZa7tW7frxv8E4NRHMXRca3iW-e=asQ@mail.gmail.com>
	<CAFjmEbC2Vpe7wa+_ys0MmKFRkoWk2wgP1PE8rhTmJx6ev5EenA@mail.gmail.com>
	<CAJTo0LY3H1rckDOU-S05XzzEFRBeRrOci2D49Bu-YTZe2+4+sQ@mail.gmail.com>
	<CAFjmEbBJUJaGHc-zf8YTSRPsA=Nigd0YLDTwVTe=vJYXar60cg@mail.gmail.com>
	<CAJTo0LZxz-1E68vDX24v_LirA1+mCjA+irDeBEdVcQ8+oQb+fw@mail.gmail.com>
In-Reply-To: <CAJTo0LZxz-1E68vDX24v_LirA1+mCjA+irDeBEdVcQ8+oQb+fw@mail.gmail.com>
From: Marwen BRIKCHA <marwen.brikcha@gmail.com>
Date: Wed, 17 Oct 2018 09:32:06 +0200
Message-ID: <CAFjmEbD7DHsCmGNLQSoQQPt_P7eU8V65yOAp+N-XRh3EduLNcw@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Poky 2.4.1 - Remove python3 from build
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
X-List-Received-Date: Wed, 17 Oct 2018 07:32:19 -0000
Content-Type: multipart/alternative; boundary="0000000000008112f7057867ab20"

--0000000000008112f7057867ab20
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes. I've seen compilation log and it does do_install in final image.
It's installed in /usr/lib64/python3.5 on RootFS.

Le mer. 17 oct. 2018, =C3=A0 00 h 48, Burton, Ross <ross.burton@intel.com> =
a
=C3=A9crit :

> On Tue, 16 Oct 2018 at 14:06, Marwen BRIKCHA <marwen.brikcha@gmail.com>
> wrote:
> >
> > because, when i run :
> > :
> > $> bitbake -v opencv
> > I can see that python3 is fetched, configure, ... etc
> > So, i think it the responsible for this.
>
> Please remember to CC the list.
>
> Python being built doesn't lead to Python being installed in the
> image.  Have a look at the image manifest (in deploy/images) or look
> at what is actually installed inside the image.
>
> Ross
>

--0000000000008112f7057867ab20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes. I&#39;ve seen compilation log and it does do_install =
in final image.<div>It&#39;s installed in /usr/lib64/python3.5 on RootFS.</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">Le mer. 17 oct. 2=
018, =C3=A0 00 h 48, Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.c=
om" target=3D"_blank">ross.burton@intel.com</a>&gt; a =C3=A9crit=C2=A0:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">On Tue, 16 Oct 2018 at 14:06, Marwen B=
RIKCHA &lt;<a href=3D"mailto:marwen.brikcha@gmail.com" target=3D"_blank">ma=
rwen.brikcha@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; because, when i run :<br>
&gt; :<br>
&gt; $&gt; bitbake -v opencv<br>
&gt; I can see that python3 is fetched, configure, ... etc<br>
&gt; So, i think it the responsible for this.<br>
<br>
Please remember to CC the list.<br>
<br>
Python being built doesn&#39;t lead to Python being installed in the<br>
image.=C2=A0 Have a look at the image manifest (in deploy/images) or look<b=
r>
at what is actually installed inside the image.<br>
<br>
Ross<br>
</blockquote></div>

--0000000000008112f7057867ab20--
