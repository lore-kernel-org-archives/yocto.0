Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0883E00D72; Wed, 13 Dec 2017 22:45:00 -0800 (PST)
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
	*      [209.85.128.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f181.google.com (mail-wr0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83A6BE00D70
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 22:44:59 -0800 (PST)
Received: by mail-wr0-f181.google.com with SMTP id a41so4200698wra.6
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 22:44:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4bM1vfxasnUICfk0eWbyH8t9jVMoucYnyATX9Gyxj9s=;
	b=SFgcE/F7kdfj7S7w5Z99/HJhcKD8fZb0XpAGErizsRadfFHkHF4MEu5bqdNwaJJoCI
	vFeZgB5gDyORj1uyfu9nU/otullsaqCWWo2mztgkGX88oyB1TavZ43gYrwOA5pmqAk7H
	FVG6I+lc5Zj/3rBg74ZPct0GBN7n76fXpqOtJGKTbZMI1JH5ZVgmsf+mA5hPiS45jl+A
	9xlLAV9js0X1PFBqzWMGhTeQRCzAWs3Jb6UJH0o3MdFk6WMNot6FxxD1llS2OOI+iOrI
	6EDuV2FcnzNNeKKkyJ2b2JOf5RFM+gmuVOaAHVjvHxD7legsSdHLjq4qBELwXYZAabHH
	+oHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4bM1vfxasnUICfk0eWbyH8t9jVMoucYnyATX9Gyxj9s=;
	b=qp/I2EqfszrLMcflfFKvI3FEJuKtX3uRwB7x0uGJmI1ycmGVLNaBPzNYXHjWE3Kg4N
	klPAMvM3CDDGKzSzFyvFrAmv7lK4KMRcd/fBagvG5cnsn9qYnw7hRWH/o4fZOKMbsT0q
	+hv9pqwQ8YvdI7BFSj/7uBCi2OO9jS40AFByzL47z1Zb0EoN0TqsfYWof3l3Pq4WnWBo
	awWVSlJhlw32xXNEUWMR7x5wVtHVwC+QKZbecFmHeC//kYKyS5kwE0VO2QmcsLv0yG9r
	dSb8eveGQDqW0DnHQ/kLksQeqA5HmweXnudR/2mIjwDFSH2U8oese7tqRKEvLaLb1phA
	2TmQ==
X-Gm-Message-State: AKGB3mJ4nSVKuL8sE+9sFf0X5+pKoP+oCxCPyUy/45DMRmL4AInDEaVX
	07Uf3mkhMnef3bSGZ9AgdSo5kZgyLN25AUQRG+M=
X-Google-Smtp-Source: ACJfBovF434ghMHrsgesHVUzokoI1uvgF4Zq/uTpj4ECyTeY2y7zJ7FQ+6YB56QWE6MkOVfd1Cr7wTqkeepeOPgHYHE=
X-Received: by 10.223.132.194 with SMTP id 60mr4960559wrg.249.1513233897531;
	Wed, 13 Dec 2017 22:44:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Wed, 13 Dec 2017 22:44:56 -0800 (PST)
In-Reply-To: <CA+chaQfSycF2mx+S7gV5CnkuBg2GrcWuR4WQszhDXYh-6kkTAw@mail.gmail.com>
References: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
	<CAPyrkgxkcO+3UW4jqy9Uh0pVSRwFH9Pss5d2ihVBtRZ3Y+B08A@mail.gmail.com>
	<CAF3SDA7qCEUGNfmoJ0MXM4OAMSsC=rgnx3xPira7cZSch0ATMQ@mail.gmail.com>
	<CAF3SDA61uYo3jYxWBzhTUs0ywyXMtQGWpBAWb3VmJT5CFU9F=g@mail.gmail.com>
	<CAGAf8LzQcHY_rgue5oc_hurCE6yn6kMxB20tJ1=i8-eDrvUhWw@mail.gmail.com>
	<CA+chaQfSycF2mx+S7gV5CnkuBg2GrcWuR4WQszhDXYh-6kkTAw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 14 Dec 2017 07:44:56 +0100
Message-ID: <CAGAf8LxhG9x9Ek106S+ck7N5r1cReyGHNNZ2SU4pHG2gcdFhag@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
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
X-List-Received-Date: Thu, 14 Dec 2017 06:45:00 -0000
Content-Type: multipart/alternative; boundary="94eb2c0d0f48ecac36056047388d"

--94eb2c0d0f48ecac36056047388d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I'm seeing the same build errors in linux-raspberrypi with various
versions of Gentoo and
> Ubuntu (mostly tested with 14.04 and 16.04), I doubt that this issue is
specific for Fedora 27.

Divide and Conquer. ;-)

Good. New details emerged. So one problem off the potential problem list.

Zoran

On Thu, Dec 14, 2017 at 6:47 AM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> I'm seeing the same build errors in linux-raspberrypi with various
> versions of Gentoo and Ubuntu (mostly tested with 14.04 and 16.04), I dou=
bt
> that this issue is specific for Fedora 27.
>
> On Thu, Dec 14, 2017 at 2:31 PM, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
>
>> > Also is worth noting that I'm running Fedora 27 which wasn't tested...
>>
>> You should start from here your investigation, since you are on not
>> tested YOCTO host distribution. And Fedoras are
>> different from release to release, certainly!
>>
>> So either you should downgrade your fedora 27 to 26 (which I doubt it is
>> possible), better to build brand new Fedora 26
>> using exactly the same packages.
>>
>> Here is a bit of help: to port all the packages to fresh installed Fedor=
a
>> 26, use the following command to retrieve
>> packages from Fedora 27: rpm -qa --qf "%{name}.%{arch}\n" >
>> packages-list.txt
>>
>> Zoran
>>
>> On Mon, Dec 11, 2017 at 12:34 PM, Daniel. <danielhilst@gmail.com> wrote:
>>
>>> I can anticipate some info for you. I'm on version 2.4 Rocko. Building
>>> rpi-hwup-image for MACHINE=3Drasbiberrypi3-64. Also is worth noting tha=
t I'm
>>> running Fedora 27 which wasn't tested...
>>>
>>> I'll try to get the full log tonight and let you know
>>>
>>> Regards
>>>
>>> On Dec 11, 2017 9:26 AM, "Daniel." <danielhilst@gmail.com> wrote:
>>>
>>>> Yeah but I got to face the error again, maybe tonight when I get home =
:)
>>>>
>>>> On Dec 11, 2017 9:17 AM, "Paul Barker" <pbarker@toganlabs.com> wrote:
>>>>
>>>>> On Sun, Dec 10, 2017 at 5:14 PM, Daniel. <danielhilst@gmail.com>
>>>>> wrote:
>>>>> > Hi everybody,
>>>>> >
>>>>> > I'm building a vanilla image for MACHINE=3Draspberrypi3-64. I'm doi=
ng
>>>>> the
>>>>> > build for the first time and faced an error at
>>>>> > linux-raspberrypi:do_kernel_configme. I found that
>>>>> .kernel-meta/configs
>>>>> > folder was missing, so I fired a devshell and created it. After tha=
t
>>>>> > everything works as expected and linux-raspberrypi build fines.
>>>>> >
>>>>> > The solution I got is palliative, what would be the real solution
>>>>> and what
>>>>> > is this .kernel-meta folder? I had never seem this folder before.
>>>>>
>>>>> I have seen this issue occasionally when the do_kernel_configme task
>>>>> is re-executed. A "bitbake virtual/kernel -c clean" has always
>>>>> resolved this for me, allowing the next build to succeed. It doesn't
>>>>> occur on my autobuild systems though so I figure it's an edge case I'=
m
>>>>> hitting when building locally as I'm hacking around on recipes.
>>>>>
>>>>> I've never seen this on the first build of the kernel though.
>>>>>
>>>>> Which version of Yocto are you using? Could you send us the build
>>>>> configuration summary and the full error messages printed by bitbake?
>>>>>
>>>>> Thanks,
>>>>>
>>>>> --
>>>>> Paul Barker
>>>>> Tog=C3=A1n Labs Ltd
>>>>>
>>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--94eb2c0d0f48ecac36056047388d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">&gt; I&#39;m seeing the s=
ame build errors in=C2=A0linux-raspberrypi with various versions of Gentoo =
and</span><div><span style=3D"font-size:12.8px">&gt; Ubuntu (mostly tested =
with 14.04 and 16.04), I doubt that this issue is specific for Fedora 27.</=
span><br></div><div><span style=3D"font-size:12.8px"><br></span></div><div>=
<span style=3D"font-size:12.8px">Divide and Conquer. ;-)</span></div><div><=
span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-s=
ize:12.8px">Good. New details emerged. So one problem off the potential pro=
blem list.</span></div><div><span style=3D"font-size:12.8px"><br></span></d=
iv><div><span style=3D"font-size:12.8px">Zoran</span></div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Dec 14, 2017 at 6:4=
7 AM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gma=
il.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr">I&#39;m seeing the same buil=
d errors in=C2=A0linux-raspberrypi with various versions of Gentoo and Ubun=
tu (mostly tested with 14.04 and 16.04), I doubt that this issue is specifi=
c for Fedora 27.</div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Dec 14, 2017 at 2:31 P=
M, Zoran Stojsavljevic <span dir=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsa=
vljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a><wbr>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span=
><span style=3D"font-size:12.8px">&gt; Also is worth noting that I&#39;m ru=
nning Fedora 27 which wasn&#39;t tested...=C2=A0</span><br><div><span style=
=3D"font-size:12.8px"><br></span></div></span><div><span style=3D"font-size=
:12.8px">You should start from here your investigation, since you are on no=
t tested YOCTO host distribution. And Fedoras are</span></div><div><span st=
yle=3D"font-size:12.8px">different from release to release, certainly!</spa=
n></div><div><span style=3D"font-size:12.8px"><br></span></div><div><span s=
tyle=3D"font-size:12.8px">So either you should downgrade your fedora 27 to =
26 (which I doubt it is possible), better to build brand new Fedora 26</spa=
n></div><div><span style=3D"font-size:12.8px">using=C2=A0</span><span style=
=3D"font-size:12.8px">exactly the same packages.</span></div><div><span sty=
le=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8=
px">Here is a bit of help: to port all the packages to fresh installed Fedo=
ra 26, use the following command to retrieve</span></div><div><span style=
=3D"font-size:12.8px">packages=C2=A0</span><span style=3D"font-size:12.8px"=
>from Fedora 27:=C2=A0</span><span style=3D"font-size:12.8px">rpm -qa --qf =
&quot;%{name}.%{arch}\n&quot; &gt; packages-list.txt</span></div><span clas=
s=3D"m_-7858774465861637859HOEnZb"><font color=3D"#888888"><div><span style=
=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px=
">Zoran</span></div></font></span></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote"><div><div class=3D"m_-7858774465861637859h5">On Mon,=
 Dec 11, 2017 at 12:34 PM, Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:=
danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;</spa=
n> wrote:<br></div></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"=
m_-7858774465861637859h5"><div dir=3D"auto">I can anticipate some info for =
you. I&#39;m on version 2.4 Rocko. Building rpi-hwup-image for MACHINE=3Dra=
sbiberrypi3-64. Also is worth noting that I&#39;m running Fedora 27 which w=
asn&#39;t tested...=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">I&#3=
9;ll try to get the full log tonight and let you know<br><div dir=3D"auto">=
<br></div><div dir=3D"auto">Regards</div></div></div><div class=3D"m_-78587=
74465861637859m_5991503766181612199HOEnZb"><div class=3D"m_-785877446586163=
7859m_5991503766181612199h5"><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Dec 11, 2017 9:26 AM, &quot;Daniel.&quot; &lt;<a href=3D"mai=
lto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt; =
wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"a=
uto">Yeah but I got to face the error again, maybe tonight when I get home =
:)</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Dec 11=
, 2017 9:17 AM, &quot;Paul Barker&quot; &lt;<a href=3D"mailto:pbarker@togan=
labs.com" target=3D"_blank">pbarker@toganlabs.com</a>&gt; wrote:<br type=3D=
"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">On Sun, Dec 10, 2017 at 5:14 P=
M, Daniel. &lt;<a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">d=
anielhilst@gmail.com</a>&gt; wrote:<br>
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
</div></div><br></div></div><span>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></span></blockquote></div><br></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--94eb2c0d0f48ecac36056047388d--
