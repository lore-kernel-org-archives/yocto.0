Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 538F8E00DFD; Wed,  7 Feb 2018 10:57:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f175.google.com (mail-wr0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD991E00D91
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 10:56:58 -0800 (PST)
Received: by mail-wr0-f175.google.com with SMTP id w50so2203159wrc.2
	for <yocto@yoctoproject.org>; Wed, 07 Feb 2018 10:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=d1kW8uc4gpjdF93axsGeY6CQLM3tzAB0zHc2yGWvDEQ=;
	b=YNK27IK12NraZTw95DOaIgp3mBq7LJ7NCy3Zl9AFW3pdULRQThDVhDVKCfn90lxv72
	t6giuAp5JfAspE7huEBCwhJwFB+2xXJRKVBV21ySnSAFaT8bVuTF6TrPojN+cHLl0PUb
	RAphMvL6pfxjLYOmVfVxz2WzI2jnf6V1ImWJl8C8E7/SjUTg1cm6Mls6mCVX9C9sXpJ/
	qCqxwRx7TkmJS77pSeIj///NTRc/giGsFSF7G42AUbO8ieSLI8UiqqhpT8SWsgptIqpY
	idkA9PkhP0ArkArj+xO7IZzetO+k0g0iyIomWYkXBKzxQ00XKgZ8ZU4Kp33gaY4yyd3Q
	0UHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=d1kW8uc4gpjdF93axsGeY6CQLM3tzAB0zHc2yGWvDEQ=;
	b=DkxfgIaLYJPVRObi6zRlklfJgy5J44U0sS+wB40mNsehwgmAwM1JfNodYIwf7xYBIZ
	kk4aapQLOXPD17X/598ur1oQ6OWEb3TEx1+dLAAIrQZNk5bnpgZ+DlZ9SRILtG53h2yn
	BWXWBvDlqdQCu6HBnS0TuoYWGzmRpktCHlFf23HLdlCOISfAar4uCjAOiUDqaWDLvgpe
	5rNM4b7PZOF9T+347Ji1HqXBwTYsWIoup7Jwk5f1SEi6JzJ7/68yJ7FuEt0Az6I6fsAL
	60rovgyLDsKxhbJxskMRbIVywjQxoIBjYIeQ6Dq16Hv5H/ir1W1xq22TfrOhO7kDslfb
	7i3g==
X-Gm-Message-State: APf1xPAVC0NH//qpFcM+omzzHnSB7gEHzMnhGJLi2SqKvBXa3jOP/LvE
	YvxBGuSUhHkEvG/MuQZX5TxCsj0a
X-Google-Smtp-Source: AH8x225vUu4LwY/+G2BCSvWAsaMS4uDu3GLy12Wc2j0WkhcuYraVcYSjaQhqe5pEJRRWv63FD32jaw==
X-Received: by 10.223.196.216 with SMTP id o24mr6898007wrf.101.1518029817605; 
	Wed, 07 Feb 2018 10:56:57 -0800 (PST)
Received: from [192.168.42.50] (ppp-2-86-138-178.home.otenet.gr.
	[2.86.138.178]) by smtp.gmail.com with ESMTPSA id
	w50sm1719033wrb.33.2018.02.07.10.56.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 Feb 2018 10:56:56 -0800 (PST)
To: Mircea Gliga <mircea.gliga@vitheia.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <ac8ff7de-889b-f948-87ba-cac758900512@vitheia.com>
	<4662d7ee-4215-e81e-58aa-a98a42c5ad56@gmail.com>
	<b2a06fdc-c5b5-42be-e1e9-1005c5c531e6@vitheia.com>
	<f14fc372-f394-2d32-4c95-c8b71fa43a51@gmail.com>
	<e412b2d0-6e14-983e-b7cc-63938705344a@vitheia.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <903d7ec1-c04d-99a6-285b-edcd65b93778@gmail.com>
Date: Wed, 7 Feb 2018 20:56:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <e412b2d0-6e14-983e-b7cc-63938705344a@vitheia.com>
Subject: Re: static libraries missing from sdk
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
X-List-Received-Date: Wed, 07 Feb 2018 18:57:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

I played around a bit with my autotooled lib, which produces only a 
static lib.

1) My preferred approach is this:

I add to local.conf:

TOOLCHAIN_TARGET_TASK_append = " libhw-a-staticdev libhw-a-dev"

The recipe looks like this:

https://pastebin.com/YLUvQSSx

2) But your approach works as well:

I add to local.conf:

# we need to add the empty package to the rootfs for
# IMAGE_FEATURES_append to work:
IMAGE_INSTALL_append = " libhw-a"
# add all -dev, -dbg, -staticdev pkgs to the SDK (only):
SDKIMAGE_FEATURES_append = " dev-pkgs dbg-pkgs staticdev-pkgs"

The recipe looks like this:
(needed to slightly modify my original recipe)

https://pastebin.com/VcsqNuMf

On the rootfs there is nothing with respect to this recipe.

In the SDK are:
./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/lib/libhw.a
./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/include/lib_hw.h

Regards,

Robert

