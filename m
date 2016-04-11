Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0161E00E09; Mon, 11 Apr 2016 11:35:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43303E00C90
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 11:35:29 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id u206so116278240wme.1
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 11:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=5VOLw2wFGNFtsfKwn+IdDlzFHk3yWS4zdhMO5zFx+Z0=;
	b=G2B7W1PiCjkKJ59JbHfwUmkEEMUTdmvMd8KKffHybSYxsHCBduCYxEHTOiUXEc8S2k
	9qHFR+hlVQO00gTYc3GbPSqXbrGBnMiWbEIm9rwgizasCXLWsq3/p/BGThrnh7hiel13
	go1/U1giGAPPk2usuU927s2QT7ChTsF7tD+bUoe6+Ordfm4rw2D6GZm90fO3JfEbmhqS
	qhidGM96+vY9jC18BRoFwqeoZFMErDJ3uv8xq8Ge2T9uL2Xwf76Kci0WGnYmets0XpZi
	5VUlSTVdULsQGilGGGGeP6AT9Zg2PPnEDJ9tz0s86uO3xk/2CEcZ+43GaHDQj791bSUh
	UzOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=5VOLw2wFGNFtsfKwn+IdDlzFHk3yWS4zdhMO5zFx+Z0=;
	b=cEr6/Fc21DHAa0X5acDBQ6XAm5/30AQvHpdEkdI2OHXRTvlUvNtSZI9cWwPWOebJeb
	qA4zYe36VQINS2ShkOth8qmgXwi6sIoeLckZapTdegFw/aaGwpfL1ol+ATiEuxb6LRJo
	iM+t2MilYF+s1GyF5oKMEXqpcf8rzolmriDCxghqjWNOnVLE4rdxQSTrv3Ky1sqigUUy
	HYbtVJww8VPK6P/rXN+eryZVx1udJo275o+EkmqmC7yva3Ro94DUiMEuouhAQMcwRwaz
	s/wExiTRv7ANGuvch2GRb9IlYZo5F8BqkcI6mhphw0zaJJgZEUYhsUC9hLhoqcSfauVm
	kIOw==
X-Gm-Message-State: AD7BkJKa8P0Wlay5SIwT/OkKRC+4IYToEYrE1JBUzmDC2LWaA8bxrRB76Ayn7yAzUgupibSDnjfyTI7ozT/KHA==
MIME-Version: 1.0
X-Received: by 10.194.92.163 with SMTP id cn3mr23820078wjb.3.1460399728670;
	Mon, 11 Apr 2016 11:35:28 -0700 (PDT)
Received: by 10.194.201.104 with HTTP; Mon, 11 Apr 2016 11:35:28 -0700 (PDT)
In-Reply-To: <CALRMKQqW=aUg-uwNqyBEvX2RdB4oh+_j-t_KBpKp1a2cCgskjQ@mail.gmail.com>
References: <CALRMKQqW=aUg-uwNqyBEvX2RdB4oh+_j-t_KBpKp1a2cCgskjQ@mail.gmail.com>
Date: Mon, 11 Apr 2016 11:35:28 -0700
Message-ID: <CAJ86T=WaPSiWoy0zNiaV8GnWd_7zJ1L2-qJNFU=MUbgidDy31Q@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: Ronald Oakes <ronaldo@brc2.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: A lot of, seemingly, hung tasks
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
X-List-Received-Date: Mon, 11 Apr 2016 18:35:32 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 11, 2016 at 11:22 AM, Ronald Oakes <ronaldo@brc2.com> wrote:
> Over the weekend, I upgraded my connected development platform to
> Debian 8.4.0 from Centos 7.
>
> However, today I have yet to make a successful poky-tiny build for
> either coreI7-64 or qemux86-64.  In each case, I've aborted the build
> after one or more tasks has stopped doing anything for 30 minutes or
> more.
>
> I define "stopped doing anything" as having not touched a file in 30
> minutes, while the CPU utilization (on this 2 core, low end, ASUS
> VivoPC) drops very low.
>
> I've tried re-running the offending recipes and tasks individually,
> and cleaning and restarting from scratch, but I keep ending up with
> something hung.
>
> Any ideas what is up, and, more importantly, what I should do to resolve it?

Have you used bitbake with the "--debug" option or run "ps axf" or
similar to see which tasks or commands are hanging?

> Ron Oakes
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

