Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78517E00C97; Thu, 30 Nov 2017 12:42:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45B4BE00B48
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 12:42:21 -0800 (PST)
Received: by mail-wr0-f196.google.com with SMTP id l22so7927139wrc.11
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 12:42:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YL3bfjXXmAo7lU8QRsB2gCNba9o/A28qu1P5bebqiOc=;
	b=Z3Ri3J9TEVftvmDrSP+FWw1PgLWeBRU/gU+A+Fp5/FCH9EP17rIXLFiL6s5ePYln5j
	3Uzv3IyvIQJrIF6452OqAQN2uAK8PYFj0x1fI4eSZqqQ94gq2sh2t0IL4lLmTegRUQ6d
	tTWr9SLxJNghGlqoRL3nJQ4ZApaaNOlfZCiS3/zPZkiIX04WkQ234HiqLXoD8ucdl/tK
	8eVm6JxxSmr/Zy3Phtr2UjjZKq/MkdTzsCIqWBvo/4z5OmkrzWF2+xCbx0ZPVk4iMNkx
	VE9xw0JgD54V7mNDHRdojcq/soZYQk+JvNfAN6DqrXLPtknVoEuUjtoWB66lkXCfqePm
	kdrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YL3bfjXXmAo7lU8QRsB2gCNba9o/A28qu1P5bebqiOc=;
	b=sk9Q+qkFq5zPqC1RCm2bctOegRRQGpZ5JIxHgAb7Hdv/3xcjjUDAMfM9f4K0yE4+nz
	encEtHzYLF4UBhCRPji2O0uBbndQoivO/X2R+qPJFzeM5+X1RGP5g6yWY58gnP/9xIJq
	VUl5EowB1WR9sct15AzRtK/3UabenQO8ImmiBeSKO8jiQyVVCusqnPN56hv3h38xpEYX
	1L87bOMJqcjiPFDkzJChfDDwBa4OKgge37ZstC5L3a1hBjKrEjDXktNimTtlHvC/KPe5
	0K5AJ0CsU+MmjR08aBbNIvB477Ope+g03jAEdigRnta4Eksc3r60zjQBhUUZ06zwax9d
	VBJA==
X-Gm-Message-State: AJaThX78NPQJHx4qSeBhQOnP4Wz7KB34emoSZLIKbbbPKDFvvVtsi2A2
	V+K5gYxZTtXHw11+AA5NFhGlbx9PrZtoFAh7/Is=
X-Google-Smtp-Source: AGs4zMa7DAfzMKVltWBEOTSr+n1zTJv1lhxd0xhdsg31UirkyIZqq0MF9Ke43SzqGunCljtM/Bj1Ohw/5HGbrpDGVZ4=
X-Received: by 10.223.144.41 with SMTP id h38mr3235146wrh.228.1512074541141;
	Thu, 30 Nov 2017 12:42:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.133.68 with HTTP; Thu, 30 Nov 2017 12:42:20 -0800 (PST)
In-Reply-To: <CAMKF1sqqa9fNPVyG81Lb6LKCZoW-WgmdKFQAKX7CadxhjG3Zyw@mail.gmail.com>
References: <7085a873-0594-f4e4-03ba-c72fc156d6c9@advancedtelematic.com>
	<cbe07fed-c51d-d663-4914-6a247171b86e@linux.intel.com>
	<68140500-7b0d-e7e2-8a6b-7317fb4a082b@advancedtelematic.com>
	<c4fabc4627a75ef428c39d1686eb2565@mail.mxes.net>
	<CAMKF1sqqa9fNPVyG81Lb6LKCZoW-WgmdKFQAKX7CadxhjG3Zyw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 30 Nov 2017 12:42:20 -0800
Message-ID: <CAJ86T=VpE7FayjWku91hb=DnvZ80=JJXzQZ0WF+C8+LOgynbZQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Security upgrade stategy
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
X-List-Received-Date: Thu, 30 Nov 2017 20:42:23 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 29, 2017 at 11:24 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Wed, Nov 29, 2017 at 11:06 AM, Brian Smucker <bds@bsmucker.eu.org> wrote:
>> Hello,
>>
>> I have an older yocto-based image built with Danny.
>>
>> We have a need to update two components, php and dropbear, to the most
>> modern versions for security purposes.
>>
>> What is the preferred way to do this without moving the whole image to the
>> latest version of poky/yocto? That would be a big job, which would
>> necessitate migrating my linux dev environment to something newer, in
>> addition to other things.
>>
>> Or is there  a preferred way? How do people handle this?
>
> We usually backport the needed fixes back into release branches.
> Version upgrades
> are usually not the norm. However, in your case where are on danny which might
> have stopped to receive any security fixes already

To avoid and doubt, danny has definitely stopped receiving any security fixes!

>, it might be
> something you can
> undertake in your distro to upgrade the versions. Take the new version
> from latest
> release or master and retrofit it into the release you are on then
> fix/integrate it into
> rest of your distro. However here you have forked and can keep
> following the same
> procedure for subsequent upgrades for these packages. Obviously, you might see
> integration issues but thats expected.
>
>> Thanks,
>>
>> Brian
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

