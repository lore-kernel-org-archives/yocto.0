Return-Path: <matous.pokorny@datavision.cz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51835E00D94; Mon, 14 Oct 2019 03:47:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C828E00D7E
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 03:47:19 -0700 (PDT)
Received: by mail-ed1-f42.google.com with SMTP id r18so2693992eds.13
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 03:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=datavision-cz.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=LnyCCJIZfXZrRqj9dr6+KJWNFCg/VA/eGzpS4u8iRSQ=;
	b=Qnftg72XxI5MkS3tvp0QSndMBRqEgY752jKD8m5uOeiOQpgE6yUPdXNuIuVrXr8xXP
	vv3wvGn2uUgma62UnmobtDFS3RFisiwUGgdWigfBMZS9YL73/ke/6qbynOQivQjW5dKh
	kJWJMg9O/Ylzn3O1hQtuMXuii/i+UHfdXmJvQ0nbopmA3pR86rOjRfvXQhAc9qMKBewm
	g8Cpok+yfpGmHMa4vgjW3U/TVmwepzRfPtThIkdNgKatJhmK2AANXMssUfWwXZROagF8
	RUieJArcXYRS7BU8ceeZ5ye+mcjoNItvrMIcR+g4FLzW2oH7a89Lzhqcnu/iKpeiSuO6
	pziQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=LnyCCJIZfXZrRqj9dr6+KJWNFCg/VA/eGzpS4u8iRSQ=;
	b=MIu61STy2OS7dHnWC5jMSxDMpHprWVI9eUoWRtKuk9lMqtk6olX1Nfu1TV3AD6+aZc
	brTlnX+iHoOnvuz4q3PreL2bCHw89fpDFGZRoWX7d76TergSVjDe15crNJIvfpUkyGYi
	lhRpm/S5EnoXd2Mx1PeEruSSL4woHbxDwNU/1f2GtRARFPvXQ/NAG1xhlavgjQ/kZqzo
	FtCurEXGuUDtk4OFnUIyBKRTxeE7EnNUQulinvl+/dkBmyHQxAWV2K5z6iyvA/KWRzMu
	n1tCqHHYJTuJF3+nBPy2Mgy6LX1ibnPHKRe7BY7mTZJeJZi7y7Gq7XyEPRQlsS22uA/o
	aWGw==
X-Gm-Message-State: APjAAAWFQLvV4l39lfqey1VWRvtO12C5GSqe/vNXVvxD5qqeJujRHcmm
	DvoybnwH/KV/DvcTEGClgm6IU1QNoTqvpwbXUcUZKg==
X-Google-Smtp-Source: APXvYqy/Q4ByTYxA5vDfOITDyQ+4MtVpUrrlA10HrjIBfdnEDVYPE6ItrkWrOfkWU7w80kQ27o7hAn+W17OPl+qtHn0=
X-Received: by 2002:aa7:c6d0:: with SMTP id b16mr27759902eds.108.1571050038736;
	Mon, 14 Oct 2019 03:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAD0UrV10JR=vFUKfZCxetCQCx2y=A9gv6YeqtBEMjHYqXLso0w@mail.gmail.com>
	<d608319c0f2d4c28ae5c61597b8cf9bf@XBOX03.axis.com>
In-Reply-To: <d608319c0f2d4c28ae5c61597b8cf9bf@XBOX03.axis.com>
From: =?UTF-8?B?TWF0b3XFoSBQb2tvcm7DvQ==?= <matous.pokorny@datavision.cz>
Date: Mon, 14 Oct 2019 12:47:07 +0200
Message-ID: <CAD0UrV0V9A9RqYNBxSi-JwY+C1KabowYZqzPRnf4jrmJ25yG-g@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
X-Mailman-Approved-At: Mon, 14 Oct 2019 04:18:56 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Where to get kconfig-frontends package?
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
X-List-Received-Date: Mon, 14 Oct 2019 10:47:21 -0000
Content-Type: multipart/alternative; boundary="0000000000007bcb040594dc97de"

--0000000000007bcb040594dc97de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello!

Thank you very much for helpful answer. So, we switch the source to this.

*Matous Pokorny*
Embedded System Developer

*DataVision s.r.o.*
Ukrajinska 2a
101 00 Praha 10
Czech Republic

GSM: (+420) 723 280 471
matous.pokorny@datavision.cz


=C4=8Dt 10. 10. 2019 v 11:07 odes=C3=ADlatel Peter Kjellerstedt <
peter.kjellerstedt@axis.com> napsal:

