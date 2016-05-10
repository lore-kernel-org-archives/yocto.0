Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED306E00D71; Tue, 10 May 2016 08:25:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EEBCE00D5B
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 08:25:15 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id f89so20116181ioi.0
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 08:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7JW3juG+wLQ78gdrpWTrNnSRC8feHuJVmBmlG9F5dmg=;
	b=vUTht3COJr1QVKH/EMMFAuV70wvDKg/MW/n/7dO/dtGorv1T/Hi2cjevqYuYD0hyEY
	0DAzwKlCLY0m+Xofk5Ls3heypqsQdI4S4RzX0miVL5Z/XfEySlP7sJwyJtUB11qMTkT7
	YGpDR8374HtaRjJPvGNkA+kFNpe0w3DoOKkC5VBSvOH9tUzyMkVwTWDNpj445j1jsoEZ
	B4j2xJbUYSYYz6zR09j5dsLx8jNXy1AG+TGynUKXFktLA7wwNwnhTGgEjl3D2qavGWp5
	vVv1e7EmRl6gGg9PsXRsKtBwgmlyT/ESH7r30TXOtK4a6OL/hlqclARAyyyLfz017xff
	n9cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7JW3juG+wLQ78gdrpWTrNnSRC8feHuJVmBmlG9F5dmg=;
	b=Yjb1s0aPfLq7jpxMbcNOJwHn0/QKwPIvtQacy3/wgk3DrHf6rwu+elviGD/BUOLMy9
	xSR3vRxbdJhERuNLCX3gyHPyKkIQp+gWgbQCweXGZ2Z2NYyzhaJ2Am5qN9eeogNLRGAQ
	t8UFygv7sI/zXKIX2NVs/iolwcw3qfDnVuuGvLWBEbq6vY1OYtsrIeRnVUPB4QI9Zixn
	hDuDWigf60VesIGl8CMvGwtU+L4LH0wr05tPtu7CBeYPIwHKAsK5d8pOnZ39qH3LJ7Cw
	Z6kiGcbz9jCc3bNjG0eQjXLaE9ljhhPObYl9SyX9xrfPnh/GCsukedh1WZenn+R8mw8g
	xvyA==
X-Gm-Message-State: AOPr4FVpGQUrd93XpokNxm0qEpE3qAu5FK2e06S7YLAmO2NFoHkyOq0Cb90bwXNkWmI+P0WgZg0A4d0wZ4V4vkbT
X-Received: by 10.107.51.213 with SMTP id z204mr41001774ioz.148.1462893915571; 
	Tue, 10 May 2016 08:25:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Tue, 10 May 2016 08:24:56 -0700 (PDT)
In-Reply-To: <1462892695-3528-1-git-send-email-k4230r6@gmail.com>
References: <1462892695-3528-1-git-send-email-k4230r6@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 10 May 2016 16:24:56 +0100
Message-ID: <CAJTo0La4E54MuC1CmM7_pPKrRZdbBdznETUUfOoUVZjQBJ2+7g@mail.gmail.com>
To: Christian Ege <k4230r6@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] bluez5: fixed path to bluetoothd in sysvinit script
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
X-List-Received-Date: Tue, 10 May 2016 15:25:18 -0000
Content-Type: multipart/alternative; boundary=001a11440cd02e95ba05327e88ff

--001a11440cd02e95ba05327e88ff
Content-Type: text/plain; charset=UTF-8

On 10 May 2016 at 16:04, Christian Ege <k4230r6@gmail.com> wrote:

> -DAEMON=/usr/lib/bluez5/bluetooth/bluetoothd
> +DAEMON=/usr/libexec/bluetooth/bluetoothd
>

This is only true if libexecdir is set to /usr/libexec (the original patch
was equally broken).   Can you change the recipe so that the init script
uses something lie @LIBEXECDIR@ and the right value is replaced in
do_install?

Also, patches go to openembedded-core@lists.openembedded.org, not yocto@.

Thanks,
Ross

--001a11440cd02e95ba05327e88ff
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 May 2016 at 16:04, Christian Ege <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:k4230r6@gmail.com" target=3D"_blank">k4230r6@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div id=3D":1nw" class=3D"a3s aXjCH=
">-DAEMON=3D/usr/lib/bluez5/bluetooth/bluetoothd<br>
+DAEMON=3D/usr/libexec/bluetooth/bluetoothd<br></div></blockquote></div><br=
>This is only true if libexecdir is set to /usr/libexec (the original patch=
 was equally broken). =C2=A0 Can you change the recipe so that the init scr=
ipt uses something lie @LIBEXECDIR@ and the right value is replaced in do_i=
nstall?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">Also, patches go to <a href=3D"mailto:openembedded-core@lists.openembedde=
d.org">openembedded-core@lists.openembedded.org</a>, not yocto@.</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Thanks,</div><di=
v class=3D"gmail_extra">Ross</div></div>

--001a11440cd02e95ba05327e88ff--
