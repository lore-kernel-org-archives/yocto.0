Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CF46E00BF0; Fri, 18 Sep 2015 14:32:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C064E0076A
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 14:32:41 -0700 (PDT)
Received: by qgez77 with SMTP id z77so49836188qge.1
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 14:32:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=R3mMk7Yp3MGnVRmciIUWHiZ3nL7IUXVt2wkO74Io4Dc=;
	b=gPIGlBETbEpk74BPjcyRm8+swn/tW+0DStoqMBhUk95I4QAHEbCsNFqkYd7cFyxqOu
	7XtixaLMzgqeTEGD3kgEuRpGwWJ6aN29RCXb5ZyJBlHUTM4OgaN5DyEmZnAdUhhs2F9h
	a29OFfEGPM/TBiHwLDB3GxCf5FDfAGrIEPWKy/E+VXF3cJ5cNwz0ti6R5pDtbwmNYTBQ
	QXX4cfLUktmOvZlLatuc4fJzB3m40ZNUe+AMUBzy5QVVTE7N0fQV58mv8XnfI2ouORBJ
	IP3nkaldStx7WTIWlW1NyHZrQrl8R0b6AYR00z7lV808FvD9pO++vNe7LDc7xxTabW9t
	r/lw==
X-Gm-Message-State: ALoCoQnmt7jYLlx4ZF5NGlb9nRc1/GWRhbwRb6q7e0gp04c99NcrFrVJMRMCgy+OrxGAw6m0Jzf3
X-Received: by 10.140.132.71 with SMTP id 68mr9707940qhe.64.1442611960496;
	Fri, 18 Sep 2015 14:32:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Fri, 18 Sep 2015 14:32:21 -0700 (PDT)
In-Reply-To: <55FC7769.8030307@gnome.org>
References: <1960827785.38335.1441967539008.JavaMail.zimbra@visser.se>
	<CAJTo0LZY5kfRN3Ed1tBicPSX3yZOYExcO=U6eiccv2AkO4pE+g@mail.gmail.com>
	<55FC7769.8030307@gnome.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 18 Sep 2015 22:32:21 +0100
Message-ID: <CAJTo0LYbb-D=OnZvJGrKm5_LiCyuCwJu23jddT3dGoDVUgR7Fg@mail.gmail.com>
To: Dan Winship <danw@gnome.org>
Cc: Sander Visser <sander@visser.se>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libsoup license
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
X-List-Received-Date: Fri, 18 Sep 2015 21:32:42 -0000
Content-Type: multipart/alternative; boundary=001a113510d4745f7305200c4578

--001a113510d4745f7305200c4578
Content-Type: text/plain; charset=UTF-8

On 18 September 2015 at 21:43, Dan Winship <danw@gnome.org> wrote:

> It was initially written at a time when Ximian was explicitly using the
> "v2 only" license on evolution (because reasons), so it's possible that
> libsoup was intended to be v2 only, since it was more-or-less part of
> evolution. But then, Novell relicensed evolution to v2+ later on, so
> presumably, if libsoup actually was v2-only at that point (which it may not
> have been), then surely Novell *intended* to also make libsoup v2+, despite
> not having said so. So... "maybe it used to be v2+" + "probably it was
> intended to have been changed to v2+ later if it wasn't already" +
> "certainly everything written since 2007 was intended to be v2+" ==
> "probably definitely it's v2+ now" ? That's totally how the law works,
> right?
>

Thanks for the reply Dan, and yes that's totally how the law works.  Maybe
you should clarify this somewhere, or do you prefer the ambiguity?

Sander, a patch to make libsoup LGPLv2+ would be accepted by me on this
basis.

Ross

--001a113510d4745f7305200c4578
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 18 September 2015 at 21:43, Dan Winship <span dir=3D"ltr">&lt;<a href=3D=
"mailto:danw@gnome.org" target=3D"_blank">danw@gnome.org</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":4lc" class=3D"a3s" style=
=3D"overflow:hidden">It was initially written at a time when Ximian was exp=
licitly using the &quot;v2 only&quot; license on evolution (because reasons=
), so it&#39;s possible that libsoup was intended to be v2 only, since it w=
as more-or-less part of evolution. But then, Novell relicensed evolution to=
 v2+ later on, so presumably, if libsoup actually was v2-only at that point=
 (which it may not have been), then surely Novell *intended* to also make l=
ibsoup v2+, despite not having said so. So... &quot;maybe it used to be v2+=
&quot; + &quot;probably it was intended to have been changed to v2+ later i=
f it wasn&#39;t already&quot; + &quot;certainly everything written since 20=
07 was intended to be v2+&quot; =3D=3D &quot;probably definitely it&#39;s v=
2+ now&quot; ? That&#39;s totally how the law works, right?</div></blockquo=
te><div><br></div><div>Thanks for the reply Dan, and yes that&#39;s totally=
 how the law works.=C2=A0 Maybe you should clarify this somewhere, or do yo=
u prefer the ambiguity?</div><div><br></div><div>Sander, a patch to make li=
bsoup LGPLv2+ would be accepted by me on this basis.</div><div><br></div><d=
iv>Ross=C2=A0</div></div></div></div>

--001a113510d4745f7305200c4578--
