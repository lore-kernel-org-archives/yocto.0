Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07CEBE0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 12:04:33 -0700 (PDT)
Received: by eaab16 with SMTP id b16so1327629eaa.35
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 12:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Cpj3XIq6ddaElwCCeyh1Avm8tdRegGujNrxTtP4Lm+M=;
	b=D2vcPKSqSTsx7fq8DpMrxZJ0sK+M6bAf/ylviTLky6MuYV5R7Uz0isnf874PfupgsL
	jJCee45lqijpQ3uHPWy7BqigzzMv7A2y1Zd2DYYimGG31ibYVwKhYAQLZnW755rCOs3i
	TZtmmrKPDyZt9YI9ONYgNaI0W8Ahw5GF3fvIV81/M2Lo2Fx8kSe9HsOXL/+GihIPR0rv
	UIAv5f0o4+wlBp6Bq1FviH7SqD+H7NFtmKsnLuu1ixUO+3RmOko3mQt0BHaaFA8eRkLW
	bsg5rpS2y/3yWnfLiVNjsZoNq589v7OAq+RjB3MBZzZBkS+Zzfg3axYVhhaRcUKd4LLn
	Re1A==
Received: by 10.14.53.4 with SMTP id f4mr597608eec.93.1342206272467; Fri, 13
	Jul 2012 12:04:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.210.199 with HTTP; Fri, 13 Jul 2012 12:04:02 -0700 (PDT)
In-Reply-To: <CANsUPaNSy0Me580w0odN76bcHvJZ1-gXFdWadhdnpNR3Q_EEtQ@mail.gmail.com>
References: <CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf1A@mail.gmail.com>
	<20120628181214.7ACD02026AB@gemini.denx.de>
	<C6510F6D410BB64A8C15398EDC6B847C46A79CD8@ORSMSX101.amr.corp.intel.com>
	<CANsUPaNSy0Me580w0odN76bcHvJZ1-gXFdWadhdnpNR3Q_EEtQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 13 Jul 2012 12:04:02 -0700
Message-ID: <CAMKF1sqwu1ZsyMyWoY4nfCh0fpWEV+Sw8oORt4iJ+TGAn_mXJw@mail.gmail.com>
To: Giovanni Foiani <fnognn@unife.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto and Qt embedded
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
X-List-Received-Date: Fri, 13 Jul 2012 19:04:34 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 11, 2012 at 11:45 PM, Giovanni Foiani <fnognn@unife.it> wrote:
> Where is the compiler located inside Poky SDK built from meta-toolchain-qte?

somewhere like below is mine for x86_64

/opt/poky/1.2+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/x86_64-poky-linux/

