Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E3E3E00B51; Tue, 16 May 2017 02:53:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.181 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CE6BE00B05
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 02:53:37 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id k91so89962826ioi.1
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 02:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=g1aQL1Tam5z0jgKqZk0AnGntOOkK0ppzKgPAY/X7WjI=;
	b=KzZAbbUPZVplfQuLX37jiCZFNpKm0Ip/nCFheIbjlucf8VWA2VwDF3Bmq7l4yiEvL7
	5YPwQV9zIHg1Tckr+PuTp/xKjm8Xblr8FtyMqmeJRtvqZizf0iVSYYKziLvGXkMTZ6bH
	1gBlaCcua4D51mEWnCqtsO+7/IsEqwB6t2CTaCZxml+ePLshYCpHg5Jt+WeYsh1WNiAT
	ETfKnvE995p9BzmVKfYxQfBwOYMqhMAmcZniFM7eVH3s96SX7mmWjXeZqVbVosQ+JZ9K
	2jgLD1vilC33b3jJ23zbqr992gQIaScaRqh9IW1QDEuT98ajtls9WGQu/ujtsc9EF47G
	Jldg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=g1aQL1Tam5z0jgKqZk0AnGntOOkK0ppzKgPAY/X7WjI=;
	b=efH37nhoA1cLtiBFfwzAU10X1yJwfsx1oSm7y+mPhqTO4ZkDwIhPLYah/Isgni03jr
	YJLleQ9quhA/N3FklsU588uoJpkceJBTXDqzFZJokArnb3MWJSS2CFWSmxSzHqM7oWkS
	u0g2u1wjEBdRr8cRYMH5H5rfhheSc6cJZRE53uw1ra0Eqiw4Qql+2YgcXiqFmMQiOAf2
	4vqayiycJU29D8WRHAK4p3Lqqg7hcm75g/lkebdflzJ6VxyLvLXr05HpEHfOTv4JheHh
	arz/74c9pDbKuf2IvxlchdQ2n3mB4pMtlDYlvSxDP6cfx8GnTxeDtmAFDLwNBdjtBwFN
	g+Xw==
X-Gm-Message-State: AODbwcAfdlde3cBxQi16M09BoXjZh8nb0Sb4knNylaz6Q6EosiqJFnPu
	iKrcyCVOSmXk4mOezj3bR7KNuZbNtXyKNs4=
X-Received: by 10.107.134.211 with SMTP id q80mr10003598ioi.127.1494928416760; 
	Tue, 16 May 2017 02:53:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Tue, 16 May 2017 02:52:56 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <cc94c62ce1abb8729b3f7047e11749e5@cvweb020.wmail.nhnsystem.com>
References: <cc94c62ce1abb8729b3f7047e11749e5@cvweb020.wmail.nhnsystem.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 16 May 2017 10:52:56 +0100
Message-ID: <CAK18fxH_tH+pzoXV9yVEwn4P2p2sZD-NR7rS8Ak_1NO8buKMOw@mail.gmail.com>
To: =?UTF-8?B?6rmA7J6s7ZmY?= <karavolt@broadwave.co.kr>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] rpi0-w wifi&bluetooth problem
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
X-List-Received-Date: Tue, 16 May 2017 09:53:41 -0000
Content-Type: multipart/alternative; boundary="001a113ec2783efab8054fa1254f"

--001a113ec2783efab8054fa1254f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

On Tue, May 16, 2017 at 5:34 AM, =EA=B9=80=EC=9E=AC=ED=99=98 <karavolt@broa=
dwave.co.kr> wrote:

> Hi.
>
>
>
> i build core-image-minimal for rpi0-w.
>
> it works nicely but not working wlan0 and bluetooth.
>
>
>
> so i tried this post
> <https://raspinterest.wordpress.com/2017/02/28/configure-wlan0-and-blueto=
oth-in-yocto-raspberry-pi-3/>.
> but still not working.
>
>
>
> the error was
>
> $ifup wlan0
>
> Successfully initialized wpa_supplicant
>
> rfkill: cannot get wiphy information
>
> Could not read interface wlan0 flags: No such device
>
> WEXT: could not set interface 'wlan0' UP
>
> wlan0: Failed to initialize driver interface
>
> ifconfig: SIOCGIFFLAGS No such device
>
>
>
> anybody solve this problem?
>

Can you pastebin a dmesg log, please? I want to confirm that my theory is
correct.

--
Andrei Gherzan

--001a113ec2783efab8054fa1254f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hello,<br>
<br><div class=3D"gmail_quote">On Tue, May 16, 2017 at 5:34 AM, =EA=B9=80=
=EC=9E=AC=ED=99=98 <span dir=3D"ltr">&lt;<a href=3D"mailto:karavolt@broadwa=
ve.co.kr" target=3D"_blank">karavolt@broadwave.co.kr</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"fon=
t-size:10pt;font-family:gulim"><p>Hi.</p><p>=C2=A0</p><p>i build core-image=
-minimal for rpi0-w.</p><p>it works nicely but not working wlan0 and blueto=
oth.</p><p>=C2=A0</p><p>so i tried <span id=3D"gmail-m_-516829728971989868h=
usky_bookmark_start_1494908781452"></span><a href=3D"https://raspinterest.w=
ordpress.com/2017/02/28/configure-wlan0-and-bluetooth-in-yocto-raspberry-pi=
-3/" style=3D"white-space:pre-wrap" target=3D"_blank">this post</a>. but st=
ill not working.<span id=3D"gmail-m_-516829728971989868husky_bookmark_end_1=
494908781452"></span></p><p>=C2=A0</p><p>the error was=C2=A0</p><p>$ifup wl=
an0</p><p>Successfully initialized wpa_supplicant</p><p>rfkill: cannot get =
wiphy information</p><p>Could not read interface wlan0 flags: No such devic=
e</p><p>WEXT: could not set interface &#39;wlan0&#39; UP</p><p>wlan0: Faile=
d to initialize driver interface</p><p>ifconfig:=C2=A0<span style=3D"font-s=
ize:10pt;line-height:1.5">SIOCGIFFLAGS No such device</span></p><p><span st=
yle=3D"font-size:10pt;line-height:1.5">=C2=A0</span></p><p><span style=3D"f=
ont-size:10pt;line-height:1.5">anybody solve this problem?=C2=A0</span></p>=
</div></div></blockquote><div><br></div><div>Can you pastebin a dmesg log, =
please? I want to confirm that my theory is correct.</div><div><br class=3D=
"gmail-Apple-interchange-newline">--</div><div>Andrei Gherzan=C2=A0</div></=
div></div></div>

--001a113ec2783efab8054fa1254f--
