Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A0D6E009D1; Thu,  1 May 2014 17:08:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59C23E0096C
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 17:08:22 -0700 (PDT)
Received: by mail-la0-f51.google.com with SMTP id gl10so2658024lab.10
	for <yocto@yoctoproject.org>; Thu, 01 May 2014 17:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=UuAaGved6OovziGW50VVtjlHmueD5SHBo5BplkGyQ90=;
	b=Zzbg+pvo6hMAWeMOzB2H0+Ko3Mmpgo7q4f5Legl9w0gkqi3PH7B97zjc4UPC79c/OL
	hlfPlUhxhWOcMe/m1c+GOnNuFGu+d5JPpWHa+Df+hO8NlWZ68R6j/Inl+9Jivkq+RL9N
	XSb2/ZjNbH2sLl9H0rk5TlGL7datIzQXwI8CA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=UuAaGved6OovziGW50VVtjlHmueD5SHBo5BplkGyQ90=;
	b=AR8CJhgDKXEHGAI3eAEfsQTCPePJSIdr7A/YYAHV6wKw9623M7YokTBbi9iICWbvGH
	sb6qcjj9dw57sNEh8/pAZ8/LNAezeXB9pEsdj2NKBdf5pvpj9fW4v5T7wo8aQlyZwJ5P
	UvrEfQM3RH1cOXjQSXggxKpt1fMmsaPElR0FSquPg8FgoJG7UnuDSRHusANX8VCdJXJm
	a1nVUG4l1YQVFBJjDekwa0BsuQVigWtEmQaXJSvLkx14msi7RrJwyRZK8TCJ80b6VZMW
	9Z2tBZPb63ebmUvUDWaLfHUsAzbxwrOEJLamRQ4yKDBd7BePP3Qvo9oGVayxHBuRfUfT
	43Zg==
X-Gm-Message-State: ALoCoQnIgg4bK9D25JeUaplS46c/ShKyy2jdAKYM4miGtQARQFy+t/eGyG0ZFhWM2I2HC/px7jn9
MIME-Version: 1.0
X-Received: by 10.112.126.7 with SMTP id mu7mr9125551lbb.17.1398989300923;
	Thu, 01 May 2014 17:08:20 -0700 (PDT)
Received: by 10.112.45.65 with HTTP; Thu, 1 May 2014 17:08:20 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1405011731520.3588@localhost>
References: <alpine.LFD.2.11.1405011731520.3588@localhost>
Date: Thu, 1 May 2014 17:08:20 -0700
Message-ID: <CA+gsK-otGEfVxRyOtH+SXf+wCjZGcPhDWJZZ_esfKO_tQL43dA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is anyone giving a yocto talk at linuxcon in chicago in august?
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
X-List-Received-Date: Fri, 02 May 2014 00:08:29 -0000
Content-Type: multipart/alternative; boundary=001a11c36b0e5386c804f85f94b7

--001a11c36b0e5386c804f85f94b7
Content-Type: text/plain; charset=UTF-8

>
>
>   i would think *someone* would be doing a yocto talk at linuxcon in
> august. if not, i'll propose one since i need an excuse to go. if one
> is already on the schedule, i'll propose something else.
>
> The typical target for YP (and the YP Dev Day) were the Embedded Linux
Conferences not that much the more general LinuxCon. However, during a
conversation at LinuxCon NA last year in NOLA I learned from a company that
they are using YP to build custom stacks for their cloud servers. From that
perspective having a YP talk at LCNA would actually be a good idea. A talk
how one could use YP to build your own desktop or server distro may be
interesting and extend the reach of the YP.

:rjs

--001a11c36b0e5386c804f85f94b7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><br>
=C2=A0 i would think *someone* would be doing a yocto talk at linuxcon in<b=
r>
august. if not, i&#39;ll propose one since i need an excuse to go. if one<b=
r>
is already on the schedule, i&#39;ll propose something else.<br>
<br></blockquote><div>The typical target for YP (and the YP Dev Day) were t=
he Embedded Linux Conferences not that much the more general LinuxCon. Howe=
ver, during a conversation at LinuxCon NA last year in NOLA I learned from =
a company that they are using YP to build custom stacks for their cloud ser=
vers. From that perspective having a YP talk at LCNA would actually be a go=
od idea. A talk how one could use YP to build your own desktop or server di=
stro may be interesting and extend the reach of the YP.</div>
<div><br></div><div>:rjs</div><div>=C2=A0</div></div>
</div></div>

--001a11c36b0e5386c804f85f94b7--
