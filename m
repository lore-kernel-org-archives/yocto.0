Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07574E009CA; Wed, 25 Apr 2018 09:31:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BDFCE005A9
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 09:31:56 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id 144-v6so6063137iti.5
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 09:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=gXl2oJf6h3dxHELJTzO7LkF4Jk5IsD9pp6xEypVAy1I=;
	b=vAQXRVL6v4hBv2N6UkN+QtWnKzN1CxsCymh9j0xbttSzZpc1rFFSPlOaxgAce6Gpdg
	Z9Xg+m4IhyCJ/QK+/U2Fw2y5ir4fb15p8VbaypXEQzuWCwlEOn/50IJm1m3hNaIZVbd+
	Cyw5gppzD2wTWMm/nDVUJVP90qlSB4pgIXiFBsnwYukgQBHInzrpZu7FFvwSTFR6tapV
	qNNetb0LEldx9foZGG1Xj2PU9NWUdeJtfewOI1GnKF1HLhbVRWvZrEvtySzrQ5amb+GA
	kB8Etp5LCUcKJDssgD/EFE3B/+5lZb4s89EyM4Sys1LSanKg/GkO/mPizwyUIYuHVJ2R
	zS3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=gXl2oJf6h3dxHELJTzO7LkF4Jk5IsD9pp6xEypVAy1I=;
	b=se+aRXG7vUhoCN4pd+fr5/LP9x47ImB5EJqUD+HvHFu7rKh+CaxYRE84sZ3fts9cvt
	MHIh1kmLS8sX67TWlqcYVAucau0QixnSSvsGuPu44ahEXbexOROyBl9tsswgN5MLLm81
	uxD+4SexNpv+AZD7jARLg1wwtSGHDXgp7DhmMaojaEQIi/3gzpbV6u7q7Z7Cs1zDfjmn
	c6WI2XP7Bfurxu0lBqemGw9nkoMI9xZ/zLwIj3UDlsu13oqx3dG63zfFITYtTnZ8j4N/
	ElpuEF8oJFuxf2coyDJdpEDRffGt5NoMgmCx3gWLpFx2OnXJtq2ENIK6IlzihFEeLVKv
	LH/g==
X-Gm-Message-State: ALQs6tAStWB1YYnr7f2hayeluJC/PWC5tUPLMKUkEBWgFOjL/tq3qIow
	xonTek4LQaFQbCIsFnpjG7XefUruy2Y+0YLCGh+u3w==
X-Google-Smtp-Source: AIpwx4+bEJSJGdjc40DlFqGiTHfRUcdPnSAwHDWtQldBmRE2SWWgQ4Xv+QTqUSnuvhOXRyNkCwroPHmQfF40zSrpDEs=
X-Received: by 2002:a24:9ac1:: with SMTP id
	l184-v6mr22997225ite.127.1524673915597; 
	Wed, 25 Apr 2018 09:31:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Wed, 25 Apr 2018 09:31:35 -0700 (PDT)
In-Reply-To: <37ace7a9-0cd3-a3dc-d2aa-bc59aa2ef3ba@intemotechnologies.com>
References: <37ace7a9-0cd3-a3dc-d2aa-bc59aa2ef3ba@intemotechnologies.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Apr 2018 17:31:35 +0100
Message-ID: <CAJTo0LYiDS816B-=RC0Oku6gkfTmK68HoU+KSKZRRbFq3pHx4A@mail.gmail.com>
To: Victor Palacio <vpalacio@intemotechnologies.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [morty] eudev make fails when creating keyboard-keys-from-name.h
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
X-List-Received-Date: Wed, 25 Apr 2018 16:31:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That file is generated from your kernel's input.h, so I suspect this
is a problem with your kernel.  If my hunch is right, building eudev
with MACHINE=3Dqemux86 will work (and if that fails you've found a bug).

Ross

On 25 April 2018 at 16:04, Victor Palacio
<vpalacio@intemotechnologies.com> wrote:
> Hello,
>
> Building a core-minimal-image, compilation fails at eudev when using gper=
f.
>
> ....
>
> /media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots=
/x86_64-linux/usr/bin/gperf
> -L ANSI-C -t -N keyboard_lookup_key -H hash_key_name -p -C <
> keyboard-keys-from-name.gperf > keyboard-keys-from-name.h
> | Key link: "screenlock" =3D "screenlock", with key set "ceks".
> | 1 input keys have identical hash values,
> | use option -D.
>
> ....
>
> As per log output indication, I've created it manually (from a devshell),
> adding "-D" param to the command.
>
> It's there a bug here, or just a problem with my environment? Somebody ha=
d
> the same problem?
>
> Regards,
>
> --
>
>
>
> Victor M. Palacio T=C3=A1rrega
>
> vpalacio@intemotechnologies.com
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

