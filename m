Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 645484C800A1
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 10:05:32 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6RF37FT022343
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Jul 2011 08:05:30 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 27 Jul 2011 08:04:16 -0700
Message-ID: <4E3028EF.2000302@windriver.com>
Date: Wed, 27 Jul 2011 11:04:15 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Kumar Gala <galak@kernel.crashing.org>
References: <0871F19F-E6BF-481E-920E-87091DEF7F49@kernel.crashing.org>
In-Reply-To: <0871F19F-E6BF-481E-920E-87091DEF7F49@kernel.crashing.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BSP in meta layer vs poky
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
X-List-Received-Date: Wed, 27 Jul 2011 15:05:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/27/11 10:23, Kumar Gala wrote:
> I was wondering what distinction qualified for a BSP existing in a meta layer vs in poky directly.
>
> For FSL PPC we currently have MPC8315-RDB in poky.  Ideally we'd have one BSP for each major flavor [ associated with a unique compiler / libc target ].  This would end up being something like P2020-RDB (e500v2 core), P204x-RDB (e500mc core), P5020DS (e5500 core - 32/64 bit).

This sort of coverage would be great, and your options
would be the big ones on my hit list as well. It allows
us to at the least ensure that the build coverage is
complete.

>
> Than everything else would live in the meta-fsl-ppc layer.

This makes sense as well.

There are some other options. The BSPs that you see embedded
in meta-yocto could all be split out into layers. It's largely
a matter of time, effort and benefit. There is the risk of
over segmentation and 'layerization', but we aren't there yet.

The point I'm trying to make here is that if a BSP aligns with
linux-yocto and is one that we are actively using as a reference,
it can be directly in meta-yocto or in another layer and it
will work equally well.

Cheers,

Bruce

>
> - k
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


