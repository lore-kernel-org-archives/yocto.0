Return-Path: <sunil.mukundan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86882E00BC2; Mon, 22 Oct 2018 20:28:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sunil.mukundan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA838E00BB7
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2018 20:28:46 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id m8-v6so26796424qka.12
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2018 20:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sVxIVc/zIn4OKMHhnQgRHmY/3wPZwWf3ucugOFeSzY4=;
	b=g4LexBpnxEQyEKUPC8seqfK8oY6mDqa+Ab3T6O2hk030xLW65thsTvbLIBCiMT8Q3u
	75jlX2g/HXmDida1yzpQVwa369bb2EXUBgY2JxwCFyBM61z2eHIJbL2dQWbr2FjAn8o4
	rmsojVS6xT2+gC51iPiaoNk+gwMrvZIHI94DKuCDS0J0rSCp9guuHUseA/LWaPIQyWpi
	CpVyOg9w2Px2V9sCIdJbPRCSrnhMz9jYehHtAcNWbRDq6lY4GAxC7RC7rMDeYYst/0zX
	cOn5A6k1OWFkae/zB6CPHiLeeVilXjATySjQ1RqPQAEmBf9WHv2HdkD91wJethpY0f1a
	/0+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sVxIVc/zIn4OKMHhnQgRHmY/3wPZwWf3ucugOFeSzY4=;
	b=sOcHiUxkCgO5ZMKdsF3mHpZmYf7o1PrVYmPPY6UfiQKDhe6sQ5CImZ9ONf2GJECEIj
	350eyy30wKqwSDWsRP6xKSaISW07gCcgcqUjr8wNBnI696AUyGdf34FGZBNf5fmXBbZ8
	VUs84ZacIvmo5do/AsgFwhsko3zMwkecvq+7vG2aWo6URbsL/Bmky+/AZ4itVEphue3g
	NWvWiRSZa1IJRZIluUB8CxU57tgL9ntzFvG+iIjJR8S62RnQ2O6zNJQ9JMD/6lsKqxiA
	/qovLyMzrgb3O5wQoYuyp/Fu7l2Cf7gHDrNkge7xpkj1yZvJg/iN7Cz/WYcPtwba3nZd
	kjhw==
X-Gm-Message-State: ABuFfoj12DAEbcPOUAOyHHquA4KDVPD8x08Q9h66RWIxIhJCEy5OSnSQ
	NniATM9b2SYCM70Ayi38mZz6WiBATgTgtWJQYOqOCH3g
X-Google-Smtp-Source: ACcGV62voc0t0NKeNDwUmDVdip4U7oDyDh+VFLoLlwAPCIpEv8HQivoDmFs7fRjKhaWni8Ek+g/iOpL09ltJgSbAgx4=
X-Received: by 2002:a37:7dc4:: with SMTP id
	y187-v6mr46847981qkc.211.1540265325989; 
	Mon, 22 Oct 2018 20:28:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAD0Q=Of26LUD-3pVPp0GGjLAv9JMCdqGaL4GCMhoPS3KTz5kOg@mail.gmail.com>
	<38dd2f69-d260-d297-538f-d1bfc79dc9a2@windriver.com>
In-Reply-To: <38dd2f69-d260-d297-538f-d1bfc79dc9a2@windriver.com>
From: Sunil Mukundan <sunil.mukundan@gmail.com>
Date: Tue, 23 Oct 2018 08:58:35 +0530
Message-ID: <CAD0Q=OfY6PU7Oabf_W_XZtRh3bK+vswUiXOuPqw4qAhhbZdOug@mail.gmail.com>
To: Qi.Chen@windriver.com
Cc: yocto@yoctoproject.org
Subject: Re: eSDK installation failing with sig computed mismatch with sig locked
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
X-List-Received-Date: Tue, 23 Oct 2018 03:28:47 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Chen Qi for the response. Please find my response below

>What does the SRC_URI for the recipe look like?

SRC_URI = "git://github.com/luigirizzo/netmap.git"

Thanks
Sunil Mukundan
On Tue, Oct 23, 2018 at 6:58 AM ChenQi <Qi.Chen@windriver.com> wrote:
>
> I think the main problem is do_fetch sig mismatch.
> What does the SRC_URI for the recipe look like?
>
> Best Regards,
> Chen  Qi
>
>
> On 10/22/2018 08:47 PM, Sunil Mukundan wrote:
> > Hi
> >
> > I built an extensible SDK and when installing the SDK, i see the
> > following WARNINGS first
> >
> > WARNING: The netmap-modules:do_fetch sig is computed to be
> > b53fa14a73271b9f0ce564e413f32468, but the sig is locked to
> > 614da4fb9135f1f97b291ff05494f53c in SIGGEN_LOCKEDSIGS_t-genericx86-64
> > The netmap:do_fetch sig is computed to be
> > b53fa14a73271b9f0ce564e413f32468, but the sig is locked to
> > 614da4fb9135f1f97b291ff05494f53c in SIGGEN_LOCKEDSIGS_t-genericx86-64
> > The netmap:do_populate_lic sig is computed to be
> > 45b8ffb273c02b2fcd201347e4137e19, but the sig is locked to
> > d4c3de4ecfdc1d70a4129dfbcc68b71d in SIGGEN_LOCKEDSIGS_t-genericx86-64
> > The netmap-modules:do_populate_lic sig is computed to be
> > 45b8ffb273c02b2fcd201347e4137e19, but the sig is locked to
> > d4c3de4ecfdc1d70a4129dfbcc68b71d in SIGGEN_LOCKEDSIGS_t-genericx86-64
> >
> > These WARNINGS then (probably) result in the following errors
> > ERROR: Task netmap.do_prepare_recipe_sysroot attempted to execute unexpectedly
> > ERROR: Task netmap.do_configure attempted to execute unexpectedly
> > ERROR: Task netmap.do_compile attempted to execute unexpectedly
> > ERROR: Task netmap.do_install attempted to execute unexpectedly
> > ERROR: Task netmap.do_package attempted to execute unexpectedly and
> > should have been setscened
> > ERROR: Task netmap.do_packagedata attempted to execute unexpectedly
> > and should have been setscened
> > ERROR: Task netmap-modules.do_populate_lic attempted to execute
> > unexpectedly and should have been setscened
> > ERROR: Task netmap.do_populate_lic attempted to execute unexpectedly
> > and should have been setscened
> >
> > Could someone help me with what could be going wrong?
> >
> > I used the usual 'bitbake -c populate_sdk_ext core-image-minimal'
> > command to build the SDK.
> >
> > thanks,
> > Sunil Mukundan
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

