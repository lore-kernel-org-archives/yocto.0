Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B306FE008EC; Sun,  9 Aug 2015 14:08:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B12DE00306
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 14:08:42 -0700 (PDT)
Received: by wicne3 with SMTP id ne3so113899318wic.1
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 14:08:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=n7E9VAfU2ZoNHpmCcvS5C60ft8qVLEoWGAkVtXh1QlI=;
	b=R2MGXicPTdXDZqHfnvGVh3aWOk12Gx5frCf6zaxoVSMJO8CdeXSmPVh3OknlTUo/Vp
	whIdWbaTTOWNXBkqHLQgCln6zykIz8c3z7/XafzIlwO03datT9ZxTDiiSDpu6ZNWyn2z
	bfcvWnGAKIBxE+zIp8KRkNoVO+e9yXBXa9lbX+b+XkDTgVfZc3W2Lnt9yu1YwfayGmzH
	eW6LtTuS7Rzyvq4iDTAN3SLuNNlllrQ3XxgYfjPiC977+nkq3ftGn+KhkgmlMh1lkaoq
	2S9FH35kAzEyTaWrTOQC2AwaJ5pT7icg3wIs946Cf4m1oyiOuPcyTvvzp9FWsG8hY2/w
	a6uA==
X-Gm-Message-State: ALoCoQnxNtPr/YumeI+njVmwRNQ0oyOIn/tsikwljwV/U2/zQY+RqBFEF7H6Iei44dRhfYlu9kbG
X-Received: by 10.180.73.13 with SMTP id h13mr17438427wiv.79.1439154521580;
	Sun, 09 Aug 2015 14:08:41 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	hd6sm10351005wib.19.2015.08.09.14.08.40
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Aug 2015 14:08:40 -0700 (PDT)
Date: Sun, 9 Aug 2015 23:08:38 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20150809210838.GA17962@resin>
References: <1439136500-16714-1-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1439136500-16714-1-git-send-email-raj.khem@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] userland: Fix POSIX compliance expectation
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
X-List-Received-Date: Sun, 09 Aug 2015 21:08:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Khem,

On Sun, Aug 09, 2015 at 09:08:20AM -0700, Khem Raj wrote:
> We have errors like below with glibc 2.22+
>
> net_sockets_common.c:139:20: error: storage size of 'hints' isn't known
>     struct addrinfo hints, *info, *p;
>                         ^
>
> newer glibc has now fixed the definitions of getaddrinfo and ilk to be
> enabled with correct posix version.
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  .../userland/0001-Use-newer-POSIX-macro.patch      | 35 ++++++++++++++++++++++
>  recipes-graphics/userland/userland_git.bb          |  1 +
>  2 files changed, 36 insertions(+)
>  create mode 100644 recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch
>

Patch merged to master. Thank you.

--
Andrei Gherzan

