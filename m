Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 561E5E00566; Tue, 26 Aug 2014 09:44:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB392E004F5;
	Tue, 26 Aug 2014 09:43:59 -0700 (PDT)
Received: by mail-pd0-f178.google.com with SMTP id w10so22978466pde.37
	for <multiple recipients>; Tue, 26 Aug 2014 09:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=OnwAkm7yEIqQB4X5Msv0zHY+YcaulLOjoGUp7xxlXkk=;
	b=hdfdMYL8ikvOBKIRswwpO2p2nPLJT6d64KlCg1g0CF5RxceLjny8DDq19nkSLp6rYQ
	gzJ3wzsrgfus21brnKvi+MLxLFIIbJ0Jx/TXSCRBwsiWs+5IYcuxFvkWitCNG8ifDuWA
	IvZMHdbP+Y8DExCISSERur1ybVuYyrQZ8RwDoNqM8NweeEH9bLnLbEezf9ZJ49HXdVKz
	9jMDtStA2ngCXB7oBCmUfLmuYdf8F+TUFukVtwEEEgdpYANYq8VrYT6eAVc3ifh8P3Sv
	f8Cn3iSgF8mtDWn95NQJA4lz3prXVKu/gk3wYWGzHv3f5kFkRmb0lDiCXvKzrw9ob76M
	1qgQ==
X-Received: by 10.69.20.97 with SMTP id hb1mr20714759pbd.150.1409071438896;
	Tue, 26 Aug 2014 09:43:58 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id bf3sm3723066pbb.32.2014.08.26.09.43.58
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Aug 2014 09:43:58 -0700 (PDT)
Date: Tue, 26 Aug 2014 09:47:43 -0700
From: Khem Raj <raj.khem@gmail.com>
To: jags gediya <jags.gediya@gmail.com>
Message-ID: <20140826164742.GD18989@haswell>
References: <CAP3RZoguYp0g+oWc7Fx4qghYv4L3=Zp_NVCY5G1f149-AxWmJQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAP3RZoguYp0g+oWc7Fx4qghYv4L3=Zp_NVCY5G1f149-AxWmJQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Remove Bluez4 and add Bluez5 in core-image-base
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
X-List-Received-Date: Tue, 26 Aug 2014 16:44:02 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-26 20:18:36, jags gediya wrote:
> I am using yocto project for imx6sl evolution kit based custom board.
> I want to use core-image-base as basic image and put other packages on that.
> By default , core-image-base have Bluez4, but i want to use Bluez5.
> How can i remove default Bluez4 from core-image-base?

PREFERRED_PROVIDER_bluez4 ?= "bluez5"
and have 'bluetooth' in DISTRO_FEATURES

