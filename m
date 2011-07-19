Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f46.google.com (mail-pz0-f46.google.com
	[209.85.210.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id A3C344C80579
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 01:01:17 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk3 with SMTP id 3so4788711pzk.33
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 23:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=XKbQI524kxu2aWJIFCqaow17Poccjr0J50yZ6suzsTc=;
	b=mi8poOtLWgbC2p8luHrtC5SSzKyuC/JJpubHJOTjgqiWKspJbgSI+zlHVHu3ClYheh
	YlwJTY8Rk6uzOZu2UjbkAOcLEtXh/bEcy85vbwId02+yLu2y/xJIuhJZuZWx/Bvdd9l8
	G3Ftrw4mEisHvLb1A+Pb1+eeccilp8khGPNv0=
Received: by 10.68.29.200 with SMTP id m8mr610043pbh.278.1311055277062; Mon,
	18 Jul 2011 23:01:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.62.36 with HTTP; Mon, 18 Jul 2011 23:00:47 -0700 (PDT)
In-Reply-To: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Jul 2011 23:00:47 -0700
Message-ID: <CAMKF1soiord+ynt4Hy4tpG-hTd9qTaA-PGUPM1H4mp5RnUujCg@mail.gmail.com>
To: Kumar Gala <galak@kernel.crashing.org>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/5] Add support for PowerPC e500v2/SPE
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Jul 2011 06:01:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 18, 2011 at 10:21 PM, Kumar Gala <galak@kernel.crashing.org> wr=
ote:
> The majority of support for the PowerPC e500v2/SPE target already
> exists. =C2=A0However some minor cleans are required to get things workin=
g
> completely.
>
> The e500v2 utilizes a unique floating point programming model / ABI from
> other PowerPC targets and thus requires special handling.

Hi Kumar

Thanks for the patches

all these patches should be CCed to
openembedded-core@lists.openembedded.org as well

>
> - k
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

