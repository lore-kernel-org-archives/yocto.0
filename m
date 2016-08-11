Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A711DE0100E; Wed, 10 Aug 2016 23:31:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_24,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_LOW,T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.6 HTML_IMAGE_ONLY_24 BODY: HTML: images with 2000-2400 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88017E0100B
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2016 23:31:35 -0700 (PDT)
Received: by mail-ua0-f179.google.com with SMTP id k90so105738238uak.1
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2016 23:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=j84Jr2yUty1BUbCmxvVq5gyX2hDCKZoylh8Z8Tew7Gk=;
	b=a4bcfDu4yzpcOKBxRQCyaFKR0uz1BaQW/N3h5EVGlNeRt6LQ2qJL30hzM1E0QoQscG
	l3qMxMlqs+P0GA9xdUH8hTuIkR5WiTY+KjkE74iAQnJKz/pcWXxENxTc2w/u7eu85Pzr
	HSXQr8TSdASSlyzG8QB+dLfeim/NHCe6sgBD+CvNcVwUefxh/uqHjapbiXBLEciUqPyz
	lHP465U9k2g+W0I47BAEsdyqSQind1y5u2uqhMjaqp/StyH9Vo9QgBSs/QhB5yJiAEzV
	di7kJ0Qonb0wCJgiBmcI4XOkywZOW4xTIugyf80qOTxO3bAWE885smvtAsfUMZ+s6YOY
	rRQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=j84Jr2yUty1BUbCmxvVq5gyX2hDCKZoylh8Z8Tew7Gk=;
	b=Un4zPTp8XLiVG5r8Ut8IXP5iU88iFWEEVFiAOOE91h0Fu34gt5vM3tTBeGd8cFldi0
	t+Jp+Jyy6QeUGUVRcYeGyKPbA1hvVNxK/aoIKEt//03JFTaJwFa47joSwqbxpkDOOOUQ
	nbBT31TukhtPzAJGed6cT3AS/Pqf+2uU8L5RDDIGgZ+JqxgzOQOdJdfYwAyR8yGM101X
	o8t5Kfv1zeZx3Y41bAsk3g+2o+MqN1vMAPcm0OhGjDIwELIsdsOSbw554R0fAE1nyJXc
	OGM9z2FpSyvdclcatjUwiQnFbFoKFLsHsskPRnDaBUMgQ2UVeYVF7N8EiBbIQoSD978d
	60AQ==
X-Gm-Message-State: AEkooutOjdzZTN7GrmQcjndBIfOlPNH1praiywOuLTMQkRQlAOgWZWDMMj4nN9oxoDxv6uQxJUb2Pt7pMpG6gw==
X-Received: by 10.31.146.10 with SMTP id u10mr2348713vkd.14.1470897095370;
	Wed, 10 Aug 2016 23:31:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.34.108 with HTTP; Wed, 10 Aug 2016 23:31:34 -0700 (PDT)
In-Reply-To: <178dbf86a1c322ef74afcdaf5655d659@cweb19.nm.nhnsystem.com>
References: <178dbf86a1c322ef74afcdaf5655d659@cweb19.nm.nhnsystem.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Thu, 11 Aug 2016 08:31:34 +0200
Message-ID: <CAEjjReK_ND1=hpFbMMj0WbnxbGwuCrxqve+EFqDHisuGQhbSOQ@mail.gmail.com>
To: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: can be designed don't using bb file?
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
X-List-Received-Date: Thu, 11 Aug 2016 06:31:39 -0000
Content-Type: multipart/alternative; boundary=001a1142f99cdef1530539c5ea4c

--001a1142f99cdef1530539c5ea4c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

yes, it is possible but this is bad practice. Recipes should hold only
configuration and way to build component/library/application + patches.

http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#building=
-software-from-an-external-source

Br,
Chris

On Thu, Aug 11, 2016 at 7:12 AM, =EC=9C=A4=EC=98=81=EC=84=9D <earwigz@naver=
.com> wrote:

> dear, all.
>
> i have a question..
>
> please read my comment kindly.
>
>
>
> for example, if i will build test.bb recipes.
>
> (ex meta-test / recipes-test / test.bb)
>
> when run "bitbake test",
>
> source code that set in SRC_URI was downloaded and built.
>
>
>
> it is not using the test.bb recipes,
>
> can be designed that present source are there in this directory?
>
>
>
> $ ls meta-test/recipes-test/
>
>   main.cpp
>
>   include
>
>
>
>
>
> Thank you
>
> best regards.
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
>

--001a1142f99cdef1530539c5ea4c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br>yes, it is possible but this is bad p=
ractice. Recipes should hold only configuration and way to build component/=
library/application + patches. <br><br><a href=3D"http://www.yoctoproject.o=
rg/docs/latest/dev-manual/dev-manual.html#building-software-from-an-externa=
l-source">http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.htm=
l#building-software-from-an-external-source</a><br><br></div>Br,<br></div>C=
hris<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
Thu, Aug 11, 2016 at 7:12 AM, =EC=9C=A4=EC=98=81=EC=84=9D <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:earwigz@naver.com" target=3D"_blank">earwigz@naver.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div style=
=3D"font-size:10pt;font-family:Gulim"><p>dear, all.</p><p>i have a question=
..</p><p>please read my comment kindly.</p><p>=C2=A0</p><p>for example, if =
i will build <a href=3D"http://test.bb" target=3D"_blank">test.bb</a> recip=
es.=C2=A0</p><p>(ex meta-test / recipes-test / <a href=3D"http://test.bb" t=
arget=3D"_blank">test.bb</a>)</p><p>when run &quot;bitbake test&quot;,</p><=
p>source code that set in SRC_URI was downloaded and built.</p><p>=C2=A0</p=
><p>it is not using the <a href=3D"http://test.bb" target=3D"_blank">test.b=
b</a> recipes,=C2=A0</p><p>can be designed that present source are there in=
 this directory?</p><p>=C2=A0</p><p>$ ls meta-test/recipes-test/</p><p>=C2=
=A0 main.cpp</p><p>=C2=A0 include</p><p>=C2=A0</p><p>=C2=A0</p><p>Thank you=
</p><p>best regards.</p><p>=C2=A0</p><p>=C2=A0</p></div></div>
<table><tbody><tr><td><img src=3D"http://mail.naver.com/readReceipt/notify/=
?img=3DfQ%2BN1B%2BZM6kvaAbwhARPM4M%2FF4uwMqKZK4k4Fq3Cp4FvM6M9FoE9pAM9aEIo%2=
BrkSKxv5W4d5W4C5bX0q%2BzkR74FTWx%2FsD6eo%2BzegD6eo%2Bzemb4e8p6Fd74eZpm%3D%3=
D.gif" border=3D"0"></td></tr></tbody></table><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1142f99cdef1530539c5ea4c--
