Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C223E00848; Sun,  8 Feb 2015 06:15:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.169 listed in list.dnswl.org]
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB555E007AB
	for <yocto@yoctoproject.org>; Sun,  8 Feb 2015 06:14:58 -0800 (PST)
Received: by mail-ob0-f169.google.com with SMTP id wp4so21016852obc.0
	for <yocto@yoctoproject.org>; Sun, 08 Feb 2015 06:14:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=mnvuipzDEob5LYwVQF5mG+9A3b8JSQmTzl0vvjkA3IE=;
	b=GKMvasQ1iCWi2xJodPB9sNCh1t91Hvm125+tgXufh2n0J20Dw9BAnPHxZmDlGBABvv
	LxeNYmcVfOhhJ5gkmPVX4qxCDIMWPXPYL/hgtOUiHCWULpFJsKdcSL8LWRsYcPSTdcqq
	xFtUPXdQgnhJ6rEyFpTdbWFqmMqrgTDZE60kLnZpt4wTPZF9xIFRj516cthGF88rVtO9
	l34kZG1Sg+d1v+EutxhtPXXLDphgFZGYbgoGJWe6oiAW99h6JdgRhaoJNdabSXJ7+pBl
	KOwIpOSx7lhQnBj+snESCtynZD9GWgFNWKESXt3vmTeHCicTxi+CpRu8Bb4sxV3RFkj1
	TLcQ==
MIME-Version: 1.0
X-Received: by 10.202.198.214 with SMTP id w205mr8053254oif.74.1423404898224; 
	Sun, 08 Feb 2015 06:14:58 -0800 (PST)
Received: by 10.202.104.144 with HTTP; Sun, 8 Feb 2015 06:14:58 -0800 (PST)
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A345186@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A345186@AZ-FFEXMB01.global.avaya.com>
Date: Sun, 8 Feb 2015 19:44:58 +0530
Message-ID: <CAE_REAuN6iW72f+B6EmHpmdC_zHC14td3fU6ATowRJY68Oqn+w@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_install fails to do a package for custom directory
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
X-List-Received-Date: Sun, 08 Feb 2015 14:15:01 -0000
Content-Type: multipart/alternative; boundary=001a1134f13e548f6a050e944722

--001a1134f13e548f6a050e944722
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I think may be you missed,

FILES_${PN} +=3D "/system"

then you can see your binary inside ${PN} package.

//Gaurang Shastri

On Sun, Feb 8, 2015 at 6:55 PM, Bipnesh, Abhinav (Abhinav) <
abhinavbipnesh@avaya.com> wrote:

>  Hi All,
>
>
>
> I am trying to write a custom recipe for my make based project. So I am
> able to compile the project and generate the binary. Now when I am trying
> to package using do_install() I am not able to put the package in custom
> directory.
>
> So when I use *${D}${bindir} *it work perfectly fine and the package has
> those binary. But when I tried with *${D}/system/hello * it didn=E2=80=99=
t works.
> Below is the snapshot of the do_install ()
>
>
>
> do_install () {
>
>      cd ${WORKDIR}
>
>
>
>      # init script
>
>      install -d ${D}${sysconfdir}/init.d
>
>      install -d ${D}${sysconfdir}/sysconfig
>
>      install -m 755 ${WORKDIR}/test/test ${D}${sysconfdir}/init.d/test
>
>      install -m 644 ${WORKDIR}/test/test ${D}${sysconfdir}/sysconfig/test
>
>      # executable
>
>      install -d ${D}/system/hello
>
>      #install -d ${D}${bindir}
>
>      #install -m 755 ${S}/helloworl/hello ${D}${bindir}/hello =C3=A7 it w=
orks
>
>      install -m 755 ${S}/helloworld/hello ${D}/system/hello/hello =C3=A7 =
it
> doesn=E2=80=99t work
>
> }
>
>
>
> So any thoughts how to fix this issue.
>
>
>
> Thanks,
>
> Abhinav
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1134f13e548f6a050e944722
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,<br><br></div>I think may be you mi=
ssed,<br><br></div>FILES_${PN} +=3D &quot;/system&quot; <br><br></div>then =
you can see your binary inside ${PN} package.<br><br></div>//Gaurang Shastr=
i<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sun=
, Feb 8, 2015 at 6:55 PM, Bipnesh, Abhinav (Abhinav) <span dir=3D"ltr">&lt;=
<a href=3D"mailto:abhinavbipnesh@avaya.com" target=3D"_blank">abhinavbipnes=
h@avaya.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"EN-US">
<div>
<p class=3D"MsoNormal">Hi All,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am trying to write a custom recipe for my make bas=
ed project. So I am able to compile the project and generate the binary. No=
w when I am trying to package using do_install() I am not able to put the p=
ackage in custom directory.<u></u><u></u></p>
<p class=3D"MsoNormal">So when I use <b>${D}${bindir} </b>it work perfectly=
 fine and the package has those binary. But when I tried with
<b>${D}/system/hello </b>=C2=A0it didn=E2=80=99t works. Below is the snapsh=
ot of the do_install ()<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">do_install () {<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 cd ${WORKDIR}<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 # init script<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}/init=
.d<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${sysconfdir}/sysc=
onfig<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 install -m 755 ${WORKDIR}/test/te=
st ${D}${sysconfdir}/init.d/test<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 install -m 644 ${WORKDIR}/test/te=
st ${D}${sysconfdir}/sysconfig/test<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 # executable<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}/system/hello<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 #install -d ${D}${bindir}<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 #install -m 755 ${S}/helloworl/he=
llo ${D}${bindir}/hello
</span><span style=3D"font-size:10.0pt;font-family:Wingdings">=C3=A7</span>=
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"> it wo=
rks<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">=C2=A0=C2=A0=C2=A0=C2=A0 install -m 755 ${S}/helloworld/he=
llo ${D}/system/hello/hello
</span><span style=3D"font-size:10.0pt;font-family:Wingdings">=C3=A7</span>=
<span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;"> it do=
esn=E2=80=99t work<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Co=
urier New&quot;">}<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">So any thoughts how to fix this issue.<u></u><u></u>=
</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Abhinav<u></u><u></u></p>
</div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a1134f13e548f6a050e944722--
