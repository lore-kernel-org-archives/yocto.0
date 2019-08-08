Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30044E00DAF; Thu,  8 Aug 2019 01:57:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0C50E00AE6
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2019 01:57:07 -0700 (PDT)
Received: by mail-ot1-f65.google.com with SMTP id j11so15220160otp.10
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2019 01:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rS2k8k9g7SAGIGaKuW593peaXeyihhNIYk5yQ3ejAls=;
	b=Coz2Drhu8Ct2Z2dxTrFVLbQBO3Ox6bvQ8WkdM33oVNajwZYxIIy/MDdiFGQP7xIeZj
	gzLOaZLbnspmIQagTcO5yZ2Kx9LFYtWKW1q+olrl/pyjPc8NudeukBNweXVYS2n4wR68
	3FieznhoSWAmwOrVTVEHYATuPpmeplFOcpV2jPySy4Lk6aAQER8TPzr+o6e/jnWy84Mb
	VStyibKRf43eQLmOpM7bgA4q0TYZitEhSKuDhkoLxYULd6xT7tmF8KAXVfLs0KtpFpU6
	0O/yA66a4VJD1BXHkAfDPUomoSeykYdyagi7hj27GH4k/NjlJWWWE9QPQEHRBp18pyqo
	fpXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rS2k8k9g7SAGIGaKuW593peaXeyihhNIYk5yQ3ejAls=;
	b=JoqphlW06FUkAOuQMcx38f6Mqs+EWOtJ2sl6FyBlVnvEcFPcHoQy6Kqu+W7FOvavn0
	Kd/PLdezR7JYOX9DTPXehujZof29WLLRS5a6Q0V6DC/TDdgBoPX9KUiseKUY2Y6Exkxi
	306JBkPHLo7LrTK3FHLD/tL+GnbF2phxde69S7PgfF1CynpV4MpGB4inJb2GM5ldFpSb
	lBY8gcoobeFn65E1XRKq+iRq/cdHUKlL/MY6/Cz9EIlu0VxLEHoON1l/vLhFmnyXQIhC
	cRglVZRVbJM1aQZewiO8hHjrOgpFn210cQkrpqh9+EIYDFxvVz4Nh3Phf4Yd5DBE3q3t
	jvFQ==
X-Gm-Message-State: APjAAAW13vasTerCib0A8MIqzVzjwPwQDedhHLagxKqBEXuS9bnDbjpJ
	ADkB2EdjYsvnYVglnfZ35b4qcxzqJ9j+hK8pkj4=
X-Google-Smtp-Source: APXvYqyHVAzg7B+u5aRegFEAI8nGXaNWPkMLqb38ZXQ24AR1GxJif8m538Tn9y4Z8Qd4jgH/CZ0pQ5WwTdaBt3uQVHM=
X-Received: by 2002:a5e:c247:: with SMTP id w7mr14201907iop.72.1565254626887; 
	Thu, 08 Aug 2019 01:57:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Thu, 8 Aug 2019 01:57:06 -0700 (PDT)
In-Reply-To: <CANNYZj-ubZWmoSpmtUnyjOq=i7=HfSFLMqQTxzQ1pg+XeP+qqw@mail.gmail.com>
References: <CAA=hcWSByxp8OR09orkP6RO9uto6Dpf0rZmsGWigW0yQ82P=0g@mail.gmail.com>
	<CAA=hcWRHaOj+24TYr9WBcaZqBbTjn-6BXjdG+Q=dEe3J355gBA@mail.gmail.com>
	<CANNYZj-=r2pf7bKNYjT+=j=rWC_ajYxZ2jUR5OQxpzpiEw-Egw@mail.gmail.com>
	<CAA=hcWQYO82WQiqwQvEgwbX3EwG+yLNWoWtT0WZR=m7zfdO3aA@mail.gmail.com>
	<CANNYZj-osAvfX3ga98oQSegsewdKixxFjd7RYuYG6uJGg8qoFw@mail.gmail.com>
	<CAA=hcWTZ4Ob=5+OZk9MowBw-Rc85Z9MXGKq4Hqs+=L=_c_KAdQ@mail.gmail.com>
	<CANNYZj-ubZWmoSpmtUnyjOq=i7=HfSFLMqQTxzQ1pg+XeP+qqw@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Thu, 8 Aug 2019 18:57:06 +1000
Message-ID: <CAA=hcWSYFaSON77L3tOdkwP2S8NbSQ5jmTDXKPr4mPNajMSmDg@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: QA issue applibrary rdepends on app-dev [dev-deps], where is the do_package_qa?
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
X-List-Received-Date: Thu, 08 Aug 2019 08:57:08 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Alex, thanks for your response and kind help. I finally fixed it by
adding a do_package_qa() in my bb file. What will be the consequence
about it?

