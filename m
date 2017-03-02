Return-Path: <eystein@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CBCEE0095F; Wed,  1 Mar 2017 16:35:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.45 listed in list.dnswl.org]
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF606E00826
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 16:35:23 -0800 (PST)
Received: by mail-pg0-f45.google.com with SMTP id b129so25669325pgc.2
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 16:35:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=5U8cc1WoO2gYRjMNWzH/mUj0ckURY/e5WM2Cy4IpWq0=;
	b=lQo2V2ncSF9IaFb05i8XrK+qDRkMsBcdTwj7s4Y2z2MSdwM1teh98AKFg4wYOYcO2F
	dK2kJPNCNNjPqYu2V+H8rwUUHMK6oQfh2M0fXke/RdMP+aNwwxPly8bgVfTbIyxNW7Gv
	oTeo6xfsT1xN4S5053gywuMM9cAMxS1MajG4TmhwQl+y6qWxwm6eKWIxYUEPg3Np74ok
	/4FrSDpL22+bRBzz3XpwjZupubPNai2Q12GEZPW2nDAgielkixAdarVwckVRGJLcqIH+
	TrxX1YG5af/iVqZC0/2LwoEruDSKgHklG3wRR6AzZoIDCL3rQltqFGpH9iPEBsSGKMdq
	/6yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=5U8cc1WoO2gYRjMNWzH/mUj0ckURY/e5WM2Cy4IpWq0=;
	b=HkofmW/lrbacBDfiyp34KfwJwxHFgSq/TFyn2uAXpADBeqH66vcUh4tGLZny2s5zUQ
	YduEt9UOhMQx+I2TxuqxfRppwgzguvQ+hj1qzV6h91oQ9NTS+dt4xzwY18QZ7R1b4EbT
	PaPkWFDawKm6QWi3Reld1Sh/iS7B4j3mYO7vqupeDJtl6NZWdD8OcO1J6o0fyh/hIbkA
	M+JKiXa8ke76l37miA3uWv/GPrSok2STyr+o8DGIC4xPc57/MiCre5cn+PBIuvqhgeQ1
	mljMvjExs80grb3lz3hNEouRQqgIrHGfmJ42EJlDQMqXIWyHxelEWnJ3MzemOCOMNlQi
	p/fw==
X-Gm-Message-State: AMke39mPwy8PfWrpd6I13EvE4E95apS9TGqeP5WKwcykhJndmESEPp/CV1qlWhBm/GxwkA==
X-Received: by 10.98.99.196 with SMTP id x187mr12351464pfb.168.1488414923010; 
	Wed, 01 Mar 2017 16:35:23 -0800 (PST)
Received: from [192.168.1.137] ([173.247.205.174])
	by smtp.gmail.com with ESMTPSA id
	q64sm12819164pga.0.2017.03.01.16.35.22 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Mar 2017 16:35:22 -0800 (PST)
From: =?UTF-8?Q?Eystein_M=c3=a5l=c3=b8y_Stenberg?= <eystein@mender.io>
To: yocto@yoctoproject.org
References: <7d589da5-ff5b-3cdc-d0e7-fd2289363c98@mender.io>
Message-ID: <c8f87996-c9e4-97ba-3ba8-be9c9260e094@mender.io>
Date: Wed, 1 Mar 2017 16:35:21 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <7d589da5-ff5b-3cdc-d0e7-fd2289363c98@mender.io>
Subject: Re: update mechanisms
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
X-List-Received-Date: Thu, 02 Mar 2017 00:35:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On Tue, 2016-12-06 at 10:45 +0100, Patrick Ohly wrote:
> On Tue, 2016-12-06 at 10:01 +0100, Stefano Babic wrote:
> > Hi Patrick,
> >
> > On 30/11/2016 15:59, Patrick Ohly wrote:
> > > I've started a Wiki page
> > > https://wiki.yoctoproject.org/wiki/System_Update - rudimentary at the
> > > moment, but might as well be mentioned already now.
> >
> > I have seen Mariano added an entry for SWUpdate, too, thanks  - I would
> > like to edit for better explanation on some parts. Should I try to edit
> > directly the page or is it better to discuss it here ?
>
> Use your own judgment. If its uncontroversial, the feel free to edit the
> page directly, otherwise let's discuss it here.
>
> If feel that putting information directly into the table is too limiting
> (it should be brief), then feel free to start a complete section about
> SWUpdate.
>
> I'll do the same for swupd. Editing the sections should be possible
> without conflicts, we just have to be more careful about editing the
> table concurrently.

I updated the Mender part of the wiki now that the stable version Mender 
1.0 is released. These changes should not be controversial, but let me 
know if you disagree. We are planning to keep the Mender section 
up-to-date as we release new versions, as I think this is what you expect.

Are there any plans for next steps or is the wiki the "final state" in 
terms of integrating OTA updates in Yocto/OE?


-- 

Eystein

