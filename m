Return-Path: <jku@goto.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAA12E00C87; Tue,  9 Jul 2019 02:55:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
	[209.85.167.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 130A2E00C7D
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2019 02:55:46 -0700 (PDT)
Received: by mail-lf1-f65.google.com with SMTP id v85so10036189lfa.6
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2019 02:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goto.fi; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qL2VQ/BbiOMUjTM+EgnidtEWH5xLxf4VAJebgi0uT14=;
	b=MiRNLEAZ5v5uELV9Z4LMCsqV1fHH91f8y6xgYXFfNhGyankbN7mjkhzRMS1B7FEM4k
	UFr2WIacdBSZgqIxKbp+iGdIkR/3tz2xjOODZM9fwhX8ajdHKzumciHbOYx3sKqsP6JW
	+ApaQnX886e3jUaDfLbubV4ZxiTZVT5+vrXh8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qL2VQ/BbiOMUjTM+EgnidtEWH5xLxf4VAJebgi0uT14=;
	b=N4GbWEm9LijYIaQlvzGrx42PWpluoSLJ5l9SPQjHQDsdDX6WA3Y2Pxc05TelJ13IgP
	+dvMsg3WY1W+siI9n0EvEs4YyDPuK1TaUrN2prlTmQwcQ2r1A6bBoTmK+o4o4Dnic4ke
	ObZd1ILmXME+YjqEemK1abS9NGgICt5ZxGhZ0bp7NQqXyBOlEYv3Xa4qiUe1g50HSDQd
	snlmCsFIbXLGO9UEQsqRs16bpyiL2f2tUPCmSYYjBcTQXoOtIFcz9cgnClknoZrYihft
	GygeqFPSkXd8mIF9hv46i3Dr1ZbQHkUzFD2h9fXfnfWQPaJleXY2WJb8B9QYTzcMf/+m
	h4kQ==
X-Gm-Message-State: APjAAAVmXUV7OgNAGawTT2nQShn22JCkaf03zKd2nnEZe5LxmW243a1j
	AOnxX0UfQC6pthiAyZRK15iallfDkhxS6swK9H3JnA==
X-Google-Smtp-Source: APXvYqwUa+LmWk+qlbzkDMHHGM3WkkdoJpzbG4xEirFkuorcONXAdeTaVnNAH9KfZ4UrJXfSRleMrmce4QECGIWph5U=
X-Received: by 2002:a05:6512:146:: with SMTP id
	m6mr10038165lfo.90.1562666145818; 
	Tue, 09 Jul 2019 02:55:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAEmXcAy0wo=CnCgCWREHKugwrfWWL2RdPtZ9dZWGuB2NTPDoEA@mail.gmail.com>
	<CAEmXcAxmtRtXSOf9dPD5gokFymDmCWNG9D55krgokOsCQ6GXXw@mail.gmail.com>
In-Reply-To: <CAEmXcAxmtRtXSOf9dPD5gokFymDmCWNG9D55krgokOsCQ6GXXw@mail.gmail.com>
From: Jussi Kukkonen <jku@goto.fi>
Date: Tue, 9 Jul 2019 12:55:30 +0300
Message-ID: <CAD5=o+p2z7yVwwROyTu2Ca6yPW+28qE85pM6gdqb3QmUxM-tqQ@mail.gmail.com>
To: danwe <daniel.wenninger92@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: bitbak command: No recipe available for
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
X-List-Received-Date: Tue, 09 Jul 2019 09:55:47 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 8 Jul 2019 at 12:29, danwe <daniel.wenninger92@gmail.com> wrote:
>
> Hi,
>
> while using the command:
> daniel@daniel-VirtualBox:~/bbb$ MACHINE=beaglebone bitbake core-immage-full cmdline
> I get the following ouput:
>
> Loading cache: 100% |############################################| Time: 0:00:03
> Loaded 1358 entries from dependency cache.
> Parsing recipes: 100% |##########################################| Time: 0:00:12
> Parsing of 832 .bb files complete (829 cached, 3 parsed). 1361 targets, 65 skipped, 0 masked, 0 errors.
> ERROR: No recipes available for:
>   /home/daniel/meta-bbb/recipes-connectivity/openssh/openssh_7.%.bbappend
>   /home/daniel/meta-bbb/recipes-qt/qt5/qtbase_git.bbappend
>   /home/daniel/meta-bbb/recipes-support/ntp/ntp_4.2.%.bbappend

Ross answered this already: Your meta-bbb version seems incompatible
with your poky version. If you are using git, make sure the branch
names of all your layers match and that the branches are up to date.

HTH,
  Jussi

