Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF45EE00827; Sun, 25 Jan 2015 15:04:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.179 listed in list.dnswl.org]
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ED17E003AB
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 15:03:58 -0800 (PST)
Received: by mail-we0-f179.google.com with SMTP id q59so6233601wes.10
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 15:03:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=nFXOWaJxty4xw96ilTHdfp56//8EzvXiCxBFtug9X64=;
	b=cspqMtYQ7/WvlP5Qmj8aiRSSgEUSPTUZj1WqLasgh2OlXzIkktvLDMUYmQSm7pvVMT
	GzGtjQLV4UuZ+UPRcdxaQf1OIyKA8owyNmcjXVbDtHPs4UYGfd6nbjw7lrVLvHipaHkh
	a7uliwpy6FBlAxhmITS/tx5o2MjlFgulvJiVaVpG7phPA+f3zcxBrlMqFWOdURDbEqGW
	4YlWULIo91QajSQuiS3w9KgxE8E/gAn2TrBpPdgF9c9HejQrnm9PYci0QfOvKKIgbfBs
	gL6M6DHMKUjHa/gUxP81w8bZ8mPLwa4pUUauhIDAi4AV7f8UwxXIwYdfVeNEnkrpNvFH
	4T4A==
X-Gm-Message-State: ALoCoQla4tRy+SfnnSEwCz7r4AulxjN/I1mnBCXGf+1x9juHH0bxYwTDJijoq88y6MN4T9Ep5IJG
X-Received: by 10.194.122.38 with SMTP id lp6mr37791001wjb.24.1422227037995;
	Sun, 25 Jan 2015 15:03:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.107.132 with HTTP; Sun, 25 Jan 2015 15:03:35 -0800 (PST)
X-Originating-IP: [109.100.140.128]
In-Reply-To: <1417604626-52166-1-git-send-email-incnews@jenslucius.de>
References: <1417604626-52166-1-git-send-email-incnews@jenslucius.de>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 26 Jan 2015 01:03:35 +0200
Message-ID: <CAK18fxEe4GfNZ9qyOPc5oMU+Y8WyLKSjVw9LnZGj2q4ZBMhRNA@mail.gmail.com>
To: Theodor Gherzan <theodor@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>, Jens Lucius <info@jenslucius.de>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Replace not working v3.16.1 by v3.16.5
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
X-List-Received-Date: Sun, 25 Jan 2015 23:04:03 -0000
Content-Type: multipart/alternative; boundary=089e01227ee463e175050d820922

--089e01227ee463e175050d820922
Content-Type: text/plain; charset=UTF-8

Hi Theodor,

On Wed, Dec 3, 2014 at 1:03 PM, Jens Lucius <incnews@jenslucius.de> wrote:

> From: Jens Lucius <info@jenslucius.de>
>
> The recipe for 3.16.1 is not working because of a typo in branch
> and the revision not being available any more.
>
> Update to latest (and last) 3.16.5.
>
> No Update to a 3.17.x because these get rebased regularly.
>
> Signed-off-by: Jens Lucius <info@jenslucius.de>
>

Could you give this patch a spin?

-- 
*Andrei Gherzan*

--089e01227ee463e175050d820922
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Theodor,</div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Wed, Dec 3, 2014 at 1:03 PM,=
 Jens Lucius <span dir=3D"ltr">&lt;<a href=3D"mailto:incnews@jenslucius.de"=
 target=3D"_blank">incnews@jenslucius.de</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">From: Jens Lucius &lt;<a href=3D"mailto:info@jensluci=
us.de">info@jenslucius.de</a>&gt;<br>
<br>
The recipe for 3.16.1 is not working because of a typo in branch<br>
and the revision not being available any more.<br>
<br>
Update to latest (and last) 3.16.5.<br>
<br>
No Update to a 3.17.x because these get rebased regularly.<br>
<br>
Signed-off-by: Jens Lucius &lt;<a href=3D"mailto:info@jenslucius.de">info@j=
enslucius.de</a>&gt;<br></blockquote><div><br></div><div>Could you give thi=
s patch a spin?=C2=A0</div></div><div><br></div>-- <br><div class=3D"gmail_=
signature"><div dir=3D"ltr"><div style=3D"text-align:center"></div><div sty=
le=3D"text-align:center"><div align=3D"left"><b style=3D"font-family:Arial;=
font-size:small;color:rgb(51,51,51);text-align:center">Andrei Gherzan</b><b=
r></div></div></div></div>
</div></div>

--089e01227ee463e175050d820922--
