Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DADF3E00CE6; Fri, 29 Sep 2017 07:01:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89224E00CCB
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 07:01:40 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id m72so282730wmc.0
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 07:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=bQ7lKFpZOx4Jqldob7cF51N1EEngkEkrM2DEFIlUYnE=;
	b=laBQuQeIYNGXJq6bInue8TWO3YN6keeYfbChZCnFV898hPzZ8EnX8f4bg4/Q51N+xh
	ml0APk96t3ziqoj4SEWlbMu3pKF9oYMvZP2P+ZQIOeLat3y1kO6NSfwL7r2PO+hqTgLr
	qycy668ueTswHOHIqx+tBtXRlvxaOfQsHJfO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=bQ7lKFpZOx4Jqldob7cF51N1EEngkEkrM2DEFIlUYnE=;
	b=BVwCuT2mWc1S03CThkYkDeTYoWtdsky5LXuKBRDXq1qnYJez+3pzpC3+/axlbjoicU
	jYhIwbtqqncR1vyLEyktdiBINl3smTaEcxgNgpqV8EuKsUuG/BGYjbu4XVEW5ZW1ggkK
	jdMM7BXP/krIbjai9E8hxGYnllyY1c7u85NOtMfx2MlVSPbQaq4VZ+KLmFJXPkZDhWYq
	okQTEilKwOfePDapP8B8QfZMBTcRKZC7dtezv0RKMYOAbS3PL7rZ7l9n0XIU07YfZgZk
	iM+s5sPgf1ais5l1WwZ2z4bRRWmazvXBkL1et4Mo+fhzyR/Ig3Uj4cuFgYSJuN8L5bOz
	DU6Q==
X-Gm-Message-State: AHPjjUi5Py7BCgjHWY5NwJwV6+5HnK713zYZPcWLdjptVWye8kkJ6A3p
	/4SjRXt7yqHtxfR3eVAQg4uD5yGapQ0=
X-Google-Smtp-Source: AOwi7QA9lHIDeEVpeEpfjB08YB16xKqXiKE85kYuwMrs2mL/2FaAWFE5Y/+OT2O22wPQeShHvkIQzQ==
X-Received: by 10.80.184.165 with SMTP id l34mr9604458ede.53.1506693699044;
	Fri, 29 Sep 2017 07:01:39 -0700 (PDT)
Received: from [10.10.61.21] (ARennes-650-1-31-56.w90-32.abo.wanadoo.fr.
	[90.32.214.56])
	by smtp.gmail.com with ESMTPSA id i6sm3698543edk.3.2017.09.29.07.01.37
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 Sep 2017 07:01:37 -0700 (PDT)
To: yocto@yoctoproject.org
References: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Message-ID: <08461abb-3f52-4110-3bb5-14773fa89286@fridu.net>
Date: Fri, 29 Sep 2017 16:01:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
Subject: Re: Errors building with Windows Subsystem for Linux (aka Bash on Ubuntu on Windows)
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
X-List-Received-Date: Fri, 29 Sep 2017 14:01:41 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Le 26/09/2017 à 19:16, Bryan Evenson a écrit :
> All,
>
> Due to what our IT department can support, I am issued a Windows laptop for development.  In the past I have used VMWare to make a Linux virtual machine for my Yocto Project based image builds and application development.  We are starting to get Windows 10 laptops so I am evaluating doing my builds using the Windows Subsystem for Linux (WSL) by building a poky/morty image.  Overall it seems to be working.  I've had an issue that I've worked through and other issues that I'm not quite sure what is going on.
>
Hi Brian,

I have been trying the same thing attempting to build Automotive Grade
Linux from Linux for Windows subsystem.
We have many adopter of AGL who also receive Windows PC from their IT
department. While VM work, they impose a serious limitation on memory
and CPU usage.
We all know that Linux For Windows a very green SW but, I did not
expected to have so much pain to upgrade to the current Windows10 build
(version 1703). Deactivating the Antivirus with the help of IT, was
painful and slow.

Now that I run 1703, it kind of give hope that it may work, but it does not.
I see random errors on variable expansion with an error (disk I/O
error). Looks like if the file system was not very happy.

My IT PC does not let me run Windows pre build, so I do not know if
progress is coming soon or not.

Likely will do a test when the next build of Win10 is coming to me.
In the mean time, I will stick to my Linux Machine which works fine.

But it would be nice to have it working for many corporation.

-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre


