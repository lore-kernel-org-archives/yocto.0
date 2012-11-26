Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E513E01248
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 05:34:19 -0800 (PST)
Received: from mail-ie0-f200.google.com ([209.85.223.200])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 26 Nov 2012 05:33:36 -0800
Received: by mail-ie0-f200.google.com with SMTP id 17so8523048iea.11
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 05:34:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=qfNAqJAWrQc5HRMEy7GyJkqky80aTuHDzN2TzqkPQrk=;
	b=lEQAXgd443ugN8YGcMhyPybBN6mKH5eNbPe7gcpT67d77Y2yBGQRCzDCgnOPFxS2GE
	ZPxW44Ojown9te/zNRSlrYWMWe0NxjGvKqHqBPMYDaaJ3kamilhMNVrqR2IJs+n6mfrY
	EiCdlyf1QnSoF7cFis6U9XSAEQIdbziD+kZ6SrO75sw7RDody1jChZZXHdk2Th4bnYvW
	xkvz66dhT9HSfp/lSVsgqTMMs3VcQbcm/YclQr1TdSIo9+7lV3yQB5Bf2Qwl0LurMYxu
	Lnuf7Tr1B73On/RRPqgGTfY8Em3ce/OMAr3cUoFodimrxFPorEEEg8eVv2tOfTJK0E8Q
	OVUA==
Received: by 10.60.172.138 with SMTP id bc10mr9447106oec.33.1353936857858;
	Mon, 26 Nov 2012 05:34:17 -0800 (PST)
Received: by 10.60.172.138 with SMTP id bc10mr9447103oec.33.1353936857775;
	Mon, 26 Nov 2012 05:34:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Mon, 26 Nov 2012 05:33:57 -0800 (PST)
In-Reply-To: <CAJTo0LaGos44sTHqpqHVHfZz6SWUZHXspL36Ycq2FU72-y57ow@mail.gmail.com>
References: <20121023184056.GR3269@jama.jama.net>
	<1351076036-25453-1-git-send-email-sledz@dresearch-fe.de>
	<1351076036-25453-2-git-send-email-sledz@dresearch-fe.de>
	<1351077244.22340.90.camel@ted> <509E1F87.4000100@r-finger.com>
	<CAJTo0LaGos44sTHqpqHVHfZz6SWUZHXspL36Ycq2FU72-y57ow@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 26 Nov 2012 13:33:57 +0000
Message-ID: <CAJTo0LaBDZ=HuH5k7J4uG+_REwG-yeg7959Nn=vNndQDAJVsLA@mail.gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Gm-Message-State: ALoCoQmlMIdTXrrSsMQfb6atzJS5JN/oKCJo5+CJy2lcJuEeUOY35FZMzUFsjjWWN8DsdRX+Atrgv99ByddnjPdC5sIsafFXFrh/9CJtNIvPslogq5Mgex/HKVMxi/6RXXxTPoe0oVjs8yAQStoP8HFCbgx4oCHqsQ==
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH resend][opkg-utils] opkg.py/opkg-build: fix creation of tar archives
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Nov 2012 13:34:19 -0000
Content-Type: text/plain; charset=UTF-8

On 26 November 2012 13:19, Burton, Ross <ross.burton@intel.com> wrote:
> On 10 November 2012 09:33, Tomas Frydrych <tf+lists.yocto@r-finger.com> wrote:
>> Could this be also applied to the danny branch (and perhaps even denzil)?
>
> This was present in the Danny release.  For Denzil you'd have to ask Scott...

Apologies, I was grepping the wrong branch...

*Now* it's locally in danny-next.

Ross

