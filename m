Return-Path: <tfroehlich@archsys.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 027F9E00C59; Thu, 14 Feb 2019 10:05:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13101E00C46
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 10:05:36 -0800 (PST)
Received: by mail-qt1-f193.google.com with SMTP id j36so7883826qta.7
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 10:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=archsys-io.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3dd4ugLdGJimqPRK5ssI37fuaSLGe4S9R7DkdYxj6RE=;
	b=0ffF8dS8zOPLy+iF15S6+Nr/MmsA0qlz4dpQhS5gRghS8EU5dabzGA2oQ/kmb4attu
	SN8pFOA5KThqe69Tzfa9Ojo4nNgx7M2WoprLY1Y5+pyXYcOoGRxL2BIcnrb3+6eci7up
	EguNMPEgL3voNK9pRXO8Y43cOYzILhUPy7rwFyQsh34lgri+QQVQKoKh7geGphbNXxLr
	czlrpqzbRbzl7RZLlpB0QeyK2zH4jogQIZYifqhe7hxrLxepUBqvkxtyyKRZbi+fyzIk
	RQbI8gULPH29rwSLPFQdzAOKHo7e7zJB2eNRfN4blhgUk9XwhWU0yqaiDmLrm8ljCfa8
	mKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3dd4ugLdGJimqPRK5ssI37fuaSLGe4S9R7DkdYxj6RE=;
	b=rf0U8NzQ7U9dFTYkqh0d0zuF3EgKyNPvpvj0BcMg8ZlMwqRTeZ9mXbELwBSv9a0Z77
	0JBMbi+QVlvlF8Pvjs0I6fhCrdYmPr3puLwL5D9C/SOtFfQpNXOUz/jX3YQQU2/NWyE+
	lYExO1gqU2yjt9hCtkDTXujFldwCZvNM/x4yMYQsAbip7OwklbEHrkvB7u15UQ1Xa/gj
	ucQY9hoLWGFgd0Fkj+YHmLtrzEtaOdubpuGSPpITfFMMp0mh1Yl38GPfbEJubVRbaSwm
	VjrrkCVSZ5BYI4KPdCzEhzHxSvyY/KbBr3dl2Px/aci0Em98UIPgjgJ71sLF/bGxP8c1
	PTeA==
X-Gm-Message-State: AHQUAuaUddqHELgrDSA9U6TGhe+clHGkBkO/u0MaBQee1GZ9UhX2iPFF
	5GQLWn+ztqaT3r7LdqJZ5DdTpYkMOYTeOayn8AEJ/3zO
X-Google-Smtp-Source: AHgI3IbwaPfwJjOR/xd/DxhbgoMZDW03sM2Oew11X7w4yKjLY/gex1raRlI6xS/fIknEte8LJrWKNqDuOlqKdmQQjqo=
X-Received: by 2002:ac8:2995:: with SMTP id 21mr4127404qts.297.1550167536521; 
	Thu, 14 Feb 2019 10:05:36 -0800 (PST)
MIME-Version: 1.0
References: <CAHSUxjS-CzSx+kTeV2=cFf35ACRhoU03GTMbv3ZcTGkEu38qZQ@mail.gmail.com>
	<CANNYZj88JzTx_ShdnqKoPn2mPpLhqdkBOuDBoYF2MzS6ODt=KA@mail.gmail.com>
In-Reply-To: <CANNYZj88JzTx_ShdnqKoPn2mPpLhqdkBOuDBoYF2MzS6ODt=KA@mail.gmail.com>
From: Timothy Froehlich <tfroehlich@archsys.io>
Date: Thu, 14 Feb 2019 10:05:25 -0800
Message-ID: <CAHSUxjSVZ-t7SMiz6CnXU7qBpd+JXxno8Rs7TQovc-tpY69Amw@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Managing multiple builds
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
X-List-Received-Date: Thu, 14 Feb 2019 18:05:49 -0000
Content-Type: multipart/alternative; boundary="0000000000005b6d010581de8130"

--0000000000005b6d010581de8130
Content-Type: text/plain; charset="UTF-8"

I'm considering that. It's the kernel build (cmdline) and the image build
(RaspberryPi, the config.txt) recipes from the meta-raspberrypi layer.
Setting it in a distro.conf, gated behind a "DEVBUILD=1/0" flag should
work, I think.

Also, please see my response to Mike Looijmans's reply.

On Thu, Feb 14, 2019 at 1:00 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Thu, 14 Feb 2019 at 01:35, Timothy Froehlich <tfroehlich@archsys.io>
> wrote:
> > Hi, I've been struggling a bit with this question. I want to use Yocto
> to build two+ products with separate dev/prod images for each (dev
> including debug-tweaks, etc.). I've ruled out separate image recipes
> because my dev builds need ENABLE_UART on my RaspberryPi and that needs to
> be set at the conf level (I've got it set conditionally in my base dist
> conf). Multiconfig looked promising, but I'm not happy about how long the
> parsing takes to start a build. "--postread" looked nice, but I've barely
> seen it mentioned so I'm worried that it's not well supported.
> >
>
> Which recipes use the ENABLE_UART setting? You might want to write two
> variants of those, and include them into images accordingly.
>
> Alex
>


-- 
Tim Froehlich
Embedded Linux Engineer
tfroehlich@archsys.io
215-218-8955

--0000000000005b6d010581de8130
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m considering that. It&#39;s the kernel build (cmdli=
ne) and the image build (RaspberryPi, the config.txt) recipes from the meta=
-raspberrypi layer. Setting it in a distro.conf, gated behind a &quot;DEVBU=
ILD=3D1/0&quot; flag should work, I think.=C2=A0<div><br></div><div>Also, p=
lease see my response to Mike Looijmans&#39;s reply.</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 14, 2=
019 at 1:00 AM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.c=
om">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">On Thu, 14 Feb 2019 at 01:35, Timothy Froehlich &=
lt;<a href=3D"mailto:tfroehlich@archsys.io" target=3D"_blank">tfroehlich@ar=
chsys.io</a>&gt; wrote:<br>
&gt; Hi, I&#39;ve been struggling a bit with this question. I want to use Y=
octo to build two+ products with separate dev/prod images for each (dev inc=
luding debug-tweaks, etc.). I&#39;ve ruled out separate image recipes becau=
se my dev builds need ENABLE_UART on my RaspberryPi and that needs to be se=
t at the conf level (I&#39;ve got it set conditionally in my base dist conf=
). Multiconfig looked promising, but I&#39;m not happy about how long the p=
arsing takes to start a build. &quot;--postread&quot; looked nice, but I&#3=
9;ve barely seen it mentioned so I&#39;m worried that it&#39;s not well sup=
ported.<br>
&gt;<br>
<br>
Which recipes use the ENABLE_UART setting? You might want to write two<br>
variants of those, and include them into images accordingly.<br>
<br>
Alex<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Tim Froehlich<div>Embedded Linu=
x Engineer</div><div><a href=3D"mailto:tfroehlich@archsys.io" target=3D"_bl=
ank">tfroehlich@archsys.io</a></div><div>215-218-8955</div></div></div>

--0000000000005b6d010581de8130--
