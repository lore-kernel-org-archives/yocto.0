Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9B14E007F2; Wed, 28 Mar 2018 07:07:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C7E1E007F2
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 07:07:00 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id z8-v6so2237107oix.2
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 07:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PG7egy5vlgNTr1fN19ryPT2ohaKxNmKRNScl2IIo2Ik=;
	b=KEiadjfZVkR61xbXHfNyX0PNVbODfhuBwRiWNJDkseenEQBFxwe6uz6oOIrLOauDf9
	rdhizooyIzvQalygxQTdY+/zkFClnHD8vARqo30qiSitIMktx+MyNs+U1uuv1UqDd5eR
	lgCGbVAM5k+6t67nGIZ6XSV03R6392DIbbnuKS3/a8hsJ6FQbt7JXvQ7sX5CalwE0GEO
	rMb1gkmt2aE8m2p47kK378bAo/TdHTkeRincjlZoc1cf8v9E0LFaQTK9xVhDsW2/6DXo
	FOSnogGQ4PFrhiZFhUFUGXroHzJUKHi9UlVJRhkuMb+w5eYIVUcuzakBq6FO29vxkgkr
	xb8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PG7egy5vlgNTr1fN19ryPT2ohaKxNmKRNScl2IIo2Ik=;
	b=RUbOnfTmTfxCBe/xW2lBPQn4EuB8ORrIesC3VbsKuqr8eUOqTJ5iDJaTSTVTuRV4fm
	RzfAHj0gEm9+W59nm4jr+fR+j7QeJXQKwFibBh5FHvwoCTGKPQnnWQcFIJ4cOBFKTS9e
	fVh3y6r3GqihljMuXP9vlpbsBsr8a+GJ4LA/YUPB0Vv8PfKV5voj/kTJZwGaH2IDojF8
	WRnxHqoT+Vc0STx1gwb+ILFf4sW2uFM3TTEf9STasX2XEv8lvN8XFKfP1/vawmZDZYP6
	f7l4qZo5U6aHsTbSXz3s/4q4mYBLs0AsHxUzgrFG7zVWboko4Q/R8kK7Ih9vujCF/g+Q
	4oiw==
X-Gm-Message-State: ALQs6tC4HnifYtVEQZGI5YWzqBGAzTo+vjRukoD01S5KVXoO4cLO7g94
	6Sddgg0FgglrHaAOR96fIdRPjsWPcPkT4Ed+edM=
X-Google-Smtp-Source: AIpwx49QWZGo+ycKZzPJjTFrQpEnm/vAbZ+Ijpw9TRDa+MR2nDOE1Bzw+Yu51kkzx+KDLO5GiDxGsm07Fho7CR41PRE=
X-Received: by 10.202.43.9 with SMTP id i9mr2194181oik.98.1522246020041; Wed,
	28 Mar 2018 07:07:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.77.209 with HTTP; Wed, 28 Mar 2018 07:06:59 -0700 (PDT)
In-Reply-To: <CAPyrkgw2+as+8wbiKdkZuHFpTJ=+GjHP3=E+Qo4EqKC7OQausA@mail.gmail.com>
References: <CAEhQi8=1zJj7UXSEUd55de5VHyRc5E__sqRac+DPwcO=txqfyw@mail.gmail.com>
	<CAPb0b+O=fzUTUECMb-_isDky6=yxKYSkTVWQv=PaZ-9Z34vipw@mail.gmail.com>
	<CAEhQi8=7+44c4ztcE0ZnO=J_nQO=FBVcEx71RNNqf6jun8U65g@mail.gmail.com>
	<CAPyrkgw2+as+8wbiKdkZuHFpTJ=+GjHP3=E+Qo4EqKC7OQausA@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 28 Mar 2018 16:06:59 +0200
Message-ID: <CAEhQi8kSqZ4BrM_PfPz4B8b=XBL5+U+REbETKW+qkrhWbrTm6Q@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] raspberrypi3 model B+ not booting
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
X-List-Received-Date: Wed, 28 Mar 2018 14:07:04 -0000
Content-Type: multipart/alternative; boundary="f4f5e808e0484911a3056879858b"

--f4f5e808e0484911a3056879858b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I can help out on testing if needed. I will try and do a clean build only
using the layers required.

BR
Mans Zigher

2018-03-28 15:40 GMT+02:00 Paul Barker <pbarker@toganlabs.com>:

