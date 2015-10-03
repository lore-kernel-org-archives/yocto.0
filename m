Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72807E00EEA; Sat,  3 Oct 2015 12:16:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50BC0E00A7F
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 12:16:29 -0700 (PDT)
Received: by igcrk20 with SMTP id rk20so37819190igc.1
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 12:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=eEcLtNHJOdM9+BwuHJLgE0S+UNH5YNmfKujk6HFztTQ=;
	b=jRSWKZR7Q+Z/yM+uBGZodEWczq6NzjIktNwe8MsR6gSC6YJ18kw6UTdD5EJKR8gUII
	SQE631gtjRx3DsjLH9w3PHzsaX46mzEtIA9mbwbU6m8Cs2K8JcSP7rgaK0lK/OamA9ym
	stNq29YPCQPOp+ntjxXl14D1pOACr5auYpWQJugfU1hgIoEwaPtQIMua6zNVag8VYzvJ
	JOVAQMe+xrORNRpXRBuOioCdBHiFY/k7K14qn+YAzQtCPAR6JS35C0zy6w2CyZap94ls
	djHNbnS/eoP9l+J0EHRuQrCpKFKOslolZb65v3mBGJ6YoyyaxUKNr0UfcHbRf37qXCzy
	BgGA==
X-Received: by 10.50.117.100 with SMTP id kd4mr2886978igb.75.1443899788397;
	Sat, 03 Oct 2015 12:16:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.130 with HTTP; Sat, 3 Oct 2015 12:15:58 -0700 (PDT)
In-Reply-To: <20151003190310.GA24208@resin>
References: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
	<20151003182433.GA23956@resin>
	<CAMKF1spKaSO=k-UWitbbN8=KV-PEri6i5AwFn47EoRn1-Eqkqw@mail.gmail.com>
	<20151003190310.GA24208@resin>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 3 Oct 2015 12:15:58 -0700
Message-ID: <CAMKF1so00WoUcYDPN4mY67P1Rp_ognr=9WgKpkt4b=u2Euss_w@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V4 1/5] userland: Fix install prefix and generate pkgconfigs
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
X-List-Received-Date: Sat, 03 Oct 2015 19:16:34 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 3, 2015 at 12:03 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Hi,
>
> On Sat, Oct 03, 2015 at 12:00:13PM -0700, Khem Raj wrote:
>> On Sat, Oct 3, 2015 at 11:24 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> > Do you happen to have this patchset in a branch somewhere remote? Something
>> > doesn't apply the way it should.
>>
>> yes
>> https://github.com/kraj/meta-raspberrypi/commits/kraj/master
>
> Which these commits:
> c92ec8f weston: Enable rpi compositor backend
> 26e2365 userland: Adjust include location for pthreads-headers
> ec4ebd1 userland: Add wayland support
> 070df78 userland: Fix install prefix and generate pkgconfigs
> 4dfa633 userland: Fix multiple inline issues while building with gcc 5.x
>
> ... build fails as it follows:
> fatal error: interface/vmcs_host/wayland-dispmanx-server-protocol.h: No such
> file or directory

OK so you are not testing the topmost patch for clang ?
in any case with or with out that patch build works ok for me here.
Can you show me the DISTRO_FEATURES you are testing with ?

>
> Could you give it a try and see if it compiles for you? As well do you have any
> idea who should provide that header? I don't see it in userland.
>
> --
> Andrei Gherzan

