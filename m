Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CB63E00E05; Wed, 31 Jan 2018 02:05:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10E42E007B3
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 02:05:09 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id f89so14595452ioj.4
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 02:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FdXQqnVB7YXZ/k2PYTTRBDtVXZDyRC7FS4MIWpnbpxI=;
	b=I+Ndz4nkEWF/NN+oLgxvT0xpA1ZDQvgXw6A5sHFK6umJNXEk4PHmVFBbh4Opylao5R
	3dtXBlK5X3nsHwkpJY2Q9JGljT1cJJ848ly851E4kCQUk2QRcc7RT19jfZKB04tBUG2B
	iwC/seMa8s/sdj6aGIvwRJIEhzdK1oaZW1Uyc/+GuQan1KexwzQspa6fMvULO9p2R9d3
	2bFbuKyi8RhKQ4C1UqT1P7j5ehgz7jh16TeMsfuViEkBGSV09hMmlXj9m8ZqoKf6dmpw
	EpGoSV8KFV5OUCtDpyKhY646LsGn/dQPGOnhvc49zy5z9PCGcg2hKTOxDir//gOFY8TG
	+f7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FdXQqnVB7YXZ/k2PYTTRBDtVXZDyRC7FS4MIWpnbpxI=;
	b=WfDyKXpxCRsQ6Z2+ckgvrXH6342GAGuz72gPjKAR02D3HDL3jVNjJ20jaxgiEYmCdF
	e2uqPp08V3grNAUc/GcAeVnUpvpW9OuQQuDJO+ptuNl49760hlMZdJPdO6WJfSRuIPg9
	PfqcjQIZoMjzRUbVPdt91jCCS6JGbilAPcKVk7q25SbtrioMJu6hYiuZhPtwOsah1aa6
	FlnyTmAbCyWbiGD1tzgFrPVj2S070XAehjIIvFNowUAzMaqLrfsROvBqQdmQc7ceu2Wa
	0Djq/hjHKGEkSYBe7X4QVnsFf6ihP72caO+JPnqqf4aldZc5avgvhQUHdpnLrBYycu02
	Aidg==
X-Gm-Message-State: AKwxytd24Ayq1h7HqAqpT/q1HjAJ+c0EncaHlr0vwqw33CW3Tg6Psc4J
	q0vyy/ekck7QQu3U0eDfoGpoo+0Zk2c/6VN7fNQy+g==
X-Google-Smtp-Source: AH8x2256tlWIFLxyKzyKBoNtXffqpyaOFU7HsvrWFFZSNGKQSnlIe4oFAmKg5CcDpQ3zzqNoOKaQxBuSIid9CiT2q8Y=
X-Received: by 10.107.175.8 with SMTP id y8mr33757180ioe.37.1517393109103;
	Wed, 31 Jan 2018 02:05:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Wed, 31 Jan 2018 02:04:48 -0800 (PST)
In-Reply-To: <CAE_REAvLSX=QE=8dhf0EeOATfJKJTOn_cB=o71c5VCDhu6R9Gw@mail.gmail.com>
References: <CAE_REAvLSX=QE=8dhf0EeOATfJKJTOn_cB=o71c5VCDhu6R9Gw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 31 Jan 2018 10:04:48 +0000
Message-ID: <CAJTo0La0v=EhhS=0VLyU-u4xC8rrr+VgYkXWgMybh7k0NMHuKA@mail.gmail.com>
To: Gaurang Shastri <gmshastri@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Generating Yocto SDK as .deb (Debian) pacakge
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
X-List-Received-Date: Wed, 31 Jan 2018 10:05:10 -0000
Content-Type: multipart/alternative; boundary="001a1144a26840ca7305640f9d01"

--001a1144a26840ca7305640f9d01
Content-Type: text/plain; charset="UTF-8"

There's no support for this, but it should be fairly simple to write a
debian/rules yourself to package the SDK in a deb.

Ross

On 31 January 2018 at 08:05, Gaurang Shastri <gmshastri@gmail.com> wrote:

> Hi Team,
>
> How can I generate Yocto generated SDK as .deb package? Currently it is in
> the form of installable shell script but I want to generate it as .deb
> package so that I can directly install it on my Ubuntu VM using "apt-get"
> command.
>
> Is this supported? Any documentation?
>
> Regards,
> Gaurang
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1144a26840ca7305640f9d01
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There&#39;s no support for this, but it should be fairly s=
imple to write a debian/rules yourself to package the SDK in a deb.<div><br=
></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D"gm=
ail_quote">On 31 January 2018 at 08:05, Gaurang Shastri <span dir=3D"ltr">&=
lt;<a href=3D"mailto:gmshastri@gmail.com" target=3D"_blank">gmshastri@gmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"lt=
r">Hi Team,<div><br></div><div>How can I generate Yocto generated SDK as .d=
eb package? Currently it is in the form of installable shell script but I w=
ant to generate it as .deb package so that I can directly install it on my =
Ubuntu VM using &quot;apt-get&quot; command.</div><div><br></div><div>Is th=
is supported? Any documentation?</div><div><br></div><div>Regards,</div><di=
v>Gaurang</div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1144a26840ca7305640f9d01--
