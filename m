Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57DEDE0073D; Fri, 22 Jan 2016 08:16:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1897AE00444
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 08:16:52 -0800 (PST)
Received: by mail-ig0-f171.google.com with SMTP id t15so152611134igr.0
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 08:16:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-type; bh=AmzXWglQEY6QjzN1ok7QuT/cM6Oinn/spknJhftUM9c=;
	b=iwkmJpAMCQCbdF+5bYmaQIWxm4g7TFFW4jHStH4ol6Tyyuf71dnOrAnKh+6Zy1bHY9
	XDOph+Feht2pY9hkkAiI04sJdSjPq3iDBCdAM6+5BmIAHr1N6ewTw/JvMSG2DgednPCZ
	62nn4GoKxA3StupSx9LLhlv2fM8mlmIaqtPrqQiPaWYIpfLRHxjSkQcA+P0bTj0baTzo
	p5kUtOe4TX147PN6SNUUw6tZcA9SUI92mflDKEC1VRwMrko16P0pRhZLNVxI9p8HQV4J
	KPQHz+3Wa2r3q+JyR3FvkCp1rxkqTF1KVLLDCsz8Xnme6DiaUnfKQGWzketCzARyl5oq
	ackg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-type;
	bh=AmzXWglQEY6QjzN1ok7QuT/cM6Oinn/spknJhftUM9c=;
	b=ans+rpG2u4nE+TN9ccKJLAXVUMC2yAA2a/lpw50D2gRkFC5Dt/TIAzrdQmtkHbjWXJ
	6eq7iNaDcND2MK+AG/TAnzW/HvrxQdYmLf/imh1QZIQZoBRDO1x+B++Y0rjN3kADUcRK
	yme/ha9XNrEwJHTCiJEcERcwcO53mDCCEt3UE7gqA44jHIqfn98qkKw5H85H3ohv3Cyo
	tssV8Q54f3eRi3/qsIwtHggYrU8upEFJ3RuOachSTE6bwOFu9NeNQVedi70YW4iBbMCN
	okhkYhEBGr7zTuHjQ7tF0IHT9Tg4th3+RCnmOB05dschFZp9samTvPkBPqwUzy7IXRpc
	RU8w==
X-Gm-Message-State: AG10YORzMB5mJOTmy33S3mtZaSxuPNkyzdic6i4rY9T80tH38G+WF5IBocLV3rvPqXj1AJaOl3U/9l/Yi4zU0g==
X-Received: by 10.50.122.100 with SMTP id lr4mr4470885igb.37.1453479412055;
	Fri, 22 Jan 2016 08:16:52 -0800 (PST)
MIME-Version: 1.0
References: <CAHpaHKnBe4KnrPMq-K20T-bQW1JZZjA6AgVPozUS-8d8iqJ6hQ@mail.gmail.com>
In-Reply-To: <CAHpaHKnBe4KnrPMq-K20T-bQW1JZZjA6AgVPozUS-8d8iqJ6hQ@mail.gmail.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Fri, 22 Jan 2016 16:16:42 +0000
Message-ID: <CAP2S6e5OQYSX_wvL4apT3JNN=AOGNjkKgRZA3duMaFuet_kYfQ@mail.gmail.com>
To: Max Sht <maxx1109@gmail.com>, yocto@yoctoproject.org
Subject: Re: Question about sftp package
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
X-List-Received-Date: Fri, 22 Jan 2016 16:16:56 -0000
Content-Type: multipart/alternative; boundary=001a11c1f7a40b448a0529ee8cb9

--001a11c1f7a40b448a0529ee8cb9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi !

I personally use :

IMAGE_INSTALL_append =3D " openssh-sftp-server"

in my image recipe.

cheers


Le ven. 22 janv. 2016 =C3=A0 17:05, Max Sht <maxx1109@gmail.com> a =C3=A9cr=
it :

> Hi.
>
> Thank you in advance for your support.
> I'm using Yocto project Linux for the iMX6 CPU and imx6ulevk board.
>
> I've dowloaded and built the OS, but I having trouble activating the SFTP=
.
> I'm able to connect to the SSH but not the SFTP, which I need for
> uploading code using ECLIPSE. Is there a package that I need to add for
> SFTP support?
>
> I'm very to new to Linux, and hope that you can help me.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c1f7a40b448a0529ee8cb9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi !<br><br></div>I personally use :<br><br=
>
IMAGE_INSTALL_append =3D &quot; openssh-sftp-server&quot;
<br></div><br>in my image recipe.<br><br></div>cheers<br><br></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr">Le=C2=A0ven. 22 janv. 2016 =C3=A0=
=C2=A017:05, Max Sht &lt;<a href=3D"mailto:maxx1109@gmail.com">maxx1109@gma=
il.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"rtl"><div dir=3D"ltr">Hi.<br><br></div><div dir=3D"ltr">Thank y=
ou in advance for your support. <br></div><div dir=3D"ltr">I&#39;m using Yo=
cto project Linux for the iMX6 CPU and imx6ulevk board.<br><br></div><div d=
ir=3D"ltr">I&#39;ve dowloaded and built the OS, but I having trouble activa=
ting the SFTP.<br>I&#39;m able to connect to the SSH but not the SFTP, whic=
h I need for uploading code using ECLIPSE. Is there a package that I need t=
o add for SFTP support? <br></div><div dir=3D"ltr"><br></div><div dir=3D"lt=
r">I&#39;m very to new to Linux, and hope that you can help me. <br><br></d=
iv><div dir=3D"ltr"><br></div></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a11c1f7a40b448a0529ee8cb9--
