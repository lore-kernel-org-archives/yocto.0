Return-Path: <koansoftware@gmail.com>
Received: from mail-bk0-f47.google.com (mail-bk0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA739E01480
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 08:31:28 -0700 (PDT)
Received: by mail-bk0-f47.google.com with SMTP id jg1so486930bkc.34
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 08:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:organization:user-agent:mime-version
	:to:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=66MO0Jpy7BIxJ3dx5JSShGNAdkTDQcImu4ZKq6vlGBc=;
	b=c134lI4505j4z2UzxQwLBitZBE3R3gRT6Z1GmCUFg85QMB2HqUspDV+TZXQ+oPTnhE
	WkaDDV+4nFCqZdeA0rA+Z6iVN+zaSBBj26tjoPiQiZoSJGhBLzhF/sunvdMorWb0A/VD
	U9ukGfdbCMIgBvv/9cZSKsS9yQpeMGZCNJ4YK5JWDlfsDX108E9IdgVgzq9W6jvNim5H
	uFxz81Lpi1nXr5niU3hWuIDr9PdDcAvtPaL5YUCND7zR6x7oIWbHbZxY0cSVqnfgtTlW
	qTVXHAaFUll6JjHRDXsZBQ5kmhshMWDetNK2w2fSin1Tci/Nwoxkxt2XhRw/EQp4ovyl
	lGCQ==
X-Received: by 10.205.68.195 with SMTP id xz3mr1647209bkb.41.1369150287612;
	Tue, 21 May 2013 08:31:27 -0700 (PDT)
Received: from [192.168.0.5]
	(host56-7-static.30-87-b.business.telecomitalia.it. [87.30.7.56])
	by mx.google.com with ESMTPSA id cl14sm898444bkb.6.2013.05.21.08.31.25
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 21 May 2013 08:31:26 -0700 (PDT)
Message-ID: <519B934C.4020909@gmail.com>
Date: Tue, 21 May 2013 17:31:24 +0200
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Yocto discussion list <yocto@yoctoproject.org>
References: <CAAGt+t3ueJoFB=Vf9sX5pE5CTx4g9QG6px9XjW-uUrDH49BJvg@mail.gmail.com>
	<CANyK_8ffvTksbu+nT=yAw7-5zV9n6+3dxY0XqiPVt=j5j6+5LQ@mail.gmail.com>
	<CAAGt+t3+aTm5fYopwCjK5ced1MMNBZN__4wKFQsaTKmfy9H+SA@mail.gmail.com>
	<CANyK_8dRpZ1us_mZRvhLk6rCT3xZ4A5dmeAar2D2B0w6ntaZXw@mail.gmail.com>
	<CANyK_8dYMkL8j5nu781+V-LvpiLnExJQ4VLTLoVkMt+ckESSQw@mail.gmail.com>
	<CAAGt+t3GGu+jdCg6AW5xygVKaM3x2AHyw8VCq86O83cRonE9Jg@mail.gmail.com>
	<CANyK_8fpGVGxoi+2f_b6RLWYaoZqj2z2WQ7kbiVZQ+A7-Hbmrw@mail.gmail.com>
In-Reply-To: <CANyK_8fpGVGxoi+2f_b6RLWYaoZqj2z2WQ7kbiVZQ+A7-Hbmrw@mail.gmail.com>
Subject: Re: Hello world package error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 May 2013 15:31:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Il 21/05/2013 13:08, Paul Barker ha scritto:
> On 21 May 2013 12:02, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:

> If you run into a missing dependency, search for it on
> layers.openembedded.org:
> http://layers.openembedded.org/layerindex/recipes/?q=devmem
>
> Does your bblayers.conf point to the relevant layers?
>
> I'm just guessing here, I'd advise including the beginning of your
> bitbake output in any error report as that tells us what layers and
> versions your using, what the target and host platforms are, etc.


Add in bblayers.conf

BBLAYERS ?= " \
...

   /home/siguser/yocto/poky/meta-bebot \



Cordiali Saluti / Kindest Regards / Mit freundlichen Grüßen
-- 
Marco Cavallini | KOAN sas | Bergamo - Italia
  embedded and real-time software engineering
Phone:+39-035-255.235 - Fax:+39-178-22.39.748
       http://www.KoanSoftware.com

