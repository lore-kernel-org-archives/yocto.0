Return-Path: <yuq825@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06222E00C9C; Thu, 27 Aug 2015 19:02:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuq825[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92665E00B7C
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2015 19:02:17 -0700 (PDT)
Received: by igcse8 with SMTP id se8so8116532igc.1
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2015 19:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=mPRwP1PU+fFdcM50vOApco50M8Cmb/W/ORGK+sboh1k=;
	b=fDBHTalbM6z0zTjjMDc26W8aam5X9GmnAWK/40iC1GijbRH+OB9UPGzseu2BxSOpbN
	oc5WIFTLjEoLXM4u5X84iXOiaw/uNdWmqdHj7NU9h+ihorC3x4LgD9y9AuNplVoc466G
	RITbXLsewFTKlgr6mbG7UnSnhHfxCdH9hRsrww6wlKs+P6YtAWGBnFTw8i0VID6VXHGM
	3kt9S7Ml14yK0pffzqmB3A/jHn6wImrrqTDBirhRANDxjJN1JUhjk4BKmwq1FLqY0iWM
	GhywnQ15b0Lq401irxO8ovq9hYJ6ppmTo0x61+SPOS4xBHw99/Kt+meOXYfSe/vIBVqi
	gmrQ==
MIME-Version: 1.0
X-Received: by 10.50.79.129 with SMTP id j1mr1305943igx.63.1440727336873; Thu,
	27 Aug 2015 19:02:16 -0700 (PDT)
Received: by 10.36.29.148 with HTTP; Thu, 27 Aug 2015 19:02:16 -0700 (PDT)
In-Reply-To: <55DF1671.8010207@topic.nl>
References: <CAKGbVbu-gzaAfkuZVQP8Pua=SMYwxoHsvHqDci+Eo3FyPh+CQA@mail.gmail.com>
	<55DF1671.8010207@topic.nl>
Date: Fri, 28 Aug 2015 10:02:16 +0800
Message-ID: <CAKGbVbut6n9XA5dFF5f5Q7e3hwV+aBO6G6gyFRLifJ9FbRUmhw@mail.gmail.com>
From: Qiang Yu <yuq825@gmail.com>
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to disable OVERRIDES temperally
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
X-List-Received-Date: Fri, 28 Aug 2015 02:02:20 -0000
Content-Type: multipart/alternative; boundary=089e011609fc21f7c8051e557976

--089e011609fc21f7c8051e557976
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 27, 2015 at 9:53 PM, Mike Looijmans <mike.looijmans@topic.nl>
wrote:

> On 27-08-15 13:40, Qiang Yu wrote:
>
>> Hi all,
>>
>> I want to load kernel module ci_hdrc_imx at boot time and add a conf file
>> in
>> /etc/modprobe.d. I find it can be done by add
>> module_conf_ci_hdrc_imx = "my configure"
>>
>> But the suffix "imx" is in OVERRIDES, so I get
>> module_conf_ci_hdrc = "my configure"
>>
>> How to disable the OVERRIDES temperally here? Or may be there is another
>> way?
>>
>
> This might work (untested):
>
> MY_HDRC_MODULE_NAME = "conf_ci_hdrc"
> module_${MY_HDRC_MODULE_NAME} = "my configure"
>
>
>
Test this, same wrong result.


>
>
> Kind regards,
>
> Mike Looijmans
> System Expert
>
> TOPIC Embedded Products
> Eindhovenseweg 32-C, NL-5683 KH Best
> Postbus 440, NL-5680 AK Best
> Telefoon: +31 (0) 499 33 69 79
> Telefax: +31 (0) 499 33 69 70
> E-mail: mike.looijmans@topicproducts.com
> Website: www.topicproducts.com
>
> Please consider the environment before printing this e-mail
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e011609fc21f7c8051e557976
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Aug 27, 2015 at 9:53 PM, Mike Looijmans <span dir=3D"ltr">&lt;<=
a href=3D"mailto:mike.looijmans@topic.nl" target=3D"_blank">mike.looijmans@=
topic.nl</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On 27-08-15 13:40, Qiang Yu wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi all,<br>
<br>
I want to load kernel module ci_hdrc_imx at boot time and add a conf file i=
n<br>
/etc/modprobe.d. I find it can be done by add<br>
module_conf_ci_hdrc_imx =3D &quot;my configure&quot;<br>
<br>
But the suffix &quot;imx&quot; is in OVERRIDES, so I get<br>
module_conf_ci_hdrc =3D &quot;my configure&quot;<br>
<br>
How to disable the OVERRIDES temperally here? Or may be there is another<br=
>
way?<br>
</blockquote>
<br></span>
This might work (untested):<br>
<br>
MY_HDRC_MODULE_NAME =3D &quot;conf_ci_hdrc&quot;<br>
module_${MY_HDRC_MODULE_NAME} =3D &quot;my configure&quot;<br>
<br>
<br></blockquote><div>=C2=A0</div><div>Test this, same wrong result.</div><=
div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">
<br>
<br>
Kind regards,<br>
<br>
Mike Looijmans<br>
System Expert<br>
<br>
TOPIC Embedded Products<br>
Eindhovenseweg 32-C, NL-5683 KH Best<br>
Postbus 440, NL-5680 AK Best<br>
Telefoon: <a href=3D"tel:%2B31%20%280%29%20499%2033%2069%2079" value=3D"+31=
499336979" target=3D"_blank">+31 (0) 499 33 69 79</a><br>
Telefax: <a href=3D"tel:%2B31%20%280%29%20499%2033%2069%2070" value=3D"+314=
99336970" target=3D"_blank">+31 (0) 499 33 69 70</a><br>
E-mail: <a href=3D"mailto:mike.looijmans@topicproducts.com" target=3D"_blan=
k">mike.looijmans@topicproducts.com</a><br>
Website: <a href=3D"http://www.topicproducts.com" rel=3D"noreferrer" target=
=3D"_blank">www.topicproducts.com</a><br>
<br>
Please consider the environment before printing this e-mail<div class=3D"HO=
EnZb"><div class=3D"h5"><br>
<br>
<br>
<br>
<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div>

--089e011609fc21f7c8051e557976--
