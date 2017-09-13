Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36D62E00CAF; Wed, 13 Sep 2017 07:53:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_32,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.182 listed in dnsbl.sorbs.net]
	* 0.0 HTML_IMAGE_ONLY_32 BODY: HTML: images with 2800-3200 bytes of
	words
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2EC0E00C88
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 07:53:48 -0700 (PDT)
Received: by mail-ua0-f182.google.com with SMTP id c27so619870uah.2
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 07:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZLqesD1Ah5EZpbNPuNrAMzsWnMYbNr+ZvpgbRuYyfTY=;
	b=cUVz2zAOlze9FWRGLqRHRZ4QCmRZKSUdqnWB9gUWbWyrWlTzCUrkPxqqZCC0KXSMTf
	1BCiXnIhAxwfrYNYnC92blDCx1fzMEF8KcYqDjt/EiJLnikuEirEnyC6oIrKhgifLYq3
	Ni3JcYr2aoCLxp32grvwukaSsKL/hR67lc/zC9TUoZ/0+33s7jWzTso6/UOFZ1YRV4ag
	DwO2vVcW6X/goMe4x/8iNQM4KFPjS9KwxErvP7SD0sMexfKwxDo2gqVVakDLGgjDY9X/
	zpvHL6L3NsHR4I3HawGDlSq9eHJukS8ld9XZjH+xOYgADn78KFiTX2PXfb8bS9sZKw0h
	uV8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZLqesD1Ah5EZpbNPuNrAMzsWnMYbNr+ZvpgbRuYyfTY=;
	b=TKWVqTbIc0DDri99/fLkOb5Ui/XJo1BB8UYxm+eUesS0FKpR40XXpbdU89DAV6zZEk
	XuxR85v47jwH3q6fHZSyNj3ja31Sz4byHRisGr0mtdXLxh8qKWx7ZW9UXDDA41mLsBsb
	Ff6Vxbk5QMjioiYDKJ7meObVvjv/Be+DSTf1GfEGRxW0hCqbaft7OvLmId0PuGX0s5kH
	bqfkfLTIEncf65jgw3haCVknSi3fu2FUdJKfcLlV6RJSnKUO6jczHadruPQSnJPArpwK
	LQPV4dslzOat/LP3NVDeFt6G4GgzhvspiqiW7AYnCPPF/Yhmxckh63ozEuoI11QhJtsL
	dQKw==
X-Gm-Message-State: AHPjjUjbh9TKmXUFJwB4nqFKv9sn9BVqWptxsJ9uGhYifycfNPIBiHGu
	VHdIYamWSBKOSz56loHpfHEMeTHq3nY/p9pmJqY=
X-Google-Smtp-Source: ADKCNb7pXC1iENHHB1d7wg6TC9ISBoL4y0TeQyfqtXWFsQq4yaq9UBpvZyEvAt9DTzhYPWIIBq0jv4hmTCKABp1WH9E=
X-Received: by 10.159.51.236 with SMTP id y44mr13591554uab.2.1505314427937;
	Wed, 13 Sep 2017 07:53:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.130 with HTTP; Wed, 13 Sep 2017 07:53:47 -0700 (PDT)
In-Reply-To: <CABFXn3FSKuaZSZDxGaeyYfHXwSbHJOOgiw3nuCuxD_bvUe9O1Q@mail.gmail.com>
References: <CABFXn3FSKuaZSZDxGaeyYfHXwSbHJOOgiw3nuCuxD_bvUe9O1Q@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 13 Sep 2017 16:53:47 +0200
Message-ID: <CA+chaQeBk6HCZJ7ui=xsZYz9tfrXBuBbtvSV+=m6ACB0=3NppA@mail.gmail.com>
To: yahia farghaly <yahiafarghaly@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] ERROR: No recipes available for gstreamer
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
X-List-Received-Date: Wed, 13 Sep 2017 14:53:49 -0000
Content-Type: multipart/alternative; boundary="f403043ef77cc0a7f805591353e7"

--f403043ef77cc0a7f805591353e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You're missing incompatible branches, use the same branch for all 3 and it
will work.

On Wed, Sep 13, 2017 at 4:48 PM, yahia farghaly <yahiafarghaly@gmail.com>
wrote:

> Minutes ago, i pulled the recent commits for poky,meta-oe, meta-raspberry
> pi
> and when i build this comes. there are actually another errors but as i
> started taking one by one error. this was the first.
>
> *ERROR: No recipes available for:*
> *
> /yocto/poky/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-om=
x_1.12%.bbappend*
>
>
> --
> Yahia Farghaly
> Graduated from Faculty of Engineering - Electronics and Communications
> Department at Cairo University.
> Linkedin <https://linkedin.com/in/yahiafarghaly> - GitHub
> <https://github.com/yahiafarghaly>
>
>
>
> =E2=80=8C
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--f403043ef77cc0a7f805591353e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You&#39;re missing incompatible branches, use the same bra=
nch for all 3 and it will work.</div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Wed, Sep 13, 2017 at 4:48 PM, yahia farghaly <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:yahiafarghaly@gmail.com" target=3D"_blank"=
>yahiafarghaly@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"m_-2312350866=
648395097mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"https://mail=
track.io/trace/mail/4fe7410a181cdec842b22a69bfa19e4eda17839f.png?u=3D182276=
0"><div>Minutes ago, i pulled the recent commits for poky,meta-oe, meta-ras=
pberry pi=C2=A0</div><div>and when i build this comes. there are actually a=
nother errors but as i started taking one by one error. this was the first.=
=C2=A0</div><div><br></div><div><b>ERROR: No recipes available for:</b></di=
v><div><b>=C2=A0 /yocto/poky/meta-raspberrypi/<wbr>recipes-multimedia/gstre=
amer/<wbr>gstreamer1.0-omx_1.12%.<wbr>bbappend</b></div><span class=3D"HOEn=
Zb"><font color=3D"#888888"><div><br></div><div><br></div>-- <br><div class=
=3D"m_-2312350866648395097gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><font size=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,san=
s-serif,Arial,serif,EmojiFont"><span style=3D"font-size:13px">Yahia Farghal=
y=C2=A0</span></font><span style=3D"color:rgb(0,0,0);font-family:Calibri,Ar=
ial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"></span><div><font =
color=3D"#777777" face=3D"Tahoma, sans-serif, Arial, serif, EmojiFont"><spa=
n style=3D"font-size:13px">Graduated from Faculty of Engineering - Electron=
ics and Communications Department at Cairo University.</span></font><br></d=
iv><div style=3D"color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,sans-=
serif,serif,EmojiFont;font-size:16px"><div><a href=3D"https://linkedin.com/=
in/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"_blank"><font size=
=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span =
style=3D"font-size:13px">Linkedin</span></font></a><font size=3D"1" color=
=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFont">=
<span style=3D"font-size:13px">=C2=A0-=C2=A0</span></font><a href=3D"https:=
//github.com/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"_blank"><=
font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif,EmojiFon=
t"><span style=3D"font-size:13px">GitHub</span></font></a></div></div></div=
></div></div></div>
<br><br><br>=E2=80=8C</font></span></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--f403043ef77cc0a7f805591353e7--
