Return-Path: <morne.lamprecht@melangex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCDCCE00C43; Mon, 24 Jun 2019 00:08:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A0EAE00BAD
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 00:08:15 -0700 (PDT)
Received: by mail-ed1-f42.google.com with SMTP id w20so12586199edd.2
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 00:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=melangex-com.20150623.gappssmtp.com; s=20150623;
	h=sender:date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=XPncXs1uHdkNWZBhYAv0uasEH27/czgWCoWmiHrj+Ko=;
	b=gJNjU2rVTAiLr2L5NKSXIO0IjdWCZHl33mARO/UcvQMvrm2EKi0ycvswBDZIK45YK5
	YLNno1fF5S3S1KEr5xpvisJ1cvp8P+HC3yzdBOTka07EvDYqu71gXXTMrKYiD0lwVdC5
	BUYcHyS2ktQ/Pq0H6fHwa2VqdNeScC5zTZ6MNVRo55FmFsuyHut/2xMQsuEIrAgm3g9a
	hMtcQtiZm5Imbjcsp8L8/onlAwphNneZ1DKxeVHv8ler50fN7Yac2PvJdFKalV1AIbLN
	dVsvt9unOtzc6gibkPAQRauy55wlkv4u3LJKvgPgwORBKm6ZO+jg+mUSiY5fMfah+SeX
	kuDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=XPncXs1uHdkNWZBhYAv0uasEH27/czgWCoWmiHrj+Ko=;
	b=CZd9v0Cx3Sprp8IvRoFRAIz3HPzfvKWIaCKYAvFgKWiz3MTgC00aLeYZI6fobs3/J2
	j0afhzibbAUOzEapYRwT1PcAUug2MvOfTjHiHojRycjcrf5Dgw97DYZJ5yk4GfDPGWVr
	yHev4/aQL9iuSjiIbSDAotwmrsivGIa9CYYmQP/p6XwB90U5lIVkvjWWJZRsNHjJlLcp
	0gmD1FOsKDbzpKc4M/ZaopB56dfnDGJjz4YXG0DQePcsbGNv+NFomAGkPedagQA66qWC
	qsLhlJep4riCijNXzLUy+KbvSnziFh2ywl8e7TUObhJZHDNM908qwVWRJXbsuvlprN2r
	uV2A==
X-Gm-Message-State: APjAAAUVUaU8icqMJPv1e7iGQCrDMzbW6SntfSMj7XIeV5+HH9COrjO4
	Zo6jQ9mlaYPN+b3rW9lHLhQWvQWvhnY=
X-Google-Smtp-Source: APXvYqyWXN9LTY2VEAQ7MVAvsjA7o99owlp8xR0GdubA+bgTNwllcUAQ0iHRQfcBXucPsjn2UdJrfw==
X-Received: by 2002:aa7:d297:: with SMTP id w23mr88378679edq.128.1561360094713;
	Mon, 24 Jun 2019 00:08:14 -0700 (PDT)
Received: from localhost ([209.203.60.70])
	by smtp.gmail.com with ESMTPSA id k10sm2412048eda.9.2019.06.24.00.08.13
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 24 Jun 2019 00:08:13 -0700 (PDT)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Mon, 24 Jun 2019 09:08:10 +0200
From: =?iso-8859-1?Q?Morn=E9?= Lamprecht <morne@linux.com>
To: yocto@yoctoproject.org
Message-ID: <20190624070810.GD1584@archworkstation>
Mail-Followup-To: yocto@yoctoproject.org
References: <6fefee9b-8521-b633-8ae4-00b09e6d3532@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <6fefee9b-8521-b633-8ae4-00b09e6d3532@googlemail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: General Question: Device specific value store
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
X-List-Received-Date: Mon, 24 Jun 2019 07:08:16 -0000
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon, Jun 17, 2019 at 05:25:56PM +0200, Matthias Schoepfer wrote:
>Is there a smart, recommended way to deal with device specific data (i.e.  
>serial number, credentials for backend access, you name it), that is specific 
>for *one* device, and hence does not belong into the rootfs. I know, that there 
>are (safe) hardware stores for it, but what, if your device does not have one.

Not sure if I'm misunderstanding your question, but this should be part of your 
device commissioning process, i.e. like injecting specific security keys 
etc...so basically this will part of your image install / flash process, and not 
really part of the Yocto build process. The specifics of such a process would 
depend on your specific commissioning process.

		- Morné

