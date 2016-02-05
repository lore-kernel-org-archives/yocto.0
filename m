Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DF14E00D3C; Fri,  5 Feb 2016 12:46:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A87AEE00D2F
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 12:46:21 -0800 (PST)
Received: by mail-ig0-f172.google.com with SMTP id hb3so21934070igb.0
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 12:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ody5uAS2LVZOWe1c/XnO7a3fVu2SoqIdLqJE22cUkHE=;
	b=wySeYL/ml1cBgUePbO5MKMBz54arHoGTYxKJxrmjBWbeNwLQXciiHDVCIzTa3XoONd
	qql3L3TRJqGtOxRZUF4XfrPKdV4FfiizlDBnWVw3myd1kQg4Be2msEPYyM78dZ6DD7Bx
	zKbUVzW9OCV1leRjaeyr7IbQP/LxyMU1LUM8f/HTDVNDFVWBW12Ci01INVUfkxAULsBD
	RiiFOFBETyrPfjiejYfzOkPvXWszlTXW7C5WUuXrl3mX722Bdc1DDV2ZwVTUuRwYuDlM
	Z1MLelv2t7j9zpi6nqjrehhy8zsEllLKIllSWSA3mSEVhcze6xWDqhfRnsY+w0TpvjZH
	JZUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ody5uAS2LVZOWe1c/XnO7a3fVu2SoqIdLqJE22cUkHE=;
	b=AhfMFj2VlUG0yBGhoXPc68aJzFcUu2vhuWEMyXUEkamdeYcKX9enKI7B6IXXKlAVtY
	fyHQfo87UHacWLy1uQYtR0gEplPoBoqt+LxJUK3it7vK/J8hqxGJZ4pOaDGBPHFuYa9S
	L7rdedEUncttAwhDj+qrOmTm1LC9WPUCt0kR8U3VrroELCIKORgZqQCzS6gSTH1aVueO
	o8pGBt8DcZjcc1rkxKghKF3rVmBlXBESSyk3coxOhtCKBAXNkDg2tHVXWdIMIiWzG3MI
	W2AzkMrKNZ+mjQxgy7/22JIHDhF8QsVQ8fs74NnQ/aSTAupv1LblhuU//GBtq9UiSh4Q
	Cw/A==
X-Gm-Message-State: AG10YOQz8glc28S+hykjxhe9CYF+xx/RZGadwoX/zsqicZ+TuNBzz4vD3uSEHV8hShqDXkmEBo9SiShBGb0SKG0Y
X-Received: by 10.50.111.111 with SMTP id ih15mr12589730igb.78.1454705181572; 
	Fri, 05 Feb 2016 12:46:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 5 Feb 2016 12:46:01 -0800 (PST)
In-Reply-To: <CAMKF1spXFvGQs-NM7eRD6ZFBVnoZPysrQec=nLfqkmFUBuSO+Q@mail.gmail.com>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
	<CAJTo0LZFMT=JyABkd1mzLJhB9npzkTLO_sXsReMD=hKvDsuFBw@mail.gmail.com>
	<1454695459773.33828@seescan.com>
	<7A197409-A596-4F9C-AF6A-A46A2529AB05@nathan.to>
	<1454695732426.82900@seescan.com>
	<D353173E-F5C7-4BCC-A975-D5E986B190D3@nathan.to>
	<CAJTo0LajcF_rR-oGnTr=_vBwcAvFcOsgJEXqPZFR0YmdgLCv5g@mail.gmail.com>
	<CAMKF1spXFvGQs-NM7eRD6ZFBVnoZPysrQec=nLfqkmFUBuSO+Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 5 Feb 2016 20:46:01 +0000
Message-ID: <CAJTo0LZc+MN02kQusy-on2g5kcohyHFQMY0ShtFnvgQhO2V9MQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 20:46:24 -0000
Content-Type: multipart/alternative; boundary=089e0149be3499ec13052b0bf11c

--089e0149be3499ec13052b0bf11c
Content-Type: text/plain; charset=UTF-8

On 5 February 2016 at 19:56, Khem Raj <raj.khem@gmail.com> wrote:

> >> interpreter /lib64/ld-linux-x86-64.so.2
> >
> >
> > Does the loader hunt around for this, as this is certainly not present
> in a
> > default OE image?
>
> no it wont. infact thats the loader.


Yeah, what I meant is would the kernel hunt for that.  So, that's the
problem?

Ross

--089e0149be3499ec13052b0bf11c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 February 2016 at 19:56, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><span class=3D"">&gt;&gt; interpre=
ter /lib64/ld-linux-x86-64.so.2<br>
&gt;<br>
&gt;<br>
&gt; Does the loader hunt around for this, as this is certainly not present=
 in a<br>
&gt; default OE image?<br>
<br>
</span>no it wont. infact thats the loader.</blockquote></div><br>Yeah, wha=
t I meant is would the kernel hunt for that.=C2=A0 So, that&#39;s the probl=
em?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ro=
ss</div></div>

--089e0149be3499ec13052b0bf11c--
