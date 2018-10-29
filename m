Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06708E00BC2; Mon, 29 Oct 2018 09:29:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30D43E00AC5
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 09:29:30 -0700 (PDT)
Received: by mail-qt1-f195.google.com with SMTP id g10-v6so9933222qtq.6
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 09:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=extTm9iOACi2Umv9GTw9Ym0FmE6GBEYc73T86JSM2Uc=;
	b=VPXfQxQ7omi4ITM/dKEFsGs6aIuJo5p0A8A81FK35gg+loz2x4U7fbOJu/YNxQR1hv
	2E7+sEoIXAJENVqlzlXNT2ZkzR7kCyi6xE+6B52y5Pb9LDbbparr9pFftQRS677wC1nI
	oExXmyw43kzNT9l3iZ3Rhxwsdso8sundd1Z2IbZTi70uRZ4LWuM/1HjzLAu3eMmgQEPa
	RKsHk0WBg25yZwii65Wq3sidIck/fymRNthwEWDbWUD0Zg2JBU/dBGmjNuy0YijHz0Kr
	k5EVNm6opuogkiIc0lhZ/amce+LVuzkZDiL+/9wswUB6NP3tI2iJo5TagveHG0A+L1pi
	zy+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=extTm9iOACi2Umv9GTw9Ym0FmE6GBEYc73T86JSM2Uc=;
	b=ueWkeOBtafs9Ny5ftqrdvYKZY8WPP20h45WduPgsPx1bDnQD429D3aOwXNHhYyk6VB
	Yw86F/e3xdqT173P9wwuDGyl7LjKlx40JKyOGh25TFFbtU8XLfaXa7kWXxEWF4Q1G0s4
	XbAQ2VVANYd7PYOhw7FwlBowvxaaRz8AwbtslI8P3ZGFHFd2GOQxgvDLcI2xjHOEcIfF
	fktOh3ME2RwfbaI1aqZKaN/qfEZKwZdOH4pAx05LlBZx7/eE4QCv8vzAq9zdxXFFet2Q
	1jdSAvVv8xmaGS/yZgLm7afzMhPhn98TUkFWL3wfj8WrKCsb5VMgcXLF6Eml10vsMzyZ
	cR8Q==
X-Gm-Message-State: AGRZ1gKsEA2Wz2+BO+LOO4pKybMFnnzkHGQ1kqk04oniuYbzq8OGoTlg
	98UziV+/xGlaBYQtFP+9Utq/2f4prMYQPL7kcTo6ikXennA=
X-Google-Smtp-Source: AJdET5cGSooDacZPtwhw62G4xREtqDBwBDg68ENVwbL/Jmb1z3CPzASwVoOhwf77SpBhG/h1zAHfgAQTXvzrEHrW7+c=
X-Received: by 2002:ad4:41d0:: with SMTP id a16mr3547105qvq.55.1540830569151; 
	Mon, 29 Oct 2018 09:29:29 -0700 (PDT)
MIME-Version: 1.0
References: <OF38E74854.80860B87-ON88258329.0081F4B2-8825832A.0060D044@selinc.com>
	<57ADD8B0-DA93-4895-95E5-FD13C6597D89@gmail.com>
	<2196576.1fsnYOVap6@localhost.localdomain>
	<OFD6FF77C4.D7AA8A19-ON8825832A.0072D44B-8825832A.00734852@selinc.com>
	<886965e3-607b-6132-7c47-ecb03e604703@windriver.com>
	<OFDAF9168D.125D4284-ON88258331.0052C4D4-88258331.0055058E@selinc.com>
In-Reply-To: <OFDAF9168D.125D4284-ON88258331.0052C4D4-88258331.0055058E@selinc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 29 Oct 2018 09:29:02 -0700
Message-ID: <CAMKF1spEcYKNjdKK+fmhYrsfoZYYAb+URR58EDFC7syLoV_Zxg@mail.gmail.com>
To: Aaron_Wright@selinc.com
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: Working on Dependent Recipes in eSDK
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
X-List-Received-Date: Mon, 29 Oct 2018 16:29:31 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 25, 2018 at 8:29 AM <Aaron_Wright@selinc.com> wrote:
>
> > ChenQi <Qi.Chen@windriver.com> wrote on 10/22/2018 07:04:32 PM:
> >
> > Hi Aaron,
> >
> > The main pain for now is that `devtool sdk-install <DEPEND_RECIPE>' does
>
> > not work as expected, right?
> > I just checked the codes of sdk-install, and found that it does not fit
> > the current RSS design.
> > I'd like to check with you if this is the major concern from your team?
> > Do you have some other concerns?
> > I'll open enhancements/bugs on bugzilla and hopefully will work on them
> > in the 2.7 development cycle.
> >
> > Best Regards,
> > Chen Qi
> >
> > ... snip ...
>
> Well, I'm not quite sure how "devtool sdk-install <DEPENDENT_RECIPE>"
> relates after "devtool modify <DEPENDENT_RECIPE>" has been called.
>
> My developers use devtool to install dependent recipes into the eSDK when
> they start working on something. Often they find that they need to make a
> change in the library code that a dependent recipe provides. In effect,
> they are developing a patch for the dependent recipe. So they use devtool
> to say they're going to modify that dependent recipe, and they go and
> make the changes they want. Then what? How do they get those changes,
> that patch, available to the eSDK?
>
> Any changes made to the library code provided by the dependent recipe are
> not available to the eSDK, except through devtool commands. In effect
> there are two different worlds at play, the eSDK sysroots versus the
> recipe sysroots. The devtool commands seem to make use of the recipe
> sysroots, but in my mind that defeats the purpose of an eSDK. So I made
> a plug-in for devtool were I can force the eSDK sysroots to be updated.
> I'm not sure how that works, but it seems to propagate the workspace
> (recipe sysroot land) to the eSDK, so changes that developers make are
> now available for use.
>
> I want my developers to use the toolchain (cmake, make, gcc, etc)
> provided by the eSDK and by things installed into it
> (devtool sdk-install), rather than having to use devtool as their
> iterative build command.
>
> Ultimately, I would like to be able to skip my devtool plug-in, as it
> requires the use of "devtool build <DEPENDENT_RECIPE>" and
> "devtool sdk-sysroot" each time a dependent recipe is modified. But I am
> not sure how that would work, other than the devtool build command
> should be updating the eSDK sysroots itself.

I think you have two options here

1. Feedback the tweaks to packages back into source and re-generate
SDK and if you setup SDK feeds then users/devs can simply do
devtool sdk-update
and this time the package in question will get updated in their SDKs
with the change that was initiated.

second option could be to generate a downstream derivative SDK using
devtool build-sdk and use this SDK


> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

