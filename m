Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D1B9E00D54; Mon, 10 Jun 2019 15:18:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.41 listed in list.dnswl.org]
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94343E00D4C
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 15:18:20 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id 207so855345wma.1
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 15:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=gDRWwseJMKqJvKm+hs1oPVIIFgl7X7lMHT4FRTskXUg=;
	b=NgiNX4Hr6a2bxLkq4aX5ZjXfnZMisP66A4qT5BN3O9BtPCZ2Azn/aTEo+NhkdEoP/F
	ip67uDKJmz3vSWwUHoEkviXb+NgaCj1FjUpXOb6Dulroi4ozuJHj1+paUXAt4RZB3NWu
	dxdaAdLVh/R9X6u8B5nJfacWwSOIfu/gqEM7I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=gDRWwseJMKqJvKm+hs1oPVIIFgl7X7lMHT4FRTskXUg=;
	b=GhX1uVDqkI73PG0x37tzsfx1sY96eiUxILUT2VlYqi9qy0HxnnaARFgCNCcBiVdt+j
	osA3vPiWNkCcmFK0ZP2+91D47I1PXWqbbuPmONubyBrVLiaGCBDg6c5yyXx1t6s36mea
	9dLOgGJ+OUS1K0jrrsNo+t6o47C4J5p+cgaK5FAYB0Y79H+LOQZfskzenG0SsOVJTXDx
	IeWJrMcN30TM617KrWI1kPCFDSIEs2jrdv4oSNM9ap+t4y/s5Uf5m2CSU0ZWWFEflLyF
	+YV0W05ncwywqVb0q6BXqmYRg6/E+VnwT0Sc0W9a1Lj+UH50UOGIZvS2tRMPyMJhHz/L
	60OA==
X-Gm-Message-State: APjAAAUt7ag5p1S6p3F0a+n8W84SNpIrbXjF5Hlk1NZcy5BU7ENtQ2Ik
	QfFZNKktXlXuvFwFsOj5W2FXSQ==
X-Google-Smtp-Source: APXvYqzW8+SzhhLmFT6t2FeXtTKail2lybHZPHW5mXVELgaxFnHkS2hfdy3hxOy4B+AbpTBwHo0IYQ==
X-Received: by 2002:a1c:a00f:: with SMTP id j15mr16169224wme.167.1560205099614;
	Mon, 10 Jun 2019 15:18:19 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	t198sm1200488wmt.2.2019.06.10.15.18.18
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 10 Jun 2019 15:18:18 -0700 (PDT)
Message-ID: <41f4e149903ed82864c7160a558ba5d41b2074e3.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Poky Build User <pokybuild@debian8.yocto.io>, yocto@yoctoproject.org
Date: Mon, 10 Jun 2019 23:18:17 +0100
In-Reply-To: <20190610213814.BC1771A009F@debian8-ty-1.yocto.io>
References: <20190610213814.BC1771A009F@debian8-ty-1.yocto.io>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: otavio@ossystems.com.br, aaron.chun.yew.chan@intel.com,
	akuster808@gmail.com
Subject: Re: QA notification for completed autobuilder build (yocto-2.8_M1.rc1)
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
X-List-Received-Date: Mon, 10 Jun 2019 22:18:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-06-10 at 21:38 +0000, Poky Build User wrote:
> A build flagged for QA (yocto-2.8_M1.rc1) was completed on the
> autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-2.8_M1.rc1
> 

I've triggered an rc2 since one of the autobuilder workers messed up
the mips builds.

Cheers,

Richard


