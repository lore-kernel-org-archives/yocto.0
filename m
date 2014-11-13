Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97E37E008C3; Thu, 13 Nov 2014 09:58:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4266FE00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 09:58:38 -0800 (PST)
Received: by mail-ie0-f172.google.com with SMTP id ar1so1482614iec.31
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 09:58:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=YDideWvuqt5I+wCEAbPtUrfs00VEq1izAmj4aCuWZJ0=;
	b=No711RdE1zHnaVz8db8o4OYbRHnocmnEuI9WATcZEuqF3BfRhf9Of/xJ3S1f6Ncnqt
	qjWciRSMYErG+7BMDO0MFTy4jKfGcuk4MJwzt0KcKQSqHuwZc1MQnZM0XIdgUycRmJti
	UF3m1SaY+CaAtECYUMUxhdzXiqvFI48h7YQiBTmLEDowjcRXCQzKnR64jwm2Vg9QGQP9
	v+ucR6okc+mjLom19W8UZ8t3W+hTvmjNANTroK2EfK1RAL5Z0sLEk0Jz20kFq7C08C2M
	Y2c+Z9mUyAIcJan1tVHQgcPpw8Ou373qWKqJQvPDlfAFyt7OuNZNcRGE+NJVJBTdh1ya
	eKiw==
X-Gm-Message-State: ALoCoQkQfyEOjbIb1bRbKS49vRGxyND/tb8eV/AYc0P6euFzMc/SfK1vuVd2oY0flIltFJ/zvtj5
MIME-Version: 1.0
X-Received: by 10.50.3.106 with SMTP id b10mr364114igb.41.1415901517531; Thu,
	13 Nov 2014 09:58:37 -0800 (PST)
Received: by 10.107.47.155 with HTTP; Thu, 13 Nov 2014 09:58:37 -0800 (PST)
In-Reply-To: <CAJTo0LbFLKJ304sCbSGZW0w9rpEe5oN5Ao3bAr8a-yLjNrRKkQ@mail.gmail.com>
References: <5464AB4D.8020409@topic.nl>
	<CAJTo0Lb35s=8_JkTwxtkOskW0c+WX3U7pz5erBKSvYXVxE3riw@mail.gmail.com>
	<5464ADD9.1090604@topic.nl> <5464AFCC.5010709@topic.nl>
	<CAJTo0LbFLKJ304sCbSGZW0w9rpEe5oN5Ao3bAr8a-yLjNrRKkQ@mail.gmail.com>
Date: Thu, 13 Nov 2014 11:58:37 -0600
Message-ID: <CALXw4G6V7CWLx5HJvvHg7WRkALHpqZji4EXq8x0f_coxQD3AFQ@mail.gmail.com>
From: Michael Gloff <mgloff@emacinc.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sato image touchscreen calibration is borked
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
X-List-Received-Date: Thu, 13 Nov 2014 17:58:42 -0000
Content-Type: multipart/alternative; boundary=089e013a0080fd94670507c142c7

--089e013a0080fd94670507c142c7
Content-Type: text/plain; charset=UTF-8

On Thu, Nov 13, 2014 at 7:28 AM, Burton, Ross <ross.burton@intel.com> wrote:

> Hi,
>
> On 13 November 2014 13:19, Mike Looijmans <mike.looijmans@topic.nl> wrote:
>
>> I've been using "ts_calibrate" in the past, and that worked just fine on
>> this board.
>>
>
> Modern X servers don't use tslib, so this won't work since we stopped
> using kdrive about two years ago.
>
> BTW, you can use tslib with xorg. This is what I have set up as I find
ts_calibrate easier to work with.


> DEBUG: Adding click 0 (X=1023, Y=599)
>> DEBUG: Adding click 1 (X=607, Y=599)
>> DEBUG: Not adding click 2 (X=1023, Y=599): within 7 pixels of previous
>> click
>> DEBUG: Not adding click 2 (X=1023, Y=599): within 7 pixels of previous
>> click
>> DEBUG: Not adding click 2 (X=1023, Y=599): within 7 pixels of previous
>> click
>
>
> Well, it's not within seven pixels is it...  I wonder if there's a bug in
> the logic.  It might be worth bumping the xinput-calibrator revision to the
> latest commit in the upstream git repo in case this has been fixed already
> there.
>
> I bought a HDMI display with an integrated touchscreen to test this sort
> of thing, but the device was so dodgy that it often caused the kernel to
> hang on boot...
>
> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
Michael Gloff

--089e013a0080fd94670507c142c7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Nov 13, 2014 at 7:28 AM, Burton, Ross <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
>Hi,<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 13 Novembe=
r 2014 13:19, Mike Looijmans <span dir=3D"ltr">&lt;<a href=3D"mailto:mike.l=
ooijmans@topic.nl" target=3D"_blank">mike.looijmans@topic.nl</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">I&#39;ve been using &quot;ts_cali=
brate&quot; in the past, and that worked just fine on this board.<br></bloc=
kquote><div><br></div><div>Modern X servers don&#39;t use tslib, so this wo=
n&#39;t work since we stopped using kdrive about two years ago.</div><div><=
br></div></div></div></div></blockquote><div>BTW, you can use tslib with xo=
rg. This is what I have set up as I find ts_calibrate easier to work with.<=
br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><=
div class=3D"gmail_extra"><div class=3D"gmail_quote"><div></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:=
1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left=
:1ex">DEBUG: Adding click 0 (X=3D1023, Y=3D599)<br>
DEBUG: Adding click 1 (X=3D607, Y=3D599)<br>
DEBUG: Not adding click 2 (X=3D1023, Y=3D599): within 7 pixels of previous =
click<br>
DEBUG: Not adding click 2 (X=3D1023, Y=3D599): within 7 pixels of previous =
click<br>
DEBUG: Not adding click 2 (X=3D1023, Y=3D599): within 7 pixels of previous =
click</blockquote><div><br></div><div>Well, it&#39;s not within seven pixel=
s is it...=C2=A0 I wonder if there&#39;s a bug in the logic.=C2=A0 It might=
 be worth bumping the xinput-calibrator revision to the latest commit in th=
e upstream git repo in case this has been fixed already there.</div><div><b=
r></div><div>I bought a HDMI display with an integrated touchscreen to test=
 this sort of thing, but the device was so dodgy that it often caused the k=
ernel to hang on boot...</div><span class=3D"HOEnZb"><font color=3D"#888888=
"><div><br></div><div>Ross</div></font></span></div></div></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote><div><br></div><div>Michael Gloff <br></div></div><br></di=
v></div>

--089e013a0080fd94670507c142c7--
