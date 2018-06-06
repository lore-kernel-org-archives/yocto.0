Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2E63E01589; Wed,  6 Jun 2018 08:58:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69712E00DD9
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 08:58:01 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id c128-v6so5708980oig.11
	for <yocto@yoctoproject.org>; Wed, 06 Jun 2018 08:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GMT6CXn2CeABimzuR2fxgm2wywthdUcijpNKnHbnJXo=;
	b=ShVhrZbJ/rBUwYiX/g6UVmheFglRwMvnoouZo9a2zj/ImG7rvUQmZkPI1FNIB2IbM9
	EU0Pyr38qT+Q8NPowQ/r8fQgTnVQjDJuraVflh5JJBJj1YSReBH1+AOL6GPv6fFIerFT
	ATkdVGcfwLNyE/LCpQfQqte5UDZ2d/FEBfV3pRgZtc0am7OmoFR4sQ18xFnZsi/R9u5t
	YjTMkHExrpzvUB2lEMvICTsadi03imftPGjVw7lvuAI7NwsulgV5rU2rQVfmLM+aA4Ev
	x/ftgvzPaoa8RxAGZaaALSX+8FmWCzE1MWYOu6Lez/XfbdPrxEdqi8I+tk2W97U5boxq
	QegQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GMT6CXn2CeABimzuR2fxgm2wywthdUcijpNKnHbnJXo=;
	b=MQrV+F/P7esduklrmwAEtbYbvWumfurxcyTlDN2U7k25UdO9NY5Xq1UMMZdrKIHmV/
	6nXurr7ztgB9xK88QWpiBm2EcC2jTNMCnlcUBlDOyd8yzJyFgXLo7lr3e4YfNJGA4OZ7
	ARed3S/H7OjZK49ZIlZkAvrDA5pijNmnEc7KdMJDwLKLLkWIG477nHmjB/ONnUidFDML
	Vxe5+nUIRxa9Bmu5WcJGDmr4fLu2o76oMjbtucDj6LLdVnonwod1Od6uMRZDbMB88YH3
	HKtWhuQ7q1hie3gcyeGYAGP8Velchv3MX7P/6a74oj7T5yhT+BB3VOVDllUZHJeKO2ZH
	VR5w==
X-Gm-Message-State: APt69E1IFeWbqO41Ab/7+TltkZS8xVOYx0v+ze4VR+Sdj/94IihwH9fc
	2kTpY8S3svRUEdJAGP3adVd0dkXG35geUpSv2iw=
X-Google-Smtp-Source: ADUXVKJgWpoQi2XKdn2m/W0FPYanBm536kC7A0Rzv3+nkfjxZLPuht9Acks5RgNsyuT3py2vVzoZXB+Qy8ZdOJq57fU=
X-Received: by 2002:aca:654d:: with SMTP id j13-v6mr2155749oiw.0.1528300680617;
	Wed, 06 Jun 2018 08:58:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:205:0:0:0:0:0 with HTTP;
	Wed, 6 Jun 2018 08:57:59 -0700 (PDT)
In-Reply-To: <CAGAf8LxKCHYZgcU_90FtAfx7+v_XZWSAVFE0ysEkTCDyBVFk1Q@mail.gmail.com>
References: <800E589716441541A37F6120DCDD24557A2D8296@IRSMSX101.ger.corp.intel.com>
	<b1f684d7f1beb9e680a17771c66ca76096dfba71.camel@linuxfoundation.org>
	<CAGAf8LxKCHYZgcU_90FtAfx7+v_XZWSAVFE0ysEkTCDyBVFk1Q@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 6 Jun 2018 08:57:59 -0700
Message-ID: <CAFNP8OsC5TsTt1D4VxXi-R=Lp746RLmjffV2HTaopyuHdxU5Hg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 
	Kristi Rifenbark <kristi@buzzcollectivemarketing.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Osier-mixon,
	Jeffrey" <jeffrey.osier-mixon@intel.com>
Subject: Re: Gratitude
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
X-List-Received-Date: Wed, 06 Jun 2018 15:58:01 -0000
Content-Type: multipart/alternative; boundary="0000000000002da6e0056dfb3b64"