> On Wed, Mar 28, 2018 at 1:41 PM, M=C3=A5ns Zigher <mans.zigher@gmail.com>
> wrote:
> > Hi,
> >
> > Thanks I will do that. But I have other layers that depend on the rocko
> of
> > meta-raspberrypi so I believe I will have to use the rocko at some poin=
t
> but
> > for testing I will try Morty. What is the reason for using Morty do you
> > know? Is rocko unstable?
> >
>
> Yea, we need to get this fixed in rocko. My test device for
> raspberrypi3 is a Model B v1.2, not a B+ so you may have to help us
> out with testing here.
>
> Could you try out core-image-base built from master with just the
> required layers? If that works then a kernel/firmware backport is
> likely what's needed.
>
> > BR
> > Mans Zigher
> >
> > 2018-03-28 14:38 GMT+02:00 Sherif Omran <sherifomran2000@gmail.com>:
> >>
> >> Please use Morty, it works fine.
> >>
> >> On Wed, Mar 28, 2018 at 11:41 AM, M=C3=A5ns Zigher <mans.zigher@gmail.=
com>
> >> wrote:
> >>>
> >>> Hi,
> >>>
> >>> I am using the meta-raspberrypi layer in my build currently on the
> rocko
> >>> branch. When powering on the rpi3 Model B+ the power led turns red
> then when
> >>> the green led is turned on the red is turned off and nothing is
> booting the
> >>> green continues to flash sporadically. My build works fine on rpi 3
> but not
> >>> on Model B+. When running raspbian on Model 3 it works fine so it is
> not a
> >>> power supply issue nor an sdcard issue. Right now I cannot use the
> master
> >>> branch of meta-raspberrypi because of some patch issues but is the
> rocko
> >>> branch not supporting rpi 3 on model B+?
> >>>
> >>> BR
> >>> Mans Zigher
> >>>
> >>> --
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >>>
> >>
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
>
> --
> Paul Barker
> Tog=C3=A1n Labs Ltd
>

--f4f5e808e0484911a3056879858b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I can help out on testing if needed=
. I will try and do a clean build only using the layers required.</div><div=
><br></div><div>BR</div><div>Mans Zigher</div></div><div class=3D"gmail_ext=
ra"><br><div class=3D"gmail_quote">2018-03-28 15:40 GMT+02:00 Paul Barker <=
span dir=3D"ltr">&lt;<a href=3D"mailto:pbarker@toganlabs.com" target=3D"_bl=
ank">pbarker@toganlabs.com</a>&gt;</span>:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><span class=3D"">On Wed, Mar 28, 2018 at 1:41 PM, M=C3=A5ns Zigher &lt;<a=
 href=3D"mailto:mans.zigher@gmail.com">mans.zigher@gmail.com</a>&gt; wrote:=
<br>
&gt; Hi,<br>
&gt;<br>
</span><span class=3D"">&gt; Thanks I will do that. But I have other layers=
 that depend on the rocko of<br>
&gt; meta-raspberrypi so I believe I will have to use the rocko at some poi=
nt but<br>
&gt; for testing I will try Morty. What is the reason for using Morty do yo=
u<br>
&gt; know? Is rocko unstable?<br>
&gt;<br>
<br>
</span>Yea, we need to get this fixed in rocko. My test device for<br>
raspberrypi3 is a Model B v1.2, not a B+ so you may have to help us<br>
out with testing here.<br>
<br>
Could you try out core-image-base built from master with just the<br>
required layers? If that works then a kernel/firmware backport is<br>
likely what&#39;s needed.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; BR<br>
&gt; Mans Zigher<br>
&gt;<br>
&gt; 2018-03-28 14:38 GMT+02:00 Sherif Omran &lt;<a href=3D"mailto:sherifom=
ran2000@gmail.com">sherifomran2000@gmail.com</a>&gt;:<br>
&gt;&gt;<br>
&gt;&gt; Please use Morty, it works fine.<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Mar 28, 2018 at 11:41 AM, M=C3=A5ns Zigher &lt;<a href=3D"=
mailto:mans.zigher@gmail.com">mans.zigher@gmail.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I am using the meta-raspberrypi layer in my build currently on=
 the rocko<br>
&gt;&gt;&gt; branch. When powering on the rpi3 Model B+ the power led turns=
 red then when<br>
&gt;&gt;&gt; the green led is turned on the red is turned off and nothing i=
s booting the<br>
&gt;&gt;&gt; green continues to flash sporadically. My build works fine on =
rpi 3 but not<br>
&gt;&gt;&gt; on Model B+. When running raspbian on Model 3 it works fine so=
 it is not a<br>
&gt;&gt;&gt; power supply issue nor an sdcard issue. Right now I cannot use=
 the master<br>
&gt;&gt;&gt; branch of meta-raspberrypi because of some patch issues but is=
 the rocko<br>
&gt;&gt;&gt; branch not supporting rpi 3 on model B+?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; BR<br>
&gt;&gt;&gt; Mans Zigher<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a><br>
&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listi=
nfo/yocto</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
<br>
<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
Paul Barker<br>
Tog=C3=A1n Labs Ltd<br>
</font></span></blockquote></div><br></div>

--f4f5e808e0484911a3056879858b--