> I have been in contact with Yann E Morin, the maintainer of the
> kconfig-frontends repository, and it turns out his server did not survive
> their last move of house. However, he pointed out that he has published t=
he
> code to GitLab and recommended to use that repository instead:
> https://gitlab.com/ymorin/kconfig-frontends
>
>
>
> I will send a patch to the openembedded-devel list to update the recipe t=
o
> use the GitLab repository.
>
>
>
> //Peter
>
>
>
> *From:* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> *=
On
> Behalf Of *Matou=C5=A1 Pokorn=C3=BD
> *Sent:* den 26 september 2019 14:02
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Where to get kconfig-frontends package?
>
>
>
> Hello!
>
>
>
> I come from NuttX RTOS project (nuttx.org), and we use Kconfig tool for
> configuration. The toolchain build script gets kconfig-frontends source
> code from the same server as Yocto (http://ymorin.is-a-geek.org). The
> server is down for approx. one week and it caused the fail during the
> toolchain building. Have you met this problem as well? We would like to
> switch to another more reliable repository, but I read, the server's owne=
r
> is one of the Linux core developers. So the server is a kind of primary
> source. Do you have a suggestion on how to solve this problem? I would li=
ke
> to ask you for help because you know the Linux ecosystem and are in the
> same situation as we are.
>
>
>
> Thank you.
>
>
>
> *Matous Pokorny*
>
> Embedded System Developer
>
>
>
> *DataVision s.r.o.*
>
> Ukrajinska 2a
>
> 101 00 Praha 10
>
> Czech Republic
>
>
>
> GSM: (+420) 723 280 471
>
> matous.pokorny@datavision.cz
>

--0000000000007bcb040594dc97de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<div><br></div><div>Thank you very much for helpful=
=C2=A0answer. So, we switch the source to this.</div><div><br></div><div><d=
iv><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signa=
ture"><div dir=3D"ltr"><b>Matous Pokorny</b><div>Embedded System Developer<=
/div><div><br></div><div><b>DataVision s.r.o.</b></div><div>Ukrajinska 2a</=
div><div>101 00 Praha 10</div><div>Czech Republic</div><div><br></div><div>=
GSM: (+420) 723 280 471</div><div><a href=3D"mailto:matous.pokorny@datavisi=
on.cz" target=3D"_blank">matous.pokorny@datavision.cz</a></div></div></div>=
</div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">=C4=8Dt 10. 10. 2019 v=C2=A011:07 odes=C3=ADlatel Peter Kje=
llerstedt &lt;<a href=3D"mailto:peter.kjellerstedt@axis.com">peter.kjellers=
tedt@axis.com</a>&gt; napsal:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">





<div lang=3D"SV">
<div class=3D"gmail-m_-5280216029981156039WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
I have been in contact with Yann E Morin, the maintainer of the kconfig-fro=
ntends repository, and it turns out his server did not survive their last m=
ove of house. However,
 he pointed out that he has published the code to GitLab and recommended to=
 use that repository instead:
<a href=3D"https://gitlab.com/ymorin/kconfig-frontends" target=3D"_blank">h=
ttps://gitlab.com/ymorin/kconfig-frontends</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
I will send a patch to the openembedded-devel list to update the recipe to =
use the GitLab repository.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
//Peter<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
<u></u>=C2=A0<u></u></span></p>
<div style=3D"border-top:none;border-right:none;border-bottom:none;border-l=
eft:1.5pt solid blue;padding:0cm 0cm 0cm 4pt">
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_bl=
ank">yocto-bounces@yoctoproject.org</a> &lt;<a href=3D"mailto:yocto-bounces=
@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Matou=C5=A1 Pokorn=C3=BD<br>
<b>Sent:</b> den 26 september 2019 14:02<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Where to get kconfig-frontends package?<u></u><u></=
u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hello!<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I come from NuttX RTOS project (<a href=3D"http://nu=
ttx.org" target=3D"_blank">nuttx.org</a>), and we use Kconfig tool for conf=
iguration. The toolchain build script gets kconfig-frontends source code fr=
om the same server as Yocto (<a href=3D"http://ymorin.is-a-geek.org/" targe=
t=3D"_blank"><span style=3D"font-size:12pt;font-family:Arial,sans-serif;col=
or:rgb(17,85,204);background:white">http://ymorin.is-a-geek.org</span></a>)=
.
 The server is down for approx. one week and it caused the fail during the =
toolchain building. Have you met this problem as well? We would like to swi=
tch to another more reliable repository, but I read, the server&#39;s owner=
 is one of the Linux core developers.
 So the server is a kind of primary source. Do you have a suggestion on how=
 to solve this problem? I would like to ask you for help because you know t=
he Linux ecosystem and are in the same situation as we are.<u></u><u></u></=
p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thank you.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal"><b>Matous Pokorny</b><u></u><u></u></p>
<div>
<p class=3D"MsoNormal">Embedded System Developer<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><b>DataVision s.r.o.</b><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Ukrajinska 2a<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">101 00 Praha 10<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Czech Republic<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">GSM: (+420) 723 280 471<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"mailto:matous.pokorny@datavision.cz" targ=
et=3D"_blank">matous.pokorny@datavision.cz</a><u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div>

--0000000000007bcb040594dc97de--
