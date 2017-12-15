Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FE96E00CE8; Fri, 15 Dec 2017 07:39:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F4C1E008CA;
	Fri, 15 Dec 2017 07:39:10 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id i11so18309298wmf.4;
	Fri, 15 Dec 2017 07:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=zEe9+nr18zjPjBNlQ3xH8wHELY4S2fWl8V+VgfBj4gI=;
	b=IqrccRrdOOT9gFn8e/Jt7dfpM1cEqfPl81HMp9spX0UEyZ6Mjf1iDNMYrfWu2u23+j
	62zPMKJyHgAinQfGYYqfog1npyTcFP0DEb1fScW7wOfHpigoxkqFZjqh3hSWzbJh7JfU
	8yohGuhdp0FrGCQgbYohRef1VEGmzRKSnjaimlP6pepo1OEQw+nAUCZ1hVDdR88zyce9
	d2tKar78x5T+0LNYS/+vN6IPrCGNTYGA0ufmLqgouOSg7+sPKknaJ9QfpDFEMi+gOvw9
	2UxxmDQolT56MIcBY8om2C9/v3HX2I6MtNHxwj6cTvuVE37rOV3TkV5hGq9WozSluvNX
	wwyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zEe9+nr18zjPjBNlQ3xH8wHELY4S2fWl8V+VgfBj4gI=;
	b=KglTC7D9iFC+Qw67j4k5wAW3t5GlOyOOJdgFXkknTmYumFtq1K2Y681X9A3WOWWD0+
	nJ9AUT1Kp6tgfKUh2xmQ8bYyQjiE1fRiwHEBFhqDJtK8DUyTabwXG8iELskWs5YFLAQk
	c/mbCXRi4aXTCTI+kX68oe19ZCFhaFMbtfvA9HjaAHlwIt9SS5LX8dcId0FUJ1UT+H9n
	Tih0JqxXUbqixumOaP+aKcOJkYBhCawt+qJYa6x1cmdstRUPQikf+3rvmdS3pPA1NBWP
	atcLtFoxik2oQBNxmDXphDLdW7sIyvOZ5DyFJmbRNP6paZ08x92+RXRPqXuYP0ysEFCw
	S1qQ==
X-Gm-Message-State: AKGB3mLmFUnO84m4IS+MR0Q//S9kEZ2O40VumzuSs7AE3z+g//FjAVkT
	WVfgdLDkO00HmGKyKpbHNlM0Uw61AZWIUuwEoyfBDg==
X-Google-Smtp-Source: ACJfBosnmEE4je+vYaHIpgJABEXVncEKKhjkXFehiwbhsZ/RziDZ0JXPV6/er2AWSYtTVAcyBuX9xl5Wdk/BGNai6HU=
X-Received: by 10.80.216.202 with SMTP id y10mr17862084edj.221.1513352349750; 
	Fri, 15 Dec 2017 07:39:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.135.197 with HTTP; Fri, 15 Dec 2017 07:39:09 -0800 (PST)
From: Ran Shalit <ranshalit@gmail.com>
Date: Fri, 15 Dec 2017 17:39:09 +0200
Message-ID: <CAJ2oMhK-aJoFPK3YiQQ53+t_QFw+gA2+Up9V_Lqj_u=UzbmRpQ@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>, 
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: x11 and gstreamer compete on same display ?
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
X-List-Received-Date: Fri, 15 Dec 2017 15:39:11 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

I use yocto x11 distro, and it works well with various application
including qt5.
On trying to use gstreamer, it seems that it does not function OK, I
first suspected that it only has to do with high resolution, but now
it seems that various distortions happens only in low resolution.

I suspect that x11 output compete with gstreamer output.
I think that maybe most of embedded applications which use gstreamer
probably used fb disro instead of x11 distro, and maybe that can
explain why I did not find any information of this issue in internet.

I also see that when I stop the gstreamer pipeline , then x11 always pop in.
I tried to disable x11 with:
systemctl set-default multi-user.target

It seems to work find, but the xterm terminal show on the hdmi, and
trying to kill it won't help.
So, I guess that I better move to distro fb instead of distro x11.

I would like to ask if my suspicion sound reasonable, and if both x11
and gstreamer compete on the same display ?

I use yocto morti with imx6.

Best Regards.
Ran

