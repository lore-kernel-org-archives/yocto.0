Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E14DCE00CD4; Tue,  7 Nov 2017 05:46:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C711E00CD4
	for <yocto@yoctoproject.org>; Tue,  7 Nov 2017 05:46:14 -0800 (PST)
Received: by mail-oi0-f49.google.com with SMTP id g125so10098610oib.12
	for <yocto@yoctoproject.org>; Tue, 07 Nov 2017 05:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=Mgw0y6+x68LJ0eq4xY0XHSYwQeAcNCXjJId/nJJjADY=;
	b=MdnC7mnkD8xZ7EWXz6yyShfCPHqYxaNdgVbc3DOXLconUA8bbx66AzgpZhv2cTdvUc
	2UyUfLHoD26kHaK6MWNLQNEnOhOHXGUgf8hKuNljws15SXjPwoEhC5f9zLXmn4oJfb/K
	HUXc3ke3x3QiCzblyVHTDrJkrIlbiFRrcjh9pBR8DFHJK4HbC4Ae/gn8YiHyTCCSyS9O
	gu/SPQZ4wtXdGY/WoDd1OYKwOUasKvXqGBNjjRhT0wUVytlmypbxp51S5WE7o1SVI3Pz
	TknkEN/MakRR/Di8zpNXz/5XAQGAuzBKFomzd2lTM+AKTjVyUbvb7tOvE0cVMwRI1evK
	JCOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Mgw0y6+x68LJ0eq4xY0XHSYwQeAcNCXjJId/nJJjADY=;
	b=CopDISFhQdoEvMew/0Raj99EZDi+WEoencWZCkpJlIBFB9yAzfNNmYDPMOg6FYK137
	uczEOb/6uH7KRm13hylr7Fi+NEXrktx7pDsVd4ZnrD0qoSxDhhre22xrRwAhVrPUsbI0
	gEU16uU6kmwos/onEcSuW0O2L+ZRreHrmBN3hepFBiOjiPuv8NASQUSjGjX9rrle9zCr
	Lh1WqlKfPxaQ+WeSkB2b94a6iDaRukSIUl9SQBdm02MzqyYPaUuCptNAIPfUuqjFBWi3
	PPFl/1wuAcJrhnxQjKisRu5tmdi3Wnngk0GILiLyNnic+/Fdg/WZKq035+RV2sgm5L+C
	Xjrg==
X-Gm-Message-State: AMCzsaXeZ6qoZ/QkJoAn4mVhRYefeaIMlSh42SuarOPgK20sg1LsLqA2
	bPsCDcv3B0DFO2GT1Oar7+b/LQHSYCjLZZCiRpAUzUpp
X-Google-Smtp-Source: ABhQp+Ru+oI/KzWou6XEa20kqmA/wmuum8H73S7yBjyeX85D9ShlIaG82IWqI6dN1HWFgkdUg0eTnWge8WY1WLeVVg0=
X-Received: by 10.202.97.67 with SMTP id v64mr11058819oib.256.1510062374014;
	Tue, 07 Nov 2017 05:46:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.41.133 with HTTP; Tue, 7 Nov 2017 05:46:13 -0800 (PST)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Tue, 7 Nov 2017 14:46:13 +0100
Message-ID: <CAOT_U5a2DJzXR2a0JCGPRRPyTY30-BmtSCwNTmt4=mYg3ZUnkw@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: KBUILD_DEFCONFIG_KMACHINE not used anywhere
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
X-List-Received-Date: Tue, 07 Nov 2017 13:46:16 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm trying to get yocto to build the kernel with an in-tree defconfig.
For that I found references to the variable KBUILD_DEFCONFIG_KMACHINE.

However, I've been experiencing that the kernel is being built with
some default defconfig, and not the in-tree one that came with the
kernel and I defined with the KBUILD_DEFCONFIG_KMACHINE.

I've looked through all yocto sources for where the
KBUILD_DEFCONFIG_KMACHINE is actually used, and found it only in my
kernel recipe. So I decided to dissect my recipe.

There is a:

inherit kernel

in my recipe for which, besides others, defines how the kernel config
will be selected.
Looking at the sources of oe/meta/classes/kernel.bbclass exposes how
the kernel configuration happens:

kernel_do_configure() {
        # fixes extra + in /lib/modules/2.6.37+
        # $ scripts/setlocalversion . => +
        # $ make kernelversion => 2.6.37
        # $ make kernelrelease => 2.6.37+
        touch ${B}/.scmversion ${S}/.scmversion

        if [ "${S}" != "${B}" ] && [ -f "${S}/.config" ] && [ ! -f
"${B}/.config" ]; then
                mv "${S}/.config" "${B}/.config"
        fi

        # Copy defconfig to .config if .config does not exist. This allows
        # recipes to manage the .config themselves in do_configure_prepend().
        if [ -f "${WORKDIR}/defconfig" ] && [ ! -f "${B}/.config" ]; then
                cp "${WORKDIR}/defconfig" "${B}/.config"
        fi

        ${KERNEL_CONFIG_COMMAND}
}


I'm planning a workaround by overriding the do_configure in my recipe
to select the correct defconfig from the kernel. It does seem however
like the KBUILD_DEFCONFIG_KMACHINE is exactly here to not have to do
the workarounds.

Anyone has experiences with successfully using KBUILD_DEFCONFIG_KMACHINE?
Is it a specific poky feature (I'm not using poky but specific open
embedded layers and bitbake)?

Be Well,
Alan

Ref.
https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file

