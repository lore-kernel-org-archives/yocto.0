Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3329E0076F; Wed, 25 Feb 2015 01:18:24 -0800 (PST)
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
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 792B2E0074C
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 01:18:20 -0800 (PST)
Received: by wggy19 with SMTP id y19so2253036wgg.13
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 01:18:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=xfhOIQ3tdhRQMtUz51mgdJ0wzzKwV73MEdlnBCWOqiY=;
	b=MyTPlLjhkLApILBm0eOPzHnAFtHySVgargpzW3RzavbFownJhb2OQyo4g0QNObr75t
	zDCMpGYajUkHML6uUZ+7U8tosWMY+dVuDY3K5kF5Rd4T8Q/Pibe3sXe+fIwliOYQv5UD
	CykS8UDaI4+vatfgzCemQyHdLnkv4xp4GJcz2lG39a0BxSPoB2t/FX7xbboKCi7YPC9u
	SI/fznvMM92E2CSCkJgnpAdMzq9T9NVOS+roOf1aWu7zgvk7itfq+Fk6yN9z8CU5NlPB
	34Yd7uMTTKVQuxziTWOWM7qhiQAJf7Z9qo1vrmiMfXDHXi3xmxDG+/OUsatBKjGJ/JH2
	nrEw==
X-Gm-Message-State: ALoCoQnlcdz1q8It7D/A8nGqkLi6EiV4bS5v3ORBujvIdihbS69KObyrQf2z/h+OVvhP0SUhzgJ3
X-Received: by 10.180.198.37 with SMTP id iz5mr4369079wic.95.1424855899853;
	Wed, 25 Feb 2015 01:18:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.186.216 with HTTP; Wed, 25 Feb 2015 01:17:59 -0800 (PST)
X-Originating-IP: [195.249.186.165]
In-Reply-To: <CAP2S6e7aD=O1Scjec1Cw=5NEG2JDZFOjKcc=Qhdnq=m7sY_21Q@mail.gmail.com>
References: <54ECE7FD.4070503@mlbassoc.com> <54ECF114.8060203@gmail.com>
	<54ECF1DD.7000805@mlbassoc.com>
	<CAP2S6e7aD=O1Scjec1Cw=5NEG2JDZFOjKcc=Qhdnq=m7sY_21Q@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 25 Feb 2015 10:17:59 +0100
Message-ID: <CAK18fxGk0skHB4vQ70KJg2FmYheJ=nvFAnjnNUEw3iSHHj3Gfw@mail.gmail.com>
To: Valentin Le bescond <valentin.lebescond@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi] Pi-2 support?
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
X-List-Received-Date: Wed, 25 Feb 2015 09:18:25 -0000
Content-Type: multipart/alternative; boundary=047d7b604be8c469ae050fe61dc8

--047d7b604be8c469ae050fe61dc8
Content-Type: text/plain; charset=UTF-8

Hello,

On Wed, Feb 25, 2015 at 9:27 AM, Valentin Le bescond <
valentin.lebescond@gmail.com> wrote:

> Look there:
>
> https://github.com/agherzan/meta-raspberrypi
> It has the Raspberry pi 2 machine conf.
>

Indeed. Current master supports raspberrypi2 machine. Happy hacking!

-- 
*Andrei Gherzan*

--047d7b604be8c469ae050fe61dc8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Wed, Feb 25, 2015 at 9:27 AM, Valentin Le bescond <span dir=3D=
"ltr">&lt;<a href=3D"mailto:valentin.lebescond@gmail.com" target=3D"_blank"=
>valentin.lebescond@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr"><div><div>Look there:<br><br><a href=3D"https:/=
/github.com/agherzan/meta-raspberrypi" target=3D"_blank">https://github.com=
/agherzan/meta-raspberrypi</a><br></div>It has the Raspberry pi 2 machine c=
onf.<br></div></div></blockquote><div><br></div><div>Indeed. Current master=
 supports raspberrypi2 machine. Happy hacking!</div></div><div><br></div>--=
 <br><div class=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"text-ali=
gn:center"></div><div style=3D"text-align:center"><div align=3D"left"><b st=
yle=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:cen=
ter">Andrei Gherzan</b><br></div></div></div></div>
</div></div>

--047d7b604be8c469ae050fe61dc8--
