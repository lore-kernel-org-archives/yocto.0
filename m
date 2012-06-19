Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED6A7E01428
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 07:21:24 -0700 (PDT)
Received: by eekb45 with SMTP id b45so2518644eek.35
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 07:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=f9B0TSnqIYp9C1OyARkSnPuH5NEg5SyFOTBaPd0cklo=;
	b=dr8WNLeH30Sy3zPLevzB8oiYCRjK10aBDr4V5a3JefFuOEO2Iznomm+zjrvVBsq+RS
	vdnHTy4yv/JZgVPicaPhIZOEF4Al4FLI2AwnB9jQVnsVgty0qsNeMbOD4rP6KD7XK1qF
	J67clD+825YhZ10UxHuFvK1xOijpHITYqnK1B/QBXZ+rWxd5hjsUcpuPB4BwGHkr0Mwr
	iLMMbSmfwK+cNP6MSdXMfBDO8i5eWAw04jiaEiyi8mNdly6SU8kis9nj2/OwbQAQ830n
	ziti2IgFillzTRdULnuf3sKAW4uRe/eDr0sJNU4umEb8kRpXbYQ7H9YdsUUDcZw5ByUA
	bS1A==
Received: by 10.14.119.202 with SMTP id n50mr4314085eeh.33.1340115683629; Tue,
	19 Jun 2012 07:21:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Tue, 19 Jun 2012 07:20:52 -0700 (PDT)
In-Reply-To: <CANFv2EkVK2NbXb4XCTz2K6ja61dWtORKX3_mrF49-P9dfkQhkQ@mail.gmail.com>
References: <4FDF9720.7080204@gmail.com> <87lijkuxir.fsf@sonatest.com>
	<4FDF9DC9.1000805@gmail.com>
	<CANFv2E=jfiY05Rxpnhkz4o6aKNatdoC3o2RD53MFbj3k7Q0yeg@mail.gmail.com>
	<CAMKF1sokUhf1LhfBxg_xK9R5JyvnFMswoHdB8xG7VJXT=AjDVg@mail.gmail.com>
	<CANFv2EkVK2NbXb4XCTz2K6ja61dWtORKX3_mrF49-P9dfkQhkQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 19 Jun 2012 07:20:52 -0700
Message-ID: <CAMKF1somsePvLLgK3d0f0A19zdvEXsPAOCs4M-YJQFoPSYyR_A@mail.gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: basic recipe building - iperf
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
X-List-Received-Date: Tue, 19 Jun 2012 14:21:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 19, 2012 at 2:54 AM, James Abernathy <jfabernathy@gmail.com> wr=
ote:
> You must have missed the earlier discussion.=C2=A0 I first got the iperf =
2.0.4
> from meta-oe, but wanted 2.0.5, so I just added it to my private collecti=
on
> of apps.

you can post the update patch for meta-oe layer