--0000000000002da6e0056dfb3b64
Content-Type: text/plain; charset="UTF-8"

Jefro,

Sad to see you step down.  You have been great for the project and
especially for carrying the "documentation banner".... truly caring about
that aspect.  I hope you do great in your next role and we will keep in
touch.

Scott

On Wed, Jun 6, 2018 at 6:21 AM, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Good Luck, Jeffrey...
>
> I do not know you, but (knowing well about INTEL inside) I know that
> you liked what you did. I do sincerely hope that on the new INTEL
> assignment, you'll find Peace of Mind and R&D Joy!
>
> > ...I know there are a lot of behind the scenes things which
> > happen which all keep the project running smoothly.
>
> There are many players behind the scenes. Not only INTEL. This is the
> assurance (my best guess) of said/written above.
>
> Time Will Tell.
> Zoran
> _______
>
> On Wed, Jun 6, 2018 at 2:19 PM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > On Wed, 2018-06-06 at 06:42 +0000, Osier-mixon, Jeffrey wrote:
> >> I have been the Yocto Project community manager for over 7 years now,
> >> and have had the pleasure of knowing or conversing individually with
> >> several hundred of you. It is with mixed feelings that I must
> >> announce that I am stepping down from my position as the YP community
> >> manager and the Advisory Board chair after 7 years, as I am taking on
> >> a new role in my job.
> >
> > Thanks for everything you've done for the project, I'm sorry to see you
> > move on. As well as the obvious things, I know there are a lot of
> > behind the scenes things which happen which all keep the project
> > running smoothly. Good luck with the new role and I hope to see you
> > around at conferences etc. in the future, its a small world! :)
> >
> > Cheers,
> >
> > Richard
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000002da6e0056dfb3b64
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Jefro, <br></div><div><br></div><div>Sad to see you s=
tep down.=C2=A0 You have been great for the project and especially for carr=
ying the &quot;documentation banner&quot;.... truly caring about that aspec=
t.=C2=A0 I hope you do great in your next role and we will keep in touch.</=
div><div><br></div><div>Scott<br></div></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On Wed, Jun 6, 2018 at 6:21 AM, Zoran Stojsavlj=
evic <span dir=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com"=
 target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">Good Luck, Jeffrey...<br>
<br>
I do not know you, but (knowing well about INTEL inside) I know that<br>
you liked what you did. I do sincerely hope that on the new INTEL<br>
assignment, you&#39;ll find Peace of Mind and R&amp;D Joy!<br>
<br>
&gt; ...I know there are a lot of behind the scenes things which<br>
<span class=3D"">&gt; happen which all keep the project running smoothly.<b=
r>
<br>
</span>There are many players behind the scenes. Not only INTEL. This is th=
e<br>
assurance (my best guess) of said/written above.<br>
<br>
Time Will Tell.<br>
Zoran<br>
_______<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Wed, Jun 6, 2018 at 2:19 PM, Richard Purdie<br>
&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@<w=
br>linuxfoundation.org</a>&gt; wrote:<br>
&gt; On Wed, 2018-06-06 at 06:42 +0000, Osier-mixon, Jeffrey wrote:<br>
&gt;&gt; I have been the Yocto Project community manager for over 7 years n=
ow,<br>
&gt;&gt; and have had the pleasure of knowing or conversing individually wi=
th<br>
&gt;&gt; several hundred of you. It is with mixed feelings that I must<br>
&gt;&gt; announce that I am stepping down from my position as the YP commun=
ity<br>
&gt;&gt; manager and the Advisory Board chair after 7 years, as I am taking=
 on<br>
&gt;&gt; a new role in my job.<br>
&gt;<br>
&gt; Thanks for everything you&#39;ve done for the project, I&#39;m sorry t=
o see you<br>
&gt; move on. As well as the obvious things, I know there are a lot of<br>
&gt; behind the scenes things which happen which all keep the project<br>
&gt; running smoothly. Good luck with the new role and I hope to see you<br=
>
&gt; around at conferences etc. in the future, its a small world! :)<br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; Richard<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--0000000000002da6e0056dfb3b64--
