Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DE9AE00C51; Thu,  7 Apr 2016 05:57:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 990EBE00C31
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2016 05:57:13 -0700 (PDT)
Received: by mail-ig0-f174.google.com with SMTP id gy3so12649647igb.1
	for <yocto@yoctoproject.org>; Thu, 07 Apr 2016 05:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DizKCZfmoNK5oRtJvuOS86AKe37bTRTBMMmKzwQnwz8=;
	b=2LUW2oT1JzRoVxrNuVyqsxMDRGsuFN0MgmQwKGmgOKMht+53neP314pFB+ZN+gtjRe
	5MvMIKsMQbGe8KBGgedORov4327CpavyNSkhpMZlJ5Y0iiy1Ghim+JSLAWRR9xFZz6GI
	jZLf0CKqRL0rMtiiNWjY++F7Qjwfrk+EDeocZ73TcTsiBnb7Fa8JHS4ZfBj6+h0PbEL6
	wkgtnGeapP7FzRwIQvzOdqbOKikfcQTZ1cGQjHuGSV5iSJZP+GmF8NPNb40aG+MedY8q
	WSPlzX2DsAa10gOkFRjqhJ0Y/rcncztcez7hhWmFVRx+orW21Nh8xlqZ3NbAdVwf9fxw
	75MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DizKCZfmoNK5oRtJvuOS86AKe37bTRTBMMmKzwQnwz8=;
	b=OKAIUJrXuyEMj13nA9PykiMAvP7ODQM97k1qrHx/Oupwub9agShDWVVJYxzxVrKDtl
	MPKBl+2JXyVzaP7H+yidzxU8NhDlmFt1mGj7U2D/fzphsKW0KwVQQrv7URQ5RfOu6TBa
	obkIIo6En3YtXGYaXaqRnMtutsQjnDpSTz0Mz+gLsrl4w8eSj4OBgJHs3OIeXQ4KyvOM
	tck15Q34rx8OIZ+0HG09K33k4pI+DRYR+99uqJGCHUbQBqtlQyoRBsqRBzoJUKgLDiDb
	UzXkZ9qm3Puwc5PWdL6xWy4816FgbtHvCOvQt1iI/70DqLpd8X9crorCipiHoA7VeXIi
	XpWQ==
X-Gm-Message-State: AD7BkJKsniI9eVtNEsrN2h6/gnUd06Z92dRtgfyK8//zu8PXpg4UphLRFi7LpLQ++eZxSjlwA5GD5JRIsrW6JXSY
X-Received: by 10.50.160.39 with SMTP id xh7mr3138721igb.64.1460033833368;
	Thu, 07 Apr 2016 05:57:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Thu, 7 Apr 2016 05:56:53 -0700 (PDT)
In-Reply-To: <1460012758-19090-1-git-send-email-raj.khem@gmail.com>
References: <1460012758-19090-1-git-send-email-raj.khem@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 7 Apr 2016 13:56:53 +0100
Message-ID: <CAJTo0La2dvZQz2KxXC4T-vV6ZMC1FvOj1LpNDHVSHbGjUOXuqQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-poky][PATCH] poky-tiny: Switch to using kernel 4.4 and busybox for init
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
X-List-Received-Date: Thu, 07 Apr 2016 12:57:18 -0000
Content-Type: multipart/alternative; boundary=001a1135ee9aff9784052fe49d7f

--001a1135ee9aff9784052fe49d7f
Content-Type: text/plain; charset=UTF-8

On 7 April 2016 at 08:05, Khem Raj <raj.khem@gmail.com> wrote:

> busybox based init system is available and used in many
> other distributions e.g. buildroot, therefore use that
> combination with mdev gives a scalable image and chance
> to execute sysvinit scripts as well, adding nothing to
> image size.
>


> +VIRTUAL-RUNTIME_initscripts = "initscripts"
> +VIRTUAL-RUNTIME_keymaps = "keymaps"
> +DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
>

Do you really want to have sysvinit removed from DISTRO_FEATURES if you're
claiming this lets you support init scripts?

Ross

--001a1135ee9aff9784052fe49d7f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 7 April 2016 at 08:05, Khem Raj <span dir=3D"ltr">&lt;<=
a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</=
a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">busybox based init system is available an=
d used in many<br>
other distributions e.g. buildroot, therefore use that<br>
combination with mdev gives a scalable image and chance<br>
to execute sysvinit scripts as well, adding nothing to<br>
image size.<br></blockquote><div>=C2=A0</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>+VIRTUAL-RUNTIME_initscripts =3D &quot;initscripts&quot;<br>
+VIRTUAL-RUNTIME_keymaps =3D &quot;keymaps&quot;<br>
+DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D &quot;sysvinit&quot;<br></blockqu=
ote><div><br></div><div>Do you really want to have sysvinit removed from DI=
STRO_FEATURES if you&#39;re claiming this lets you support init scripts?</d=
iv><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a1135ee9aff9784052fe49d7f--
