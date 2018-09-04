Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FA66E009D9; Tue,  4 Sep 2018 13:51:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A140E009B2
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2018 13:51:27 -0700 (PDT)
Received: by mail-qk1-f179.google.com with SMTP id h138-v6so3423129qke.8
	for <yocto@yoctoproject.org>; Tue, 04 Sep 2018 13:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=FLu8R/UeuhjSfHdY7DMcWOjNk1ndmwodhcUeTsCvxiQ=;
	b=jMUxz6OF1YvAIvPVKEcsMOm9tLVYaVPfJin+yZAJRVHTPWgKIVcPmJQQKnDb5PH+Rd
	kNwervoSw1NYpHPVmHEARlwTrTbwrfQplc8pLVjtH/xWx70aKyyf/uUCWTHOfJg612Jp
	cTOu+SufdLhWcxVu4OCg/XEymFjNW4WkDXHSi2eQrQ7P+eQ9DukpPYQX3HMF7vwuP2Z4
	CXBzjTvFdseszreVd04SC8WGJ0HoIVN8N4uZbyZgG4GSp8jI9iIzK/moLy4IwYxV6qme
	9MmGcZ+neKbJvABUYjhrSVcklDiSJwI+vyWaeC5PxMZ32kaEk7HIQYrYb+gnGEvK+Nhv
	sRuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=FLu8R/UeuhjSfHdY7DMcWOjNk1ndmwodhcUeTsCvxiQ=;
	b=LBOOHz+Obx8Hk0YYE0E1a4fjIMbPRYXQtXn8mXTItlRQ6TcU4662hznQN4/Vf3kZhM
	frejVHLUhyMnHLfa4jKqbXNwH/1vwGBrHLGJqpFVncBtYCJml/OMVxaT4WjTSGu/ZCpk
	aK3dNwjbY6E/0g2EJ+/KiUG+c8toyof9wn3kQ3UjHVCUXqVAfevEudbpDUGcdyiK8ghJ
	RuhBo4eooZ9Vm+JCgydt4i2KAVJOlyK5w4a9+2X+uK5NNdAUSaPHMYVevbaiAJH7Askn
	xBgN8+wIvnUgkek2DaxEavFAiqcYJJWtLvSSVPG9GiRQ3JUGMad/PR9Fc2HthlWadh3x
	V4HA==
X-Gm-Message-State: APzg51AcmN3kHVagjZ68zSLA4BtID4uHeRNAtptWZieuxABZ0OysGsRT
	KeE2GhKCVRijwQ9bEwewkIs6RFDSFQIvaChlFah841yz
X-Google-Smtp-Source: ANB0Vdaw0zd12feQER7S2q1GvYJ7k/lRqCCkIa84J5fPAEjbI//MPqmKub6n7c92nlPlgmzst1h0Re9rWt7QfNoH7Kw=
X-Received: by 2002:a37:a811:: with SMTP id
	r17-v6mr30457676qke.81.1536094286572; 
	Tue, 04 Sep 2018 13:51:26 -0700 (PDT)
MIME-Version: 1.0
References: <CALDHXtdqVcXd5R10DRbnKubFGdvvin-3xQvaVjR=Tmyjh43UEw@mail.gmail.com>
In-Reply-To: <CALDHXtdqVcXd5R10DRbnKubFGdvvin-3xQvaVjR=Tmyjh43UEw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 4 Sep 2018 13:51:00 -0700
Message-ID: <CAMKF1srDBvnRkx4BjU-D99vsVDs6jzM5VeewfRMScOeVmab_ZQ@mail.gmail.com>
To: ravikiran.j@mistralsolutions.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Systemd based image freezing issue
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
X-List-Received-Date: Tue, 04 Sep 2018 20:51:28 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 4, 2018 at 7:20 AM Ravikiran J
<ravikiran.j@mistralsolutions.com> wrote:
>
> Dear Yocto team,
>
> We have build the systemd init  based core-image-minimal  image in Yocto version 2.2.2  Morty.
> We are getting some systemd init failure with this image in our board.
>


whats the kernel version in use ? and please make sure that you have
needed config options enabled in kernel .config
https://github.com/systemd/systemd/blob/master/README#L34


> Following is the failed logs :
> systemd[1]: System time before build time, advancing clock.
> systemd[1]: systemd 230 running in system mode. (-PAM -AUDIT -SELINUX +IMA -APPARMOR +SMACK +SYSVINIT +UTMP -LIBCRYPTSETUP -GCRYPT -GNUTLS +ACL +XZ -LZ4 -SECCOMP +BLKID -ELFUTILS +KMOD -IDN)
> systemd[1]: Detected architecture arm.
>
> Welcome to Poky (Yocto Project Reference Distro) 2.2.2 (morty)!
>
> systemd[1]: Set hostname to <rzn1d400-graco>.
> systemd[1]: Initializing machine ID from random generator.
> systemd[1]: Installed transient /etc/machine-id file.
> systemd[1]: Cannot determine cgroup we are running in: No medium found
> systemd[1]: Failed to allocate manager object: No medium found
> [!!!!!!] Failed to allocate manager object, freezing.
> systemd[1]: Freezing execution.
>
> Kernel (Version 4.9) is build with CGROUPS enable, still it's not helping to initialize properly.
>
> Systemd is enabled through the local.conf file of  the build with following options :
>
> DISTRO_FEATURES_append = " systemd"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
> VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
>
> Note:
> Systvinit based core-image-minimal image is working fine in our board.
>
>
> Is there anything else needs to enable on the Linux kernel side and Yocto side build?
> Kindly help us to resolve this issue.
>
>
> Thanks and Regards,
> Ravikiran J J
>
>
>
>
>
>
>
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

