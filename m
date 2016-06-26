Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49A9EE00EA8; Sun, 26 Jun 2016 11:53:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03F26E00EA4
	for <yocto@yoctoproject.org>; Sun, 26 Jun 2016 11:53:51 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id h190so48500534ith.1
	for <yocto@yoctoproject.org>; Sun, 26 Jun 2016 11:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TSSrWG9MpDXO3ey0dKpsZYDLLJqTzeotD5WdU1eBQlo=;
	b=XYBJvfsbsHkTeXl2vzXhj9UrE/2Fq8jTl/46mrXP2YWWnkQTgzZVDHL/yCXKH/ha+j
	9f4EBND1lofaiO5MLxXKLZy1+3a/MJ/Lsh/5snovqQ9XOcpzTYgsIK6R22U+BO7+hbLM
	I4+QmEXylWYTDXlsykrLLSxvJ2rW6P61epamKLxp1JirAS3Fqxrnq9JwhUMgnx9xMMv3
	mPB/oXsdd+UZhdBXvS3kRIBX4wQCfw07hd7yEDKc5Xv+Uu9WRP6zpYiy1xoGOPmuojBk
	msseemEAvn+bTpKm8ZYi204wUQNtpE2k3hdd2RXbt9sef2yqJY/cZNkknXAnaDQEuzbS
	BPgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TSSrWG9MpDXO3ey0dKpsZYDLLJqTzeotD5WdU1eBQlo=;
	b=ANNml/Tl/fI7CT4nho8j8SYbKrjWZzbn7Zr/Z4bKftjMYqRJGGnwdB4+owNpI5W6jw
	7QMe9A8rp85YkgZFfJU6Q2liN9UHvXhQqUL3qZ0LLM4iJEYsnj0myHh6ZzOWvipQrj46
	xdsbyI/mnuLCzg87ZKGj5aLTufH77L7Rpqk9DzjxPThL3PUyoxzKdxuRmwVcvvXBBdd8
	PahBloUOLdq4cCM77It7jozjs5tfHFDfOzETUpUEFo5uO8lUevpxd6j6XGoe3DoVxR5U
	yoRQZiKMi/NVA+GJ17JHBTaSspGJkNOZ+AnqYnOCNq7NrF5YkdEPte8Ozs6w6Zpp7kNI
	c+XQ==
X-Gm-Message-State: ALyK8tJio5rTzVTmN9BEnDyBAH8s77FIXeW7QaNDWrV9YfZIqeBVOe8pUNSeI1taRLsajPOCgWFs0xQGYm9IsSxA
X-Received: by 10.36.217.68 with SMTP id p65mr6102722itg.38.1466967230880;
	Sun, 26 Jun 2016 11:53:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Sun, 26 Jun 2016 11:53:31 -0700 (PDT)
In-Reply-To: <7B37F7D30B66469184CBAB5D7B58826C@PAULD>
References: <7B37F7D30B66469184CBAB5D7B58826C@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 26 Jun 2016 19:53:31 +0100
Message-ID: <CAJTo0Lb=AW-RSDU_3zQj2_2Z6LfpPj1OiAH0De_XsKaEDXr+og@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: x86-64 with -mx32 option?
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
X-List-Received-Date: Sun, 26 Jun 2016 18:53:55 -0000
Content-Type: multipart/alternative; boundary=001a114631b6b1b963053632ec68

--001a114631b6b1b963053632ec68
Content-Type: text/plain; charset=UTF-8

Yes, x32 is built and tested on the autobuilder daily.

Ross

On 26 June 2016 at 01:39, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:

> Has anyone successfully used Yocto to build a Linux system for a 64-bit
> Intel processor using the -mx32 compiler option, forcing all long and
> pointer types to 32 bits? I've got an embedded system with a gig of RAM
> and I'd like to have access to the larger register set (especially SSE) of
> 64-bit mode, but suspect that using 32-bit pointers might speed things up
> a bit, by saving cache space.
>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114631b6b1b963053632ec68
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, x32 is built and tested on the autobuilder daily.<div=
><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 26 June 2016 at 01:39, Paul D. DeRocco <span dir=3D"ltr=
">&lt;<a href=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pderocco@=
ix.netcom.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Has a=
nyone successfully used Yocto to build a Linux system for a 64-bit<br>
Intel processor using the -mx32 compiler option, forcing all long and<br>
pointer types to 32 bits? I&#39;ve got an embedded system with a gig of RAM=
<br>
and I&#39;d like to have access to the larger register set (especially SSE)=
 of<br>
64-bit mode, but suspect that using 32-bit pointers might speed things up<b=
r>
a bit, by saving cache space.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Ciao,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Paul D. DeRocco=
<br>
Paul=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mailto:<a href=
=3D"mailto:pderocco@ix.netcom.com">pderocco@ix.netcom.com</a><br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a114631b6b1b963053632ec68--
