Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 810C5E00C50; Fri,  1 Feb 2019 08:23:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.44 listed in list.dnswl.org]
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39CA2E00C29
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2019 08:23:39 -0800 (PST)
Received: by mail-wm1-f44.google.com with SMTP id m1so6718539wml.2
	for <yocto@yoctoproject.org>; Fri, 01 Feb 2019 08:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=FtHtC6wLbm7iALVyUnDQ8YaJK5hIq5F4EjaaiZ43bd8=;
	b=X/eSGlyWzIpGLT03IlPfGXwJAiSON/GCxDro0mCRd9OOS78j7i+2viQdyPrJN+7UHE
	RLhd0zzrxDpQ10r+cGKmE81ZSta2bk1RrdHIHKmRoFuJuGhdFvPwQY4KSue6wQu93p3S
	vUzX8PvC1BNPUnr727n/+MHa7Z3o1uah1xCV2SrOk2EbSLiekefhoQ1oxNE8o9JFMOfD
	pRa+0jaeHqEE59BfchV9t+WR0FEIRzJUyO7kBj8wsWmHO9oOdHoNPpvnKQEQMzueXSmZ
	j/DDk3siWg4nxqy9Jhj67sPxGad8Q6nkJkw7g3nHv0/2yxmChDtsv9GHOgpe4CmiKPSd
	G0dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=FtHtC6wLbm7iALVyUnDQ8YaJK5hIq5F4EjaaiZ43bd8=;
	b=s1y18G1c0E4OscpJGvVop3QnxeO6jph8sqsAQhM+uiF/cHioWOQA8kvqtBITf+L3ON
	QZx/xN+I/u1SuF/OhgOI5bBayF6ubTgZ0qNIfv8/p1pZq5zcPK5FHBwJ2JwG+4KJGNqO
	ipmsVkXEk/vEHiTvvlGHZswt5+Z/kRhOwKlkJgAt38GsIZ8Z1rNeN/Hc3Lp01QFfdyL/
	Zr4zwrPf8EHaJb1Hvx77X2N/m/p+HKN6gh4lS3dYKvXJW8+/ej2yFBeFFv1CMhFPvnzc
	bKvFj+mr/eAuKp2Cb1hjzZtDJqHqKohsasEVw44DsEyDU337lbDDX+0a0CDzBt9DLr76
	+WCw==
X-Gm-Message-State: AHQUAubmbj80CUE/4kUg/YSLAjcyH20Q0jN8CqSXLV0j5Ia1A0TrCBml
	tLD1xJCqwvj+Ml9gkAkZlTemEc9+M1rtKgiKUlA=
X-Google-Smtp-Source: AHgI3IbWOUc4FC/f4GANEVluGon73vx1lA2HTAxVVt2mCgzHvEZ1a9tWKeACjHmLqcZBOX3/7yDcYSkzwx6jj5aPL68=
X-Received: by 2002:a1c:ca15:: with SMTP id a21mr2948114wmg.132.1549038218089; 
	Fri, 01 Feb 2019 08:23:38 -0800 (PST)
MIME-Version: 1.0
References: <CAFd=ocgxmwYraW5JjjrP8WOzyMrF7A=tj8Y8ksaY6tP0H3i=Nw@mail.gmail.com>
	<CAAfyv37uEZ3N7Wno_Dg6jpQ4-SrYQC75Xxjf9tNC+d+L=sG+gw@mail.gmail.com>
	<CAFd=oci1eDbkHmQjLh8D6opUPMm4CU3Kf6D4JPXOn==zB2Wp8A@mail.gmail.com>
In-Reply-To: <CAFd=oci1eDbkHmQjLh8D6opUPMm4CU3Kf6D4JPXOn==zB2Wp8A@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 1 Feb 2019 17:23:26 +0100
Message-ID: <CAAfyv34AN6FaKgB78B-ZtERFRXQiWifkwgfpCqZXmSpMRR+gSA@mail.gmail.com>
To: Markus W <markus4dev@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Rainbow screen with Raspberry Pi 3 A+ but not on B+
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
X-List-Received-Date: Fri, 01 Feb 2019 16:23:41 -0000
Content-Type: multipart/alternative; boundary="000000000000bba8480580d790b2"

--000000000000bba8480580d790b2
Content-Type: text/plain; charset="UTF-8"

Hi Markus,

On Fri, Feb 1, 2019 at 2:54 PM Markus W <markus4dev@gmail.com> wrote:

> Thanks Marek!
>
> I pretty sure it doesn't boot, but I haven't confirmed it as you suggested
> it.
>
> I have never connected to the uart interface directly on the GPIO or via
> bluetooth. It probably takes me more time to figure it out and to do this
> than trying the thud branch as @agherzan has mentioned here:
> https://github.com/agherzan/meta-raspberrypi/issues/373
>
OK attaching serial port isn't that hard but as you stated, please try thud
branch. You can try https://hub.mender.io/t/raspberry-pi-3-model-b-b/57 to
follow this procedure as this is verified for B/B+ works fine with thud.

>
> I am also using meta-mender, do I need to upgrade all layers to thud than?
>
> Regards,
> Markus
>
> P.S.: pls don't top post ;)

marek

