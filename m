Return-Path: <gangadhar.ubuntu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90167E008E5; Thu, 27 Nov 2014 07:01:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gangadhar.ubuntu[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E55AE00874
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 07:01:19 -0800 (PST)
Received: by mail-qg0-f41.google.com with SMTP id j5so3646160qga.28
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 07:01:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=RciQsjNYaE/Z2X/pc1Kh3A2zMeF19Si55q1yNppzUIQ=;
	b=S6+9qkMBIt4dTlL3AXS+f8LuJtRSwMLOFpdmpqi7o0wqsEoSz69MMG2qojpAxAriBI
	nojfvbzuGOHgjGwEllKOv+tg5T4uJ0WC8HDK3KB7ixIGBrzFRDb7Jm9mdrPASHZRcsX5
	AikwvneijHWmctF8bo+0WqlBwZAYxGRxy9HSF5dxP4oeu53WKKG1hMqhhRp+VReo9rQC
	iazQjigO3uN9qA41msqxXiWTuZR1zcFAewPjCaCkaOEaHRi3zlebxCZCEk0omFpmNvNU
	wZ23RBkdZay7OsIpgBwM7VfWZZ18jFydEdyxLB0zsYqJsfEkGzc8U9tB6UylycYm3LIr
	sViA==
MIME-Version: 1.0
X-Received: by 10.140.30.33 with SMTP id c30mr54490099qgc.32.1417100479360;
	Thu, 27 Nov 2014 07:01:19 -0800 (PST)
Received: by 10.140.19.199 with HTTP; Thu, 27 Nov 2014 07:01:19 -0800 (PST)
In-Reply-To: <20141126065829.A3CB33823E9@gemini.denx.de>
References: <CAKxnL=hSs5NNCQY9ZTZi0XWXGJOOn0i_0f-X7k7JksCZZrGo9w@mail.gmail.com>
	<20141126065829.A3CB33823E9@gemini.denx.de>
Date: Thu, 27 Nov 2014 20:31:19 +0530
Message-ID: <CAKxnL=jp9wqbY8FZLPfNwcjhLgRoB7UTjO99b58gFUaa0fmWyA@mail.gmail.com>
From: Gangadhar N <gangadhar.ubuntu@gmail.com>
To: Wolfgang Denk <wd@denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: how to separate packages in downloads folder into those that run on target and those that do not run on target?
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
X-List-Received-Date: Thu, 27 Nov 2014 15:01:26 -0000
Content-Type: multipart/alternative; boundary=001a113aac4eaef64a0508d86a22

--001a113aac4eaef64a0508d86a22
Content-Type: text/plain; charset=UTF-8

Hi Wolfgang Denk,
Thanks for your reply.

1. I want to split the downloads folder so that I'll get a folder that
contains only the packages that go in to rootfs of my target. I want to
feed this folder to fossology SW to generate licences of each and every
file. Please suggest a method. We want to give the source and license list
to our customer.

2. I found this file,
~/yoctobuild/tisdk/build/arago-tmp-external-linaro-toolchain/work/my-machine--oe-linux-gnueabi/my-machine-image/1.0-r0/installed_pkgs.txt

This lists packages but it has lot of packages that do not go into my
target rootfs. What is this file all about?

3. I also found license.manifest & package.manifest in
~/yoctobuild/tisdk/build/arago-tmp-external-linaro-toolchain/deploy/licenses/my-machine-image-my-machine-20141127092456.
Our customer is not ok with this file.


Regards,
Gangadhar



On Wed, Nov 26, 2014 at 12:28 PM, Wolfgang Denk <wd@denx.de> wrote:

> Dear Gangadhar,
>
> In message <CAKxnL=
> hSs5NNCQY9ZTZi0XWXGJOOn0i_0f-X7k7JksCZZrGo9w@mail.gmail.com> you wrote:
> >
> > I want to separate the packages in downloads folder. I want to separate
> the
> > packages into those that run on target and those that do not run on the
> > target. The idea is to feed the packages that go into target to fossology
>
>
> Do you think such a separation is possible at all?  Depending on your
> target configuration, packages might go into both - for example, if
> you build SDK / toolchain images, then gcc and related tools will be
> both in the cross tools and in the target file system.
>
> And why do you need to split the downloads folder for that?  You have
> the list of packages that get installed into your target file system -
> is this not sufficient?
>
> Best regards,
>
> Wolfgang Denk
>
> --
> DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
> The complexity of software is an essential property, not an  acciden-
> tal  one. Hence, descriptions of a software entity that abstract away
> its complexity often abstract away its essence.    - Fred Brooks, Jr.
>

--001a113aac4eaef64a0508d86a22
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi Wolfgang Denk,<br></div>Thanks for =
your reply. <br><br>1. I want to split the downloads folder so that I&#39;l=
l get a folder that=20
contains only the packages that go in to rootfs of my target. I want to=20
feed this folder to fossology SW to generate licences of each and every=20
file. Please suggest a method. We want to give the source and license list =
to our customer.<br><br></div>2. I found this file,<br>~/yoctobuild/tisdk/b=
uild/arago-tmp-external-linaro-toolchain/work/my-machine--oe-linux-gnueabi/=
my-machine-image/1.0-r0/installed_pkgs.txt<br><br>This lists packages but i=
t has lot of packages that do not go into my target rootfs. What is this fi=
le all about?<br></div><div><br></div>3. I also found license.manifest &amp=
; package.manifest in ~/yoctobuild/tisdk/build/arago-tmp-external-linaro-to=
olchain/deploy/licenses/my-machine-image-my-machine-20141127092456. Our cus=
tomer is not ok with this file.<br><br><br></div><div>Regards,<br></div><di=
v>Gangadhar<br></div><div><div><div><br><br></div></div></div></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Nov 26, 2014 at =
12:28 PM, Wolfgang Denk <span dir=3D"ltr">&lt;<a href=3D"mailto:wd@denx.de"=
 target=3D"_blank">wd@denx.de</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">Dear Gangadhar,<br>
<span class=3D""><br>
In message &lt;CAKxnL=3D<a href=3D"mailto:hSs5NNCQY9ZTZi0XWXGJOOn0i_0f-X7k7=
JksCZZrGo9w@mail.gmail.com">hSs5NNCQY9ZTZi0XWXGJOOn0i_0f-X7k7JksCZZrGo9w@ma=
il.gmail.com</a>&gt; you wrote:<br>
&gt;<br>
&gt; I want to separate the packages in downloads folder. I want to separat=
e the<br>
&gt; packages into those that run on target and those that do not run on th=
e<br>
&gt; target. The idea is to feed the packages that go into target to fossol=
ogy<br>
<br>
<br>
</span>Do you think such a separation is possible at all?=C2=A0 Depending o=
n your<br>
target configuration, packages might go into both - for example, if<br>
you build SDK / toolchain images, then gcc and related tools will be<br>
both in the cross tools and in the target file system.<br>
<br>
And why do you need to split the downloads folder for that?=C2=A0 You have<=
br>
the list of packages that get installed into your target file system -<br>
is this not sufficient?<br>
<br>
Best regards,<br>
<br>
Wolfgang Denk<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
DENX Software Engineering GmbH,=C2=A0 =C2=A0 =C2=A0MD: Wolfgang Denk &amp; =
Detlev Zundel<br>
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany<br>
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: <a href=3D"mailt=
o:wd@denx.de">wd@denx.de</a><br>
The complexity of software is an essential property, not an=C2=A0 acciden-<=
br>
tal=C2=A0 one. Hence, descriptions of a software entity that abstract away<=
br>
its complexity often abstract away its essence.=C2=A0 =C2=A0 - Fred Brooks,=
 Jr.<br>
</font></span></blockquote></div><br></div>

--001a113aac4eaef64a0508d86a22--
