Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAE05E00ACE; Tue, 18 Apr 2017 11:15:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BF86E00B53
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:15:46 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id x86so1036195ioe.3
	for <yocto@yoctoproject.org>; Tue, 18 Apr 2017 11:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qFrmHsVV2Cv4wMSGX7RdI4eoDs5EhrpvYnWXjeEfZuQ=;
	b=KkzqkHbWflhnG7QCnD6trHl01NnY6hnUjgrfRSmRKqoF9PBSigZGQz8gTcKGmZMDqN
	aP670SUbQpJ1+bhrBu1x80aT2Zxkcy8J5dvJlfL3ksmoM9ypTQ72mh9IdfddZtvx3Q7m
	GptQPjVZFOXNJhIgxYvLaUnyF2ZYtdoN3BFR5FHNwtTyQn57PX2gxTeyz/wthlpjANx5
	smx1HRk2/L6Jwbmk+iv311Wru++helpboVykZb6OIvvxAN/EKbfa4+G+nUbc0az3IKvV
	20NUUnIFpYKequxHV4lOMDXHnZjkpFAQS/COkwY1/sfeOD2znuTJhb2Xl5NdTcMWhpB2
	G7hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qFrmHsVV2Cv4wMSGX7RdI4eoDs5EhrpvYnWXjeEfZuQ=;
	b=GP1Cv0RVnywas/g4rTMHEmuld88Lw7CnJPKf0sH5olXJ1WwbvmtCjkjI0FZ1HP38Qu
	Ap3MDwZApWxCbRX1YNGfCZ2vGsUT3z0wtaDFBzAwPAixk42nRgDLdlWlhCLA9KStEqlh
	4BX0edKhQrZl/7o/MXRr0Y1eFuqi2EzjVxohYyPRffyKKHtj276pIcAUNqJaF2jL0LIR
	l/81691PLNt5B9dpV8isd6dIp+gfm0yi1YhkFC7id94512jdZXFBZBpoaEJ0RDDw79rD
	QeeTloImMql2EuMKe0G0+InaMSsEwUIDXXBR9RCQ9jp3dfFZNKh3wI+a+Zth4LulXtKM
	2Y7g==
X-Gm-Message-State: AN3rC/6kd+W4apU0A3q5Sv36886kBjrBgF2CiunQbHfx+/8RoMBFc9Dn
	NOMDsE36c+aRQ4zW+bxmjW9VPZ5kKm2K
X-Received: by 10.107.37.85 with SMTP id l82mr13953867iol.162.1492539345516;
	Tue, 18 Apr 2017 11:15:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Tue, 18 Apr 2017 11:15:05 -0700 (PDT)
X-Originating-IP: [82.22.166.118]
In-Reply-To: <CAPyrkgzTVwYwZ5C_RdNDoosHnP6BiHH4wwUh_tttF8UeNq3C+Q@mail.gmail.com>
References: <20170414201313.3138-1-andrei@gherzan.ro>
	<20170414201313.3138-4-andrei@gherzan.ro>
	<CAPyrkgx4stTPY-kEV5rMtJYyXwPkag47bP8N8KaRLCnAf3wWeA@mail.gmail.com>
	<20170418125837.GA2724@carbonA>
	<CAPyrkgycU=hMySnqGi7aPGdJeqmh2zqwfJOisOyk1J2uaRcYNw@mail.gmail.com>
	<CAK18fxH1NRGuUBp+4cbKCjFK1SdXvC69mOq9ftwy3nY5qev2AA@mail.gmail.com>
	<CAPyrkgzTVwYwZ5C_RdNDoosHnP6BiHH4wwUh_tttF8UeNq3C+Q@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 18 Apr 2017 19:15:05 +0100
Message-ID: <CAK18fxG47=jxhDckWN5oZfPMFg1tVr=Y4yNpGmgk5krS8qinSg@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/7] linux-raspberrypi_4.9: Bump to 4.9.21
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
X-List-Received-Date: Tue, 18 Apr 2017 18:15:58 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 18, 2017 at 7:11 PM, Paul Barker <pbarker@toganlabs.com> wrote:
> On Tue, Apr 18, 2017 at 7:07 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> On Tue, Apr 18, 2017 at 6:23 PM, Paul Barker <pbarker@toganlabs.com> wrote:
>>>
>>> I'll have a go at backporting the addition of the extra machines. I
>>> can test raspberrypi3-64 on hardware myself but I don't have a
>>> raspberrypi0-wifi to test on.
>>
>> I already pushed a PR for rpi0 wifi for morty and I'm testing it now.
>
> I must have missed that. Still getting used to switching email systems!
>
> It looks like you've got rpi0 wifi and firmware upgrades. I'll send
> patches for the kernel upgrade and rpi3 64 once I've given them a
> spin. Probably late tonight or early tomorrow.
>

Sounds good. I added some more tweaks now for morty. Let's see if I
get some feedback until tomorrow. Otherwise I"ll merge them.

--
Andrei Gherzan

