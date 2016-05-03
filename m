Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9F08E006D3; Tue,  3 May 2016 08:33:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABDB2E005BB
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 08:33:00 -0700 (PDT)
Received: by mail-io0-f193.google.com with SMTP id x35so2640927ioi.0
	for <yocto@yoctoproject.org>; Tue, 03 May 2016 08:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=YPIE1BKFVM/utcOGUu75oKccUp4V0H2ADJ/1iNY3Z2Q=;
	b=vuTv3+kRhnb3kfSaMgIB/F4dK3VLk+TvqMdTH3NWidCE6tZqswe+f6SOFWRyLc75D3
	mAMfd2RNGlOfTPko9SHOVgxInC7mcSbIQtXd0yCFhWnz+BbrL3+Or9939XoDKThSEjBr
	XTRZdLyMMCjWhqm/0Nugnxr5Lyxb2spGTNa62DyN2Q6rEjC/2uOPKgL5T8gv9YOPsGbh
	oYwJmE4CiXj04Zq9HWAJuMUuLKUjfGxZ3+IUyOPCc8o8diOLj4rXzJlr1aa31kKqFcqx
	5u1WbjcWU2siAypF6IcqSAEvfNWsaEVoY2notOSnCWuXc5Bt9EP2eOWZ2LrpW5NuaiQA
	raNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kergoth-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=YPIE1BKFVM/utcOGUu75oKccUp4V0H2ADJ/1iNY3Z2Q=;
	b=Tc7jeoxBToxmfHx1KIv/UoVpwiRAMrzoFf9S7Sh86KqXbK6Cg5OTYU4Xj1pJ7KY3ml
	6jWVFvJej+KbUL9uNKc4E4CDMAPR7ihCW3H2lxyWiO38qRDX71YAfL00ldUXE2zGRDWy
	X+8ETueelzD86HEVLItPJcWYZpwUGnshR6dLROmfuBCwCboMV2yIFpEnio45tYi0b9yg
	9Uau7U3gbmJuSXWP2W+KqGPv1F0tOXOVYPvD3SPLy6HwZ4JrxBXohtDFc5PHxRCI1/Ou
	8jJHIQCBZo/TiYAx7b0OGastMsygF4ZYPoZjlWs33ujxKGyuI4Hburkgrri388FJb8Yy
	pmTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=YPIE1BKFVM/utcOGUu75oKccUp4V0H2ADJ/1iNY3Z2Q=;
	b=i7K3uXC0FI+JIVAR2plry1+TWtK5cinEhuiPdDLYqEaJoaVALtLPje8DU5ekgYzNqp
	oNhtFSzgzW+yPFaukTTIfk9J44yo3A2aXwcKN/K+8zn7U9i20VipgXYfFmpJjS54EdW3
	zQZ9GYSx0x5n1sX6mCEHfgrfRryOcLGjDZimBUV2YT4/XJiAwGb1ODwudCz7/SqN16SI
	UemndWiCgV0Dnp0Nc+M5O4cMy/KTFlhEPWygQeZ0ecrcy0YnwANO8vqcd0XRWfManlIY
	rSWdST+hwgVONP/NqJFzolA94rXtr/jh0oRwL0+pMFOxaUIgLThCh54Dmv9JgH7ndSws
	xxyw==
X-Gm-Message-State: AOPr4FXa0huvcQks6+JZO6wbTT9X842+9+JydFgGXNBlLWRl/fcX885pU0qt0VL7GRqhFuOE37fx2KZILaw8Nw==
X-Received: by 10.107.131.12 with SMTP id f12mr4176533iod.126.1462289579822;
	Tue, 03 May 2016 08:32:59 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.134.70 with HTTP; Tue, 3 May 2016 08:32:40 -0700 (PDT)
In-Reply-To: <CALf_N3aXL1Lpk1ds1M+XLYH59dB=ha1BByUQtpAFQs=gkp_=aA@mail.gmail.com>
References: <CALf_N3bfJ5etAAVs5JAF7mX=HQ60BQ9P02ragzdk4y1JGv5KCA@mail.gmail.com>
	<CABcZANkp8WvE3OXFxXcrKV_mi2WwPiyPqwjrgVYHOzQTL3Tk9w@mail.gmail.com>
	<CALf_N3aXL1Lpk1ds1M+XLYH59dB=ha1BByUQtpAFQs=gkp_=aA@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 3 May 2016 15:32:40 +0000
X-Google-Sender-Auth: bibOl4PKFJUequio6HEiIJbXmvg
Message-ID: <CABcZANn_eqBn4+kfXib=hHzSBYHo5rYVMJuxeKuo4xKVth0-zg@mail.gmail.com>
To: Mark T <mtl1nuxd3v@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: What version of Jethro do we get with - git clone -b jethro git://git.yoctoproject.org/poky.git ?
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
X-List-Received-Date: Tue, 03 May 2016 15:33:01 -0000
Content-Type: multipart/alternative; boundary=001a113f31c2f6f5b90531f1d2b0

--001a113f31c2f6f5b90531f1d2b0
Content-Type: text/plain; charset=UTF-8

On Tue, May 3, 2016 at 3:31 PM, Mark T <mtl1nuxd3v@gmail.com> wrote:

> Hi Christopher,
>
> Thanks. What is the command option to specify the tag and is there a list
> or tags available ?
>

https://git-scm.com/book/en/v2
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113f31c2f6f5b90531f1d2b0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
On Tue, May 3, 2016 at 3:31 PM, Mark T <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:mtl1nuxd3v@gmail.com" target=3D"_blank">mtl1nuxd3v@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb=
(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><div><div>Hi Christop=
her,<br><br></div>Thanks. What is the command option to specify the tag and=
 is there a list or tags available ?</div></div></div></blockquote><div><br=
></div><div><a href=3D"https://git-scm.com/book/en/v2">https://git-scm.com/=
book/en/v2</a>=C2=A0</div></div>-- <br><div class=3D"gmail_signature">Chris=
topher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbed=
ded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor G=
raphics</div>
</div></div>

--001a113f31c2f6f5b90531f1d2b0--
