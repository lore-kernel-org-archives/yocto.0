Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E6FAE00AE6; Mon, 19 Aug 2019 07:20:33 -0700 (PDT)
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
	*      [209.85.128.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBB65E00AB6
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 07:20:31 -0700 (PDT)
Received: by mail-wm1-f65.google.com with SMTP id v15so1799501wml.0
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 07:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=qBAtdLIfvJq9SUTt93xwDnprBSCdg2qDMt+xyOjGvC8=;
	b=ZicC0T9XrQPwU8kZu2VsaYL5EPZJfZB1zpJUgNJCsp7b+yVdFz+DDsqZirnqZ6IRAK
	/Q2ONDuJr5cZoODeZMh9m84NDkdrfG4hMt+mLf3q4t4VVVn493v3xHBA5z7ZnDdrY3yk
	w66pAxuNzTaOv4oVZ2neodm6jJ2G+L+3yZynVdTLx3xFYZ244g+37M233EmQmX23y14r
	kuslfAK5YcqPrbSDQyxHzZTJp/yI5TWY2f+sW7a0xSIVC3SIfGhaoTmRzmjrLv8Qa450
	+tUku9KLfkOoF2EHuW1/jHvxiebh4oQLZdY4kI4UFAmEZqSVQDDF7zsSenC2E5XpBoM0
	/kXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=qBAtdLIfvJq9SUTt93xwDnprBSCdg2qDMt+xyOjGvC8=;
	b=oMHGixfxOMIXBObrMHO3e+4rQEPZ06/q0r0vRtq0uTGv3yvYxFP3RJ/N5WfSRfBRGZ
	8xuPk1Ucx62tIyaFocw+YLZjmQjQgl3FxVYQLp7DIOVaAOGeLakgEaGLIt0wT632aQdo
	eXAY8BKiLyiidiyhyYXpCIzSmg7i9HvWYBcqSwdBA55Ps0AomRkxvoxr6EgOXBPqIqeu
	jzejnFjHdm/6Z7WzmNmZLi8AJVFG21KBTc9tV8wR0gUNSrhNj/tiDOZ5u7O3ehSmxX2L
	rYAkhXPQe1Cx0winXppCAu3+XfP7EJpNXGFvVkAHad1rx6PH8L0aXcCKEjhl56BbPooH
	lutg==
X-Gm-Message-State: APjAAAUEiJASvLJC8lfsB4Xll0WTTbG7BSUGw5gSdVE4Sle0HwP5Fp9J
	AKavWux+OPlXlviYNGeeczJfl6v3KMU=
X-Google-Smtp-Source: APXvYqwGO91P4A1RiEl0TWF0GUx+Xb14KCC/mOhgCGYzQ/JoGWzF+OJogkafzm+8IQqSA8PzETT0+w==
X-Received: by 2002:a1c:9d53:: with SMTP id g80mr20939766wme.103.1566224430516;
	Mon, 19 Aug 2019 07:20:30 -0700 (PDT)
Received: from [10.100.100.101] ([212.36.34.46])
	by smtp.gmail.com with ESMTPSA id
	d1sm12060578wrs.71.2019.08.19.07.20.29
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 19 Aug 2019 07:20:29 -0700 (PDT)
To: Phillip Marks <pmarks@soeffects.com>, yocto@yoctoproject.org
References: <CAMOxz4cBzWU_L-VK-m1Q65H_VVY3U1ekYkj=8Mejxf2XU6rnWQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <25f05c8e-607a-808e-72df-6d69281ffd60@gherzan.ro>
Date: Mon, 19 Aug 2019 15:20:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMOxz4cBzWU_L-VK-m1Q65H_VVY3U1ekYkj=8Mejxf2XU6rnWQ@mail.gmail.com>
Subject: Re: [meta-raspberrypi] Issues building bcm2835_bootfiles in Thud
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
X-List-Received-Date: Mon, 19 Aug 2019 14:20:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello,

On 14/08/2019 17.39, Phillip Marks wrote:
> We are building Thud for a raspberry-pi0+wifi and we've noticed that
> the recipe bcm2835_bootfiles
> under meta-raspberrypi/recipes-bsp/bootfiles is not pulling in the
> proprietary *.dtb modules from the firmware repository. This is
> causing linux-raspberrypi to fail as it tries to build those modules
> and fails on "no target found for bcm2708-rpi-0-w.dtb". How does
> bcm2835_bootfiles pull in the Broadcom firmware modules and where in
> build does it store them? We don't see them in tmp/work. 
>
Are you using a clean thud setup or updating the kernel to the current
HEAD? You shouldn't hit this issue following the versions use in the
thud branch of meta-raspberrypi. Long story short, the build system
doesn't take advantage of the precompiled dtb files available in the
Raspberry Pi firmware repository. It maintains a list of dtb as a
variable and compiles them while compiling the kernel. I suspect that
you have a bbappend which updates the kernel to current HEAD (includes a
dtb rename backport).

-- 
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan


