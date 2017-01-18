Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 398CAE0049D; Wed, 18 Jan 2017 10:31:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7DBBE0030B
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 10:31:03 -0800 (PST)
Received: by mail-oi0-f49.google.com with SMTP id m124so11719878oif.1
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 10:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UvLJn9PUVozbyZSQKQdsA1dS6sM/kbGDum9vDHyG8Vw=;
	b=sl2x4VO7zdwycdo98eFgTuv2QOsydBpTmp3OFbfOWWliVD/i5lneLC737vv8kdmyu0
	QO73UIpqOo7JkOdb66HeBmUASpqgQEnsDwSUzK//SdIzS7riEFKATeaYWXKJB6E/cap1
	98wWXIsIT0iUSk5VlK8oDxwEVZiUeMBR631tYQkb5opAM6PZQQ0BJtPhf8R4bPjkg16e
	syPCWXP4gV/bW9fwXcqqyvUZoFFR/e+q/kvVC8f+RExm1l2pn0JYNZ168YaDxdsOLmfc
	SNBbAjPqFCcwkjZUaluXXkCVsCUhnrRP1vTdiHt9abAtumwgTydGoY3D43qBgGs4RzXR
	Tl+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UvLJn9PUVozbyZSQKQdsA1dS6sM/kbGDum9vDHyG8Vw=;
	b=TnlIf/3Ykx0P47Tv/DpnvwZvtUjJ6WB+AGHuGTmTsJ1pzIir1RkPwV/+yPKvXWh5oF
	Xf/w1gl22RXlwiYdNqFnRhvl1ZqKNE63v7Z57Nl68hu9o3o9IBlko3TZ3Z8GnyAXa/d6
	NetQoWRhic9ZtuxGOQIlV8QaGbigCquX7//PyXQZeAKeQGKRO3PU7PBBjj2HLEf/wf4r
	8ke/nTPRjn+JXIVQXpi1EG7NS9dQDLKA6ShJcJ96Tnowinxvk/qVZSuVR7Xjw2FJsYs6
	2kraHhmmHgAn8R2b0ujC7w55HkX6ZkY6NtRJuIBCPxIPzV/5yFZ1Rp3cRv8r4uUHGxSO
	5W2A==
X-Gm-Message-State: AIkVDXIOutk2b65PPmzT+GNiNAUuR1SrPZla/+1c4bgTzBlO0ql9XZVh2SgDRYwfZKE7JgtJowpwnVsiyjsQ4w==
X-Received: by 10.202.117.210 with SMTP id q201mr2080385oic.126.1484764262622; 
	Wed, 18 Jan 2017 10:31:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.48.108 with HTTP; Wed, 18 Jan 2017 10:31:02 -0800 (PST)
In-Reply-To: <20170118163008.GG14533@carbonA>
References: <1484551617-11222-1-git-send-email-paul@paulbarker.me.uk>
	<8b8a6e45-6aa1-1536-92ae-837192b97ca7@mlbassoc.com>
	<d027a8ed-4f40-e4cb-d1de-349d93343f63@mlbassoc.com>
	<E4828DAD-529B-4C43-A13B-67096B6741EE@paulbarker.me.uk>
	<20170118154024.GA31825@carbonA>
	<CAMjhiJiDszPCeLvBn1Hoopu99Ot5BGMm-7pFRUWv+TpQka9Cqg@mail.gmail.com>
	<20170118163008.GG14533@carbonA>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Wed, 18 Jan 2017 19:31:02 +0100
Message-ID: <CAMjhiJhxXFyZzUZQox-7q09vg1Tx9Wg+UjpkrrHiTahCCYpwiA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto List <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH 0/2] Drop kernel versions 4.7 and 4.8
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
X-List-Received-Date: Wed, 18 Jan 2017 18:31:05 -0000
Content-Type: multipart/alternative; boundary=001a1135064a72f9de0546629ee1

--001a1135064a72f9de0546629ee1
Content-Type: text/plain; charset=UTF-8

Andrei,

On Wed, Jan 18, 2017 at 5:30 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> On Wed, Jan 18, 2017 at 05:24:05PM +0100, Leon Woestenberg wrote:
> > On Wed, Jan 18, 2017 at 4:40 PM, Andrei Gherzan <andrei@gherzan.ro>
> wrote:
> >
> > >
> > > Based we should only keep 4.4 and 4.10 (or 4.9).
> > >
> > > Ane comments before I proceed? :)
> > >
> > >
> > I think keeping 4.9 (Long Term Support kernel) for sure.
>
> Is it?
> https://www.kernel.org/category/releases.html
>
>
The maintainer says so:
https://plus.google.com/+gregkroahhartman/posts/DjCWwSo7kqY

Regards,

Leon.

--001a1135064a72f9de0546629ee1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Andrei,<br><div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Wed, Jan 18, 2017 at 5:30 PM, Andrei Gherzan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@=
gherzan.ro</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><span class=3D"gmail-">On Wed, Jan 18, 2017 at 05:24:05PM +0100,=
 Leon Woestenberg wrote:<br>
&gt; On Wed, Jan 18, 2017 at 4:40 PM, Andrei Gherzan &lt;<a href=3D"mailto:=
andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; Based we should only keep 4.4 and 4.10 (or 4.9).<br>
&gt; &gt;<br>
&gt; &gt; Ane comments before I proceed? :)<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; I think keeping 4.9 (Long Term Support kernel) for sure.<br>
<br>
</span>Is it?<br>
<a href=3D"https://www.kernel.org/category/releases.html" rel=3D"noreferrer=
" target=3D"_blank">https://www.kernel.org/<wbr>category/releases.html</a><=
br>
<br></blockquote></div><br></div><div class=3D"gmail_extra">The maintainer =
says so: <a href=3D"https://plus.google.com/+gregkroahhartman/posts/DjCWwSo=
7kqY">https://plus.google.com/+gregkroahhartman/posts/DjCWwSo7kqY</a><br><b=
r></div><div class=3D"gmail_extra">Regards,<br></div><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra">Leon.<br></div></div></div>

--001a1135064a72f9de0546629ee1--
