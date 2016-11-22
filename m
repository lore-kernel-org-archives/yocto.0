Return-Path: <giorgos.migdos@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07EB9E00546; Tue, 22 Nov 2016 12:35:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (giorgos.migdos[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C44D9E0049F
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 12:35:03 -0800 (PST)
Received: by mail-qk0-f181.google.com with SMTP id n204so42031005qke.2
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 12:35:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=vW/Px4+YuDZwLwZjxfs47ZUnS86rhgM2WlzXFJCvtOU=;
	b=u1mNIzRQuzXBJUABpK1hp/p/IbUZ5Pt0W6TsCjT3kyyqwsCUgAIpMaxif0eoE4Pxnn
	PUrhI0MPkYjE7kvASLKmHzcggCgHHUFCFZgePl9qR2BzlryoVfvv8Q573411TWTa9a7Y
	/0kJbQBNrNZF/h8K/QhplOQimG9zkdK303bFb50UiBKoGUk3X4V3WEHCDouLl0/6Hsqy
	yooRLtYFTFwINHZjEJGh0dgqz+KQN6KvbSG9DWrhrHrwRBKdQeiqCTdy1eSzN/sm8a7A
	pYelL0tDYH7KOooJsQpvWTOr0KVqPi9UDTh4P7d6V1i9mkw1iQi6ai9E2x5Nyf1Qywe5
	Yjvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=vW/Px4+YuDZwLwZjxfs47ZUnS86rhgM2WlzXFJCvtOU=;
	b=jde09H+9zgf5AlzwbRMjvVIZbN0RzEorMzM0SjZE8/KKmo9HC7y4p88VRuNXnBBsqh
	H3ZGMy4KzuF3kmqnbjLFzpCyXmjWk3Li3tOjf50uGhE3T3KVBhm3X8HNbseSNxY7rprn
	iUh761qkluUTeXYUgsOw3hcUA348SIhWMx4bunyrl7YjvXyTIo6id/sL+NfQ4YIh9+6K
	yclTXVKUcCiUtH3XQJGN0oBAfWW9JieDlTWKi4q9IHI20+rw8d+UWga1U0HUZlOv3lgo
	MwLGB80211Nmi4IpWSx6C9moZT/U9Cd3CtK4TrbMfISla8My9bRZVqjwfTvgEMECGgfH
	lksw==
X-Gm-Message-State: AKaTC00Rr+fR0WRFXBYwY7q6m0n8N8YGfGHojzRAC/FGKpSkUr6rTO0+vR6FsSJyy1ssNXdK/mftX/lR9GnOiQ==
X-Received: by 10.55.127.7 with SMTP id a7mr23542348qkd.204.1479846901973;
	Tue, 22 Nov 2016 12:35:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.57.225 with HTTP; Tue, 22 Nov 2016 12:35:01 -0800 (PST)
In-Reply-To: <CAMKF1spuRdKn2dEgXV_AkeHum0-F70LOTbe1RR2xmHOd4QKRZg@mail.gmail.com>
References: <CA+Z_yWLCumQDsuzCLeqzQk244J=6z5Ztxc9JCkfYpGHm09rBSg@mail.gmail.com>
	<CAMKF1spuRdKn2dEgXV_AkeHum0-F70LOTbe1RR2xmHOd4QKRZg@mail.gmail.com>
From: George Migdos <giorgos.migdos@gmail.com>
Date: Tue, 22 Nov 2016 22:35:01 +0200
Message-ID: <CA+Z_yWK6nN5by06D7RmruQLYt1TC8TM+GoHaxcQesWTVtoE6Yg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building core-image-base for PPC64
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
X-List-Received-Date: Tue, 22 Nov 2016 20:35:07 -0000
Content-Type: multipart/alternative; boundary=94eb2c05e562ea29710541e9b4ef

--94eb2c05e562ea29710541e9b4ef
Content-Type: text/plain; charset=UTF-8

Thanks Khem - actually this (including the ppc64 layer from openembedded)
is what I initially tried but it fails with the current master...
Most probably I am doing something very wrong - I guess I will have to
experiment a little further... Thanks again!

On Sat, Nov 19, 2016 at 7:35 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Sat, Nov 19, 2016 at 1:41 AM, George Migdos <giorgos.migdos@gmail.com>
> wrote:
> > Hello,
> >
> > I would like to build and run the core-image-base recipe for PPC64 using
> > Toaster on Linux Mint 18 64-bit (4.4.0-21-generic).
> >
> > When using the Morty release I do not seem to be able to find a
> compatible
> > machine, whereas when using the current master HEAD (commit id:
> > 7c3a47ed8965c3a3eb90a9a4678d5caedbba6337) there seems to be a QEmu ppc64
> > compatible machine (and the related qemu layers) but the build fails
> during
> > the parsing stage.
> >
> > Is it at all possible to build and run core-image-base for an emulated
> PPC64
> > system?
>
> Usually, you would go to layerindex and look for machine/layer/recipe
> you are looking for
>
> e.g.
>
> https://layers.openembedded.org/layerindex/branch/master/machines/?q=ppc64
>
>
> >
> > Thank you for your time.
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--94eb2c05e562ea29710541e9b4ef
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Khem - actually this (including the ppc64 layer fro=
m openembedded) is what I initially tried but it fails with the current mas=
ter...<br>Most probably I am doing something very wrong - I guess I will ha=
ve to experiment a little further... Thanks again!<br></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Sat, Nov 19, 2016 at 7:35 PM,=
 Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" targe=
t=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><span class=3D"">On Sat, Nov 19, 2016 at 1:41 AM, George Migd=
os &lt;<a href=3D"mailto:giorgos.migdos@gmail.com">giorgos.migdos@gmail.com=
</a>&gt; wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I would like to build and run the core-image-base recipe for PPC64 usi=
ng<br>
&gt; Toaster on Linux Mint 18 64-bit (4.4.0-21-generic).<br>
&gt;<br>
&gt; When using the Morty release I do not seem to be able to find a compat=
ible<br>
&gt; machine, whereas when using the current master HEAD (commit id:<br>
&gt; 7c3a47ed8965c3a3eb90a9a4678d5c<wbr>aedbba6337) there seems to be a QEm=
u ppc64<br>
&gt; compatible machine (and the related qemu layers) but the build fails d=
uring<br>
&gt; the parsing stage.<br>
&gt;<br>
&gt; Is it at all possible to build and run core-image-base for an emulated=
 PPC64<br>
&gt; system?<br>
<br>
</span>Usually, you would go to layerindex and look for machine/layer/recip=
e<br>
you are looking for<br>
<br>
e.g.<br>
<br>
<a href=3D"https://layers.openembedded.org/layerindex/branch/master/machine=
s/?q=3Dppc64" rel=3D"noreferrer" target=3D"_blank">https://layers.openembed=
ded.<wbr>org/layerindex/branch/master/<wbr>machines/?q=3Dppc64</a><br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt;<br>
&gt; Thank you for your time.<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--94eb2c05e562ea29710541e9b4ef--
