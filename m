Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D519E00851; Wed,  2 Mar 2016 15:18:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C7F1E0073D
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 15:18:46 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id n186so108285551wmn.1
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 15:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=Izzk8j8eCafBJ+6cireDCcok/y8MKbp0pQFTTR3DZQQ=;
	b=Xs3p4NSidv1iqHffo3P2mS54BTpIgymDkAFrlWle0YPD9iRFOVS56CTM374YZrDUwo
	MU5/0w6qkhdG3Ym84rVKFxQFFu/QrXk0DPScz1sxcQbeGxn3TURpzwNo3B9aVkqgDgAZ
	rGhtCtUbcssK1py97DVUKITCECf+5G1AwQRJY7zBWkX+uy0tdZXzPi8G14eEhNyAqT7J
	1UOz8AJK7NG61YMoTGRj8n9gw0vdJf+9eDyDn+anYCxiFgGQ6blMVmXVegsLaenV5hpu
	ouViTuQwvSZXgtoTTw+nQamFZmfj0/vs6bJk4aP6R5BYhUW6OmdoR4kamdRRNZ5cVrsg
	D2Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=Izzk8j8eCafBJ+6cireDCcok/y8MKbp0pQFTTR3DZQQ=;
	b=d+zCRWfhzYR8hOd4I9FLJANeSpnWpxIMCwjjdcXE/GQWvKT+QFGkcBPlUwW6r172V9
	sGYLcWKutf6X3iZl53eJTvi7OsEYXxO5Z5VGiPnfMjBtu5+2EHmecjpxzXVyrNTHQ5VW
	grrkrLl44zNiWxnFThWIgDq6fl51MrtrIklKhW3dVJz1bXCpqTJzIXUGzoep51Wbv4Uy
	7LOI6YVeZLeFHYXGEVMxkdF6K2xu7h/ea+lrA77ETEGQGgMNTZ9bLfFrRpyAdzCnid1m
	g+AHaUoD1Q2uRH2qSfWTeVThmVC8VlUXdr0wCN1S25x8u9L+ijceuIhWd/U+gyBNdWj4
	z3bg==
X-Gm-Message-State: AD7BkJIO2JLwmmiOIWxmmR0z+I7vNH0U3bA22UufwYOpRug6jZSgJdn82x25v86zHnedMmNiuoAsS6DkXZ2lQA==
MIME-Version: 1.0
X-Received: by 10.28.228.85 with SMTP id b82mr2554323wmh.36.1456960725786;
	Wed, 02 Mar 2016 15:18:45 -0800 (PST)
Received: by 10.28.126.135 with HTTP; Wed, 2 Mar 2016 15:18:45 -0800 (PST)
X-Originating-IP: [84.56.32.62]
Received: by 10.28.126.135 with HTTP; Wed, 2 Mar 2016 15:18:45 -0800 (PST)
In-Reply-To: <12143516.nF9hEN28vI@peggleto-mobl.ger.corp.intel.com>
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
	<3422071.a5vtJpgWht@peggleto-mobl.ger.corp.intel.com>
	<CAFzUWGnCD1m3jmbgyNqhhM0QeeO1mGnGuk7qy=F329r1zLoTqA@mail.gmail.com>
	<12143516.nF9hEN28vI@peggleto-mobl.ger.corp.intel.com>
Date: Thu, 3 Mar 2016 00:18:45 +0100
Message-ID: <CAK18fxFyQagAo8Nht2S0PPDPYkz7+tTV2_oxQ_i4ckgc_DP-Vw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Giordon Stark <gstark@cern.ch>
Subject: Re: [Openembedded-architecture] Standalone image writer
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
X-List-Received-Date: Wed, 02 Mar 2016 23:18:50 -0000
Content-Type: multipart/alternative; boundary=001a114b0dea833f3d052d191af4

--001a114b0dea833f3d052d191af4
Content-Type: text/plain; charset=UTF-8

I think it depends on what kind of users we are targeting. I didn't even
know about the existence of this tool (heard but can't say I know anything
about it). And all the people I am in contact with use distro specific
tools. Maybe if we target less technical people or we just want a distro
unification tool simply for ease of use, it would make sense to keep it -
even though I don't really understand why this hard separation in between
wic and image burner. Whatever you generate, you need to burn so the
process is clear and could be unified as an option.
On 2 Mar 2016 10:18 pm, "Paul Eggleton" <paul.eggleton@linux.intel.com>
wrote:

