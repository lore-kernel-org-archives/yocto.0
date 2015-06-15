Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DD72E009F8; Mon, 15 Jun 2015 04:53:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE94CE009AD
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 04:53:12 -0700 (PDT)
Received: by pacyx8 with SMTP id yx8so64368392pac.2
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 04:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ofBYcWAABMgHOwDTX+Jy28p4Rsm/VmxyiQY3Na9+Ebg=;
	b=Uyl9KSWQ/pdX8+JK6+cDqbgTXh/UQXNsFjIXY7fiFlLO/qeH1iCkqbiKCwhqGU08up
	yvx2q5xvWsUOk10Flf1f83VnWIafwJ0K2+XZB0got7hTnEACgkZeZEFyMjqpPQa6pi8K
	PuE87oyNhGkHl2yJCH6EG5ijQGP6FBbwMKOrlHTd9j1drAHXi1yQwehHbKCARm8PCHBA
	sWeJnESsKGQLZF1p70PuN5Miw1RwDjvhQ/mjPBXexe2g068Op837+9hPIMpVLaf88c4i
	hs/ZwWbuljpO/cZBMu1hVXQwhj6oLOiDpWU3Ig69agw6joOTaQh0oSpsWnW+ucxmKJU3
	dJmQ==
MIME-Version: 1.0
X-Received: by 10.66.233.232 with SMTP id tz8mr47318643pac.77.1434369191925;
	Mon, 15 Jun 2015 04:53:11 -0700 (PDT)
Received: by 10.70.44.41 with HTTP; Mon, 15 Jun 2015 04:53:11 -0700 (PDT)
In-Reply-To: <557E9EFE.1030703@linux.intel.com>
References: <557E9EFE.1030703@linux.intel.com>
Date: Mon, 15 Jun 2015 13:53:11 +0200
Message-ID: <CALbNGRS9UWjVQQh8POPc5zVYOeYa9VaeC7dEfzH3AMs4k9Mjzw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Webkit-gtk will be updated to latest upstream; midori browser to be replaced with Epiphany
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
X-List-Received-Date: Mon, 15 Jun 2015 11:53:14 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 15, 2015 at 11:46 AM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> Hello everyone,
>
> I've been looking into updating oe-core's aging web engine/browser combo,
> and want to give you a heads up about what's going to happen:
>
> 1) webkit-gtk engine will be updated to latest stable upstream release
> (2.8.3 which is providing Webkit2 API and is a Gtk3 port)
>
> 2) midori browser will be replaced with Epiphany browser from the Gnome
> project. The reason is that the latest release of midori still defaults to
> Webkit1 and gtk2, a new version of midori is in development, but is a major
> rewrite with no target release date and is far from ready at the moment
> (from looking at the list of open issues).
>
> The downside to this is extra bloat and dependencies, but I can't see any
> other way we can provide a modern client stack for the web. Having a browser
> is important nowadays for any kiosk-type device with a touchscreen, because
> that's how UIs are written.
>
So we are loosing last working browser around - what get's better
except later is greater?

Andreas

