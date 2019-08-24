Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4AABE00AE4; Sat, 24 Aug 2019 15:35:56 -0700 (PDT)
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
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.182 listed in list.dnswl.org]
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F0CDE00A93
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 15:35:55 -0700 (PDT)
Received: by mail-qk1-f182.google.com with SMTP id r21so11391846qke.2
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 15:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Lt5LqX3+MyRDJFY3gXjyh3SbSJxiA/3PnV58EpxHHZI=;
	b=QpR0+gRs+Eon+rOfQ9ZYIQFqMtalKODjQtobxjk/iDdHanHfwPFQGnTBk/eSGVvxGt
	252dT6sqDmqMQw209cnvIo+j4ee2JnLkZS6LvSncRn/Ww1YLbx9ri6E+EooLrLPdtLTi
	unJuigbGsmGudMXqkCvcLQxEREbYM2c67kG4GBs5XEI77xti4JdOO2bmd0ZbwmxcrI+X
	CTBzU+5hjGF9LxtSciDclKfLyOK+GiXYRHooxeKHTRu7k/OO8PkoNFRiyvzb75ZAZhK2
	T/Wn7BCf3vlPb4S6krLYppaKZlOtLLjmZiI+emfxgovsf30JnGUKGEKjj9+czStR+uXK
	rmHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Lt5LqX3+MyRDJFY3gXjyh3SbSJxiA/3PnV58EpxHHZI=;
	b=JdtC1drwPyX5xfuaswWNFWaDWdx2dO+ym1Bmkq4xUiJ+LIoZpbpxayc2/HVC1TXzJM
	EBixQMV15KsnIVi2dqTYDENw6mpNrAz7GxunXfjU0Q3ZCLt4LzpZGuag5UGoO7hzD1bg
	6yTe4DZGmMCj1E+ZDrRvVh0itAbIAjm0VXPI+iX/Ja9+ClARmQ4kpLS+lD/wV+JNoe74
	7Asg/fZc1nmIDtQ+AhGjPDSrzPpBPdG1FDQRs61gMbmatJa8HW0QO1ckkh+CxCmXKAWT
	gpJQoCsfJwCein1SBumiZZHrHOm6ZyR0N+wmNJSph3hP+NjzWn7sTdbk2uIedXarzKMh
	Ku9w==
X-Gm-Message-State: APjAAAW1kL97AKg3CAJsYwBzQI8pqUINoE+FfiUwD18vk7qtfda+jGai
	2xTlPNeQFcqRqyO1tOG+0MrzzAHrXP/5YpUOb5Rk9g==
X-Google-Smtp-Source: APXvYqxZKQ1O7C55t1rMvPkHtHbV3mhXGr+Ie7+hn24oSYd+UKFHchknE8O5u97/kjt7PKfdOenW1tIMHL+NvyhlYjs=
X-Received: by 2002:a37:b245:: with SMTP id b66mr10709503qkf.337.1566686154323;
	Sat, 24 Aug 2019 15:35:54 -0700 (PDT)
MIME-Version: 1.0
References: <fff2306b-4938-01a0-69b4-775e113a1853@faresoftware.it>
In-Reply-To: <fff2306b-4938-01a0-69b4-775e113a1853@faresoftware.it>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 24 Aug 2019 15:35:43 -0700
Message-ID: <CAMKF1sotTxZUDVy1us9AOp3O4jCDu4EK2XbxS2pg8mNk2d4vLw@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: yocto@yoctoproject.org
Subject: Re: Python3 scan packages
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
X-List-Received-Date: Sat, 24 Aug 2019 22:35:57 -0000
Content-Type: multipart/alternative; boundary="000000000000b3ffd80590e48b0a"

--000000000000b3ffd80590e48b0a
Content-Type: text/plain; charset="UTF-8"

Python3-modules is a meta package you can depend on iirc

On Sat, Aug 24, 2019 at 2:20 PM Mauro Ziliani <mauro@faresoftware.it> wrote:

> Hi all.
>
> Do you know some class or recipe which can detect the modules used by a
> python application?
>
> Now I have to RDEPENDS every package the application need
>
>
> MZ
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000b3ffd80590e48b0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Python3-modules is a meta package you can depend on =
iirc=C2=A0</div></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, Aug 24, 2019 at 2:20 PM Mauro Ziliani &lt;<a h=
ref=3D"mailto:mauro@faresoftware.it">mauro@faresoftware.it</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">Hi all.<br>
<br>
Do you know some class or recipe which can detect the modules used by a <br=
>
python application?<br>
<br>
Now I have to RDEPENDS every package the application need<br>
<br>
<br>
MZ<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000b3ffd80590e48b0a--
