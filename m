Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76BB0E007F6
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 00:13:57 -0800 (PST)
Received: by mail-vc0-f182.google.com with SMTP id id10so2933959vcb.41
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 00:13:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=OFT3fAMxqwfErpcVjXBpmdEhTUHAdjPtokadiUY+kso=;
	b=ODStHej5p0gy6tjKndSxcXI7tYg86S21uAu2S2B5lR8fJGk0mvIb2ooU41kosPdFIA
	Gt3gFjH1KayRuFHJq/K/Ar26/+IhSc2bPMq2AtoXzssh22h9u3soXjHlIjQZ93T17NAX
	0BdI0o/QhYWflgOiLRgVCFarb5rltgyIPE0VBQvUBx5WheyldsgpBeajPZUMZc7f0IYE
	ehxzjo3CChfPRW5hLe7cc1fBJB8F1du062s/9BOHzp/qyDyjScTRtJQK/FAWTWFyXBs3
	2sWA4EL34WDzPZ0uCtUCOiZvvlgh3lV30PDwNXfGnmxtliGxK4i4XyMQnZ5/B606OlBO
	zQ/g==
X-Gm-Message-State: ALoCoQmNxr7L5dsMQ2E2x1MINDAAMzRV+qQF5zI7SfgPEgW31UFgB63+1W2sDXOzk4gicYiRvzDs
X-Received: by 10.53.10.137 with SMTP id ea9mr3285961vdd.74.1392970437022;
	Fri, 21 Feb 2014 00:13:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.244.138 with HTTP; Fri, 21 Feb 2014 00:13:36 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1392390906-2516-1-git-send-email-koen@dominion.thruhere.net>
References: <1392390906-2516-1-git-send-email-koen@dominion.thruhere.net>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 21 Feb 2014 10:13:36 +0200
Message-ID: <CAK18fxHxiT=_2AT5ogNs4-z6=2dxu07Y0v6pU1yf-ezQaXDU1Q@mail.gmail.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][dora][PATCH] xserver-xf86-config: don't use wildcards in SRC_URI
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
X-List-Received-Date: Fri, 21 Feb 2014 08:14:00 -0000
Content-Type: multipart/alternative; boundary=001a1134044c14eb7704f2e634a8

--001a1134044c14eb7704f2e634a8
Content-Type: text/plain; charset=ISO-8859-1

Hello Koen,

On Fri, Feb 14, 2014 at 5:15 PM, Koen Kooi <koen@dominion.thruhere.net>wrote:

> It is strongly discouraged to use wildcards in SRC_URI since it breaks
> when using multiple bbappends and immediate expansion of FILESDIR.
>
> This fixes a do_install failure when building with multiple BSPs
> enabled.
>
>
This was merged in master and dora. Thank you.

-- 
ag

--001a1134044c14eb7704f2e634a8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Koen,<div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Fri, Feb 14, 2014 at 5:15 PM, Koen Kooi <span dir=3D"lt=
r">&lt;<a href=3D"mailto:koen@dominion.thruhere.net" target=3D"_blank">koen=
@dominion.thruhere.net</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">It is strongly discouraged to use wildcards =
in SRC_URI since it breaks<br>
when using multiple bbappends and immediate expansion of FILESDIR.<br>
<br>
This fixes a do_install failure when building with multiple BSPs<br>
enabled.<br><span class=3D"HOEnZb"><font color=3D"#888888"><br></font></spa=
n></blockquote><div><br></div><div>This was merged in master and dora. Than=
k you.</div></div><div><br></div>--=A0</div><div class=3D"gmail_extra">ag
</div></div></div>

--001a1134044c14eb7704f2e634a8--
