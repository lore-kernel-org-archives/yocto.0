Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C35CAE00E27; Wed, 18 Jul 2018 10:06:23 -0700 (PDT)
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
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6E91E00AC5
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 10:06:22 -0700 (PDT)
Received: by mail-ua0-f172.google.com with SMTP id q12-v6so3383959ual.2
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2018 10:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cTNLaPMde0gr3UKw7xjtA3R8Xrpi3lhRlpd1ZDghrIM=;
	b=irZJaNUPVKz8Ho0rxb0PnG1os8GQEEaTpqqvs5Dhut7qVSr7H4+h4iD8yYmq5mBz8+
	yWY/NrnQb+XuebxS1LPOD6bN7XLIRPu5kBdkdhfXGBaj0YXDinLbq6IVO8UiiQ3WGgb0
	gKCu62j9ASrQbl3IpDZ7QlRldSsqQy+TGUzhq7ojqK0Kuwoo+wHvrdEft7HMoMJsAYTB
	EYBEkUgeqwuJ/AeYWuqsq+OVD4/ABqFql3WfIHYjTG3+saFeyWE2+PqmI2ixiTNEAagX
	X7Tk4ItnhInBpw8XNTI0u47DNXVTEeS/VJBVX8XMKYwAfHDIYqCfPKt6lwjPDeaU2vKI
	KSRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cTNLaPMde0gr3UKw7xjtA3R8Xrpi3lhRlpd1ZDghrIM=;
	b=offYZAtX/oQBnpQTPrlzx/kO0czbyyGxXDn7YyCcfyFZz5JAPY7oJP62o381G3jLj6
	xCJMIPyMsDnohRfQ9808/Ro2f6AGlkplZLEycKoZPitJNxJ4GkKeA1goG01F73A1PvQk
	tj/qsQ1DINw5ECPRJTicAjEJKsPZvn5rwLFIG06XAEzrkl1NUB5tNPcsPapCpO++oCim
	ofczJCKEfrYTL/8rc3H8ZW8D4+ZJQGTuGO/dhai1n5qBsP4ovDylwZKcHIz9rgc7RtZ6
	AUXVwnsK176Z68u6S0fqrXGoV2/FRHfia0w6RMMN5r8k2/Xti/aYvYbK+o3yU1bKn7r/
	YZ5w==
X-Gm-Message-State: AOUpUlFLokvk1OyJM5X8v9ScDbKyWdcBbIppN7gp/hFLP2wD594j9zf2
	qR3yzSuJ/iP5spN5/lODenv1jurjGoigFAJZjYc=
X-Google-Smtp-Source: AAOMgpfQJ0rcjz0X52qpawdlKFUmbw3IGvGOyAZOTwj00sd/38G3WVy5+U4bndvny8NBVTuAs1CUNl4LEb4B+AiaREM=
X-Received: by 2002:ab0:899:: with SMTP id
	n25-v6mr4459446uaf.128.1531933581945; 
	Wed, 18 Jul 2018 10:06:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Wed, 18 Jul 2018 10:06:21 -0700 (PDT)
In-Reply-To: <CAGAf8LwUEFNu4icxvk0HivK93Yfx7f6-i5gjKa7CpT4NUUHiKQ@mail.gmail.com>
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
	<CANNYZj_aBuEMf1=_xVDQTtqtzxhka5XgLyNVREZvFiFHS7pWZw@mail.gmail.com>
	<CAGAf8LwUEFNu4icxvk0HivK93Yfx7f6-i5gjKa7CpT4NUUHiKQ@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 18 Jul 2018 10:06:21 -0700
Message-ID: <CAJ86T=WMJ8zE3ciNdwkSaThdYHBwC9QytGWHKXiVVbue+6kVXg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Chicken and Egg problem] Defining RDEPENDS of the package itself!
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
X-List-Received-Date: Wed, 18 Jul 2018 17:06:23 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 18, 2018 at 7:04 AM, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> Yep. Did it. Some symlink is missing (I guess, symlink to
> /usr/local/lib/libcannelloni-common.so???
>
> Initialising tasks: 100%
> |#############################################################################################################################################################|
> Time: 0:00:00
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: cannelloni rdepends on
> cannelloni-dev [dev-deps]
> ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: -dev package contains
> non-symlink .so: cannelloni-dev path
> '/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni-dev/usr/lib/libcannelloni-common.so'
> [dev-elf]
> ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors. Please
> consider fixing them.
> ERROR: cannelloni-1.0-r0 do_package_qa: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/temp/log.do_package_qa.7896
> ERROR: Task
> (/home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/meta-test-layer/recipes-canapp/cannelloni/cannelloni.bb:do_package_qa)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 539 tasks of which 532 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>
> /home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/meta-test-layer/recipes-canapp/cannelloni/cannelloni.bb:do_package_qa
> Summary: There were 2 WARNING messages shown.
> Summary: There were 4 ERROR messages shown, returning a non-zero exit code.
>
> How I can add this symlink (!) to this recipe?

The error says "-dev package contains non-symlink .so".

Simply adding a symlink somewhere will not help. The fix is to ensure
that libcannelloni-common.so gets packaged in the main run-time
package (and not in the -dev package).

Reading the section about non-versioned shared libraries here might help:

  https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libraries

