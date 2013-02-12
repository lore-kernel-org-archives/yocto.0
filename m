Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f54.google.com (mail-vb0-f54.google.com
	[209.85.212.54]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 5CE76E00496
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 12:54:24 -0800 (PST)
Received: by mail-vb0-f54.google.com with SMTP id l1so333663vba.13
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 12:54:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=DJAnw3AQpcyC12VQ503a8nu7LNU//RVHZnSrj8gKy8g=;
	b=ZpyHmYDtZaBsxWCtv2+AD9gPEPzMn7Q9kJXX0I4+CTUplYByKDOc9KBu7ZEhaxJnMq
	+3pfCslb9BRlOYho+32efwyMrU7bcI97yCSs7cEAsB0/5H8GgVyFcymhhh8Ilp1CxKcY
	8m3fXNHBWIswMWgIN1a+d0O0QPsBQ/O8NzsxJnIVp6rhZmIpTaUIzvqIpwfua7SwAF4A
	zwLtTPuQPkDbOzKbA8K0wHKX8UJyjRuoxe5fpvlTG+K+MsJP2qnVd/IPTKVrFUTmtdrb
	vHGm0ARy1aBcWJplRdSuSN8AwFozDrnE1OtOJCw06n1oHNwDoikK0XUfuojI0eC6wsSf
	0NGA==
X-Received: by 10.52.23.18 with SMTP id i18mr22207936vdf.46.1360702462982;
	Tue, 12 Feb 2013 12:54:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.131 with HTTP; Tue, 12 Feb 2013 12:54:00 -0800 (PST)
In-Reply-To: <1360699012.1516.26.camel@empanada>
References: <cover.1360365190.git.kishore.k.bodke@intel.com>
	<719480A2-D38E-4B74-B815-352C17223899@keylevel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A6A717A89@ORSMSX101.amr.corp.intel.com>
	<E89AA40D-0FA6-4BC2-99D2-9548F06BDA5D@keylevel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A6A718D1C@ORSMSX101.amr.corp.intel.com>
	<000001ce08e6$9b51c250$d1f546f0$@annabooks.com>
	<1360699012.1516.26.camel@empanada>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 12 Feb 2013 20:54:00 +0000
Message-ID: <CAJTo0LYDu1wtoDQJopGhx9_6r7fKwRpFezn73NNm=myQu43OCQ@mail.gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Gm-Message-State: ALoCoQnM3M6bSkLkQ7aGsdaCDf18PVPhXjOsiaGkwZ+sPMzbpxiSrE/6aBcwOPKMTG5+8F+M328c
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH 0/1][linux-yocto] Remove Cedartrail Machine
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
X-List-Received-Date: Tue, 12 Feb 2013 20:54:24 -0000
Content-Type: text/plain; charset=UTF-8

On 12 February 2013 19:56, Tom Zanussi <tom.zanussi@intel.com> wrote:
> It probably wouldn't take much to bring it back - basically the pvr
> graphics driver, which I assume is one of the most important features of
> this BSP for users, is stuck at kernel version 3.0.  If everything else
> stayed the same, forward-porting the GPL'ed kernel portion of the driver
> would be all that would be needed to get it working again.  We've done
> that routinely for other drivers such as EMGD, so I don't think that
> would be too big a deal.

Alternatively there's the fully open source but non-accelerated
graphics drivers.  This would let the BSP survive, but is anyone
(Chris, I'm looking at you here!) using CDT in a situation where the
open 2D driver is sufficient?

Ross

