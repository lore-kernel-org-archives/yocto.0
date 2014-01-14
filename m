Return-Path: <ross.burton@intel.com>
Received: from mail-qe0-f54.google.com (mail-qe0-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79BE9E0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 06:20:24 -0800 (PST)
Received: by mail-qe0-f54.google.com with SMTP id cy10so2538693qeb.27
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 06:20:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=r/uYYGNKw9oFJ8+n7mdOXxSxQQFqCHx7HT90TDKwaWQ=;
	b=LfnotrQna1C+jGzvIvTogRr7PrdSB3FW820vI1X3HxxS6jBsAEUA8OUj8sxDFejkGT
	z4+BwdYS461CtB8H0xly/INGyl7/iSea4qO/2k8MNEQvwbNUtlGvOqA6uqE60V+TAfUR
	3pvHkJf4rN6a0U2hKPaLRZj0ICuDtYqxjtayZLsInc3uVmOd0LV5iEmLL5OlJpL3+Dmm
	TC3zEUmQFlDwh0rP1QckKyOds4zzJY0cm21ooYmUSd0KihRJBxeEuGxQIHtlGsTxjB+F
	fiyKUIniM1eJu9NOQGUi7FRK0X8XJNb0hLGWvakhRZvP3jNP6AYABqppE7X0G1cisXi3
	tH7A==
X-Gm-Message-State: ALoCoQnhxWTvfZeJzK+l2UlpXdAU0P89swCY84qfOq67NRrwwQSF4js2Vqp3KlMsF/foEghyQHPY
X-Received: by 10.49.59.83 with SMTP id x19mr3138504qeq.47.1389709223876; Tue,
	14 Jan 2014 06:20:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.179.105 with HTTP; Tue, 14 Jan 2014 06:20:03 -0800 (PST)
In-Reply-To: <CAP71Wjz3g1kNJHHAMNaf0-rUFDqMtnM5eWUQKRZRMgKJTAJR+w@mail.gmail.com>
References: <52D536A0.5060307@mlbassoc.com>
	<CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>
	<52D53908.30304@mlbassoc.com>
	<CAJTo0LaY3r6f+VER=+Nnh3du9KG=tcJ6KiNW0oK_1yBiv6K=pQ@mail.gmail.com>
	<52D53D02.1050207@mlbassoc.com> <20140114134754.GD3717@jama>
	<52D541E5.3040401@mlbassoc.com>
	<CAP71Wjz3g1kNJHHAMNaf0-rUFDqMtnM5eWUQKRZRMgKJTAJR+w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 14 Jan 2014 14:20:03 +0000
Message-ID: <CAJTo0La57kf9mrQ14Vqmj8XYxdf6c4OABkTU28G1ie1FwPDJ=Q@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: gstreamer without X11?
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
X-List-Received-Date: Tue, 14 Jan 2014 14:20:25 -0000
Content-Type: text/plain; charset=UTF-8

On 14 January 2014 14:01, Nicolas Dechesne <nicolas.dechesne@linaro.org> wrote:
>> [gthomas@titan imx6_test]$ bitbake -e gst-plugins-base | grep
>> PACKAGECONFIG
>> # $PACKAGECONFIG [7 operations]
>> PACKAGECONFIG=" pango x11"
>> [gthomas@titan imx6_test]$
>
> pango looks suspicious here. it's not there by default. so something seems
> to be setting PACKAGECONFIG in your config, and that could be the root cause
> of your problem...

Agreed. Don't use grep and you'll see all the assignments and where
they are from.

Ross

