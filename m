Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C782E00B92; Tue, 18 Dec 2018 12:48:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBEF8E00A1A
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 12:48:20 -0800 (PST)
Received: by mail-io1-f53.google.com with SMTP id l14so13866666ioj.5
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 12:48:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=x8PYLj9LD+R4KeHMCPSa85ecWzZAA/rbGUNOQura9to=;
	b=i8DmKaPs5fgQuPbIK4iktTjtJPTehG6b/j+ORbotakCGOtHp5wy0s9f2etc9c1Zmrg
	bdj8e+Bw0Vm5nfYV0aScUH6kqEcZ+hbv/dJn05m0PMZ0GbcC5x3JXN93itjN5Rb7X28s
	Zg+6xSqIfGCvrn7Lc81aXG5v7wFF0RArmX+OJQgSlAfrWzpuUmi5AzcT06Dn08lafdvP
	L+rirxDfeQ3yAUt66vK25vtw4nfyKydZEZEmz2vBc8XjWILxBjoNIsvgqSenEfUc7Ckq
	U3r3NZmezJlefMCAWdl43dqxOuKmCMnDviWaijJlTRFswMZVLAi3z6LX9z+apNGmSCQ1
	rlXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=x8PYLj9LD+R4KeHMCPSa85ecWzZAA/rbGUNOQura9to=;
	b=k4UijRKISLEyM+1fUrWg2s9UO6c3dT6A1nBvrg5gdAZSgBRSmnBPHWFDV2i32JnRM0
	G8BOJLrNxJQmJCUwUgrSBxKWhMcc+UkWGyTEc+qD7kDxi9hqbANfaPh41OnHIMFUr5Nm
	ZE1Bb6b5i6CxnYeREROlT9iBx3bWG7kaRmk4omZqdEUYss1XOUw2zlz1e5sbsM78ZHAh
	HeWBUd3DdrMsspJzwE4G23BhpT/r6VfGzu+c/vk54rZ8/KBxIQjryhlSK9PNM7zQnc0n
	DnWKMA9b8LN9KcfiMgLNhCpp/zseIOJ69tNvHgoAZJFlW4J6MhR118rWi7G7cXhivsf5
	V3hg==
X-Gm-Message-State: AA+aEWZoOh6rDQ5AwM5SwaFwyn3a9hFtjVqWDDTJfIqcCFYzDyVt0ny6
	6DggjuE2EfG/gLDbC4pfbuQygaFZD5zoyKLRN7sznw==
X-Google-Smtp-Source: AFSGD/X/L4+Y2lm+yrp3dJYcnPeD9BD/V5z2iH8KrY+0zIOtdG4/x3vjxuc5so7exGATK96Ur/Nyb4ho1u+gsD7Pttk=
X-Received: by 2002:a5d:968b:: with SMTP id m11mr7765675ion.201.1545166100319; 
	Tue, 18 Dec 2018 12:48:20 -0800 (PST)
MIME-Version: 1.0
References: <MWHPR21MB086165B1FB4C98FC687D8924E5A00@MWHPR21MB0861.namprd21.prod.outlook.com>
In-Reply-To: <MWHPR21MB086165B1FB4C98FC687D8924E5A00@MWHPR21MB0861.namprd21.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 18 Dec 2018 20:48:07 +0000
Message-ID: <CAJTo0LaEmMpeuMJ14ZB72LBzGO9yOjtQ6HpZ2ocfTbLDEmtYhA@mail.gmail.com>
To: Edmund.Nadolski@microsoft.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Yocto staged builds?
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
X-List-Received-Date: Tue, 18 Dec 2018 20:48:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 18 Dec 2018 at 16:07, Edmund Nadolski
<Edmund.Nadolski@microsoft.com> wrote:
> Create and sign binary files (ie kernel, modules, dtb, =E2=80=A6).

Kernel modules can be signed.  No idea about DTB.  Also packages can be sig=
ned.

> Create fs images from above and sign those.

Depends how you want to sign the image, most likely not hard to implement.

> Create FIT images and sign.

Pass.

Yocto is generally flexible enough that any signing that isn't
currently doesn't wouldn't be too difficult to add.

Ross

