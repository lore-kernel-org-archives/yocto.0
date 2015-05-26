Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE629E0095D; Tue, 26 May 2015 16:30:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F86AE007B6
	for <yocto@yoctoproject.org>; Tue, 26 May 2015 16:30:47 -0700 (PDT)
Received: by igcau1 with SMTP id au1so1377535igc.1
	for <yocto@yoctoproject.org>; Tue, 26 May 2015 16:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=vz41deS19lLFUQt3P0hS6HrXCZVSdVVkPMl0wgR9098=;
	b=SIEwIFRGB7U50ugjWJ4Z0lYbyKJ48P/7O/Rvz4bw3ptbEoBnhaIp8aZibQtebGUBVm
	iNsLadbGQ6J2vSlR5h8qY0GTgqJbgUrkXEjXg13S5EY7zwBxqdHIZgKo1ARA9ZaotoyX
	eDOxNhUy/6Fyx1ymNrNA8iByiByExmgXWIjC30+Ge7F+ntrfxwkdFiKpFjFhpbKNPkCM
	GkCK2CPK3qtMfvMIVIlABhuMvcPofqb2x+3KFXFSpyTYnEhE9QqujYFzt/qL5qaYmr8r
	Y5JyNwfC75tSg2HTEyo667Yxr6bsQsGsjB+19HmSCECApMn0a6boPeaa6kwgh1dOMG6a
	XN3g==
X-Received: by 10.50.39.105 with SMTP id o9mr33085898igk.39.1432683047383;
	Tue, 26 May 2015 16:30:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.138.134 with HTTP; Tue, 26 May 2015 16:30:16 -0700 (PDT)
In-Reply-To: <5564FC01.9050803@linux.intel.com>
References: <CAK8F28nH13quAv_8KqfEDnyua99mBYvLnBYej0ugC73dP5LX+A@mail.gmail.com>
	<555407B9.7040105@windriver.com>
	<CAK8F28=iqLWycPRJtvbJ3cjHd04e-XvrQhqHQ0iC7xZ6ADrASA@mail.gmail.com>
	<55555FE4.7060902@windriver.com>
	<CAK8F28nesmgbMQhmcdPeiXbmiMmttnjmqP7_3_wQyDN7OsKGxQ@mail.gmail.com>
	<55436.10.254.91.149.1432012382.squirrel@linux.intel.com>
	<CAK8F28nzBnuc+kSA6HTBVO_y1qd4HUafPSuo0oeOsUidvH3t6w@mail.gmail.com>
	<5564F148.3010007@linux.intel.com>
	<CAK8F28=sm13e2urstMKOAY0pwb6tsGg4eQTGVUM3N-sriyFkRQ@mail.gmail.com>
	<5564FC01.9050803@linux.intel.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Tue, 26 May 2015 16:30:16 -0700
Message-ID: <CAK8F28mrM94h0Kd+dckNyzx0krRKWJHLXf_q+aWAsyYMDy8Y+g@mail.gmail.com>
To: Randy Witt <randy.e.witt@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Using smart within an SDK
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
X-List-Received-Date: Tue, 26 May 2015 23:30:51 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, May 26, 2015 at 4:04 PM, Randy Witt
<randy.e.witt@linux.intel.com> wrote:
> It is a bit of a different workflow than we were initially looking at, but I
> don't see a reason we couldn't do it. The locked signatures file should be
> able to be a superset of items you would want, so theoretically if you only
> wanted items from your sstate mirror to be used, the manifest would contain
> all items on the mirror. This would prevent the user from building something
> locally rather than pulling from the mirror and potentially not matching.
So the user would download a minimal SDK, run a devtool update to get
the super manifest listing everything in the sstate mirror as which
point they could pull what they needed.
>
> The nativesdk items are not in the extensible sdk, and the native items are
> just part of the bitbake workspace. This is why it should be fairly easy to
> add what you want. Because in the end it would just be adding an sstate
> mirror and doing a bitbake "native-foo". And we could wrap that with devtool
> or some other command.
That would be great.
>
> I do see the convenience and why you want it, so I'll talk it over with Paul
> tomorrow.
Thanks.  And please let me know if you need me to do any testing
:)---I'm watching for extensible SDK related patches.

--Ash

