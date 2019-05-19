Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF475E00D1E; Sat, 18 May 2019 23:02:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
	[209.85.167.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB646E006D2
	for <yocto@yoctoproject.org>; Sat, 18 May 2019 23:02:19 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id y19so8005610lfy.5
	for <yocto@yoctoproject.org>; Sat, 18 May 2019 23:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DL/8DUeN7kmbMuSBFz8rbiZ9DJXpM4d/wF9BW8V5oNA=;
	b=vgREXIDRDQMcutAz449Wl6oi4XUXmGeeApb19jItqrIJK0iCwqWPfX3TmnLCiMPUIL
	qEhGl/YpIvjZNhNlXSU1eqj7SxbT4stdJtfYFN233UGmMhnyadug4Lvz/1csejMmFq13
	TzElOvRCzB4q63x1bIeccXKCTG00lqjhMOC3Rbh0aMIS2EZ4TauPB+0WxMnBKq1E8bd/
	CTssHAq2olGeD8YkR5iT6S0aBaJ9aRvPKorEXEX6IMF3t9ByBv/XukYeL2XiReXwdOg8
	Qv+HICJPOVorIWBam2q2YEv4AK/WNHfyKqNGeqShIV71AFIDLXNUtXIbNmK5H361DXnd
	F5xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DL/8DUeN7kmbMuSBFz8rbiZ9DJXpM4d/wF9BW8V5oNA=;
	b=pJCOd9x/ABqhI5U1CKI8QIeqn8K52SbMhxkgBiL84kdZLp5k2gYJZA5J/nS/dq/6q0
	jv/5fMdjgnfue1a8OS2r7RgVHoEo15fg0NUg/WhiENZvUj9PDQNlQgYzCmjHBIy3RE2W
	gQ2+Ul/2RCYBWCq0Rp30D2UQhcTTpyqLx00GsW+5lqsW2AT0UEHspJLjC1bXgDxYfjMm
	u6bJveb9OSgruO14bB6BE6z4VLhyDlKLVQcRnJOMdq2SddTnQxY5FgsvAol77xRHOmpz
	OVKpmCbFwyJN5N9Rxq51Dpq84nwsWoTwH0P+B3o6E4SFPB9oYxbqHYCg8yQMieZlxL0g
	JolA==
X-Gm-Message-State: APjAAAUXB+Nd8Rsb26T+Sru3c4cQMs0XteDYqPhUSenJTMGJUpsUbJnF
	wJuOpqFtiNFJbNM9s7Es1KQ0/5AZsPsnZwaLeIkbPw==
X-Google-Smtp-Source: APXvYqztJtelQbilbciPoy0JN3tHsTWRTCSzO2Odz1eIABFek/JvVo69PSiaUaKFTkCAHekLzlahq17EZAshp0V8Wpg=
X-Received: by 2002:ac2:4c98:: with SMTP id d24mr7105030lfl.146.1558245738491; 
	Sat, 18 May 2019 23:02:18 -0700 (PDT)
MIME-Version: 1.0
References: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
	<7e5c2228-c67e-bf65-fc80-0352b90502ec@gherzan.ro>
	<245b0a59-8a82-59e1-f35e-a0de8aa01d37@gmail.com>
In-Reply-To: <245b0a59-8a82-59e1-f35e-a0de8aa01d37@gmail.com>
From: Rudolf Streif <rudolf.streif@ibeeto.com>
Date: Sat, 18 May 2019 23:02:06 -0700
Message-ID: <CAPxNcnd0OQ4BS6xrm6vcR8UmAjGxsbksD7XMiU4GKDKKASXJzg@mail.gmail.com>
To: "Mr. Khem Raj" <raj.khem@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] RPi 7" Touch Display
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
X-List-Received-Date: Sun, 19 May 2019 06:02:20 -0000
Content-Type: multipart/alternative; boundary="000000000000b744630589375b09"

--000000000000b744630589375b09
Content-Type: text/plain; charset="UTF-8"

Thanks, Khem. 64 bit, raspberrypi3-64 machine with vc4graphics.

On Sat, May 18, 2019, 22:13 Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 5/16/19 9:01 AM, Andrei Gherzan wrote:
> > HI,
> >
> > On 16/05/2019 16.31, Rudolf J Streif wrote:
> >> I am trying to use the "official" RPi 7" touch display
> >> (https://www.raspberrypi.org/products/raspberry-pi-touch-display/)
> >> with meta-raspberrypi (most recent from master). However, I cannot get
> >> it to work. As a matter of fact the display does not even show the GPU
> >> rainbow screen making me think that the GPU firmware packaged with
> >> meta-raspberrypi does not support the DSI display. It works just fine
> >> with the latest Raspbian release (screen and touch).
> >>
> >> I searched the web up and down but could not find anything. Maybe
> >> somebody has an idea? Wrong firmware (maybe cannot be distributed
> >> because of licensing...)?
> > Sadly we don't actively test display and other related toys so they
> > might be broken. Even so, I would be surprised if the DSI port doesn't
> > work. What is you final config.txt (pastebin it please)?
> >
>
> are you building 64bit or 32bit images ?
> are you using vc4grpahics or userland graphics ?
>

--000000000000b744630589375b09
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Thanks, Khem. 64 bit, raspberrypi3-64 machine with v=
c4graphics.=C2=A0<br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, May 18, 2019, 22:13 Khem Raj &lt;<a href=3D"mailto:=
raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><br>
<br>
On 5/16/19 9:01 AM, Andrei Gherzan wrote:<br>
&gt; HI,<br>
&gt; <br>
&gt; On 16/05/2019 16.31, Rudolf J Streif wrote:<br>
&gt;&gt; I am trying to use the &quot;official&quot; RPi 7&quot; touch disp=
lay<br>
&gt;&gt; (<a href=3D"https://www.raspberrypi.org/products/raspberry-pi-touc=
h-display/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://www.ras=
pberrypi.org/products/raspberry-pi-touch-display/</a>)<br>
&gt;&gt; with meta-raspberrypi (most recent from master). However, I cannot=
 get<br>
&gt;&gt; it to work. As a matter of fact the display does not even show the=
 GPU<br>
&gt;&gt; rainbow screen making me think that the GPU firmware packaged with=
<br>
&gt;&gt; meta-raspberrypi does not support the DSI display. It works just f=
ine<br>
&gt;&gt; with the latest Raspbian release (screen and touch).<br>
&gt;&gt;<br>
&gt;&gt; I searched the web up and down but could not find anything. Maybe<=
br>
&gt;&gt; somebody has an idea? Wrong firmware (maybe cannot be distributed<=
br>
&gt;&gt; because of licensing...)?<br>
&gt; Sadly we don&#39;t actively test display and other related toys so the=
y<br>
&gt; might be broken. Even so, I would be surprised if the DSI port doesn&#=
39;t<br>
&gt; work. What is you final config.txt (pastebin it please)?<br>
&gt; <br>
<br>
are you building 64bit or 32bit images ?<br>
are you using vc4grpahics or userland graphics ?<br>
</blockquote></div></div></div>

--000000000000b744630589375b09--
