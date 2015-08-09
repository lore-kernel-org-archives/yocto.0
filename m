Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47D77E00A8C; Sun,  9 Aug 2015 16:51:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4E5FE006EE
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 16:51:04 -0700 (PDT)
Received: by wicja10 with SMTP id ja10so3717557wic.1
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 16:51:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=Kvjik5FqNZdk9hCpbZRUSLbdB4MyLP5NkEn7htaZrh0=;
	b=jcDmE5rarH1vXLvA3vMoi53w/+G9xOdyECxAw2s0vQsLfGph390zAleRH0WOfDnnwX
	7edliTGodPUNnAgXsMV0B6E0qgp0HVBd0PSiARL8qJ5OGF88JzrBnMiUUS8FoG5DGlkn
	mrfBaJacvJWUbm+8wIgEcDioF73KbQeO5rUuR/2N6rxNLiFZxR0cEXmJzKUYrIn5Txqh
	BilGUb5mhjaZs6txrVmZMpiPgtpZ5BndnXHDWvLa1N14OC3A1uGtSwQf2V3Z1ACLZ5JB
	Gjs2ZYHmHxcC0W/Nh09PaPPfkgXuLw00NKWEq1+96Cc0Owl4zpgkdT3hFdBBODE0Nnqo
	Of6A==
X-Gm-Message-State: ALoCoQmSk1cQTJc09phf8syt+Jl3S0K/rFp+fXauKG7OG6zmqtK/F3mSVYhkXGgdah/gas/CHc/V
X-Received: by 10.180.21.169 with SMTP id w9mr19372687wie.73.1439164264212;
	Sun, 09 Aug 2015 16:51:04 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	dz4sm10867346wib.17.2015.08.09.16.51.02
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Aug 2015 16:51:03 -0700 (PDT)
Date: Mon, 10 Aug 2015 01:51:00 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20150809235100.GP17962@resin>
References: <cover.1437600372.git.petter@technux.se>
	<7c508bdaa77ecacf897f5470c85767ed6702fd6e.1437600372.git.petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <7c508bdaa77ecacf897f5470c85767ed6702fd6e.1437600372.git.petter@technux.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] packagegroup-rpi-test: Add pi-blaster
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
X-List-Received-Date: Sun, 09 Aug 2015 23:51:12 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi,

On Wed, Jul 22, 2015 at 11:29:52PM +0200, Petter Mabäcker wrote:
> Ensure that pi-blaster is built and included by default when building
> 'rpi-test-image'.
>
> Signed-off-by: Petter Mabäcker <petter@technux.se>

Merged to master. Thanks.

--
Andrei Gherzan

