Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53068E00939; Mon, 20 Feb 2017 09:44:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (satya.2891[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D646E003D7
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 09:44:38 -0800 (PST)
Received: by mail-lf0-f51.google.com with SMTP id z127so52985924lfa.2
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 09:44:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FrVwUjx4+QkBVskuHkoMevuOMCH+5daKRsjGwnhfYHM=;
	b=LtfVl4CJRVdz9Q6xzXh9zUk5dU/+rDx5Wht0M2dyBPiuqlqKUek2MH8uR0P7QaGTrh
	Hz0oe9kY9gAR3NiWs4COc5GKEiWIeq0+bOMbM4NMBjCpzm8hE89+Csn3g7dqi/NeXZQ9
	ole5Dro6O4Uk2KrKdjXsiP51ahVX9vePJ0jembolxt9hMj29wdHJH45jFzJAPma3bFx3
	tEFydm+cCaj9fZUXc7+LmfWnXr+OuU00SvyeVYtwfpLS2auWFY9pUEXxZLCxcjD8Ef+0
	FIGVROUxglh9NTGNJxeeCRlPFFrq9qpFudT+imCC91pG+9mtEvumLzoqETjafuQkxZdj
	rhbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FrVwUjx4+QkBVskuHkoMevuOMCH+5daKRsjGwnhfYHM=;
	b=nJA25hQp653aM3A12XAsLKM8qhTxDP4DZu/yuOn8ASuJO6Yl+jyfro3dkrfdEbD8Eo
	bRtRPB9FPhZZdvgFLoLUNzPC77ZAbo3jwj2DwpAp0pK/mQ1JdCBjzqQv3dOI10TGEcqu
	RvD7hUY2W7skoDpI90li6cd0/Io9o/IcXrU/Eyl0R4lV9UpGh00bySFKvCOM5yRgNgQ6
	2ghRPhLG7TRjajtp3NMpSP1zgF63EhWQoglCdi/Fa5ZcAogzRcBnfcmVNQCvLvQOF5aN
	h47yJ/Qp4/BMD5xXMnqDj3h8YX1K4Ri6pEIZpnKLp+urTL7P1x8j2+93AkTXGIxx7VKA
	2zeg==
X-Gm-Message-State: AMke39m9mvKToC/AwT9T5Zn9MLc/qTupEpsrerbINEK9LRtdhzvD1ZZk2/2Iz273h/cR9D2U1y6gWci0u+JUlw==
X-Received: by 10.46.75.26 with SMTP id y26mr6023623lja.27.1487612677717; Mon,
	20 Feb 2017 09:44:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.155.8 with HTTP; Mon, 20 Feb 2017 09:44:37 -0800 (PST)
In-Reply-To: <CAJTo0Lau5AyY33Y+cROUMR38uR_Msr5YSiGQtnd-Nscu-oe0nA@mail.gmail.com>
References: <CAF1M0z72cFVW61EkLqdSwPrRKO1AptMsntfxxEzo8Qy=ak79oQ@mail.gmail.com>
	<CAJTo0Lau5AyY33Y+cROUMR38uR_Msr5YSiGQtnd-Nscu-oe0nA@mail.gmail.com>
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Mon, 20 Feb 2017 23:14:37 +0530
Message-ID: <CAF1M0z4VWhHuzFXhRgpoDYbD00P+1R8W-9qyw_X_V2RrSFa8hA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem: Installation
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
X-List-Received-Date: Mon, 20 Feb 2017 17:44:40 -0000
Content-Type: multipart/alternative; boundary=f403045ea2863807a90548f9d1b9

--f403045ea2863807a90548f9d1b9
Content-Type: text/plain; charset=UTF-8

Hi Ross,

Thanks for your reply, by the way the tgz contains,

hello.c  helloprint.c  helloprint.h, and moreover I could see in the ${S},
which is suppose to be
~/yocto/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/hellosatya/1.0-r0/hellosatya-1.0

tree hellosatya-1.0/
hellosatya-1.0/
|-- hello.c
|-- helloprint.c
`-- helloprint.h

0 directories, 3 files

So, this clearly states that it is unpacked into the WOKDIR.

Any other variables need to be taken care?

Thanks,
satya



On Mon, Feb 20, 2017 at 10:03 PM, Burton, Ross <ross.burton@intel.com>
wrote:

>
> On 20 February 2017 at 16:30, SatyaNarayana Sampangi <satya.2891@gmail.com
> > wrote:
>
>>  14 SRC_URI = "file://hellosatya-1.0.tgz"
>>  15
>>  16 S = "${WORKDIR}"
>>
>
> What files are in the tgz, and where do they expand to?  The error says no
> such file or directory, so presumably it didn't unpack helloprint.c into
> the work directory.
>
> Ross
>

--f403045ea2863807a90548f9d1b9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ross,<div><br></div><div>Thanks for your reply, by the =
way the tgz contains,</div><div><br></div><div>hello.c =C2=A0helloprint.c =
=C2=A0helloprint.h, and moreover I could see in the ${S}, which is suppose =
to be<br></div><div>~/yocto/poky/build/tmp/work/cortexa8hf-vfp-neon-poky-li=
nux-gnueabi/hellosatya/1.0-r0/hellosatya-1.0<br></div><div><br></div><div><=
div>tree hellosatya-1.0/</div><div>hellosatya-1.0/</div><div>|-- hello.c</d=
iv><div>|-- helloprint.c</div><div>`-- helloprint.h</div><div><br></div><di=
v>0 directories, 3 files</div></div><div><br></div><div>So, this clearly st=
ates that it is unpacked into the WOKDIR.</div><div><br></div><div>Any othe=
r variables need to be taken care?</div><div><br></div><div>Thanks,</div><d=
iv>satya</div><div><br></div><div><br></div></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Mon, Feb 20, 2017 at 10:03 PM, Burton, =
Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><span class=3D""=
><br><div class=3D"gmail_quote">On 20 February 2017 at 16:30, SatyaNarayana=
 Sampangi <span dir=3D"ltr">&lt;<a href=3D"mailto:satya.2891@gmail.com" tar=
get=3D"_blank">satya.2891@gmail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div>=C2=A014 SRC_URI =3D &quot;file://hellosatya-1.0.tgz&=
quot;<br>=C2=A015 <br>=C2=A016 S =3D &quot;${WORKDIR}&quot;</div></blockquo=
te></div><br></span>What files are in the tgz, and where do they expand to?=
=C2=A0 The error says no such file or directory, so presumably it didn&#39;=
t unpack helloprint.c into the work directory.</div><span class=3D"HOEnZb">=
<font color=3D"#888888"><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div>

--f403045ea2863807a90548f9d1b9--
