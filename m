Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BD0FE0084F; Fri, 14 Nov 2014 00:17:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73988E00831
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 00:17:23 -0800 (PST)
Received: by mail-ie0-f171.google.com with SMTP id x19so17445642ier.16
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 00:17:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=BSulEOSlHHNEQqY2FDEU5++tjrikq6Il/L+22V78lk8=;
	b=hSlAiaUfBe/9+nRHuvU4c9nxvEtmokD/MFTtnddzGDIXylO06VJ9K549S1WEV55B1a
	o0Mj7oQCzvOt+n7tfwD3daFyYcriUNE/1+POs2wUWKzwwB9u0BgKoVVj6TdouSr7ZrfW
	1LOWEHzb/l53YtxrwH79Dwfq85TLL/ncd0cHwBY62+xbBMbOE3alw2Uq4KVMHFQGKOTP
	LGDE3H0jqNjq2pHtyOmNGvaBiksfZVjkp42HwOXock3gPAwgTkniMwScBb9Z/tHJZZg5
	dqpzUgYUtJaSGnWnVbDSqwO5hNSmD/UB4f9ruxf3q0L6fUey+D6IsH/GS0j0yA/mblDF
	23Jw==
X-Gm-Message-State: ALoCoQliFumi5AiQd+g7pX3/TVYgmhhIXScqagqVLLL71H8TnCgLVhDFSK6AT7shd14bpnubaA3l
MIME-Version: 1.0
X-Received: by 10.43.65.145 with SMTP id xm17mr9893055icb.2.1415953043193;
	Fri, 14 Nov 2014 00:17:23 -0800 (PST)
Received: by 10.107.47.155 with HTTP; Fri, 14 Nov 2014 00:17:23 -0800 (PST)
In-Reply-To: <CAJTo0LZXJRjcb2P=DUtKH0XToNSLoaNgNF7K97e+LxjGC05=Tg@mail.gmail.com>
References: <5464AB4D.8020409@topic.nl>
	<CAJTo0Lb35s=8_JkTwxtkOskW0c+WX3U7pz5erBKSvYXVxE3riw@mail.gmail.com>
	<5464ADD9.1090604@topic.nl> <5464AFCC.5010709@topic.nl>
	<CAJTo0LbFLKJ304sCbSGZW0w9rpEe5oN5Ao3bAr8a-yLjNrRKkQ@mail.gmail.com>
	<CALXw4G6V7CWLx5HJvvHg7WRkALHpqZji4EXq8x0f_coxQD3AFQ@mail.gmail.com>
	<CAJTo0LZXJRjcb2P=DUtKH0XToNSLoaNgNF7K97e+LxjGC05=Tg@mail.gmail.com>
Date: Fri, 14 Nov 2014 02:17:23 -0600
Message-ID: <CALXw4G6gZhA6tv6zQyaG4owLM+T1Yd8TBC94Y7dNWDbCW8D9SQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 14 Nov 2014 08:17:32 -0000
Content-Type: multipart/alternative; boundary=bcaec51d29982895510507cd4295

--bcaec51d29982895510507cd4295
Content-Type: text/plain; charset=UTF-8

On Thu, Nov 13, 2014 at 5:05 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 13 November 2014 17:58, Michael Gloff <mgloff@emacinc.com> wrote:
>
>> BTW, you can use tslib with xorg. This is what I have set up as I find
>> ts_calibrate easier to work with.
>
>
> The only mention of e.g. ts_read() that I can see in the xserver source is
> in the kdrive server.  Is there some compatibility mode or something that
> I'm unaware of?
>
> Ross
>

Ross,
I am using the xf86-input-tslib X driver. I forgot about that piece of the
puzzle.
And the following in xorg.conf

Section "ServerLayout"
        InputDevice    "TouchScreen0" "CorePointer"
    Identifier     "X.org Configured"
    Screen      0  "Screen0" 0 0
EndSection

:
:

Section "InputDevice"
        Identifier "TouchScreen0"
    Driver "tslib"
        Option "Device" "/dev/input/touchscreen0"
    Option "CorePointer" "on"
    Option "SendCoreEvents" "on"
    Option "Protocol" "Auto"
        Option "ScreenNo" "0"
EndSection

I've also found that I need to comment out the touchschreen section of
10-evdev.conf as it tries to interfere.
That 'should' work, although I haven't tried on any standard build.

Michael Gloff

--bcaec51d29982895510507cd4295
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Nov 13, 2014 at 5:05 PM, Burton, Ross <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On 13 November 2014 17:58, Michael Gloff <span dir=3D"ltr">&lt;<a href=
=3D"mailto:mgloff@emacinc.com" target=3D"_blank">mgloff@emacinc.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">BTW, yo=
u can use tslib with xorg. This is what I have set up as I find ts_calibrat=
e easier to work with.</blockquote></div><br>The only mention of e.g. ts_re=
ad() that I can see in the xserver source is in the kdrive server.=C2=A0 Is=
 there some compatibility mode or something that I&#39;m unaware of?</div><=
span class=3D""><font color=3D"#888888"><div class=3D"gmail_extra"><br></di=
v><div class=3D"gmail_extra">Ross</div></font></span></div></blockquote><di=
v><br></div><div>Ross,<br>I am using the xf86-input-tslib X driver. I forgo=
t about that piece of the puzzle.=C2=A0 <br>And the following in xorg.conf<=
br><br>Section &quot;ServerLayout&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 InputDevice=C2=A0=C2=A0=C2=A0 &quot;TouchScreen0&quot; &quot;C=
orePointer&quot;<br>=C2=A0=C2=A0=C2=A0 Identifier=C2=A0=C2=A0=C2=A0=C2=A0 &=
quot;X.org Configured&quot;<br>=C2=A0=C2=A0=C2=A0 Screen=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 0=C2=A0 &quot;Screen0&quot; 0 0<br>EndSection<br><br>:<br>:<br=
><br>Section &quot;InputDevice&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Identifier &quot;TouchScreen0&quot;<br>=C2=A0=C2=A0=C2=A0 Driver =
&quot;tslib&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Option &quo=
t;Device&quot; &quot;/dev/input/touchscreen0&quot;<br>=C2=A0=C2=A0=C2=A0 Op=
tion &quot;CorePointer&quot; &quot;on&quot;<br>=C2=A0=C2=A0=C2=A0 Option &q=
uot;SendCoreEvents&quot; &quot;on&quot;<br>=C2=A0=C2=A0=C2=A0 Option &quot;=
Protocol&quot; &quot;Auto&quot;<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Option &quot;ScreenNo&quot; &quot;0&quot;<br>EndSection<br><br></div><d=
iv>I&#39;ve also found that I need to comment out the touchschreen section =
of 10-evdev.conf as it tries to interfere. <br>That &#39;should&#39; work, =
although I haven&#39;t tried on any standard build. <br>=C2=A0<br></div></d=
iv></div><div class=3D"gmail_extra">Michael Gloff<br></div></div>

--bcaec51d29982895510507cd4295--
