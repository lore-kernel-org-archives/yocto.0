Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D1E8E009A0; Sat,  4 Mar 2017 13:02:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f180.google.com (mail-wr0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABB13E00777
	for <yocto@yoctoproject.org>; Sat,  4 Mar 2017 13:02:39 -0800 (PST)
Received: by mail-wr0-f180.google.com with SMTP id g10so93584175wrg.2
	for <yocto@yoctoproject.org>; Sat, 04 Mar 2017 13:02:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=clOwgLiyLH6Y2C2bolS4SGN1iUAZ5rNw1GWAN6r50Mo=;
	b=K/CVxtm11ubMuJAo+483Cg/8t5rz+wvyJfb54asNTj5bwe7hQAwCMu5Bvdwsb0SHm7
	Ie0++ntcLbbDt8j17XeAhRmhvXyC8otuI6rTxLIe2lqK4Kw4zUZG7xU5ozWXz7MprezA
	lMHf8M5w4QIrOBJ808Q04/LAPwqVViQQxDieobLpAi1awqcFuwgBKhoBNk5IYk06GVPL
	Z6wj1dr6vZWQ8Gr4aiyMFK+tl5RNxgGlunwJMAi3fi9sqVb6OxplbfkkdZp43csyppJ4
	ZieVlZ1zg01q11FCsQEf74h4fLtTiwjoI2jd/GdJb2lOI5q6TEuHK3u5D1c9C5XBGEiE
	FVkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=clOwgLiyLH6Y2C2bolS4SGN1iUAZ5rNw1GWAN6r50Mo=;
	b=oPKQs6SkYnkeYox31vUC1LzBJZCv2oDDwwPufy5m42xtdHOJwfu04R1ITgofhtpL39
	JERkbptqFm23Vd2ufGhC/+J9DG++J+5bn9nt+wE/BLjMCn4Pl/yScPVIhXBqLiQNuOxJ
	V2kc1bjzAOTsPKdqHpAUUkZvcOSbud4GMf1lujVq7jYKaowhiLXhFbTqNg4K8MLCB7So
	OxRy1RlsjHl+9DwpgISeWE4wV3ILZDpS4tL2QI5f3Qn8+d20VMNi9UyHXIXyh+iAVlFu
	DI9wfdzYIh9zBRuYwqIqIZP1UgDL/3hpFFUvJpIFcPJZ77QCWax/2TUuZ8D/bMPNzQ2d
	5ngA==
X-Gm-Message-State: AMke39mF06QlfIFtfKmIQqt3mgmhg9sQTbkU4GwyAYlCqf/7SrJzUGWDxtC526kt5444qw==
X-Received: by 10.223.143.14 with SMTP id p14mr7611474wrb.120.1488661358938;
	Sat, 04 Mar 2017 13:02:38 -0800 (PST)
Received: from [192.168.2.8] ([145.132.74.106])
	by smtp.gmail.com with ESMTPSA id
	h75sm20440011wrh.37.2017.03.04.13.02.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 04 Mar 2017 13:02:37 -0800 (PST)
Mime-Version: 1.0 (1.0)
From: Leon Woestenberg <leon@sidebranch.com>
X-Mailer: iPhone Mail (14C92)
In-Reply-To: <alpine.LFD.2.20.1703030850280.11627@uk63952.mitel.com>
Date: Sat, 4 Mar 2017 22:02:36 +0100
Message-Id: <687631A3-0AC8-467E-B438-44E4081655D0@sidebranch.com>
References: <alpine.LFD.2.20.1703030819430.10734@uk63952.mitel.com>
	<CAJTo0LaNo5inrbahsW9suovVtP3F2xD28h_Bnbw24sokqOSZ0w@mail.gmail.com>
	<alpine.LFD.2.20.1703030850280.11627@uk63952.mitel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: any rumblings about a newer YP powerpc reference board than mpc8315e-rdb?
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
X-List-Received-Date: Sat, 04 Mar 2017 21:02:42 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-61482251-26B3-452C-BA4F-3C3BC2D91780
Content-Transfer-Encoding: 7bit

--Apple-Mail-61482251-26B3-452C-BA4F-3C3BC2D91780
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

I didn't check availability, but p2020rdb is it's successor (and similar, 20=
10).
=20
Regards, Leon




> On 3 Mar 2017, at 14:51, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>=20
>> On Fri, 3 Mar 2017, Burton, Ross wrote:
>>=20
>> On 3 March 2017 at 13:24, Robert P. J. Day <rpjday@crashcourse.ca> wrote:=

>>        it seems of limited value for YP to have a powerpc reference
>>      board, mpc8315e-rdb, that is essentially impossible to
>>      procure. is there any effort being made to look around for a
>>      newer powerpc reference board that people could actually buy?
>>=20
>> Do you have any suggestions?
>=20
>  not at the moment ... perhaps the powerpc or freescale folks can
> weigh in. i'm not a powerpc expert, but it does seem pointless to have
> a reference board that no one can get.
>=20
> rday
>=20
> --=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>=20
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-61482251-26B3-452C-BA4F-3C3BC2D91780
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div>Hi,</div><div><br></div><div>I didn't c=
heck availability, but p2020rdb is it's successor (and similar, 2010).</div>=
<div>&nbsp;</div><div><div style=3D"text-align: -webkit-auto; font-variant-l=
igatures: normal; font-variant-position: normal; font-variant-numeric: norma=
l; font-variant-alternates: normal; font-variant-east-asian: normal; line-he=
ight: normal;"><span style=3D"background-color: rgba(255, 255, 255, 0);">Reg=
ards, Leon</span></div></div><div><br><div><br><span style=3D"text-align: -w=
ebkit-auto; font-variant-ligatures: normal; font-variant-position: normal; f=
ont-variant-numeric: normal; font-variant-alternates: normal; font-variant-e=
ast-asian: normal; line-height: normal;"><span style=3D"text-align: -webkit-=
auto; font-variant-ligatures: normal; font-variant-position: normal; font-va=
riant-numeric: normal; font-variant-alternates: normal; font-variant-east-as=
ian: normal; line-height: normal; background-color: rgba(255, 255, 255, 0);"=
><br></span></span><div style=3D"text-align: -webkit-auto; font-variant-liga=
tures: normal; font-variant-position: normal; font-variant-numeric: normal; f=
ont-variant-alternates: normal; font-variant-east-asian: normal; line-height=
: normal;"><span style=3D"background-color: rgba(255, 255, 255, 0);"><br></s=
pan></div></div>On 3 Mar 2017, at 14:51, Robert P. J. Day &lt;<a href=3D"mai=
lto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br><br></div=
><blockquote type=3D"cite"><div><span>On Fri, 3 Mar 2017, Burton, Ross wrote=
:</span><br><span></span><br><blockquote type=3D"cite"><span>On 3 March 2017=
 at 13:24, Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpj=
day@crashcourse.ca</a>&gt; wrote:</span><br></blockquote><blockquote type=3D=
"cite"><span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; it seems of limited value=
 for YP to have a powerpc reference</span><br></blockquote><blockquote type=3D=
"cite"><span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;board, mpc8315e-rdb, that is ess=
entially impossible to</span><br></blockquote><blockquote type=3D"cite"><spa=
n> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;procure. is there any effort being made to l=
ook around for a</span><br></blockquote><blockquote type=3D"cite"><span> &nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;newer powerpc reference board that people could a=
ctually buy?</span><br></blockquote><blockquote type=3D"cite"><span></span><=
br></blockquote><blockquote type=3D"cite"><span>Do you have any suggestions?=
</span><br></blockquote><span></span><br><span> &nbsp;not at the moment ... p=
erhaps the powerpc or freescale folks can</span><br><span>weigh in. i'm not a=
 powerpc expert, but it does seem pointless to have</span><br><span>a refere=
nce board that no one can get.</span><br><span></span><br><span>rday</span><=
br><span></span><br><span>-- </span><br><span></span><br><span>=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><br><span>Robert P. J. D=
ay &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ottawa, Ontario, CANADA</span><br=
><span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a hre=
f=3D"http://crashcourse.ca">http://crashcourse.ca</a></span><br><span></span=
><br><span>Twitter: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;<a href=3D"http://twitter.com/rpjday">http://twitter.com=
/rpjday</a></span><br><span>LinkedIn: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=3D=
"http://ca.linkedin.com/in/rpjday">http://ca.linkedin.com/in/rpjday</a></spa=
n><br><span>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</sp=
an></div></blockquote><blockquote type=3D"cite"><div><span>-- </span><br><sp=
an>_______________________________________________</span><br><span>yocto mai=
ling list</span><br><span><a href=3D"mailto:yocto@yoctoproject.org">yocto@yo=
ctoproject.org</a></span><br><span><a href=3D"https://lists.yoctoproject.org=
/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br=
></div></blockquote></body></html>=

--Apple-Mail-61482251-26B3-452C-BA4F-3C3BC2D91780--
