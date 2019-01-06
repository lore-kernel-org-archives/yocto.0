Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0659BE00C49; Sun,  6 Jan 2019 11:05:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BBE7E00B58
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2019 11:05:10 -0800 (PST)
Received: by mail-ot1-f48.google.com with SMTP id v23so36088412otk.9
	for <yocto@yoctoproject.org>; Sun, 06 Jan 2019 11:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=mY/1+uAxI6vKJ2w9MZ4oyOZkAC3g9pCzOK3NuQnqK8U=;
	b=UFD1n43UoqSxFQKlD5H29slWVkmBZ+cqn9O19W3Uf00GDfNkG/KLceSfT1VHSpCd2Q
	cuTrWtMgCJhFM9YcVoajIaqEAzS6OVF9hMn4H2bjH5UJGUAsF8nsuv2bt92W5Epa+N4U
	2tuCSCr2UgLa7Ety1NPm4SeiVKfC5Yw1HebTWLhvswA7Fmuq/WTf4XPIca6DvHCAeyen
	L4jo9Kf2kxURknp5r+j5A9FcIPN3EZEAGcl4xaazwHiNeHkkNEA+eCnPS7by5jXHPYk6
	6e8I2aREjzlr6rqZv7a4Fbf4UOKK3caUDPoq8qLWFdPviCh7MrQC/822qWjQMMInGnRW
	XRKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=mY/1+uAxI6vKJ2w9MZ4oyOZkAC3g9pCzOK3NuQnqK8U=;
	b=VzuA8yC+2FJSX8nDlPh+KfIFI4ywuznlqeiSSJ/GOWk3pCFSUsvpGzmKxHM5TKqB4U
	fwpwsoQYYoKbEXmmkmQuwGnlk+g/PztrLtOqYbsGTfKOANaCyqKvN47PyH282d4SpnEk
	AxgYZZ1pUudRPWP4mZuTOFmr6k+JgzW5OpjnSwG4ddrzeIE/81QFNRMYz635ueBJHhnG
	GtKZyRT5JOvjA5sDjnvSNAhB26fcR0l35UPdW0jJLF8f3TOVa+QtayDbRM77mlWizogA
	dplRh0CdD9+AyuTBIyLmsh0DPfxSEKRv5YLLbHN5OVJA5dR8KAX1sx8DxQqfwW4oH643
	aj/g==
X-Gm-Message-State: AJcUukd7pTvY7qDn/p0RSLsBQPvV+4DsmcxMG2k53UyfhOn3wRjEGuaj
	OZiS74pVp4n5XpUSAArEJb7ufrTM5Xf6USwDT5M=
X-Google-Smtp-Source: ALg8bN7g3NcCLrLSFztK5b62Vhhs+DsAspnC/Zh3eqE56gIt49dpmNCDrLLte6aETMvzcGqghQPJHh+jplIZYX8ozf0=
X-Received: by 2002:a9d:69d7:: with SMTP id v23mr8687382oto.96.1546801510482; 
	Sun, 06 Jan 2019 11:05:10 -0800 (PST)
MIME-Version: 1.0
References: <20190104213234.Horde.fsWzjSbd2N9UoHJN1Xwu10c@webmail.uni-bremen.de>
In-Reply-To: <20190104213234.Horde.fsWzjSbd2N9UoHJN1Xwu10c@webmail.uni-bremen.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 6 Jan 2019 20:04:58 +0100
Message-ID: <CANNYZj9UOwFLYWtVgWspyxAQHfzzmdPobgu6BpiRWM4TCnbn_A@mail.gmail.com>
To: Shantanoo Desai <desai@uni-bremen.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Some Guide for CI/CD with Yocto
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
X-List-Received-Date: Sun, 06 Jan 2019 19:05:12 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 4 Jan 2019 at 21:33, Shantanoo Desai <desai@uni-bremen.de> wrote:
> I just have become more comfortable with Yocto for e.g. using devtool  and basic bitbake commands.
>
> I am was successfully able to create some python applications for my target board via a layer. I would like to use CI / CD eventually for Yocto.
> I have seen videos from Linux Foundation but I could not find any guide to create some basic CI stuff for Yocto.
>
>
> Any help or suggestions in this direction would be appreciated.

You could start by replicating Yocto's buildbot-based CI setup:

http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder2/about/
http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/about/

Alex

