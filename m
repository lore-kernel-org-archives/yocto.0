Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E405E00D6F; Wed, 13 Dec 2017 21:31:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 750F0E00D6F
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 21:31:47 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id g130so24700725wme.0
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 21:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+80ZiHMRjI+ZJbT6ppWJLiIGXfjp7gfiuRp95VisumM=;
	b=JXQJ42HUHIJC7uDNVp13Lc6VxyN1WR92sW3rwcUkhI58dW5nQWjF5H91qx8sjQnft6
	o9in+iE6zkygN+r8PZ5hm29GI00owjIICApTqDwiZ2lvrD8dNNgIR8DIxmnbbUnMzbC+
	UdZehn4zkNT852tPbqdA1Li9yEGLBy1CeecZXAEuuNpKn24kYbTu3idtBT7/OV5QK2o4
	ITWJst7xlCFbRQ9gt+56NDSXT3PPPropuwXxN+e/2u7v8LaLz7AfG6qfX8miXzdAyVPl
	NH24oQuF+vyTB/hH4HDTA2Xlb9IVomPR69xq6qIXahSyjj7kXJTG+HHkIpsFuozg4PO/
	q7gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+80ZiHMRjI+ZJbT6ppWJLiIGXfjp7gfiuRp95VisumM=;
	b=Rl5oWNS6Xzg5BNy7QQOeusvcCGkCq6O+ZGZ5UO9s9v3crbcckKDllF1wpb1w1d4Sg9
	qX3VO/K0iFWek1mYB9A02bgZ2g3PH7grcMf7DlgHntirMzz+I5j4jtkt5tNm+79Gx+XZ
	ORTltxhN8S7PM/y237BOAtL5bi7Z6qXhQYWxejHpBK0FLOdMz62aZgPcORFiBppP1cBR
	F3hi5hIma6xtQ6Xn9krhSbv2a79t1KRipDcBtHdElB/TloJcEUfjnp1If2QQcZzxSEws
	TgiccI36V1asoaEsXLiALhvfSyxHydlPYgWAJd755kizUU3H4RkIdpZYBvVbBqCBsG2d
	bSUA==
X-Gm-Message-State: AKGB3mIN9i1pivv+7rdFdzrkEhLu4FTUXvC9YJlO3YisL5syFJnXN4L6
	ykA8mVAZuJzDk9Qoa1YruLiqmaKe+lptSrQ9GYw=
X-Google-Smtp-Source: ACJfBoubiQr40nZN43HjtJHu2NzLaNcVryoAy1L2SG2Y1YsFmvuW7E2doZ3/tHppCuOaBT3xhnIxAxfBaSTDSl/QgSg=
X-Received: by 10.28.194.139 with SMTP id s133mr1023284wmf.14.1513229506914;
	Wed, 13 Dec 2017 21:31:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Wed, 13 Dec 2017 21:31:46 -0800 (PST)
In-Reply-To: <CAF3SDA61uYo3jYxWBzhTUs0ywyXMtQGWpBAWb3VmJT5CFU9F=g@mail.gmail.com>
References: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
	<CAPyrkgxkcO+3UW4jqy9Uh0pVSRwFH9Pss5d2ihVBtRZ3Y+B08A@mail.gmail.com>
	<CAF3SDA7qCEUGNfmoJ0MXM4OAMSsC=rgnx3xPira7cZSch0ATMQ@mail.gmail.com>
	<CAF3SDA61uYo3jYxWBzhTUs0ywyXMtQGWpBAWb3VmJT5CFU9F=g@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 14 Dec 2017 06:31:46 +0100
Message-ID: <CAGAf8LzQcHY_rgue5oc_hurCE6yn6kMxB20tJ1=i8-eDrvUhWw@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: .kernel-meta/configs folder missing make linux-raspberrypi to fail
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
X-List-Received-Date: Thu, 14 Dec 2017 05:31:49 -0000
Content-Type: multipart/alternative; boundary="001a114b0a663930d70560463317"

--001a114b0a663930d70560463317
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> Also is worth noting that I'm running Fedora 27 which wasn't tested...

You should start from here your investigation, since you are on not tested
YOCTO host distribution. And Fedoras are
different from release to release, certainly!

So either you should downgrade your fedora 27 to 26 (which I doubt it is
possible), better to build brand new Fedora 26
using exactly the same packages.

Here is a bit of help: to port all the packages to fresh installed Fedora
26, use the following command to retrieve
packages from Fedora 27: rpm -qa --qf "%{name}.%{arch}\n" >
packages-list.txt

Zoran

On Mon, Dec 11, 2017 at 12:34 PM, Daniel. <danielhilst@gmail.com> wrote:

> I can anticipate some info for you. I'm on version 2.4 Rocko. Building
> rpi-hwup-image for MACHINE=3Drasbiberrypi3-64. Also is worth noting that =
I'm
> running Fedora 27 which wasn't tested...
>
> I'll try to get the full log tonight and let you know
>
> Regards
>
> On Dec 11, 2017 9:26 AM, "Daniel." <danielhilst@gmail.com> wrote:
>
>> Yeah but I got to face the error again, maybe tonight when I get home :)
>>
>> On Dec 11, 2017 9:17 AM, "Paul Barker" <pbarker@toganlabs.com> wrote:
>>
>>> On Sun, Dec 10, 2017 at 5:14 PM, Daniel. <danielhilst@gmail.com> wrote:
>>> > Hi everybody,
>>> >
>>> > I'm building a vanilla image for MACHINE=3Draspberrypi3-64. I'm doing=
 the
