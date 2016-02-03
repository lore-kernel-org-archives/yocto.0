Return-Path: <todd.efflam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC29DE00C39; Wed,  3 Feb 2016 10:22:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (todd.efflam[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 084EFE00C39
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 10:22:11 -0800 (PST)
Received: by mail-vk0-f51.google.com with SMTP id e185so20463064vkb.1
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 10:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/CimrzZj0QMGR3Ai3iBS6uAW088fKEF0CoRvJxp6iyM=;
	b=ZbYUEp7+Y+MAf/H1G9whCt/8izUZWOW2jNBBnhBUmPVnY22sftlaZTtnR/lKp72ON4
	3S/OT8n39SwcMGPqu0ugrHVPHSmfAdfv6QSvm1ovIecBQeqUJZ2XPqlr0TG50twNACd0
	JikPj1CzqWYm+zrjnRrhW7rcyiuXiD6hjFd6juU1xu7JfJQ6bgeMnesMoxHnVQ/lg4EN
	WmuZl4MOT/NJj5Q2BBNBSXl66JjDdzdfpyJ57bk1G9/D2e5xRKDoMHyOvUVJs6XCzX8g
	YwcmrRNm2Mw74pJWzdaVpBOT7KVnfLX6ThnOeK4n2QAlxjcXaVSyzrgTbDy1CX1w9vmz
	Vd7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=/CimrzZj0QMGR3Ai3iBS6uAW088fKEF0CoRvJxp6iyM=;
	b=P6jBRHorKG1EqVQaQOxCfEzvABRKZLLe03o5eKkY3Lt/xtwBiwVu09ihdq9CnBeykE
	JHe94//5b3OsjCoB1buB2ojTINFrul5F9PQQy3Msig6uUTq4av5r98NIGt3l3OM0fQrm
	DxwM+M4IRNTeo8M3BoJ0NKRa/+0P4XAHPtXnp5XaTGh2W8Y+S23cHGYsV2vjafy+KQXE
	JDqarnZw1KN3P1yyk0gn/jKqXRZf1qK/8248Q7nkIgroEI/nGGjmkqpqquUHMEzBlOqq
	DRFLLE2Xc7e/deMAg70bO5pKqLr6AW/SzNrdmcOxrWMSf+V4JFLdWTWoc0d9eaXWsH78
	a4MA==
X-Gm-Message-State: AG10YOQglwvMV96vSOE70KpMDRphvDiLzsZBjSG+vFdu7YzGStLVboZlRdfzAavjP2XUYxEPhuz9epKFjt9viQ==
MIME-Version: 1.0
X-Received: by 10.31.194.130 with SMTP id s124mr2227071vkf.92.1454523730669;
	Wed, 03 Feb 2016 10:22:10 -0800 (PST)
Received: by 10.103.86.81 with HTTP; Wed, 3 Feb 2016 10:22:10 -0800 (PST)
In-Reply-To: <CAHWMYyCW7zbZftqu4auw7OBKEnxaoykCF-_hWtaYY5qJhaiebg@mail.gmail.com>
References: <CAHWMYyCftLwJ2OsiAHNtgK94gy+9FAG_71mgi6A=+F_nuUJrGw@mail.gmail.com>
	<1454430798277.69358@seescan.com>
	<CAHWMYyCW7zbZftqu4auw7OBKEnxaoykCF-_hWtaYY5qJhaiebg@mail.gmail.com>
Date: Wed, 3 Feb 2016 10:22:10 -0800
Message-ID: <CAHWMYyAt4Mdn250Ku_uMtrHr1Awau-MPtwCaYDvi0YK8mDYE9g@mail.gmail.com>
From: Todd Efflam <todd.efflam@gmail.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem installing ath10k firmware
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
X-List-Received-Date: Wed, 03 Feb 2016 18:22:12 -0000
Content-Type: text/plain; charset=UTF-8

Finally was able to get it work - the error seemed to be a combination
of things.

We went with the modular build and ended up building the following as modules:
CONFIG_ATH10K=m
CONFIG_ATH10K_PCI=m
CONFIG_ATH_CARDS=m
CONFIG_ATH_COMMON=m

Then we added only "kernel-module-ath10k-pci" to IMAGE_INSTALL.   With
those two steps, we were then able to push the firmware to the
/lib/firmware/ directory as Fred had mentioned and ath10k was then
working with our card.  Thanks for the help!

Best,
Todd