> Hi Giordon,
>
> The image writer in question has no specific support for Xilinx boards. If
> you're having a problem relating to the Xilinx BSP and you don't get a
> response here then I'd suggest contacting the BSP maintainer(s).
>
> Cheers,
> Paul
>
> On Mon, 29 Feb 2016 20:05:44 Giordon Stark wrote:
> > Hi all,
> >
> > In a similar problem -- I find that the boot.bin file does not work out
> of
> > the box when I copy the files over to the SDCard to boot on a Xilinx
> board.
> > I end up having to open the SDK and generate a BOOT image myself using
> the
> > other files that were generated (u-boot, devicetree) with the SDK's
> > FSBL.elf. Is this a known problem or would a centralized solution for
> > creating the image solve this?
> >
> > Giordon
> >
> > On Mon, Feb 29, 2016 at 1:53 PM Paul Eggleton
> > <paul.eggleton@linux.intel.com>
> > wrote:
> > > On Mon, 29 Feb 2016 11:27:15 Barros Pena, Belen wrote:
> > > > On 29/02/2016 08:12, "yocto-bounces@yoctoproject.org on behalf of
> Paul
> > > > Eggleton" <yocto-bounces@yoctoproject.org on behalf of
> > > >
> > > > paul.eggleton@linux.intel.com> wrote:
> > > > >There isn't a frontend UI for wic that I am aware of though - as I
> > > > >mentioned earlier image-writer has no support for it, it's just
> doing a
> > > > >straight dd to the device.
> > > >
> > > > We would really like to add support for wic at some point.
> > > >
> > > > https://bugzilla.yoctoproject.org/show_bug.cgi?id=8769
> > >
> > > True, but that's a slightly different usage of wic - i.e. preparing the
> > > formatted image, which we should support. However, writing a formatted
> > > image
> > > to an SD card / USB stick isn't something you could practically do
> from a
> > > web-
> > > based application I don't think - not without help from a local
> > > application at
> > > any rate.
> > >
> > > Cheers,
> > > Paul
> > >
> > > --
> > >
> > > Paul Eggleton
> > > Intel Open Source Technology Centre
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114b0dea833f3d052d191af4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I think it depends on what kind of users we are targeting. I=
 didn&#39;t even know about the existence of this tool (heard but can&#39;t=
 say I know anything about it). And all the people I am in contact with use=
 distro specific tools. Maybe if we target less technical people or we just=
 want a distro unification tool simply for ease of use, it would make sense=
 to keep it - even though I don&#39;t really understand why this hard separ=
ation in between wic and image burner. Whatever you generate, you need to b=
urn so the process is clear and could be unified as an option.</p>
<div class=3D"gmail_quote">On 2 Mar 2016 10:18 pm, &quot;Paul Eggleton&quot=
; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.=
intel.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">Hi Giordon,<br>
<br>
The image writer in question has no specific support for Xilinx boards. If<=
br>
you&#39;re having a problem relating to the Xilinx BSP and you don&#39;t ge=
t a<br>
response here then I&#39;d suggest contacting the BSP maintainer(s).<br>
<br>
Cheers,<br>
Paul<br>
<br>
On Mon, 29 Feb 2016 20:05:44 Giordon Stark wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; In a similar problem -- I find that the boot.bin file does not work ou=
t of<br>
&gt; the box when I copy the files over to the SDCard to boot on a Xilinx b=
oard.<br>
&gt; I end up having to open the SDK and generate a BOOT image myself using=
 the<br>
&gt; other files that were generated (u-boot, devicetree) with the SDK&#39;=
s<br>
&gt; FSBL.elf. Is this a known problem or would a centralized solution for<=
br>
&gt; creating the image solve this?<br>
&gt;<br>
&gt; Giordon<br>
&gt;<br>
&gt; On Mon, Feb 29, 2016 at 1:53 PM Paul Eggleton<br>
&gt; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@lin=
ux.intel.com</a>&gt;<br>
&gt; wrote:<br>
&gt; &gt; On Mon, 29 Feb 2016 11:27:15 Barros Pena, Belen wrote:<br>
&gt; &gt; &gt; On 29/02/2016 08:12, &quot;<a href=3D"mailto:yocto-bounces@y=
octoproject.org">yocto-bounces@yoctoproject.org</a> on behalf of Paul<br>
&gt; &gt; &gt; Eggleton&quot; &lt;<a href=3D"mailto:yocto-bounces@yoctoproj=
ect.org">yocto-bounces@yoctoproject.org</a> on behalf of<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; <a href=3D"mailto:paul.eggleton@linux.intel.com">paul.egglet=
on@linux.intel.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt;There isn&#39;t a frontend UI for wic that I am aware of=
 though - as I<br>
&gt; &gt; &gt; &gt;mentioned earlier image-writer has no support for it, it=
&#39;s just doing a<br>
&gt; &gt; &gt; &gt;straight dd to the device.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; We would really like to add support for wic at some point.<b=
r>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D8769" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject=
.org/show_bug.cgi?id=3D8769</a><br>
&gt; &gt;<br>
&gt; &gt; True, but that&#39;s a slightly different usage of wic - i.e. pre=
paring the<br>
&gt; &gt; formatted image, which we should support. However, writing a form=
atted<br>
&gt; &gt; image<br>
&gt; &gt; to an SD card / USB stick isn&#39;t something you could practical=
ly do from a<br>
&gt; &gt; web-<br>
&gt; &gt; based application I don&#39;t think - not without help from a loc=
al<br>
&gt; &gt; application at<br>
&gt; &gt; any rate.<br>
&gt; &gt;<br>
&gt; &gt; Cheers,<br>
&gt; &gt; Paul<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt;<br>
&gt; &gt; Paul Eggleton<br>
&gt; &gt; Intel Open Source Technology Centre<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"=
noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto=
</a><br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a114b0dea833f3d052d191af4--
