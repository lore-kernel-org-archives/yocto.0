Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41AA5E00782; Mon,  9 Jan 2017 02:18:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 967E1E0050B
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 02:18:09 -0800 (PST)
Received: by mail-qk0-f180.google.com with SMTP id 11so36998018qkl.3
	for <yocto@yoctoproject.org>; Mon, 09 Jan 2017 02:18:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BXEMt23eXVzsaR21tyGiSeUndiJy08PxzXDwx9j3apc=;
	b=RDLj23qpRgFcydxMwgP+T1MsPXC4uqEIWQPQLs4tRtqYxYyQilPTcGfRGwI8xrmw15
	76Z1Z3QyENKXDut093ZKcR+jzyzFgWRlCV5l8B9iyqmV+g8oXdQJepoMiMKrnGGxv8HG
	A2LR1dIo68yJt0/+EKwCZh9aHTo7QjkATj3FmR0JjdtjiiKvHKAqv7DuO/iHcj/EEQxu
	KhH3dwrgttGK57Xt8Jfzdw6JKXrIdDsrAwRDjRbrgwItfeMxja/GyMQo4XBPcxQzHwfa
	kT2LZSm8OaMQ0c1sADXaCyF1/lvL5uLGCt3wzlao/yvcj0RlC+kTK69BEvM0nRZw4kYQ
	9EqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BXEMt23eXVzsaR21tyGiSeUndiJy08PxzXDwx9j3apc=;
	b=mRXPIfvYtK7Klfzi3czIbUy3z6fowV0JAkCRriegoVVjQMWTAGVUJjJD4GxOp+Qii2
	hZI0up+UGNar2qmgCYihUO1a+uKAX4t58ev8ELf+G258csllLhMbqTQuvSQjK6Cm8AD9
	J/vyqBiQ09C5XQ3w/lzEzSqK/epWHpHGZKuHwuStlJ/JBa12JZFi95J6AInSlyG3DktW
	7l+GiiYLg4PtLIV7GkFzH7mypVNIe7XG8+Dm8djl0M/i1dR7t//xguf2PDGqw7PYxKqW
	M2oHR/io9yJOc3calMgLWzW0AaWMJwqHPgyowUH/SIluwfqYVLCVRldGLHMNRilFYPkj
	R1cw==
X-Gm-Message-State: AIkVDXIvFAoU6Aq713kYdNJkReMmGhr8oH1/VpNAehbmdaEQ1CFb59mFIDK/WjA2JnoHOR3asB2i8FXi/V9IXBj3
X-Received: by 10.55.130.4 with SMTP id e4mr77528634qkd.121.1483957088471;
	Mon, 09 Jan 2017 02:18:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Mon, 9 Jan 2017 02:17:48 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1701061728340.8194@localhost.localdomain>
References: <alpine.LFD.2.20.1701061728340.8194@localhost.localdomain>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 9 Jan 2017 10:17:48 +0000
Message-ID: <CAJTo0La68P53BmWUOe-SDXP2850SdPKse+eS543-GuE2q6mr0w@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: has support for MPC8315E-RDB been dropped?
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
X-List-Received-Date: Mon, 09 Jan 2017 10:18:11 -0000
Content-Type: multipart/alternative; boundary=94eb2c0703561ee30b0545a6aff8

--94eb2c0703561ee30b0545a6aff8
Content-Type: text/plain; charset=UTF-8

Nope, we're missing a tarball somewhere.  Can you file a bug?

Ross

On 6 January 2017 at 22:30, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

>
>   i notice that if you search for the powerpc BSP in the latest
> release here:
>
> https://www.yoctoproject.org/downloads/bsps?release=98&
> processer%5B%5D=22&title=
>
> you get no match. i haven't been paying attention -- has yocto dropped
> that board as its powerpc reference board? is it being replaced by a
> newer powerpc system?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c0703561ee30b0545a6aff8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Nope, we&#39;re missing a tarball somewhere.=C2=A0 Can you=
 file a bug?<div><br></div><div>Ross</div></div><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">On 6 January 2017 at 22:30, Robert P. J. Day=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_=
blank">rpjday@crashcourse.ca</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><br>
=C2=A0 i notice that if you search for the powerpc BSP in the latest<br>
release here:<br>
<br>
<a href=3D"https://www.yoctoproject.org/downloads/bsps?release=3D98&amp;pro=
cesser%5B%5D=3D22&amp;title=3D" rel=3D"noreferrer" target=3D"_blank">https:=
//www.yoctoproject.org/<wbr>downloads/bsps?release=3D98&amp;<wbr>processer%=
5B%5D=3D22&amp;title=3D</a><br>
<br>
you get no match. i haven&#39;t been paying attention -- has yocto dropped<=
br>
that board as its powerpc reference board? is it being replaced by a<br>
newer powerpc system?<br>
<br>
rday<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, Ontario,=
 CANADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" rel=3D"noreferrer" target=3D"_=
blank">http://crashcourse.ca</a><br>
<br>
Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a=
 href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blank">ht=
tp://twitter.com/rpjday</a><br>
LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.linkedin.=
com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linkedin.com/=
in/<wbr>rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c0703561ee30b0545a6aff8--
