Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9254E00D6E; Wed, 22 May 2019 03:07:15 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.180 listed in list.dnswl.org]
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDB57E00D6A
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 03:07:06 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id y124so1159517oiy.3
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 03:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=4clfsOpNs1pABBB4Me3//e/L1zNt07zZ72qcMQLgu/8=;
	b=AHCa7hoDjZVfipjIwUyLNvuPpdcGm/RO+hcGjFxFLvR0X0+k8s0JHciXSsF2NvhGtZ
	C1P2UCilei3ITIrESgkdi/BQyykoDBKwpfu2A3pQhnR5EKEHMnNlYy089lKW/a7DiNr+
	NFXFaETep+5C2sWRx24kfbwwaAIzxdMXLp/0YmrGPqENYJt3cipgJL6Nq5EOV59ZbM5v
	ogMGAn5Wh4qvRvlsM3Sgk/JipbzcQgFaaFQf9rCxiHYQUFPWZTQdFXyXjvOWwIDL+YYY
	peXN8lgK2B1nvwkO/G708HCTZARS66mVEr7HdlGgD9jDnLgAsdEtFaa9fnHmKT1EQNnq
	xg9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=4clfsOpNs1pABBB4Me3//e/L1zNt07zZ72qcMQLgu/8=;
	b=EMvldwVDZ4janUKzmo5q0t9AlfpIV6Rg9sCMkvYWL5Kjt+jvl+V4Hp1swk8JumdUgr
	KNHHDmFTSJJCooLgRetiaQ8WDymJIE7p6C4uO/wsH74OBmXjWZTR5a4o4JdHJaHU6T5S
	bPc8fnVHbGteVhVO0yDi3BlRdnPHBHp5W/6JrhggAbhDQnm6JR/+tteeMBU152isA2w4
	W1284C9uAZNRElCeKuS1RQybbwRl3zrB4T7nIMeBMobPWTjkdchyvOOzi6MyoZZit8IV
	kZ1hcjEjm2RI46ujAwxAlir7emhP28EJB6M6/1U8JRYMbu3N/af94Er5Y0k5Z65s0iZJ
	OXew==
X-Gm-Message-State: APjAAAWQLaUycLRzpxc3EFnM9l2u5toS1shexbsR7QZgPIbcJad0PEOj
	fTBlIVttk9RLbT61FCxh6NKetUCwjL8/GFGgVto=
X-Google-Smtp-Source: APXvYqz2w6adqkQGpxUS3XZVyxMQzrilGqmT9qYcTQuyiP6QvTb46l9fa5Jj60AmdYs3abrmmYpgRuk1zXXfS6LSdYg=
X-Received: by 2002:aca:d40b:: with SMTP id l11mr390382oig.132.1558519626296; 
	Wed, 22 May 2019 03:07:06 -0700 (PDT)
MIME-Version: 1.0
References: <3e81b5f5e0294337bf5409b23344e282@ifm.com>
In-Reply-To: <3e81b5f5e0294337bf5409b23344e282@ifm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 22 May 2019 12:06:55 +0200
Message-ID: <CANNYZj_aAwwynPuAbuNy=vTGNKenHxhvFxgQyPXkdo08=A0QOw@mail.gmail.com>
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: configuration for a layer apart from local.conf
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
X-List-Received-Date: Wed, 22 May 2019 10:07:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes - your distro configuration file is the correct place to do it.

Alex

On Wed, 22 May 2019 at 07:12, Pandey, Kamal <Kamal.Pandey@ifm.com> wrote:
>
> Hi,
>
> I want to know if there is any other place where we can set configuration=
 for a particular layer, apart from local.conf. For example if I want to se=
t LICENSE_FLAGS_WHITELIST can I do that in layer.conf, or do I need to do t=
hat in local.conf only. Similarly for BBMASK too. So basically my question =
is, for setting the configurations of a particular layer, is there any plac=
e where I can set those variables inside that layer only?
>
> Best Regards
>
> Kamal Pandey
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

