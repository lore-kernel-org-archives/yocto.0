Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB838E00723
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 08:11:24 -0700 (PDT)
Received: by eaab16 with SMTP id b16so2158947eaa.35
	for <yocto@yoctoproject.org>; Wed, 06 Jun 2012 08:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=+Wz902NhwGcRfHZDgQQBXIp77XEtIeDeatrpS7c7WcM=;
	b=wzb0HLuxEUmJVR6vOtPXpiZmbj5hgbiBiF/S6f1j7wLu0Of+j5Og2wWVEm9lFUefIJ
	w7/0vJC+oU9P7eW0WMwsRkDOWYpX/1/knFqv7dzCsi8WfophGE1SLBjgM4aNG+ad4Blx
	XlFhHgvwrVF+2cAWSrIxFF5iBMjGQ+2RtRprFbwBpxncYZqVI/Ny1b2U2ryuds4sylIp
	hlWWs+g+q61Rb5GUBK9EwE+VpgCD1rjBSwYRA+5GXLFgYotX5r6IAnbSJooyKh2tTlP7
	o4OfkTr7r6ktOwDTjGVLp4cviRjoGfplCGXbjiMslmkVok6fMEl8W2HFDElhhOCnrfpo
	gFyw==
Received: by 10.14.53.76 with SMTP id f52mr9734161eec.79.1338995483822; Wed,
	06 Jun 2012 08:11:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Wed, 6 Jun 2012 08:10:53 -0700 (PDT)
In-Reply-To: <4FCE5DD0.1000308@linux.intel.com>
References: <1338867148-11213-1-git-send-email-b19537@freescale.com>
	<4FCE56F8.5070308@linux.intel.com>
	<CAMKF1spcYYQmNLGFJhhJBLKD+E1s1=mMEkMaCyz1rCTzz7Vdqw@mail.gmail.com>
	<4FCE5DD0.1000308@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 6 Jun 2012 08:10:53 -0700
Message-ID: <CAMKF1sqMOgL0X7k5-yaGhWJogYqbxggXHJ-EsAksk392rWryFQ@mail.gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org, msm@freescale.com
Subject: Re: [PATCH] fix the build issue of ppp
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
X-List-Received-Date: Wed, 06 Jun 2012 15:11:25 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 5, 2012 at 12:28 PM, Joshua Lock <josh@linux.intel.com> wrote:
> For example if the kernel with which the issue was triggered is provided by
> a separate layer it seems like this patch belongs in a bbappend in the same
> layer, no?

yes if its the cause of error.

