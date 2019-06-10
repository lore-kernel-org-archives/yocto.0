Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F790E00A5C; Mon, 10 Jun 2019 02:13:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1ED04E009EA
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 02:13:34 -0700 (PDT)
Received: by mail-it1-f177.google.com with SMTP id x22so12035172itl.2
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 02:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SQbjShdFIjzFT6N6HzmJaJeI/4MzBiEbMKpLSffPVxM=;
	b=1W6mYnWaBIs2qrjvLz+lpQ/Wq8e4zS90fz1pbfBI+KWuzafZTTeB/8HEFLihV18CrX
	XlGV2//vRrwciMvV0QG2Gz/KF84Lbo2K3xMSbqmAcx9j1Vv8Gta19aVbXgDLiIKWSaja
	n4aKyZXJzcgcfK44AEelFVutxm62H8HNr5aZ/oPehE3e3/cdnenI7E0zOTFFUhlqSsJ5
	dSRMl9AZJB3gv20M4+um5CLJHCUXRaFs/ep3M5oTaZkukWSFqlAniw6S4nGgpEsbiiiy
	2Z1HBV3cfgvRiECQk6Pkn6ivD2jIkBlN3BFCAaRaruS36eY1ho8Xv2+Fv5uML31SyJga
	4jsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SQbjShdFIjzFT6N6HzmJaJeI/4MzBiEbMKpLSffPVxM=;
	b=oQDYUnENvAdxUQVaXxUQAdmcWcQPMHUeE5wZYz2SxVg4Kqs5Tn9KD6Z7tpoExNq7pX
	3V37ibfAurpIHyKWEb/ypaev21V12ERil/K7flODNT785feY0lln5Z+LmxoiI653Wtln
	CwY1iBWmFb4vCoI8L1jQn+3R/iGFUMSqgNkDCccofFqnBxHmf/VfcJO4QF1pNWBERzHv
	Lbkf4QymarXdgD0i7EK4Z4YukxjO0Sca0IUqBYECEEo6kpwOV/q+vEUjSTTX2g0Z/WdT
	6vh/HS4h5pcG0+N9FMUCUKnLsn1Dk0hvSLxccn2iV9zs5vLiNDKK5EYkUP8bqDMHTfp/
	+o2g==
X-Gm-Message-State: APjAAAV7vgF1LWpyloHVuolig/QZcvhq+muw7fo1rAPpGguK6luzDZJz
	uCrcUDw8z2BklLbUxb+TOtNhTeW8qf5h0TJNZ5vSpvNv
X-Google-Smtp-Source: APXvYqyWrWboqgHH7Kjby3i46MBDaEmNx3y5m9V1U8fjrR0KQv04RpHOWUkzRcOKcws+Gincjka4FDs6lyQs38Oe5EU=
X-Received: by 2002:a24:1d01:: with SMTP id 1mr7945181itj.83.1560158014581;
	Mon, 10 Jun 2019 02:13:34 -0700 (PDT)
MIME-Version: 1.0
References: <AM0PR10MB2658E98F7B370BD2FAEE187EC3330@AM0PR10MB2658.EURPRD10.PROD.OUTLOOK.COM>
	<CAJTo0Lb2dGk4rdX1cm83aDyEr8WxapH3+nAL6oVgSeO-hFZbiQ@mail.gmail.com>
	<7ebe65af-7756-eee5-ec9e-9d7f8637d761@emagii.com>
In-Reply-To: <7ebe65af-7756-eee5-ec9e-9d7f8637d761@emagii.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 10 Jun 2019 10:13:23 +0100
Message-ID: <CAJTo0LaMhs4OEWVtvp5AKhwvCRGZ4MNBRHh+5CaCx1Bm7js0Dw@mail.gmail.com>
To: Ulf Samuelsson <yocto@emagii.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Multiple MACHINEs and DISTROs: When to use own build dir, SSTATE_DIR, DL_DIR ?
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
X-List-Received-Date: Mon, 10 Jun 2019 09:13:36 -0000
Content-Type: text/plain; charset="UTF-8"

On Sun, 9 Jun 2019 at 23:19, Ulf Samuelsson <yocto@emagii.com> wrote:
> When you have the same machine, and the recipes have variants
> which are DISTRO dependent the SSTATE_DIR can be messed up
>
> We never digged deep enough to find the cause,
> but when we separated the SSTATE to only have one DISTRO
> in the same SSTATE, the problem disappeared.

The recipes were actively broken then, because DISTRO is in the hash.
If the DISTRO changes, the hash changes.

Ross

