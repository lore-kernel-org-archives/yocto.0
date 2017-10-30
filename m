Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9A93E00AAF; Mon, 30 Oct 2017 12:49:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32153E00928
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 12:49:17 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id s66so18026606wmf.5
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 12:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cSq8mUbVdmUdC7Dh5arYyAJHYE1Vk9X19oOVazqVfGM=;
	b=m0Jhnfl+vcIk3ONPMCawqlFNj5P8QRKhp1iXuArG5Do+FMYS+feHpUEPuynTsthKvk
	qyfYHZJ/SnY9RQWj2v8cmuziP8GdvokmYkjrMD0f2OMzgYZTXh/DRaPx0Zh1gKIBHJLP
	WHPuPXPoTr0TP6IWBcsUXm8VYkeeRRd/Bj0wqxyRLHPAZ1GDpD4WFd7p2Ol1EJGsSL8C
	6PB3unWKJFycFAtmtMxved6KmcyhO0BQZDEX6NOJ8+h4zxp1W7kafx9oyQmH9Ni6wFEC
	70R21Fh118yRD5UCcamKS72GqpbM5Ec2Z+F7cujyPw4TqB6GasZfdQbCB8xGfHR7GBKC
	UScg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cSq8mUbVdmUdC7Dh5arYyAJHYE1Vk9X19oOVazqVfGM=;
	b=JHvcN+efDwzoQ7s4qIFCjLLF+tQDru7NeLBf7CxdUi4KBrkqGS3ymaXQ1Zq6CN08id
	MIq1Ml/bx2ZTgdRPjiV4jEiP1v0uORA45yPQoEyZn25p2CsO53XFjHWZ/SMlYIzSgxwe
	Y9xuRkKJqgV5GNijF9T6r5VwKoMPucw0p3M9iK1eipjPN8XX9KXc6eYfLHYgIyrTGi9h
	gL4OHlWG7UM1CffAIT23qt3GEhfOFuZCxaNnrPlH+b/rG1FrtiNp8Xw9qCZcnpc8JnCw
	XH7IPCVPXC/iO+CpiCMqjjLJm7QmMb0OwXe0+rTxPunn/Aw9Uf89BflRlInaEvBfFP5R
	Scow==
X-Gm-Message-State: AMCzsaVMAPIwNMq7MO/IT0zw+wxePlhyLpMq76paxpoiRy7CKuksonZf
	jfcPRpMpUrQSh8cSBNdhkM7+urLXP8jk8UUrnOQ=
X-Google-Smtp-Source: ABhQp+Tp5KZDXuMn8QyOPsy7vTmeR3uzlqQNQRdk3V+h9Oz7EGVozrtAo27I0wkzwcTHPRkLgCG5NBJ6oxBgL6Nx5j4=
X-Received: by 10.28.11.138 with SMTP id 132mr4864681wml.89.1509392957089;
	Mon, 30 Oct 2017 12:49:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.166.19 with HTTP; Mon, 30 Oct 2017 12:49:16 -0700 (PDT)
In-Reply-To: <3d885b18-f114-fcf1-0600-0903935bd1ab@linux.intel.com>
References: <c48d8ea1-c618-dc24-6200-f7511f0e506d@xilinx.com>
	<3d885b18-f114-fcf1-0600-0903935bd1ab@linux.intel.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 30 Oct 2017 12:49:16 -0700
Message-ID: <CAJ86T=XGnuGPEnnKobJDrYNudEdbV0i8UKPzAFzcC7+Ob_KqEQ@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Vineeth Karumanchi <vineethchowz.chowdary@xilinx.com>
Subject: Re: Checking sstate mirror is hanging at 100%
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
X-List-Received-Date: Mon, 30 Oct 2017 19:49:18 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 30, 2017 at 2:37 AM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 10/30/2017 07:54 AM, Vineeth Karumanchi wrote:
>
>> In this case i would expect bitbake to "check for sstate mirrors" for some
>> time and rebuild from scratch. Is there any approach to over come this ?
>
> The approach is to fix your infrastructure so that fetching from network
> doesn't fail. We've gotten a similar request recently for enabling 'soft
> sstate cache failure', and RP is firmly against it:
>
> http://lists.openembedded.org/pipermail/openembedded-core/2017-August/141593.html

It looks like the logic in the wget fetcher retries once, so if it's
getting stuck then that seems like a genuine bug.

Vineeth, are you sure it's really continuously retrying? Or are you
just seeing timeouts for many fetches (which will eventually
complete)? Note that you can reduce the wget timeout by setting your
own value for "FETCHCMD_wget". See bitbake/lib/bb/fetch2/wget.py for
the default value - use that as a starting point for your
modification.

