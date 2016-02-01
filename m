Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91555E00BDF; Sun, 31 Jan 2016 17:01:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F87CE00B9D
	for <yocto@yoctoproject.org>; Sun, 31 Jan 2016 17:01:35 -0800 (PST)
Received: by mail-io0-f179.google.com with SMTP id d63so123735605ioj.2
	for <yocto@yoctoproject.org>; Sun, 31 Jan 2016 17:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Zrgq5lTquD83rovnrG4OtBfBY5A2Zy1VOAjzAdlr6wY=;
	b=gtwqIXLu07nXvpUl+wKUmeo6ti16OSmh5mdZK9pt1Kz5iAIaDQv6mzmZ5ZOJCfrL5P
	UBdBbfNqLyGT66que8IaMzLNYWzjo44dXOrrNdyyOOxk2B1v3YRSkAILU4BpMiTrtaY0
	Hcp6jvNYIVzPWz/dVjg1C7JBTitgwg3sHeNiIeoO6lCtz4qIFbAgbwkweX+EW3hs7JDl
	TbQnP819InAVN2cORerxb9ff8kmoHyBYdyg+dyEXQo/YcqQsmld9mqtMSknQwvqxntWP
	P5o0wGqyxfO2zqY7khqQrzsk1RdAiuAdsm2rC1y9W8gMK6S2TZw6DAaGIQTgJtN3Nr4M
	7M5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Zrgq5lTquD83rovnrG4OtBfBY5A2Zy1VOAjzAdlr6wY=;
	b=SAiyLprHU7GyH8YIDHPLcygIevqshMT0D6lAoiygpN8znMuufc8kohBUhPuV8zSYqH
	W+2vKUE1WSrLJKfzL/33Y4SwhlK/9dJGb8aJYSPgm0w1FN9e1jQNGOFB2Ja8t/LDJAye
	W6V4fbOLaYsCVnPgiO9M2uBzIqheT1XOqeYeWuGFxid3QiPQlCnZBSeErE9JkcDrrrSf
	OW+3hRmfDoYZoVwoNpkqFVvzWJO6mHcj65+ttL5vCnKSFdk9+L+CIlRwHke+DuB4gRBa
	5igWX/iWCJrPltJtia7krPjiUcYcRPuDz/RqrTeNTMPCCDeJPZJWtxktzQWTecf93NYX
	Q1AA==
X-Gm-Message-State: AG10YOTWmrDUQAZlDL5+HCrciqZz1x8z3vbNs0TTCxpo26snpjg5FhIbV/vmGdRH82UevWEvnVGwQi7aEdkWng==
MIME-Version: 1.0
X-Received: by 10.107.9.211 with SMTP id 80mr13992394ioj.112.1454288495418;
	Sun, 31 Jan 2016 17:01:35 -0800 (PST)
Received: by 10.107.46.219 with HTTP; Sun, 31 Jan 2016 17:01:35 -0800 (PST)
Received: by 10.107.46.219 with HTTP; Sun, 31 Jan 2016 17:01:35 -0800 (PST)
In-Reply-To: <20160131181823.GI1652@denix.org>
References: <CAMKF1sriCy0VxkkJHKsHaLy0K1N4Ns2E7o-rE_Lq8wSGXoy8hw@mail.gmail.com>
	<20160131181823.GI1652@denix.org>
Date: Sun, 31 Jan 2016 17:01:35 -0800
Message-ID: <CAMKF1sqeNd4Ujx5nQpL8UNs0dvNjyo78oO-65AZtHfTwCLbAfQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Denys Dmytriyenko <denis@denix.org>
Cc: yocto@yoctoproject.org, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] Glibc 2.24 _might_ require minimum kernel version 3.2
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
X-List-Received-Date: Mon, 01 Feb 2016 01:01:39 -0000
Content-Type: multipart/alternative; boundary=001a113ecdd42ba343052aaaed1d

--001a113ecdd42ba343052aaaed1d
Content-Type: text/plain; charset=UTF-8

On Jan 31, 2016 10:18 AM, "Denys Dmytriyenko" <denis@denix.org> wrote:
>
> On Sun, Jan 31, 2016 at 09:41:17AM -0800, Khem Raj wrote:
> > Hi
> >
> > This is FYI, as I have sent a RFT for glibc 2.24, there might be
another change
> > coming which is under discussion on glibc mailing lists which is on
> > supported minimum
> > kernel version bump to 3.2 since 2.6.32 will be EOLed this summer [1]
> >
> > If anyone is planning on using upcoming yocto/OE release and sticking
> > to kernels older than  3.2 then please plan for upgrading your kernel.
> >
> > Thanks
> > -Khem
> >
> > [1] - https://sourceware.org/ml/libc-alpha/2016-01/msg00885.html
>
> What about our timeline - is glibc 2.24 planned for the next 2.1 release?
>

Sorry I meant to say 2.2 yocto/oe release not 2.1
> --
> Denys

--001a113ecdd42ba343052aaaed1d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Jan 31, 2016 10:18 AM, &quot;Denys Dmytriyenko&quot; &lt;<a href=3D"mail=
to:denis@denix.org">denis@denix.org</a>&gt; wrote:<br>
&gt;<br>
&gt; On Sun, Jan 31, 2016 at 09:41:17AM -0800, Khem Raj wrote:<br>
&gt; &gt; Hi<br>
&gt; &gt;<br>
&gt; &gt; This is FYI, as I have sent a RFT for glibc 2.24, there might be =
another change<br>
&gt; &gt; coming which is under discussion on glibc mailing lists which is =
on<br>
&gt; &gt; supported minimum<br>
&gt; &gt; kernel version bump to 3.2 since 2.6.32 will be EOLed this summer=
 [1]<br>
&gt; &gt;<br>
&gt; &gt; If anyone is planning on using upcoming yocto/OE release and stic=
king<br>
&gt; &gt; to kernels older than=C2=A0 3.2 then please plan for upgrading yo=
ur kernel.<br>
&gt; &gt;<br>
&gt; &gt; Thanks<br>
&gt; &gt; -Khem<br>
&gt; &gt;<br>
&gt; &gt; [1] - <a href=3D"https://sourceware.org/ml/libc-alpha/2016-01/msg=
00885.html">https://sourceware.org/ml/libc-alpha/2016-01/msg00885.html</a><=
br>
&gt;<br>
&gt; What about our timeline - is glibc 2.24 planned for the next 2.1 relea=
se?<br>
&gt;</p>
<p dir=3D"ltr">Sorry I meant to say 2.2 yocto/oe release not 2.1<br>
&gt; --<br>
&gt; Denys<br>
</p>

--001a113ecdd42ba343052aaaed1d--
