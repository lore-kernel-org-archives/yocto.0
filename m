Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA8B8E00D90; Thu, 18 Jul 2019 04:40:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 923AAE00A96
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 04:40:47 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id c2so25118905wrm.8
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 04:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=OhTGyakvMjEi0IGXn0rhsURGt1UGrwT9mtIaIXJvvJ8=;
	b=hMrwDFj5dS15wjS2sgAMOf3N8ClI7m+jAxjhohcIeWYZm4UQHxb0EQzdP5RqXH0VOV
	fWgN7JRdW1CT3KqXWLffsX8PYy56fQ2H0jugsSia8s+qaQNMUoMsPXzp4WHkM1SUPuD9
	Gh3OE/wXB5hCUZw8fGM0Gt59Z5oZQWpdwMYu6jxk+1WHHN1n0M8qRDWkvTGXkB+WF3ps
	5oEA2KI8ZHNNZL638njy0GqYE2gOP0/6fxD5eK23Qqo2xPke0WyDyqRZ+1fZLPobr5VT
	cvNrY+mk+Vnld8KBbbzUeX/r49dyHA8zc+71PXF279c/5zhE1l53tlqreg4irqqtUJN6
	GWqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=OhTGyakvMjEi0IGXn0rhsURGt1UGrwT9mtIaIXJvvJ8=;
	b=Q+X2CuaPojtyCPlrTkrbmae2LG7EJLY3cXUr+NOH7m+WmfYl34kLlSpjejdJGgGZCL
	hLxjjVAY7MLPMsvADaAxxNNQcadIJHkXY+y6Umj9wq4d8hZQ8WPy4Dch3RU7h4WL4g1h
	FQa02Gkm77eNpCncJn4eTPlGSO9iJG7ozCUlNC/sx3v0TVsBEiCFUoX2P/bOMONqb8TW
	kcvvHdmc2ki8QdJIH88Jx8MOo9jygSy+SqChgPnOJRLn7Rf1HzsDz5vBTg9sKat94R+u
	bhBNsVspGr6rM+v7DT4NQ5yDwCKhCw0fCSWmCIclSF//RlYVRuZQZ5S2yVNi77gZamJD
	y+zA==
X-Gm-Message-State: APjAAAWQbzQaqswN2xHPdKzqN9RulkIHMpVlpvATyzOsBQrSaa669P9l
	SvFPr+AP+GYXHBIH6xDQudA=
X-Google-Smtp-Source: APXvYqx5cE9YxTBjLcjAJQbh4HpjXVRJmaEgxJ0u2HGGCAT0qKfQflSH7gLIopDh/hvtpGcbDljIYA==
X-Received: by 2002:a5d:4e8a:: with SMTP id e10mr52107267wru.26.1563450046738; 
	Thu, 18 Jul 2019 04:40:46 -0700 (PDT)
Received: from [10.19.45.94] (tmo-100-214.customers.d1-online.com.
	[80.187.100.214]) by smtp.gmail.com with ESMTPSA id
	a67sm25884364wmh.40.2019.07.18.04.40.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 18 Jul 2019 04:40:46 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <51BE6D71ED8CFC4BA05434EB06711F5DF48A7DF9@UKCENMBX04.oxinst.com>
Date: Thu, 18 Jul 2019 14:40:45 +0300
Message-Id: <3AAE13A2-33F0-4C2E-8A18-B077FA93BDD4@gmail.com>
References: <51BE6D71ED8CFC4BA05434EB06711F5DF48A7DF9@UKCENMBX04.oxinst.com>
To: MUGRIDGE Robin <Robin.Mugridge@oxinst.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-mono updates
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
X-List-Received-Date: Thu, 18 Jul 2019 11:40:48 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-49BC28DC-24BA-406D-80FE-0C69D2BAFD8B
Content-Transfer-Encoding: 7bit

--Apple-Mail-49BC28DC-24BA-406D-80FE-0C69D2BAFD8B
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I don=E2=80=99t really know what=E2=80=99s the situation with meta-mono spec=
ifically, but if you=E2=80=99re willing to be the maintainer, that=E2=80=99d=
 be great. Do keep in mind that yocto is almost entirely a volunteer project=
, contributors and maintainers come and go without long term promises.

Alex

> On 18 Jul 2019, at 9.49, MUGRIDGE Robin <Robin.Mugridge@oxinst.com> wrote:=

>=20
> Hi,
> =20
> I notice that meta-mono has not been updated for a while now (2018-11-06 f=
or the repo at git.yoctoproject.org, 2019-03-22 for the repo at github.com/D=
ynamicDevices).
> =20
> Is this layer no longer being maintained?  Is there an alternative?
> =20
> Thanks,
> =20
> Robin
> =20
> __________________________________________________________________________=
_
> This e-mail is confidential and is for the addressee only.   Please refer t=
o=20
> www.oxinst.com/email-statement for regulatory information.
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-49BC28DC-24BA-406D-80FE-0C69D2BAFD8B
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I don=E2=80=99t really know what=E2=80=99s t=
he situation with meta-mono specifically, but if you=E2=80=99re willing to b=
e the maintainer, that=E2=80=99d be great. Do keep in mind that yocto is alm=
ost entirely a volunteer project, contributors and maintainers come and go w=
ithout long term promises.<br><br><div id=3D"AppleMailSignature" dir=3D"ltr"=
>Alex</div><div dir=3D"ltr"><br>On 18 Jul 2019, at 9.49, MUGRIDGE Robin &lt;=
<a href=3D"mailto:Robin.Mugridge@oxinst.com">Robin.Mugridge@oxinst.com</a>&g=
t; wrote:<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr">

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->


<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I notice that meta-mono has not been updated for a wh=
ile now (2018-11-06 for the repo at <a href=3D"http://git.yoctoproject.org">=
git.yoctoproject.org</a>, 2019-03-22 for the repo at <a href=3D"http://githu=
b.com/DynamicDevices">github.com/DynamicDevices</a>).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this layer no longer being maintained?&nbsp; Is th=
ere an alternative?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Robin<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
___________________________________________________________________________<=
br>
This e-mail is confidential and is for the addressee only.&nbsp;&nbsp; Pleas=
e refer to <br>
<a href=3D"http://www.oxinst.com/email-statement">www.oxinst.com/email-state=
ment</a> for regulatory information.


</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>-- </spa=
n><br><span>_______________________________________________</span><br><span>=
yocto mailing list</span><br><span><a href=3D"mailto:yocto@yoctoproject.org"=
>yocto@yoctoproject.org</a></span><br><span><a href=3D"https://lists.yoctopr=
oject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><=
/span><br></div></blockquote></body></html>=

--Apple-Mail-49BC28DC-24BA-406D-80FE-0C69D2BAFD8B--
