Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9386DE00CE2; Fri,  1 Jun 2018 01:53:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EA09E00CDC
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 01:53:03 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id l22-v6so14150908oib.4
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 01:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aT26jIiU4qxdRRxn0oa5QRbZAES/VnO5Pp33wyFIy5M=;
	b=GcEuSTGMz56rEeQzzWJChDEFKvItA/pOrPS7gmSFg2Ie5IKIQAvFNdSgI81QO9g9Ko
	Wh72TAePJ7beukJb4XczBf/3+LYsF6ecGQSkNpn+Z+6H7eUz069Hp3QA7hL3Mfvm2qrW
	XTHaPkKi2a5tfHUQcdt8Nhqrx+MCJkbfpYKG4kF/P/RGzt1dv4lqRz2gnR8D42Gbj5FP
	8J1+v5mtXjojQl1QihpsU75qLCWUBAtrtiC+mBQFYdkyRnOGB0jl8BACNgnUFywOZ3J1
	dEguBmF2GfI7K4mjiT/CJMLphOi7MZBKeFQEljP6VRtPXMp45ywGyIPsc7Pa+tWnUkBe
	KOTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aT26jIiU4qxdRRxn0oa5QRbZAES/VnO5Pp33wyFIy5M=;
	b=EZPAWdl3ufBfVJzAlJllpynqBGmdcnTAo5CTj27aKkPwF0ew9eDuvSeKIYwzt2oe9j
	GDAU8TXLypia+jwFez4i1CxBLDoD3HHkWusGNDDoalLjUc3MB/O3UriPqTj64ZpIURBH
	whQINapL/hEoBLcwAPcVFJqg+jldhLzp2uMItflPHVeUPLdNEkwIxtOUJRHAJ8ZzShNJ
	i/Z3JudiPan1b9mfqcxUOFA+9H3bAHhW7k8cVVEy32arRdYNZPPHYaSHP2WBzNFuqeth
	wHQVd69P7c4KOVcFc6yDFD4a3opwjCpTvDlcnWcC+GDpXIt7jyM/CKAkWpib0F0DpjLk
	YFyw==
X-Gm-Message-State: APt69E1pescCeidstDF3MAKtUmj/sJTk0FBN7Ywcd0PpO4oXQt9JYjgw
	Ai6ZuB1EwjeIui/2/1pqi75PoJOq2LuRQ+FECO5EcQ==
X-Google-Smtp-Source: ADUXVKIg7JdrIbz7sp5YmhOFLArVZGDsrVpY6PgbwFtpcndoW01f1DgKCulUtqPfFIgVgJz6mnu4QVchoUDIU48MzE0=
X-Received: by 2002:aca:728e:: with SMTP id
	p136-v6mr5272578oic.51.1527843183414; 
	Fri, 01 Jun 2018 01:53:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90cd:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 01:53:02 -0700 (PDT)
In-Reply-To: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 1 Jun 2018 11:53:02 +0300
Message-ID: <CANNYZj-ZwKdthW95-CV=sSJHeOoqUb-N5-CV27maBAihvbihqw@mail.gmail.com>
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Image specific configuration files
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
X-List-Received-Date: Fri, 01 Jun 2018 08:53:04 -0000
Content-Type: text/plain; charset="UTF-8"

2018-06-01 8:46 GMT+03:00 Damien LEFEVRE <lefevre.da@gmail.com>:
> For the same MACHINE I create the following images:
> - myimage-production
> - myimage-rnd
> - myimage-retail
>
> The production one has production assisted tools for flashing peripheral HW,
> testing vital HW components, writing some serial numbers, etc.
>
> The rnd one has more packages than the retail one just to help rnd work and
> debugging in device, but none of the rnd image extra packages.
>
> The retail one has the final product image.
>
> I'm using web and FTP servers. I would like for the rnd version of the image
> to have a different nginx configuration to set the root directory to a
> development folder, or set an alias.

Make two separate recipes for the configuration, and list one, or the
other in the image recipes.

Alternatively, do the needed tweaks via ROOTFS_POSTPROCESS_COMMANDS.

> Furthermore, I'll have different variant of the device where only the device
> SW changes but the platform is identical. So I'll end up with
> - myimage2-production
> - myimage2-rnd
> - myimage2-retail
>
> I know how to make MACHINE based configuration. How could I do this in my
> nginx.bbappend based on image name?

You can't. If you are issuing 'bitbake nginx', how would bitbake know
to what image the nginx packages would eventually go?

Alex

