Return-Path: <mickey.happygolucky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67FE1E00C1A; Wed, 13 Sep 2017 01:54:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_32,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mickey.happygolucky[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.46 listed in list.dnswl.org]
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
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB009E00BE8
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 01:54:31 -0700 (PDT)
Received: by mail-vk0-f46.google.com with SMTP id w23so6614177vkw.2
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 01:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YpIN0HqMTxObvGJWkv0Txgl9G/6k1F2jf2oOsl9WLp0=;
	b=hvG94trAXiiELyZ1OeQYQkkanvH9dxyz/w+D0Bzr6inLdRAllPRI5+iRv6ziZsgbab
	y1VsuYE/OKyvpLWjFGffX1d+CcWblRNv/Q1gT6TufWyrpcrBh5igo0XT+W0uZ/SMiIpe
	Ppc2Ygqe9BFS76r46BIGwIgT/uDa6U1PsL4zzfN+g+I5FDljBrUg5eP+tktk6gsAdKOu
	Bu2+4OYbNYvovS5JUzFVrOGvaYoDRrbIvTcDwLiUsE8c+jRlhlIy97bjjo283fpMtkjl
	HIx7BX9V9T7NvwBGNsg8M9neFHDnttikXNeg/UseJkeaSciXfO0Gwob5+CXywgAZaE7S
	EzCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YpIN0HqMTxObvGJWkv0Txgl9G/6k1F2jf2oOsl9WLp0=;
	b=XyqfgK3FrohGs/zRV8mbPn88jwANllwZvQiylC0FrhrLi2ZU60BobbJx1yJaor9he1
	PL03g3OoCh9bqHRM3nFFbVgjtg0wfSxWa/uXC6765fy20hJAm7VtKDbRIh1ET0DWL7XU
	GkXwTMf6EyJPFGOZPJHo6BW///7ryamXN5KIX1FA/SJZ/YK1n1HbWrrh0/vTDoR3Gy2+
	kuIRiwz1y+vp9UXHKS7JaFf6MwRR0/CoP2mfxoqOitFo38sZcOpd/+u9AB+VzmT/V8Z9
	CJ9g17b27ST/6npdRx+JSlUtfQ07iq1qIIruvjP/r9y6y1Ro1CkTQs1SIKMuSfw2GNWP
	6KNg==
X-Gm-Message-State: AHPjjUi6nn5fwfUGUsg/GWCHDXaw0bgmnbYnEgN6/4HZL1vNX+GRTI7G
	YXLLSjCLPMOu28lDDvTYyZbgi92/rVDwhrWojrk=
X-Google-Smtp-Source: AOwi7QDFKTVVzcfBjK/3mqImSg8hfT6YqwClOUqydmLZWTYYbVaNrEMBBTV/oYL8Si/KFfVOJZb9lCvyl6eUHqCF5GA=
X-Received: by 10.31.14.138 with SMTP id 132mr12596294vko.67.1505292870971;
	Wed, 13 Sep 2017 01:54:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.201.130 with HTTP; Wed, 13 Sep 2017 01:54:29 -0700 (PDT)
Received: by 10.31.201.130 with HTTP; Wed, 13 Sep 2017 01:54:29 -0700 (PDT)
In-Reply-To: <CABFXn3Gk6wMmARf5UMgdJpsCRDbhWOEfwZvhw96b3=-oa21C0g@mail.gmail.com>
References: <CABFXn3Gk6wMmARf5UMgdJpsCRDbhWOEfwZvhw96b3=-oa21C0g@mail.gmail.com>
From: Yusuke Mitsuki <mickey.happygolucky@gmail.com>
Date: Wed, 13 Sep 2017 17:54:29 +0900
Message-ID: <CACMwXoXzB7ucvzFo1Ai4nNypb_+XMfVk0R+cB4oxSuHsV8jBOQ@mail.gmail.com>
To: yahia farghaly <yahiafarghaly@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: how to execute bitbake menuconfig from ssh server
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
X-List-Received-Date: Wed, 13 Sep 2017 08:54:32 -0000
Content-Type: multipart/alternative; boundary="001a11455a1adb748505590e4e92"

