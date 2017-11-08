Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C915E00D42; Wed,  8 Nov 2017 08:22:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC12CE00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:22:07 -0800 (PST)
Received: by mail-io0-f193.google.com with SMTP id d66so6533734ioe.5
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:22:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ydDHqs51eZkdLK0yCHf6ZF8XfSXhOI/64hGyx4eoNWQ=;
	b=zxeqk+qqh/RPN+9nrFDfsKnwFPa4WF3CtFKod35Wo5Jmz7EArFsEh2Ch0lG8EOLbcM
	DvxD5FxYflQClBCpfoVHDEsDoDMAAqsP6SDL51rB8Bgd8rOZE1dt5fQkhG92tU0EEOPy
	InPfS53krQLk2VuOBka+RI9x2i14K4YbLs3AGBcXyhlo0Zf0Nba2SQVyNXTaTPZc3Veh
	5/2bAnY6cv3T4adaELZTzqQ/ORlLScpYzhSHIs3Ypd4pZd+g7bghleCjoYF9M8JfRQkn
	nWhBxTuzShrGydGC8VK5IFDXNGvYTdIMUCcrX5784xBdzWWQrk1D4JhnVlHvlkEu34F4
	2C4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ydDHqs51eZkdLK0yCHf6ZF8XfSXhOI/64hGyx4eoNWQ=;
	b=fQyRuQGk025iOefHEeMuMP1A2BDXo3t8tmWA/+wQke6KZY4/GKS9dAdL6bVjfAe2fc
	3NGZ3uWlFxbQYh63JlYQ6FfNdtI01tpG17Cg0SvM2yRMHG0g+USYhz+kasHF/dPY0GiR
	w6Mc3AE/B4BBZlDvmfjnGg/NegmyWEeFUzZ805riIIHe0LtHTyTp/PeOtCSA46EMeCXe
	5xRRhLV6WSKEbD+CZBpddXF84A/UHe57FPDOOGBrIrdUjesK/QztU8zBo6xfGKJmxA2I
	eO+MnPYdXYJlU3OxMGRa0XVibq4uOYYUXsiJ7BSyWNh7hTrhV64RcM9SuEO+iJV4r3iP
	pttg==
X-Gm-Message-State: AJaThX4zjCGcVjpULw6Cgd+3o93Z4C6vvXs7qlRjx44W7UN9fxEf5i3Y
	DlYc2SX6DcHBg0t9z7CizHbGMLFxdHflnep5D1aG0w==
X-Google-Smtp-Source: ABhQp+S0581LdNzkYG7zqYTDy9jdioDjNgu7C3bdzlIWEYAdL4PxiALIedviCGWtlN0Dv9FHxV/W/hCR3haDXr/tFx0=
X-Received: by 10.107.170.166 with SMTP id g38mr1327393ioj.207.1510158126768; 
	Wed, 08 Nov 2017 08:22:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Wed, 8 Nov 2017 08:21:46 -0800 (PST)
In-Reply-To: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Nov 2017 16:21:46 +0000
Message-ID: <CAJTo0LYdYRBPqKaAPgnzJy=rxKPDYDsPV-Bko2aD64EtGJT2fg@mail.gmail.com>
To: Jerry Lian <jerry.lian@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Annoying "rerun to fix" bug for bitbake: task failed, but rerun can fix it.
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
X-List-Received-Date: Wed, 08 Nov 2017 16:22:08 -0000
Content-Type: multipart/alternative; boundary="001a11425fb4b37fd8055d7b16d7"

--001a11425fb4b37fd8055d7b16d7
Content-Type: text/plain; charset="UTF-8"

On 8 November 2017 at 15:49, Jerry Lian <jerry.lian@gmail.com> wrote:

> I am not sure whether it is a bug or an error:
> * Quite often, bitbake will fail before finishing, with message like: ...
> task failed with exit code 1...
> * But if you rerun bitbake, it will continue to build.
> * So sometimes I have to rerun many times for finish one build ----
> annoying!
> (by the way, my CPU can run 16 threads)
>

If you tell us what recipe is failing, and what the actual error is, then
we may be able to help.  Generally this is a bug in the makefiles that the
recipe is building and not a problem with Yocto itself.

Ross

--001a11425fb4b37fd8055d7b16d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 8 November 2017 at 15:49, Jerry Lian <span dir=3D"ltr">=
&lt;<a href=3D"mailto:jerry.lian@gmail.com" target=3D"_blank">jerry.lian@gm=
ail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"g=
mail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>=
<div><div><div>I am not sure whether it is a bug or an error:<br></div>* Qu=
ite often, bitbake will fail before finishing, with message like: ... task =
failed with exit code 1...<br></div>* But if you rerun bitbake, it will con=
tinue to build.<br></div>* So sometimes I have to rerun many times for fini=
sh one build ---- annoying!<br></div>(by the way, my CPU can run 16 threads=
)</div></div></div></blockquote><div><br></div><div>If you tell us what rec=
ipe is failing, and what the actual error is, then we may be able to help.=
=C2=A0 Generally this is a bug in the makefiles that the recipe is building=
 and not a problem with Yocto itself.</div><div><br></div><div>Ross</div></=
div></div></div>

--001a11425fb4b37fd8055d7b16d7--
