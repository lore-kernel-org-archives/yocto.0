Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1502EE00BDF; Thu, 12 Jun 2014 12:01:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.50 listed in list.dnswl.org]
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0FC2E00BB1
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 12:01:07 -0700 (PDT)
Received: by mail-qa0-f50.google.com with SMTP id m5so2206107qaj.23
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 12:01:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=qg2T6mJ/v+exFWh7sBoxoglIpzPkVJDPn5H7dc/fMoA=;
	b=IVTwrmlUShX8sSK0T+3l93VDHSo0APdtOg+yVMxwFi4flf1hY2j2rbkQVgQtxcRpbx
	xujFfkklAYieuTEA0vx6yop1zFciBUYO38lgieb/1N1PlPk3tq65bW9rb5IJsXJirvbg
	PsS52aVHd2RQL59N0tgPPv7X/ryjyhGhrjIilp5udqjiCrMWoQGso1UqvxiHUZQsPgWq
	DLzVVFRZKlL512wCjJ5N4BZrz8aW8Zj82i1iFFAuwOjiP8tvL/7JlNRR08svBpaGKRPd
	ZUhm+AhsEGr3zqbw196BaeXa9397USk9jrjlBbn8NiJfo2Udllo9ikphhNoE1XctWWiN
	UxzA==
X-Gm-Message-State: ALoCoQm8K7JhCqwb+Nk5nG8YmsEyFPFY7cKzmQfxxavAqceZObwmfoMxDlxzuii6st8N3HOGrWle
X-Received: by 10.224.151.206 with SMTP id d14mr63221732qaw.35.1402599667274; 
	Thu, 12 Jun 2014 12:01:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.91.138 with HTTP; Thu, 12 Jun 2014 12:00:47 -0700 (PDT)
In-Reply-To: <CAF_dkJAy-nn0SyUNUNMdSiqpkXHFPZoOeNFgME8w6U4BqMWp-g@mail.gmail.com>
References: <CAF_dkJAy-nn0SyUNUNMdSiqpkXHFPZoOeNFgME8w6U4BqMWp-g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Jun 2014 20:00:47 +0100
Message-ID: <CAJTo0Lb6mRt6H0fpVVXT_PW8SX1pWrKdE8Z3Avbp7SpY420UGw@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to determine which tasks bitbake just ran?
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
X-List-Received-Date: Thu, 12 Jun 2014 19:01:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 12 June 2014 19:53, Patrick Doyle <wpdster@gmail.com> wrote:
> As you know, when we bitbake a recipe, we see lots of messages about
> individual tasks that are run as they are being run (do_fetch,
> do_configure, etc=E2=80=A6), and then a final summary message that reads
> something like:
>
> NOTE: Tasks Summary: Attempted 690 tasks of which 677 didn't need to
> be rerun and all succeeded.
>
> I'm curious:
> 1) What were the 13 tasks that ran?
> 2) Why are there 690 tasks for my simple recipe anyway?

You want to see the cooker log.

If you want to see that as it happens, then for a one-off you can
convince bitbake that it's not running on a vt (bitbake foo | cat -).

After the event, the cooker logs are in
tmp/logs/cooker/[machine]/[timestamp].log.  For convenience, Chris
Larson's excellent 'bb' command has a 'log' mode that if given no
arguments will display the latest cooker log.

Ross