--001a11455a1adb748505590e4e92
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello

You can use screen.
If your host is ubuntu,you can get via apt as follows.

sudo apt install screen.

If necessary , you can set auto or screen to OE_TERMINAL environment.

2017/09/13 16:09 "yahia farghaly" <yahiafarghaly@gmail.com>:

> Hi,
>
> I am working with yocto from a remote server using ssh. i want to execute=
 *bitbake
> -c menuconfig virtual/kernel*  . It fails to open since it tries to open
> another shell.
> how can i redirect output of menuconfig to my current ssh session ?
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

--001a11455a1adb748505590e4e92
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello<div dir=3D"auto"><br></div><div dir=3D"auto">You ca=
n use screen.</div><div dir=3D"auto">If your host is ubuntu,you can get via=
 apt as follows.</div><div dir=3D"auto"><br></div><div dir=3D"auto">sudo ap=
t install screen.</div><div dir=3D"auto"><br></div><div dir=3D"auto">If nec=
essary , you can set auto or screen to OE_TERMINAL environment.=C2=A0</div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017/09/13 =
16:09 &quot;yahia farghaly&quot; &lt;<a href=3D"mailto:yahiafarghaly@gmail.=
com">yahiafarghaly@gmail.com</a>&gt;:<br type=3D"attribution"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div dir=3D"ltr"><img width=3D"0" height=3D"0" class=3D"m=
_5784155018240313917mailtrack-img" alt=3D"" style=3D"display:flex" src=3D"h=
ttps://mailtrack.io/trace/mail/891c38d6179843b49e840254f5233d1c36e56b85.png=
?u=3D1822760"><div><div>Hi,</div><div><br></div><div>I am working with yoct=
o from a remote server using ssh. i want to execute <i>bitbake -c menuconfi=
g virtual/kernel</i>=C2=A0 . It fails to open since it tries to open anothe=
r shell.=C2=A0</div><div>how can i redirect output of menuconfig to my curr=
ent ssh session ?=C2=A0</div><div><br></div>-- <br><div class=3D"m_57841550=
18240313917gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"=
ltr"><div><div dir=3D"ltr"><font size=3D"1" color=3D"#777777" style=3D"font=
-family:Tahoma,sans-serif,Arial,serif,EmojiFont"><span style=3D"font-size:1=
3px">Yahia Farghaly=C2=A0</span></font><span style=3D"color:rgb(0,0,0);font=
-family:Calibri,Arial,Helvetica,sans-serif,serif,EmojiFont;font-size:16px">=
</span><div><font color=3D"#777777" face=3D"Tahoma, sans-serif, Arial, seri=
f, EmojiFont"><span style=3D"font-size:13px">Graduated from Faculty of Engi=
neering - Electronics and Communications Department at Cairo University.</s=
pan></font><br></div><div style=3D"color:rgb(0,0,0);font-family:Calibri,Ari=
al,Helvetica,sans-serif,serif,EmojiFont;font-size:16px"><div><a href=3D"htt=
ps://linkedin.com/in/yahiafarghaly" rel=3D"noopener noreferrer" target=3D"_=
blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial,serif,=
EmojiFont"><span style=3D"font-size:13px">Linkedin</span></font></a><font s=
ize=3D"1" color=3D"#777777" style=3D"font-family:Tahoma,sans-serif,Arial,se=
rif,EmojiFont"><span style=3D"font-size:13px">=C2=A0-=C2=A0</span></font><a=
 href=3D"https://github.com/yahiafarghaly" rel=3D"noopener noreferrer" targ=
et=3D"_blank"><font size=3D"1" style=3D"font-family:Tahoma,sans-serif,Arial=
,serif,EmojiFont"><span style=3D"font-size:13px">GitHub</span></font></a></=
div></div></div></div></div></div>
<br><br><br></div>=E2=80=8C</div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div></div>

--001a11455a1adb748505590e4e92--
