Return-Path: <prvs=1246e5721c=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D1FDE0094C; Tue, 14 Mar 2017 02:32:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.160 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BD79E00901
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 02:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1489483956;
	l=1383; s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject;
	bh=+d7nuwArCD1fYc09aVqqH83VEMclTpZEw2f0eGGL0o0=;
	b=p72Q1C9/IGhe65pp6ItsRxb2nb9RIZd35eKFllJE0L4jBc/0HpurraObVo3haa/ndG
	9fiFX7CrzHs/UZjEeNYA0nrnkhe+J9emzEpPMgtv3SL8w0iJOV1Dp2CuOx+rW/vkytYQ
	I02ktAMpznL4lf+fBykLosgO+HKWrMAQzdfsY=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPWwJyH/ODuV4n+N24+CqMVTDvFFN0+xNtPaAoGLw2S47Aw5p3DMOqepD6BZ9BTbdag==
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:5ef5:79fb:18fe:329c:af6c:cbea])
	by smtp.strato.de (RZmta 40.1 AUTH) with ESMTPSA id 601e51t2E9WZz6k
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Tue, 14 Mar 2017 10:32:35 +0100 (CET)
Received: from [x.x.x.x] by mail.rsi-elektrotechnik.de (Cipher
	TLSv1.2:AES-SHA:256) (MDaemon PRO v16.5.2) 
	with ESMTPSA id md50000509475.msg; Tue, 14 Mar 2017 10:32:26 +0100
X-MDRemoteIP: 80.147.52.21
X-MDArrival-Date: Tue, 14 Mar 2017 10:32:26 +0100
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1246e5721c=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
To: ravikiran j <ravikiran.j@mistralsolutions.com>, yocto@yoctoproject.org
References: <CALDHXteTtgxuKk_6iO4c8GhGqzTo_DVHS7jAB6tGijnY5ivORA@mail.gmail.com>
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <44dd7195-b6a0-c64b-7c3d-75940ba45f53@rsi-elektrotechnik.de>
Date: Tue, 14 Mar 2017 10:32:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CALDHXteTtgxuKk_6iO4c8GhGqzTo_DVHS7jAB6tGijnY5ivORA@mail.gmail.com>
Subject: Re: core-image-minimal-xfce error
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
X-List-Received-Date: Tue, 14 Mar 2017 09:32:40 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 14.03.2017 10:20, ravikiran j wrote:
> I am using ubuntu 14.04 build system and Yocto 2.1.

You probably mean poky/OE 2.1, which is krogoth

>
> ERROR: ExpansionError during parsing
> /home/mistral/yocto/poky/meta-openembedded/meta-xfce/recipes-xfce/xfce4-power-manager/xfce4-power-manager_1.6.0.bb
> <http://xfce4-power-manager_1.6.0.bb>: Failure expanding variable
> PACKAGECONFIG, expression was ${@bb.utils.filter('DISTRO_FEATURES',
> 'systemd', d)} which triggered exception AttributeError: 'module' object
> has no attribute 'filter'

The version of xfce-power-manager in the krogoth branch is 1.4.4, not 
1.6.0. Probably you are mixing up the revisions.

> What is the problem and how to solve this problem  ?

Version mismatch, fix your layer revisions.

Greetz
-- 
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