>
> On Fri, 1 Feb 2019 at 13:17, Belisko Marek <marek.belisko@gmail.com>
> wrote:
>
>> On Fri, Feb 1, 2019 at 1:11 PM Markus W <markus4dev@gmail.com> wrote:
>>
>>> Hi!
>>>
>>> I have been running a yocto image (sumo) on a raspberry 3 B+ without any
>>> problems, but wanted to test the new raspberry Pi 3 A+ board with it but I
>>> just get the Rainbow screen on boot. I have updated meta-openembedded to
>>> the latest sumo and meta-raspberry was still up to date with the latest
>>> (sumo) and still the same result.
>>>
>>
>>> My question: Has anybody been running sumo on a raspberrypi 3 a+
>>> successfully? I have been googling around for issues but can't find
>>> anything on the new board and yocto. Seems that I am missing something.
>>>
>> Can you connect serial console and add enable_uart=1 to config.txt and
>> verify? This looks like it doesn't boot. You can also ask on [1]
>>
>>>
>>> Regards,
>>> Markus
>>>
>> --
>>>
>>
>> [1] -  https://github.com/agherzan/meta-raspberrypi/issues
>>
>> BR,
>>
>> marek
>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>>
>> --
>> as simple and primitive as possible
>> -------------------------------------------------
>> Marek Belisko - OPEN-NANDRA
>> Freelance Developer
>>
>> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>> Tel: +421 915 052 184
>> skype: marekwhite
>> twitter: #opennandra
>> web: http://open-nandra.com
>>
>

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000bba8480580d790b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Markus,</div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 1, 2019 at 2:5=
4 PM Markus W &lt;<a href=3D"mailto:markus4dev@gmail.com">markus4dev@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div dir=3D"ltr">Thanks Marek!=C2=A0<div><br></div><div=
>I pretty sure it doesn&#39;t boot, but I haven&#39;t confirmed it as you s=
uggested it.=C2=A0=C2=A0</div><div><br></div><div>I have never connected to=
 the uart interface directly on the GPIO or via bluetooth. It probably take=
s me more time to figure it out and to do this than trying the thud branch =
as=C2=A0@agherzan has mentioned here:=C2=A0<a href=3D"https://github.com/ag=
herzan/meta-raspberrypi/issues/373" target=3D"_blank">https://github.com/ag=
herzan/meta-raspberrypi/issues/373</a></div></div></div></blockquote><div>O=
K attaching serial port isn&#39;t that hard but as you stated, please try t=
hud branch. You can try=C2=A0<a href=3D"https://hub.mender.io/t/raspberry-p=
i-3-model-b-b/57">https://hub.mender.io/t/raspberry-pi-3-model-b-b/57</a> t=
o follow this procedure as this is verified for B/B+ works fine with thud.<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div><br></div><div>I am also using meta-mender, do I need to=
 upgrade all layers to thud than?</div><div><br></div><div>Regards,</div><d=
iv>Markus</div><div><br></div></div></div></blockquote><div>P.S.: pls don&#=
39;t top post ;)</div><div><br></div><div>marek=C2=A0</div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div></=
div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Fri, 1 Feb 2019 at 13:17, Belisko Marek &lt;<a href=3D"mailto:=
marek.belisko@gmail.com" target=3D"_blank">marek.belisko@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">On Fri, Feb 1, 2019 at 1:11 PM M=
arkus W &lt;<a href=3D"mailto:markus4dev@gmail.com" target=3D"_blank">marku=
s4dev@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi!<div><br></di=
v><div>I have been running a yocto image (sumo) on a raspberry 3 B+ without=
 any problems, but wanted to test the new raspberry Pi 3 A+ board with it b=
ut I just get the Rainbow screen on boot. I have updated meta-openembedded =
to the latest sumo and meta-raspberry was still up to date with the latest =
(sumo) and still the same result.=C2=A0=C2=A0</div></div></blockquote><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></di=
v><div>My question: Has anybody been running sumo on a raspberrypi 3 a+ suc=
cessfully? I have been googling around for issues but can&#39;t find anythi=
ng on the new board and yocto. Seems that I am missing something.</div></di=
v></blockquote><div>Can you connect serial console and add enable_uart=3D1 =
to config.txt and verify? This looks like it doesn&#39;t boot. You can also=
 ask on [1]</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div><br></div><div>Regards,</div><div>Markus=C2=A0=C2=A0=C2=A0 =
=C2=A0</div></div></blockquote><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">-- <br></blockquote><div><br></div><div>[1] -=C2=A0=C2=A0<a href=3D"h=
ttps://github.com/agherzan/meta-raspberrypi/issues" target=3D"_blank">https=
://github.com/agherzan/meta-raspberrypi/issues</a></div><div><br></div><div=
>BR,</div><div><br></div><div>marek</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-6013656292653217309gmail-m_-851358140342702868gmail-m_-2=
68158832529782569gmail_signature">as simple and primitive as possible<br>--=
-----------------------------------------------<br>Marek Belisko - OPEN-NAN=
DRA<br>Freelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak=
 Republic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: #openna=
ndra<br>web: <a href=3D"http://open-nandra.com" target=3D"_blank">http://op=
en-nandra.com</a></div></div></div>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">as simple and primitive as possible<br>---------=
----------------------------------------<br>Marek Belisko - OPEN-NANDRA<br>=
Freelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Republ=
ic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: #opennandra<br=
>web: <a href=3D"http://open-nandra.com" target=3D"_blank">http://open-nand=
ra.com</a></div></div></div>

--000000000000bba8480580d790b2--
