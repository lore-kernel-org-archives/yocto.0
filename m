Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F5B2E00576; Wed, 23 Jul 2014 02:27:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EE48E00524
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 02:27:45 -0700 (PDT)
Received: by mail-qa0-f49.google.com with SMTP id dc16so985955qab.36
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 02:27:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=cHUDW/nZU6+bvn477ptGKmQDeBfKCC05nvZ/gcdvG+A=;
	b=EZDpF/YU71HPw7oy/VvnisH8PaoVbZwWSUHSKDCu7Qeqy20E8ldHkCI/SElcQvjDeZ
	NtXryc6GxLb8gwpDLM6hDle5GejPlYp5LabTmSFf1rmEXKZWZ2tAkxY9hO+51o6trsi5
	M89UQiYHSaA68pDPEH+mQrq5UQ/juThLNhpE77UQdUzqFjBjXxLW86AY7sz2Q3tN25iQ
	n2hOAyc1r172vzyIVFmPMgwxD0REdyaSYMfIenZ0z8IwY38B/xGmYJ8GyR0TADlJU1yI
	vuYBZgijWbbQF9hZKwYgH+SxahZpqFvDqiUhgIuhmtjgrPaipqS3uZ5IH25lP02Po9gx
	yTYw==
X-Gm-Message-State: ALoCoQk+uoMPhWM7+R87X3LwloWVyPpwykJCPtFOYaGRSnxF8rTwmPBlCC/MSlSA3EA9ghKRDssE
X-Received: by 10.140.91.66 with SMTP id y60mr9928qgd.58.1406107664496; Wed,
	23 Jul 2014 02:27:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Wed, 23 Jul 2014 02:27:24 -0700 (PDT)
In-Reply-To: <CAJrRHk6kFWpzUc+r4pd9xmZo+pn=f1a5R5oVtW1yLtqHurFMKg@mail.gmail.com>
References: <CAJrRHk6A_S98KrnddvaacU7WmhAuuv2gkxwfduAvQTJftuWNgg@mail.gmail.com>
	<CALkREYBOB8sO2SorLLshZZGtk6f=PJpEtUi=sJnHtkGHerm7wA@mail.gmail.com>
	<CAJrRHk6kFWpzUc+r4pd9xmZo+pn=f1a5R5oVtW1yLtqHurFMKg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 23 Jul 2014 10:27:24 +0100
Message-ID: <CAJTo0LaOV7EJDuAnhzjbE+-e1R-75hCmrxB3FVm=yRWzwRLhMw@mail.gmail.com>
To: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK not contianing archive libraries
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
X-List-Received-Date: Wed, 23 Jul 2014 09:27:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 23 July 2014 10:23, Joseph Andrew de la Pe=C3=B1a <jdelapena@lexmark.com=
> wrote:
> Thanks for your reply Anooj. Apparently, based on my findings, the SDK
> contains libraries that are "libtool archives", .la. For my part, I have
> used .a only which is not "libtoolized". I'm finding a way how to make my
> unit generate a libtool archive.

In general you don't need libtool archives.  If you want .a files in
the SDK for static linking then you want to add the recipe's
-staticdev packages to the SDK.

Ross

