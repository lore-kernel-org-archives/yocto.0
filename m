Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D72FEE00823; Thu, 26 Apr 2018 12:06:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 835F5E005A9
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 12:06:28 -0700 (PDT)
Received: by mail-qk0-f180.google.com with SMTP id h19so7296566qkj.10
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 12:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ixs3/E8VioilOTcluVJjHul0ODk5SElElXtRw8ETwfo=;
	b=il84UMi1DaNe2sfCed9AjDvi9ehlFryvya+ORw7GKCajgtw/VJ64qKhZPznAaAAKP3
	qrAP3VzmN8B6sj9FBGpHkLWysNC8snUgiMZidz0Pe2sUsNTFquKSJ1Ydcgyiv7hcEpJV
	seQSWmQ7FbKVI8thSxf8Hkjt2Q71QkSuTD9FXCtCUZQ/ZBlhem+AsqHIqJwrI8ZBLoLZ
	pY5KAwpDgTkvDACVCWW8mVjmQ31WpAgj1nCmnh3u58MBFkB2P2TvwB7VFnDVIsOH0iW/
	ul8fqOs1mCpwL60q5jUVMi1hdEYsnUoNI522sx1Zj0t1gzOWRE9BseugOYmuhLprHbqA
	2omw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ixs3/E8VioilOTcluVJjHul0ODk5SElElXtRw8ETwfo=;
	b=Y+IcCHurS6AuHH7IQrrIb7uDZQPDB0b3GHX5b/pWfR74mWjsFXkX0APbC0y3mgyAp+
	5BlgZWWC9Rr3qO9MIwkt2vIzl38++PJ3ufhCWco5XQ7Es+WPkKdCcEBFf7ibleES0/eD
	JbGvbKfWUzB54nOxAtxOhNYYN0ILuVSSy1psJtvMPpmuJ0XdlVYh3alASytOqQIj267W
	m1zlvTYyFTEiJzq3aAFfvScld5BLYDyBp5fYOvAdRjaetdXFjCG+JZlc2BmbzCHpP699
	Peqf78TrwhNuq/ue9zyz5pCYFjV02J2CqRJhzPBl4P0EwOdoMLPBbCCnV0lA8eK9K47B
	vTkQ==
X-Gm-Message-State: ALQs6tCl6rwawlutsS0GV+nJGKtqk/U+rJ1AqXC+NPnXsOHEoUFmBzIe
	zS9dfqT5Z1/lL/gle9QLyZIQ7KJ+IKGLV+G1KNOIBw==
X-Google-Smtp-Source: AB8JxZpT5SHKKNZaUHG9OhTVBZ5WC/vK03uEgXFrHOAA2hXQ5V0BpQXv498LtOouxh1RFYhnj08ZTn06T2YlEzXW6a4=
X-Received: by 10.55.87.6 with SMTP id l6mr35719389qkb.34.1524769587239; Thu,
	26 Apr 2018 12:06:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Thu, 26 Apr 2018 12:06:26 -0700 (PDT)
In-Reply-To: <E3DACD6AA0B26143AF16244886B5278E1FE92EB1@MBCHN01.chn.nestgroup.net>
References: <E3DACD6AA0B26143AF16244886B5278E1FE92EB1@MBCHN01.chn.nestgroup.net>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 26 Apr 2018 21:06:26 +0200
Message-ID: <CAGAf8LxeqXFRF-Az1kR0W0nZcE-gnZN-RrpjZZXZxEL9Hf5Byw@mail.gmail.com>
To: "Nishina A. Pervin" <Nishina.Pervin@nestgroup.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Weston Failure
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
X-List-Received-Date: Thu, 26 Apr 2018 19:06:30 -0000
Content-Type: text/plain; charset="UTF-8"

> A log file (/var/log/weston.log)is mentioned in the western-start script file .

Western or Weston? I never saw anything as western, considering GFX
(you mentioned western twice)?! Probably you meant Weston.

Weston is Wayland backend, actually, Wayland is more of a GFX
communication protocol, and Weston is one of the several compositors
behind Wayland. Other well-known compositor is Mutter, as common
example.

It seems that you have timing synchronisation problem (race effect)
between EGL's (Embedded Graphic Library) loadable modules components,
and the best place to ask about such things is exactly:
http://wayland.freedesktop.org
Bug reports to:
https://bugs.freedesktop.org/enter_bug.cgi?product=Wayland&component=weston&version=1.9.0

Best Regards,
Zoran
_______

On Thu, Apr 26, 2018 at 9:15 AM, Nishina A. Pervin
<Nishina.Pervin@nestgroup.net> wrote:
> Hi Sir ,
>
>
>
> We are using weston (1.9.0) for loading our application on IMx6Q sabreauto
> board.
>
> sometimes it fails to start and sometime it works after reboot or after
> restart Weston services.
>
> I found that there is some synchronisation issue occurred in loading western
> service at the boot time.
>
> A log file (/var/log/weston.log)is mentioned in the western-start script
> file .
>
> Form the log file I get the details about error like below
>
>
>
> Date: 2018-02-09 UTC
>
> [09:47:32.751] weston 1.9.0
>
>                http://wayland.freedesktop.org
>
>                Bug reports to:
> https://bugs.freedesktop.org/enter_bug.cgi?product=Wayland&component=weston&version=1.9.0
>
>                Build: 1.8.93-2-gb05cdb8 configure.ac: bump to version 1.9.0
> for the official release (2015-09-21 18:11:26 -0700)
>
> [09:47:32.752] OS: Linux, 4.1.15-rt18-2.0.0-avb-1_1_cand20170403+gb63f3f5,
> #9 SMP PREEMPT RT Wed Mar 14 12:37:25 IST 2018, armv7l
>
> [09:47:32.754] Using config file '/home/root/.config/weston.ini'
>
> [09:47:32.757] Loading module '/usr/lib/weston/fbdev-backend.so'
>
> [09:47:32.981] Output repaint window is 7 ms maximum.
>
> [09:47:32.981] initializing fbdev backend
>
> [09:47:33.018] Loading module '/usr/lib/weston/gl-renderer.so'
>
> [09:47:33.026] warning: either no EGL_EXT_platform_base support or specific
> platform support; falling back to eglGetDisplay.
>
> [09:47:33.027] failed to create display
>
> [09:47:33.027] gl_renderer_create failed.
>
> [09:47:33.027] fatal: failed to create compositor backend
>
>
>
>
>
> Could you please help me to resolve this issue.
>
>
>
>
>
> Regards
>
> Nishina
>
>
>
> ________________________________
>
> Confidentiality Statement / Disclaimer : This message and any attachments is
> intended for the sole use of the intended recipient. It may contain
> confidential information. Any unauthorized use, dissemination or
> modification is strictly prohibited. If you are not the intended recipient,
> please notify the sender immediately then delete it from all your systems,
> and do not copy, use or print. Internet communications are not secure and it
> is the responsibility of the recipient to make sure that it is
> virus/malicious code exempt.
>
> The company/sender cannot be responsible for any unauthorized alterations or
> modifications made to the contents. If you require any form of confirmation
> of the contents, please contact the company/sender. The company/sender is
> not liable for any errors or omissions in the content of this message.
>
> ________________________________
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

