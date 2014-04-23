Return-Path: <raj.khem@gmail.com>
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53473E00480
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 23:04:44 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h18so613240igc.8
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 23:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=qfGax54e/Kiw9yspYMP1QGPNupCTKH9JIA7plWlbFro=;
	b=S8Tg0s9jMtskQQ0X+TMyPWBPOBcmRUE/4tA6D9BVZIBq8uCSOTCeqGA9EpjO0VnSV8
	LErTBtvHmdWYY9QoxeBf9q3qbJqI4G/lA3FNlCLeJxaYAKAwV1ohOs5JGpT9DP3EO1Ll
	J/q+wIbv517pZJKzWK6ks+1l6Dxv4RZT1iXHL6nrwsKCiZiOxQ1MuwfhMhFSJDy/Jkdj
	InCAcTpobeOUYCY4fSiJER8A93lylAdbeTaUbSn5l7e/87yVE0gvkhVBd9liN6LThkYa
	9VMlArVRdmsQIneEyF83sonjQxeCiBSd0jr/UpSkq2gblcCtCQjb/YZmfyUQOkL8f+Uq
	p0Jw==
X-Received: by 10.43.159.197 with SMTP id lz5mr14216425icc.55.1398233084248;
	Tue, 22 Apr 2014 23:04:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.229.14 with HTTP; Tue, 22 Apr 2014 23:04:14 -0700 (PDT)
In-Reply-To: <CADyYWL==UjRm5hGTaSaBj8NJLYELBgaA_0t0_sA-hMrzsfrcdw@mail.gmail.com>
References: <1397635971-2345-1-git-send-email-sujith.h@gmail.com>
	<CAMKF1sqxhAVj1i6t7OTEv76a64Ov-LoHtED_pq5ufkxb-Ci3bQ@mail.gmail.com>
	<CADyYWL==UjRm5hGTaSaBj8NJLYELBgaA_0t0_sA-hMrzsfrcdw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 22 Apr 2014 23:04:14 -0700
Message-ID: <CAMKF1srL_9d9dhRS02cg2XBBSZz3bq=WS5Xs89cqsEiKsb-hTg@mail.gmail.com>
To: sujith h <sujith.h@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Sujith H <Sujith_Haridasan@mentor.com>
Subject: Re: [meta-ivi][PATCH] weston: Add weston.ini config file
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
X-List-Received-Date: Wed, 23 Apr 2014 06:04:52 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 22, 2014 at 10:59 PM, sujith h <sujith.h@gmail.com> wrote:
>> what if I am not root ? IOW is there more systemwide way of doing it ?
>
>
> I couldn't find any other login variable( like $ROOT_HOME) in bitbake.conf.
> I agree that if we can do it in a more systemwide
> way then it would be a clean solution. Any pointers to look at?

well, its not really OE issue. see if weston can read configuration
files somewhere in /etc/

