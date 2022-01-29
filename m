Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 691CCC433F5
	for <webhook@archiver.kernel.org>; Sat, 29 Jan 2022 06:29:59 +0000 (UTC)
Received: from posta.faresoftware.it (posta.faresoftware.it [93.38.119.136])
 by mx.groups.io with SMTP id smtpd.web11.3177.1643437797161757896
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 22:29:58 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@faresoftware.it
 header.s=20210817 header.b=Aup0eQ15;
 spf=pass (domain: faresoftware.it, ip: 93.38.119.136,
 mailfrom: mauro@faresoftware.it)
Message-ID: <0541e8b8-7133-e685-7033-7d60567e12e4@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1643437787;
	bh=1WR+65UWMEea23pXMA9up4dyhDhyWwv2bGtWpr1L7ZE=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=Aup0eQ15vVMDbf8rq6aqGCraCdksNkslagSUAt5C1VPLzo9gLqYUnCSsodGZp9l27
	 GopnLTgk5Nvbqr0b+MAMch570P9kR/AsWL7jC9A5tBOzcxT8T9C9FPKWsxiIPx5ibL
	 uAC35kKDiSCW5TmYQjqYWSV3axOU4Yv9k2HQDlS4=
Date: Sat, 29 Jan 2022 07:29:52 +0100
MIME-Version: 1.0
Subject: Re: [yocto] Python3 app install best practice
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <16CDE2483A1A6718.24088@lists.yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
In-Reply-To: <16CDE2483A1A6718.24088@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-Spam-Status: score=-0.1, required 5, __NOT_A_PERSON 0,
 FROM_HAS_DN 0, TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, __THREADED 0,
 TO_DN_NONE 0, RCPT_COUNT_ONE 0, SCC_BODY_URI_ONLY 0.001, RCVD_COUNT_ZERO 0,
 FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0, __BODY_URI_ONLY 0,
 MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 29 Jan 2022 06:29:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56018

Hi list.

I solved my problem working with distutils parameteres inside myapp.bb=20
recipe


Mauro


On 26/01/22 18:30, Mauro Ziliani via lists.yoctoproject.org wrote:
> Hi all
>
> I'd like to install my python3 application in a custom folder with all=20
> local packages and data.
>
>
> The source code folder has this tree
>
>
> ./myapp/__main__.py
>
> ./package/__init__.py
>
> ./package/pkg.py
>
>
> I manage the application by myapp_1.0.bb recipe.
>
> I'd like the myapp_1.0.ipk package contains
>
>
> /home/apps/myapp/__main__.py
>
> /home/apps/package/__init__.py
>
> /home/apps/package/pkg.py
>
>
> I try setup.py and=C2=A0 inherit setuptools3 in my myapp_git.bb but=20
> 'packages' is installed under python system folder.
>
>
> There is a way to customize the path of python package installation?
>
>
> MZ
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55983): https://lists.yoctoproject.org/g/yocto/mess=
age/55983
> Mute This Topic: https://lists.yoctoproject.org/mt/88702098/3617482
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mauro@fareso=
ftware.it]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

