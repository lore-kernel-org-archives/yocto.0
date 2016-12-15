Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE33EE00D4E; Thu, 15 Dec 2016 06:09:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CE71E00D23
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 06:09:16 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id f82so47618667wmf.1
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 06:09:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=vANL/1PfH9kA99b3VYeuKyJ0IUde5P8XNFMCPt/5kww=;
	b=PVwHku+1M8fcdqEn3yHDKfnmIPSf2HRJj10ggxkRRbkOyKv1Hyfn5fe7Zu0Fih4Meg
	oSMWJcGF5Qytb55lQDg+1kDoY8j9GNka62Y50CQegwJS+lkq9GQq6a/ch4wwDRk2TD51
	OOyZiZKv838e1k3N0VTtOL7BdkMQleojdo4U6KT1CxVp0+3AT4JBwYwO7NpHfMDM7/m9
	fvPUGDwNSpOBVcBWOXfkRgy0mfhJ1FIRVKHeTynsPtu/HC9j6OKK1NuErIgxD3QBVl0w
	S4wt1lXVLCjLXPdqpSKoW3cd5pDPHy7sh8aBGWIwrsbX7L8JVoRl1K9UiFMgGyXY2AOO
	j5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=vANL/1PfH9kA99b3VYeuKyJ0IUde5P8XNFMCPt/5kww=;
	b=n+TFP0DwLjVzzg+NcL0Loi5IFexyLh8AiJa9OBKI3CdhIoYxQffTjsBaBedJ78mqkm
	jB/3WKmZ+89GcnxadvpHm7DTFe9Fj0Kh5+cgVGRLjplg6iA2mB+nwWmXYqJVgULCCQxf
	xxvXdx3aHoxPQqFN4HVGqHsozakLgCb4ItGZsZbgldodva3EHXPwF4548j26RQACbeuG
	LwMRSqZaKf4giPNCvz4HfpSrb0UO5KkODg2YdZu1SlIDcmLh5xlZD8RzEIq6zNVkq16a
	rNI3VKlAwrrtNKe1yBS6+BoaDyMKlXUBiUZQJetD5f7eYghUKAMaWR44xSSan28SdMqC
	IG+Q==
X-Gm-Message-State: AKaTC027Dm9fM5U8iMvkWQM4nrXAquc9Mtpr18ERXuxu7WWhf1gzNiIUHo/T6nECVKNTng==
X-Received: by 10.25.72.215 with SMTP id v206mr539288lfa.12.1481810955658;
	Thu, 15 Dec 2016 06:09:15 -0800 (PST)
Received: from ad.chargestorm.se (194-237-220-218.customer.telia.com.
	[194.237.220.218])
	by smtp.gmail.com with ESMTPSA id x4sm493082lff.15.2016.12.15.06.09.14
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 15 Dec 2016 06:09:14 -0800 (PST)
Date: Thu, 15 Dec 2016 15:09:13 +0100
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20161215140913.5vx5ulxby74mp4rz@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <5851F18E.3020401@gmail.com>
MIME-Version: 1.0
In-Reply-To: <5851F18E.3020401@gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: Re: NFS rootfs: mount: only root can mount proc on /proc
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
X-List-Received-Date: Thu, 15 Dec 2016 14:09:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

* John Rama <john.rama01@gmail.com> [161215 02:58]:

> The ideas I can come up with are followings, but those of them are not perfect..
> 1. Run the bitbake as root account
>   - would not run as root since the all of generated files are root permission even for the log files.

Never do this. You've got no idea what bitbake might do to your
computer...


> 2. Change UID and GID whenever generating new image
>   - I guess next build would fall into the trouble because of the owner change.

Yes, that'll get you problems later on.

> 3. Untar the tar ball under  {YOCTO_BUILD_DIR}//tmp//deploy/image/{TARGET}/*rootfs.tar.bz2 to  the export dir
>   - takes additional time.. Not good.

This is the right way to do it.

If it takes to much time, create a script that runs bitbake and then
untars the rootfs.

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

