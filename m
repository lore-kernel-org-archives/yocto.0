Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 685A9E00519; Mon,  6 Mar 2017 23:24:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 280EEE004D8
	for <yocto@yoctoproject.org>; Mon,  6 Mar 2017 23:24:08 -0800 (PST)
Received: by mail-lf0-f41.google.com with SMTP id j90so45979660lfk.2
	for <yocto@yoctoproject.org>; Mon, 06 Mar 2017 23:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=iwUjHK8p995mJAXE93PbrSF7VefaR2hI+Cw9rpuSby0=;
	b=Mh7EzmPDJFzKsabSsIoSfd317FndBSFDgrqOLgONxcnP+qkMq1wQZPiOH0SuK8r0hB
	8t9TAQuSWDo621bhKRuLiSlSpGf421AAMgNXXmV28sbDFqBs+poARySBKzlhsMBdCiuy
	C21Tptj7+mYiFX5noSpAtddKGebh0FLWPHxmY7H6gXqSbkr5VVhzdJgm8fBeZO1sLmLu
	meCdzg5tY7KIoXNyxpyT9BedEexRyKrbl3JJTWVoCdOi/8GeKBZ/UicB90YnSNjF4MKt
	PUC8ofszJC24HJmL0KfiaNa2Yn3bhiLWMex9LgMDjnMNtZTxTsEBRPwB16Gi/9MdC8bl
	jlBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=iwUjHK8p995mJAXE93PbrSF7VefaR2hI+Cw9rpuSby0=;
	b=P4bEIkoKjpNeobWWLi15tQ3irlpxKpbP8MLidgpFF7mHZmnRj1C87aYDLduotKg8bv
	CF12+b08u70J0ByinK0l/UxV9WviCZ+hiGfrGN0BX4XY4BrEEglH0151CsYl8xDVumDJ
	w9bhvB615G+ScMvSXBp21xvOs4v++Mwo973mRfX4j427L+M12rpwwIYpi49tyCKJpe3+
	k4++v+XzuesTVacaBuD1ojTDaZ4dnMa7sSG0Bx5auUxnfcsWit6mNHGrVQGnIjTOkq9S
	c1IXK2tXt5J+gQ980u+0+WVZYUBHDx/eEEg9hgk+MACbTJETX1vBLoaQKDsq9MfRr/d/
	0qQw==
X-Gm-Message-State: AMke39kUbeAnQGTNtSnH67eNZ4uP3HMi2BxdAiUVgUhVyWR/gtnnUsPYhG4VPOK95M4R/g==
X-Received: by 10.46.33.141 with SMTP id h13mr6599269lji.135.1488871447135;
	Mon, 06 Mar 2017 23:24:07 -0800 (PST)
Received: from ad.chargestorm.se (194-237-220-218.customer.telia.com.
	[194.237.220.218])
	by smtp.gmail.com with ESMTPSA id h13sm4726248ljh.5.2017.03.06.23.24.05
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 06 Mar 2017 23:24:05 -0800 (PST)
Date: Tue, 7 Mar 2017 08:24:04 +0100
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20170307072404.4p6jsfhcjnsgwgyn@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <alpine.LFD.2.20.1703030646270.9739@uk63952.mitel.com>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1703030646270.9739@uk63952.mitel.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: BSP Guide: what means "bsp_name.conf"?
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
X-List-Received-Date: Tue, 07 Mar 2017 07:24:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Robert P. J. Day <rpjday@crashcourse.ca> [170303 12:50]:

> "Note
>  When the preferred provider is assumed by default, the
>  PREFERRED_PROVIDER statement does not appear in the bsp_name.conf
>  file.                                               ^^^^^^^^^^^^^

>   can i assume those should read "machine.conf"? because i have no
> idea what "bsp_name.conf" refers to as it is.

Yes, that's the machine.conf...

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

