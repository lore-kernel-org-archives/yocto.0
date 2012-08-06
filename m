Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19C32E002A6
	for <yocto@yoctoproject.org>; Mon,  6 Aug 2012 14:44:26 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 06 Aug 2012 14:44:25 -0700
Received: by pbcxa7 with SMTP id xa7so1403207pbc.25
	for <yocto@yoctoproject.org>; Mon, 06 Aug 2012 14:44:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=RbsZaRkpgJClfGS/vowmmBE2Quuk3B1ssMY/zSnoEZw=;
	b=RX/QXY1877ZpXj17/47aulY7KdxT1CnxcpahpDE9sZ+OsCdYmCKiPOGFa4ajtdsjnp
	0Ijlq54FBRMM1q1rWDp0Ql/BfSE1ADV574gKk8Gtoequomy2PT3otaGqoFlFE8+TK9Fg
	8Tgr0n5u8G0Lg4lDsB6+YYZUQnWKOtysxKKbKGbcphCbcJ2zLBnyYbAr1eeH1AffHDri
	XZJ0AaxFEbXqKEjwOrmYNTuna5eEEV7Gtr8QYulw2YhQPznK3pmK04c3zzeuQJbWKwgx
	zvx5UaEEYtw57gXzRNuHiXJPdBpGdLHFi+aahsJVY4ECT47T0B/rZM2ATvTZCZPxqHXe
	qweg==
Received: by 10.68.130.37 with SMTP id ob5mr22025909pbb.62.1344289465419;
	Mon, 06 Aug 2012 14:44:25 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id ru10sm6263494pbc.50.2012.08.06.14.44.24
	(version=SSLv3 cipher=OTHER); Mon, 06 Aug 2012 14:44:24 -0700 (PDT)
Message-ID: <50203AC0.8000004@intel.com>
Date: Mon, 06 Aug 2012 14:44:32 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <EFFDC90A-1BC0-4513-ADC8-A39F03309AD5@gmail.com>
In-Reply-To: <EFFDC90A-1BC0-4513-ADC8-A39F03309AD5@gmail.com>
X-Gm-Message-State: ALoCoQljdd3miIxuY2vhFVPf6F82ljRnGKp/SdCcLnDrmsrMls0+zs1xhFKYD2BYxtTzy3dWQV1C
Subject: Re: Adding gcc-4.5.4 release back into oe-core
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
X-List-Received-Date: Mon, 06 Aug 2012 21:44:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/04/2012 12:19 PM, Elvis Dowson wrote:
> Hi Khem, Do you think it makes sense to add gcc-4.5.4 back into
> oe-core, if it turns out that gcc-4.7.2 is causing a lot of issues
> for some targets?

I'll politely add that discussions like this (specifically about 
oe-core) belong on the oe-core mailing list, not this one.

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

