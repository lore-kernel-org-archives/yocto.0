Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76A9EE0097C; Mon, 22 Jul 2019 13:22:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2C09E008A4
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 13:22:33 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id k10so39777044qtq.1
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2019 13:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gTGqCTNolqlA1o2T2mhiDCserws3Nv6aYD2PF82MOLc=;
	b=XJVm9fj5PfEi5/6le0MdsO1fo1ATVrVRuPTXjbmgOFhsH7jrfKxb1UQG5YGEc8OU4K
	kejooth7kUDfV2xYkhVpQ7zd4ZaYonpMoVCgzwyF++3FXJBc0ufgrfQ3TJZ4YT3vPCmK
	oUBF+UutErkOIJWyADd+Umv/nDd/J7D5vyAEQRzIOPeC0vttAGNlus0B5XA7F977FRVh
	74mBZqqbs+VyZpoFAeeAS2WxBkq7/3XbWaCcVn9ai+NDrVdO1UaTedRsKbGSezyWnUuX
	xwt0eC56EWr5Eayyq+Sf41PIbHaFDP/3TYjFlfwzQgrpIvqi/1UVYncX7Z25PNxOJKR/
	COpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gTGqCTNolqlA1o2T2mhiDCserws3Nv6aYD2PF82MOLc=;
	b=VtpFDBg6lH5XmkQhb0rX8NxKokSQs2KGE9qAZfymLbh42KTbi6GEGbxx9wK043P2j7
	s1NuuCTN2ZvCVyDJ8njbx8ABSWqGm8Hx/YcXP2EgMysASvcVYADE5zLHcJeR3OTjosBu
	A8UzuWF9/ZptcKBe7qjDlgPCPL9phpub9iriRYkuuGw4xC/KBWuA7TgUnJwKTwH3+feU
	KkSxu19XX256KoCkJlxc/O7HH+PKBIhqnJMil7/w/rXmtCxBvgFGbNTwNZvW2RxOT01W
	rq2/2VQoQsK/cno8zR0Gfb+HV3DquD4QFspfvG0CyNDZB83Qk1/U+4Hk2yt/nNHOMfvp
	7w7Q==
X-Gm-Message-State: APjAAAXSeMdV0mYsSp4iruapwWAj7whZBA4gFGATVgZWyTrVevz4qaG4
	d1UpB0UI5COBo5iLRzWw6pSCMbb9UcSs6fhMSc4=
X-Google-Smtp-Source: APXvYqyssuQFmq3M5HoAjLvii3kpp2nZrL5zKxiaDaF6f1oqjV1i0TljxkLn7xJCiKSvEqDkdHQfC6yy9T4TWYua6Es=
X-Received: by 2002:a0c:ae5a:: with SMTP id z26mr51297862qvc.65.1563826952891; 
	Mon, 22 Jul 2019 13:22:32 -0700 (PDT)
MIME-Version: 1.0
References: <AM6PR07MB48681013AFE59E28FAC8E5F38CCB0@AM6PR07MB4868.eurprd07.prod.outlook.com>
In-Reply-To: <AM6PR07MB48681013AFE59E28FAC8E5F38CCB0@AM6PR07MB4868.eurprd07.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 22 Jul 2019 13:22:21 -0700
Message-ID: <CAMKF1spu+sTqG=_hMBg5rNqHVkRythDijbPf33ivW3Yaz6Z7_A@mail.gmail.com>
To: "Taborski, Krzysztof (Nokia - PL/Wroclaw)" <krzysztof.taborski@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipes for gcc-native
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
X-List-Received-Date: Mon, 22 Jul 2019 20:22:34 -0000
Content-Type: multipart/alternative; boundary="000000000000047335058e4ad6eb"

--000000000000047335058e4ad6eb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 22, 2019 at 1:14 PM Taborski, Krzysztof (Nokia - PL/Wroclaw) <
krzysztof.taborski@nokia.com> wrote:

> Hello,
> I am wondering, if there is any reason, that yocto project does not
> delivers recipes for gcc-native ( in similar way as python-native for
> example)?
>
> It would allow to build native recipes with different/higher version of
> gcc, than this, which user has on my build servers.
>


This would not solve the problem fully and yet create more maintainer
burden since the supporting libraries are still coming from distribution
underneath and this would create yet another combination for variable

I think container approach would solve this for us in a nicer way

Most supported distribution do support newer compiler packages and that=E2=
=80=99s a
better option since they would have tested it on that distribution to some
extent

>
> Best regards,
>
> Krzysztof Taborski
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000047335058e4ad6eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Jul 22, 2019 at 1:14 PM Taborski, Krzysztof (Nokia =
- PL/Wroclaw) &lt;<a href=3D"mailto:krzysztof.taborski@nokia.com">krzysztof=
.taborski@nokia.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am wondering, if there is any reason, that yocto project does not deliver=
s recipes for gcc-native ( in similar way as python-native for example)?</d=
iv>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
It would allow to build native recipes with different/higher version of gcc=
, than this, which user has on my build servers.</div></div></blockquote><d=
iv dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Thi=
s would not solve the problem fully and yet create more maintainer burden s=
ince the supporting libraries are still coming from distribution underneath=
 and this would create yet another combination for variable=C2=A0</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">I think container approach would =
solve this for us in a nicer way=C2=A0</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Most supported distribution do support newer compiler packag=
es and that=E2=80=99s a better option since they would have tested it on th=
at distribution to some extent=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv dir=3D"ltr"><div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
;font-size:12pt;color:rgb(0,0,0)"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_1326624300113729320Signature">
<div id=3D"m_1326624300113729320divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;background-color:#ffffff;font-family:Calibri,Arial,Helveti=
ca,sans-serif">
<p style=3D"margin-top:0px;margin-bottom:0px">Best regards,</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Krzysztof Taborski</p></div><=
/div></div><div dir=3D"ltr"><div id=3D"m_1326624300113729320Signature"><div=
 id=3D"m_1326624300113729320divtagdefaultwrapper" style=3D"font-size:12pt;c=
olor:#000000;background-color:#ffffff;font-family:Calibri,Arial,Helvetica,s=
ans-serif">
</div>
</div>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000047335058e4ad6eb--
