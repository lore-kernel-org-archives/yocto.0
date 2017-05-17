Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 282C1E00AFD; Wed, 17 May 2017 10:59:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.46 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E09FE00AE4
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 10:59:49 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id o5so86214580ith.1
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 10:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZOiZSMXa1J+gbL7lvGOpriWPGb3g5F2acfrtfMOoORY=;
	b=kkk1RL5z6O0G+tf7Xam60qMTVk5YYfIreeqQVSuAe7EVZdGu0TfTYvpqUYoYTN0AxR
	t3qsUgUaRaK+bp9UXh5iEn6I2igYAZtp1d+/TrxaCFP85CFORMWRWmaaInGZ8IS4ttCw
	+JU8o0FXxE5J7W8gbn1xP2ghmj6NMP9oUP6kdS+Ltstle/XJeRaNehl/cOQPhcGAN0ph
	OPcaowzSfj/3dtyFgJUC8J6ztuW3IYSVOvOwoqA9we1uMZVm3qNkKB2lq25U5SMBM9ms
	0dAJ4AI2itKOVRtPaQsJ1NiQ7v0HZLUZ9xG+1+1EGVbAqAlDQNqarLlIqk4hxi/Ng+YQ
	t+Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZOiZSMXa1J+gbL7lvGOpriWPGb3g5F2acfrtfMOoORY=;
	b=blFhcGxc5JKcBOdGi53tUb+txm40b1knP/yhgHCsYuZGMz+ZIM5fxmLG8hZ8sGCkzq
	dPbN3FtlprF7yKY8VkqveeD9CvOm8lx43NsWoanGEgmLhRK4EKvI02iWKQmoECTidjTm
	/VulmGkW/FOpgoVnQ2n6JKvx7l8xoweoRNuQT1up8PtPYNdVkHYDT3KgbXiW7Pekkpdh
	DD5CqXZY9Lrz0jvXN7goOfV6y/ocVdaLctjcHM1q7YtBOaaYyMkyb8AYCazl42COnNgt
	TtV7xVVB8GzPk3daJ682l88S5efe3Hksi46tjfCi+Yw3Qn5I0BZ0zAFKQl9d0zaqnq4l
	fR/A==
X-Gm-Message-State: AODbwcCnJXGMytpWJCz/BU+bkJcTgOwP8SnWWKsi4O3+c2snXruqHzdg
	PVuGURGQai90IZmk/R9ISosVfEpIAVVaBQz01g==
X-Received: by 10.36.87.84 with SMTP id u81mr18395429ita.35.1495043989128;
	Wed, 17 May 2017 10:59:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Wed, 17 May 2017 10:59:08 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <CAK18fxEQEd6KzNR+W+Afp2y4nMim50psaDosDZ+-6XcavC-KOw@mail.gmail.com>
References: <CAPyrkgxZjwcX0h9KgWDi-uxRbp2k-bGpox00YP66soQz4mSiAg@mail.gmail.com>
	<CAK18fxEQEd6KzNR+W+Afp2y4nMim50psaDosDZ+-6XcavC-KOw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 17 May 2017 18:59:08 +0100
Message-ID: <CAK18fxEReQdBkUOuVDfdt-Jsbkft_CRMeDm1_4gqLrq6sDtk6w@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Pyro branch
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
X-List-Received-Date: Wed, 17 May 2017 17:59:54 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

On Tue, May 16, 2017 at 11:31 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Mon, May 15, 2017 at 10:14 AM, Paul Barker <pbarker@toganlabs.com> wrote:
>> Hi all,
>>
>> Yocto Project 2.3 has now been released so I think it's time to create
>> a pyro branch for meta-raspberrypi.
>>
>
> I'm setting up today mirroring jobs in jenkins so we can only work in
> github and all the other repos will get updated automatically. As well
> I'll merge whatever is left in github and start a branch as soon as I
> finish with this.

pyro branch is up.

--
Andrei Gherzan