Thank you.

Kind regards,

- jh

On 8/6/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> The right way out of this is to fix the issue: your main package depends on
> the -dev package, and so will always pull it into the target image. I am
> not telling you how to disable the check, as you're merely hiding a bug
> that way :)

> If you provide ls -lR of ${D}, we might be able to understand what happens.

I found run.do_qa_configure.30897, run.do_qa_staging.3677, run




> Alex
>
> On Tue, 6 Aug 2019 at 14:45, JH <jupiter.hce@gmail.com> wrote:
>
>> Thanks Alex, here is the error in my application build, it used working
>> well:
>>
>> ERROR: app_library-1.0.0-0 do_package_qa: QA Issue: app_library
>> rdepends on app_library-dev [dev-deps]
>> ERROR: app_library-1.0.0-0 do_package_qa: QA run found fatal errors.
>> Please consider fixing them.
>> ERROR: app_library-1.0.0-0 do_package_qa: Function failed: do_package_qa
>> ERROR: Logfile of failure stored in:
>>
>> /home/build/tmp-glibc/work/cortexa7t2hf-neon-oe-linux-gnueabi/app_library/1.0.0-0/temp/log.do_package_qa.6626
>> ERROR: Task
>> (/home/build/oe-core/../meta-app/recipes-core/app_library/app_library_git.bb:
>> do_package_qa)
>> failed with exit code '1'
>>
>> There is no do_package_qa in my app_library_git.bb, where is that
>> do_package_qa from? how can I disable it? It sounds every easy in the
>> document to disable it, but it did not give any clues -:(.
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jh
>> On 8/6/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>> > It may help if you copy-paste the exact error you are getting, and the
>> > content of the directory where it happens.
>> >
>> > Alex
>> >
>> > On Tue, 6 Aug 2019 at 13:09, JH <jupiter.hce@gmail.com> wrote:
>> >
>> >> On 8/6/19, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>> >> > You don't; package_qa is reporting real issues with your packaging,
>> >> > so
>> >> you
>> >> > need to address them.
>> >>
>> >> Well, my first issue is I need to build it, the document said it can
>> >> be disabled, but did not say how, appreciate anyone helps how to
>> >> disable it.
>> >>
>> >> Thank you
>> >>
>> >>
>> >> > Alex
>> >> >
>> >> > On Tue, 6 Aug 2019 at 10:40, JH <jupiter.hce@gmail.com> wrote:
>> >> >
>> >> >> Hi,
>> >> >>
>> >> >> According to the latest document:
>> >> >>
>> >> >> "Package QA checks are now performed during a new do_package_qa
>> >> >> task
>> >> >> rather than being part of the do_package task. This allows more
>> >> >> parallel execution. This change is unlikely to be an issue except
>> >> >> for
>> >> >> highly customized recipes that disable packaging tasks themselves
>> >> >> by
>> >> >> marking them as noexec. For those packages, you will need to
>> >> >> disable
>> >> >> the do_package_qa task as well."
>> >> >>
>> >> >> How can I disable the do_package_qa task?
>> >> >>
>> >> >> Thank you.
>> >> >>
>> >> >> Kind regards,
>> >> >>
>> >> >> - jh
>> >> >>
>> >> >> On 8/4/19, JH <jupiter.hce@gmail.com> wrote:
>> >> >> > Hi,
>> >> >> >
>> >> >> > I was running my Yocto build fine until I had a minor change to
>> move
>> >> >> > libapplibrary.so to libapplibrry.so.${PN} and made
>> >> >> > libapplibrary.so
>> >> >> > to
>> >> >> > a symbolic link of libapplibrry.so.${PN}. Now it got an error of
>> >> >> > QA
>> >> >> > issue applibrary rdepends on app-dev [dev-deps], QA run found
>> >> >> > fatal
>> >> >> > errors, please consider fixing them.
>> >> >> >
>> >> >> > Even I reverse the changes back the, it still complained the same
>> >> >> > error.
>> >> >> >
>> >> >> > I don't have do_package_qa in my bb file, where is it from? What
>> >> >> > is
>> >> >> > that error about? How to fix it?
>> >> >> >
>> >> >> > Thank you.
>> >> >> >
>> >> >> > Kind regards,
>> >> >> >
>> >> >> > - jh
>> >> >> >
>> >> >> --
>> >> >> _______________________________________________
>> >> >> yocto mailing list
>> >> >> yocto@yoctoproject.org
>> >> >> https://lists.yoctoproject.org/listinfo/yocto
>> >> >>
>> >> >
>> >>
>> >
>>
>

