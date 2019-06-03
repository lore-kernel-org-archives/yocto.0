Return-Path: <morne.lamprecht@melangex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCF55E00D38; Mon,  3 Jun 2019 07:05:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.54 listed in list.dnswl.org]
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B356E00CAA
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2019 07:05:51 -0700 (PDT)
Received: by mail-wm1-f54.google.com with SMTP id w9so2001wmd.1
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2019 07:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=melangex-com.20150623.gappssmtp.com; s=20150623;
	h=sender:date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=ffhyBPzW1jOnDZWlQ7gb0kQKRomXoyj/3TeuxdY05G8=;
	b=b0vbkFFzVyXT/ggYZ0giwpkDFuqYSJgrtbtrm2TMGZn6vDeIbyRxO5M1UR/fVSVmGw
	ivG6j0I0y5vKmR6oUDwSJxCl/OiCNpS+2lDJms2XRrA+jmaJxuYc/fK1le7RvjmLTxab
	FnRZfY7nCGsZkF6fpSE1PDyT5tOgASsDSsphXWY8dhz3vGDLsT3ABX2PkkVv4EHglIpA
	FmY3AkLq+VfHRTQpi+p++cSbYjkWrzQxLODqKfRFiiQ8sUKF++Kizwj2twFd6GcTlGhL
	/BOsaaZLHmvC067OnzQbetUqdiDOR+jpPT3O7hO50C6DIAJTLRbDWzQZi7fr7pHnEfSw
	ktQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=ffhyBPzW1jOnDZWlQ7gb0kQKRomXoyj/3TeuxdY05G8=;
	b=DTg75U0MfVDK/BWY9v1iNvM7QeIC2Qjw8qtTolgoPdHN7+A97S7/uJn1xnn/IYXsJx
	nD3iO8bHYarkbBOclMrs15dinq6x2j5BgtlkIvEn/L7dLZ+lTJnKa7/iIEUqwt02XA3F
	ASrYqjEw+Zk07uBCmDPyCoMQxZBdsrfhSm7j8Fykv44zw0nmW+Hrp0g/c6aza0fdPdCm
	novoHKXb15zULHSZ5dYH9ErRDprtFeUr9fnktpDYDy8aCP5g8LVdQ7WX6fyDmTKIhwZU
	dMlV2BFEPBVANHaghHqEE4quc7kx07CWw+ep0zdk1HJVHhle15U+/zRrty05vJyPAQFj
	sbLw==
X-Gm-Message-State: APjAAAV6Vnncbi1tVAYLG8FhNJj66Q/xEoNCfedBlPvreWYnwKomXYT9
	OQjB6HQxoiMMi1R8Fcosy+jnGgxrJ48=
X-Google-Smtp-Source: APXvYqw+beekIHFSCQCIZXjvyutSUqRNb4ca2V2YHH5IjuQ8clpqPyR3MFI2ILSQrUovrQ7y2OIJMA==
X-Received: by 2002:a1c:a783:: with SMTP id q125mr2566162wme.94.1559570750156; 
	Mon, 03 Jun 2019 07:05:50 -0700 (PDT)
Received: from localhost ([209.203.60.70]) by smtp.gmail.com with ESMTPSA id
	p16sm28262055wrg.49.2019.06.03.07.05.48 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 03 Jun 2019 07:05:49 -0700 (PDT)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Mon, 3 Jun 2019 16:05:46 +0200
From: =?iso-8859-1?Q?Morn=E9?= Lamprecht <morne@linux.com>
To: yocto <yocto@yoctoproject.org>
Message-ID: <20190603140546.GA28701@archworkstation>
Mail-Followup-To: yocto <yocto@yoctoproject.org>
References: <20190601144016.GA19383@archworkstation>
	<CAAfyv35XN0SiU8PQ0ZL9tXSk52FxkCsOjuXoxYM35egNL6DTxw@mail.gmail.com>
	<20190601182556.GB19383@archworkstation>
	<CAAfyv37b6xSxKE=HYEUkDOQkTYPP_fom73bpf-k07-jT0p6kuQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAfyv37b6xSxKE=HYEUkDOQkTYPP_fom73bpf-k07-jT0p6kuQ@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: do_rootfs fails while attempting to install hostapd package
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
X-List-Received-Date: Mon, 03 Jun 2019 14:05:52 -0000
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

>Which startup system do you use (sysVinit or 
>systemd)? You can take a look at 
>poky/meta/classed/update-rc.d.bbclass which 
>checks various parameters and try to debug it 
>(by adding some printouts). By my guess is that 
>some misconfiguration between systemd/sysvinit 
>must cause this issue.

Adding DISTRO_FEATURES_remove += " sysvinit" to 
my distro conf file, solved the problem.

I also have DISTRO_FEATURES_BACKFULL_CONSIDERED = 
"sysvinit" in my config (also had it during the 
failed builds), I thought it would prevent 
sysvinit from being added/backfilled to the 
DISTRO features ? So I'm not sure why 
DISTRO_FEATURES_remove is also required in this 
case ?

		- Morné