>>> > build for the first time and faced an error at
>>> > linux-raspberrypi:do_kernel_configme. I found that
>>> .kernel-meta/configs
>>> > folder was missing, so I fired a devshell and created it. After that
>>> > everything works as expected and linux-raspberrypi build fines.
>>> >
>>> > The solution I got is palliative, what would be the real solution and
>>> what
>>> > is this .kernel-meta folder? I had never seem this folder before.
>>>
>>> I have seen this issue occasionally when the do_kernel_configme task
>>> is re-executed. A "bitbake virtual/kernel -c clean" has always
>>> resolved this for me, allowing the next build to succeed. It doesn't
>>> occur on my autobuild systems though so I figure it's an edge case I'm
>>> hitting when building locally as I'm hacking around on recipes.
>>>
>>> I've never seen this on the first build of the kernel though.
>>>
>>> Which version of Yocto are you using? Could you send us the build
>>> configuration summary and the full error messages printed by bitbake?
>>>
>>> Thanks,
>>>
>>> --
>>> Paul Barker
>>> Tog=C3=A1n Labs Ltd
>>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114b0a663930d70560463317
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">&gt; Also is worth noting=
 that I&#39;m running Fedora 27 which wasn&#39;t tested...=C2=A0</span><br>=
<div><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"=
font-size:12.8px">You should start from here your investigation, since you =
are on not tested YOCTO host distribution. And Fedoras are</span></div><div=
><span style=3D"font-size:12.8px">different from release to release, certai=
nly!</span></div><div><span style=3D"font-size:12.8px"><br></span></div><di=
v><span style=3D"font-size:12.8px">So either you should downgrade your fedo=
ra 27 to 26 (which I doubt it is possible), better to build brand new Fedor=
a 26</span></div><div><span style=3D"font-size:12.8px">using=C2=A0</span><s=
pan style=3D"font-size:12.8px">exactly the same packages.</span></div><div>=
<span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-=
size:12.8px">Here is a bit of help: to port all the packages to fresh insta=
lled Fedora 26, use the following command to retrieve</span></div><div><spa=
n style=3D"font-size:12.8px">packages=C2=A0</span><span style=3D"font-size:=
12.8px">from Fedora 27:=C2=A0</span><span style=3D"font-size:12.8px">rpm -q=
a --qf &quot;%{name}.%{arch}\n&quot; &gt; packages-list.txt</span></div><di=
v><span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"fon=
t-size:12.8px">Zoran</span></div></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Mon, Dec 11, 2017 at 12:34 PM, Daniel. <span dir=
=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">dan=
ielhilst@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"auto">I can anticipate some info for you. I&#39;m on version 2.=
4 Rocko. Building rpi-hwup-image for MACHINE=3Drasbiberrypi3-64. Also is wo=
rth noting that I&#39;m running Fedora 27 which wasn&#39;t tested...=C2=A0<=
div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;ll try to get the full l=
og tonight and let you know<br><div dir=3D"auto"><br></div><div dir=3D"auto=
">Regards</div></div></div><div class=3D"HOEnZb"><div class=3D"h5"><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Dec 11, 2017 9:26 AM, =
&quot;Daniel.&quot; &lt;<a href=3D"mailto:danielhilst@gmail.com" target=3D"=
_blank">danielhilst@gmail.com</a>&gt; wrote:<br type=3D"attribution"><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"auto">Yeah but I got to face the error=
 again, maybe tonight when I get home :)</div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On Dec 11, 2017 9:17 AM, &quot;Paul Barker&quo=
t; &lt;<a href=3D"mailto:pbarker@toganlabs.com" target=3D"_blank">pbarker@t=
oganlabs.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">On Sun, Dec 10, 2017 at 5:14 PM, Daniel. &lt;<a href=3D"mailto:dani=
elhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt; wrote:<b=
r>
&gt; Hi everybody,<br>
&gt;<br>
&gt; I&#39;m building a vanilla image for MACHINE=3Draspberrypi3-64. I&#39;=
m doing the<br>
&gt; build for the first time and faced an error at<br>
&gt; linux-raspberrypi:do_kernel_co<wbr>nfigme. I found that .kernel-meta/c=
onfigs<br>
&gt; folder was missing, so I fired a devshell and created it. After that<b=
r>
&gt; everything works as expected and linux-raspberrypi build fines.<br>
&gt;<br>
&gt; The solution I got is palliative, what would be the real solution and =
what<br>
&gt; is this .kernel-meta folder? I had never seem this folder before.<br>
<br>
I have seen this issue occasionally when the do_kernel_configme task<br>
is re-executed. A &quot;bitbake virtual/kernel -c clean&quot; has always<br=
>
resolved this for me, allowing the next build to succeed. It doesn&#39;t<br=
>
occur on my autobuild systems though so I figure it&#39;s an edge case I&#3=
9;m<br>
hitting when building locally as I&#39;m hacking around on recipes.<br>
<br>
I&#39;ve never seen this on the first build of the kernel though.<br>
<br>
Which version of Yocto are you using? Could you send us the build<br>
configuration summary and the full error messages printed by bitbake?<br>
<br>
Thanks,<br>
<br>
--<br>
Paul Barker<br>
Tog=C3=A1n Labs Ltd<br>
</blockquote></div></div>
</blockquote></div></div>
</div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a114b0a663930d70560463317--
