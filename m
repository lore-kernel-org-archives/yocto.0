Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABF93E00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 07:11:40 -0700 (PDT)
Received: by eekb45 with SMTP id b45so4575731eek.35
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 07:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=JWzt9s9KhIsIoRbFakX2WhoqhVfDEe4k4yguOBKoQYI=;
	b=BkrH8MCo3gISGeNMNDqC0mMaS1rPJCkdU2z5McZJ6YjTpHauRh8W9gIa22PFV/WHds
	Y9tAatZP3spbOPx0SggFLIevxRuduThtGX/6WU7EBT+ELuLqIF9L/gJ41iQddRC7UPyl
	vOEb56WaRQMz0/OouCsIKSSHTD5CuvTVvP9gBC2YLJRRsfXT4JfkO6Tu2Y++iUSdr9R2
	pEV5ahfWLK7u5xNJRB/CMXM+U+YYyIPeU6QjFzNcrjIeYo+2nobaTwZZZXaeB1XhTl68
	xRP+7Dt5cgrzL6xpGl1WQx6upxT8A4iez4t/wFtpn6ezG0pMs/YPkVguusrrjWjPqjqr
	mWKg==
Received: by 10.14.204.72 with SMTP id g48mr2862685eeo.45.1349273499865; Wed,
	03 Oct 2012 07:11:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.173.69 with HTTP; Wed, 3 Oct 2012 07:11:09 -0700 (PDT)
In-Reply-To: <506C40CD.5050405@communistcode.co.uk>
References: <CANFv2EnwjYa=DNKfiR9y9g+G_j=8WXyVZtBX_2gKcfM7Ga4MqQ@mail.gmail.com>
	<CAJTo0LbcKzbJ7-2jKoHRPzYeHx_ydYf_vULzwjsWy0zG4Q4bBQ@mail.gmail.com>
	<CANFv2EkD5NtRvbe2-fNnmt8df66HAu2r=hzCMBm-Zw4EeidBHw@mail.gmail.com>
	<506C3F92.4050309@communistcode.co.uk>
	<CAJTo0Lab-XovZsq3MmiuuTG2v_aKOnC5DVyaaSdJx4KQcSZwnQ@mail.gmail.com>
	<506C40CD.5050405@communistcode.co.uk>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Oct 2012 07:11:09 -0700
Message-ID: <CAMKF1so2RMKQ6SzoHNTMaTuyNRngeSGxYUp7grrpLL2yN_6jLw@mail.gmail.com>
To: ml@communistcode.co.uk
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Correct procedure for rebuilding after a git pull
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
X-List-Received-Date: Wed, 03 Oct 2012 14:11:41 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 3, 2012 at 6:42 AM, Jack Mitchell <ml@communistcode.co.uk> wrote:
>
> I'll bear that in mind.
>

that will help a lot in fixing sstate

> I believe it was ext2fs that failed earlier today on my production build
> machine. Again a -c cleansstate fixed it and I didn't investigate so I can't
> add anything else!

cleansstate was a stop gap but should be avoided as much as possible.

