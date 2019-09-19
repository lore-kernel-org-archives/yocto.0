Return-Path: <yann.dirson@blade-group.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5E07E00D54; Thu, 19 Sep 2019 07:35:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.180 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CEA7E00B1A
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 07:35:05 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id m16so1414345oic.5
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 07:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=blade-group.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1TeX01t11jGk4ltxA6zeAbFmuHOYPCyvb2uuA3UJuQE=;
	b=dqeM/66qxKbx8S19Hpmjnvd7/EwfOSQvytpcNyeT+Mp2vvtuhY2RbtcEZYDkevPB7f
	1MbTX72ZzcDEYb2RWnTH2wmdVElkxGxBvdO4yd0WQrHRExNt31Br+2FanF3UwNgcvAlq
	WMtKPfczKcM4VdipZ73StZD2ckfa7AC7fHETUpoUtfs1JYfOCeqzWcSIlxaAzCda3y5w
	ASmNnmRajsNtQHyzuW4BE/cGH3Ir9BlVyls8xscd+Sw9UTWvxAoLsqmGi6/nHiKV2NaR
	04iYJZE3mXbQsp5BTC/V4o+Sh+H6xzZXwgIMZb6cPc1rpqWux2s0qMSWCINfICRLNBFC
	Z4vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1TeX01t11jGk4ltxA6zeAbFmuHOYPCyvb2uuA3UJuQE=;
	b=OcokOGY4m78CjdoMyYjcyE7lGVtnyxd0W4rIOwHi+MyNtNYKx9vbRmWUD4X7l738xO
	UYHHp7Ge3I+iIhbKMM767m5aOg2BKK4xceWzfiEJX6vP34ZWSZm5J9djAyDSiUEeiN9R
	9VeJdTIDG5QSf+WT15m+s/mBzp3b/YCfDdIFRT++4U+h4jsDgYwuWu4ASD2NJVUkSw51
	5utatEqBzBUm79/AuRjYRRJ/PXkGw7U8QTEY0ZMMo0pA9XURlJeN2/ADwMRAQ/F20xMW
	H3b0Njj71ReaKFCPbPEVPRZ9CJDhQ3tJMzLiJDC5raxvLMgIH1Fcp4dMstHhjqrNNLKb
	FHgQ==
X-Gm-Message-State: APjAAAXgF/KN+ptj9XQ0Gt5R0PJOmVgN98YuNj+S7PRFl+bVkXS1tsDB
	6EKJj7WfgybStmNbUznUJ6k+dS0heo009t0QoSEW/Q==
X-Google-Smtp-Source: APXvYqyjHBBOUHuvqQsykuF0SdmkIjEstL5why1n+TbNfAXID1iy2oN5LAWe6r+i9S7Ce0bVwtWpvglBK1PxT5HMZUI=
X-Received: by 2002:a54:4611:: with SMTP id p17mr2444988oip.168.1568903704635; 
	Thu, 19 Sep 2019 07:35:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:ce8f:0:0:0:0:0 with HTTP; Thu, 19 Sep 2019 07:35:03
	-0700 (PDT)
In-Reply-To: <20190919141650.GA23770@localhost>
References: <8f3933f8-bbad-7dbd-ff9a-afdab91ced3f@gmail.com>
	<ed609776-571f-0633-fb68-055236d32897@windriver.com>
	<20190919141650.GA23770@localhost>
From: Yann Dirson <yann.dirson@blade-group.com>
Date: Thu, 19 Sep 2019 16:35:03 +0200
Message-ID: <CA+4=imZz4xAV2EYyHSCb+d1XbpAg0O=xz=e=-_oc7q6b6Qvjew@mail.gmail.com>
To: robert.berger.yocto.user@gmail.com
X-Mailman-Approved-At: Fri, 20 Sep 2019 08:04:32 -0700
Cc: yocto@yoctoproject.org, simon.spannagel@cern.ch,
	Adrian Bunk <bunk@stusta.de>
Subject: Re: gitlab-runner
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
X-List-Received-Date: Thu, 19 Sep 2019 14:35:06 -0000
Content-Type: text/plain; charset="UTF-8"

Do you want a recipe for gitlab-runner, or something for getting
gitlab-runned to tun a bitbake build ?  The latter I have, though
imperfect and not readily packaged, but I can possibly try to publish
something (planned for a long time, but hey...)

2019-09-19 16:16 UTC+02:00, Adrian Bunk <bunk@stusta.de>:
> On Thu, Sep 19, 2019 at 09:39:55AM -0400, Randy MacLeod wrote:
>> On 9/19/19 2:56 AM, Robert Berger@yocto.user wrote:
>> > Hi,
>> >
>> > Does someone happen to have a BitBake recipe for gitlab-runner?[1]
>> >
>> > [1] https://gitlab.com/gitlab-org/gitlab-runner
>> >
>> > A quick search did not show up anything;)
>>
>> There's nothing in the layer index:
>>
>> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=runner
>>
>> (It wasn't clear if you knew about the index.)
>>
>> I did find:
>> https://gitlab.cern.ch/Caribou/meta-caribou/tree/master/misc/gitlab-ci
>> that mentions gitlab-runner but it doesn't seem like that layer provides
>> a recipe but you might want to check it out anyway and let us know if
>> it works for you.
>>...
>
> It just downloads an ARM binary from the internet.
>
> Any layer actually building gitlab-runner would have to provide
> 200 Go libraries.
>
>> ,./Randy
>
> cu
> Adrian
>
> --
>
>        "Is there not promise of rain?" Ling Tan asked suddenly out
>         of the darkness. There had been need of rain for many days.
>        "Only a promise," Lao Er said.
>                                        Pearl S. Buck - Dragon Seed
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

