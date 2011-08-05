Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B14CBE00771
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2011 10:34:09 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyn35 with SMTP id 35so3526431iyn.21
	for <yocto@yoctoproject.org>; Fri, 05 Aug 2011 10:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=wpfqjQfUY8MQz/yTOwllpCsY0RusOT+xUED8rg+WqqU=;
	b=B0RHnTtM8iB55oTGbZTw9rU+ZwYxuQoaoPeHVUJyGBg7B6KV0ZhvYF1oITF9SSzFeq
	j5hv5qq22+jdmyTe4nP1FT0cV87+wJIoVwkYhu1nqCZXj+FhugLCUJmvNLFjlgtcUdmB
	TkBUgsIhxc7jzxdIx7dyXuoewcb8aRA+NdgeU=
Received: by 10.231.113.98 with SMTP id z34mr1929594ibp.28.1312565658021;
	Fri, 05 Aug 2011 10:34:18 -0700 (PDT)
Received: from [192.168.1.70] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id t14sm2159940ibi.23.2011.08.05.10.34.16
	(version=SSLv3 cipher=OTHER); Fri, 05 Aug 2011 10:34:17 -0700 (PDT)
Message-ID: <4E3C2997.30503@gmail.com>
Date: Fri, 05 Aug 2011 10:34:15 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0) Gecko/20110801 Thunderbird/6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <cover.1312523399.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1312523399.git.jingdong.lu@windriver.com>
X-Enigmail-Version: 1.2pre
Subject: Re: [PATCH 0/1] meta/pandaboard: add pandaboard bsp
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
X-List-Received-Date: Fri, 05 Aug 2011 17:34:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 08/04/2011 10:58 PM, jingdong.lu@windriver.com wrote:
> From: Jingdong Lu <jingdong.lu@windriver.com>
> 
> Add pandaboard bsp

why not use meta-ti ?

> 
> Jingdong Lu (1): pandaboard: add pandaboard bsp
> 
> .../bsp/pandaboard/pandaboard-non_hardware.cfg     |   30 ++ 
> .../bsp/pandaboard/pandaboard-standard.scc         |    7 + 
> .../cfg/kernel-cache/bsp/pandaboard/pandaboard.cfg |  346
> ++++++++++++++++++++ 
> .../cfg/kernel-cache/bsp/pandaboard/pandaboard.scc |    5 + 4 files
> changed, 388 insertions(+), 0 deletions(-) create mode 100644
> meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-non_hardware.cfg 
> create mode 100644
> meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-standard.scc create
> mode 100644 meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.cfg 
> create mode 100644
> meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.scc
> 
> _______________________________________________ yocto mailing list 
> yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto


- -- 
- -Khem
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEARECAAYFAk48KZcACgkQuwUzVZGdMxSjEwCdHLqsMwcYEhAblghgJio7tJPK
Sm8An2Xps8CntGIGV0bFxTJw/dIAL6pV
=PeJ+
-----END PGP SIGNATURE-----

