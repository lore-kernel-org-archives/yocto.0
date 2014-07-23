Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 074EBE0078F; Wed, 23 Jul 2014 03:06:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2D9EE00572
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 03:06:38 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id q107so1095287qgd.12
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 03:06:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=KOxCzeJe5ivPJFvGeetbpE8IbxH3LnB8rlGGyZOAQUw=;
	b=dJAVirYuLsCRoBOoVBJLXhvAAqJp9B54JOG1nUHDwhD5sL9yliY5FC12GfC+x3g2DA
	7MtEF5g39T2ogJTdHZIp2UIlqSpy1ceZrxC8XW36DPQ8Hj9fj9AhUTbbRkV5Ie+hjYHD
	mXhsb7Y6fH/WqBI9yzZ+79pHu/lvVuyT0bEhpTF8wzcSdjJ/6Ueb/lN3MtomGXdXThEX
	1+/b4VR4LOJd+dIsCk+AdnxoEew0lFWCb+dxqi0qe/JHO8ccNy+QqK/vuatt3++VYxOy
	SUFtA+WrbkgWdmYr9uXk/tHZFkbq1+PumAb78GM0bsSc0U76Q+HDGJM3zzRlUjRVqoY6
	6JvQ==
X-Gm-Message-State: ALoCoQnUppYVx0f0mnvVmKnKoTlqMpSl8R/eL9gwicvpDawYQ1hYE2u4LcEw/+tDQuQEWGbcpv0p
X-Received: by 10.224.120.68 with SMTP id c4mr213478qar.17.1406109997417; Wed,
	23 Jul 2014 03:06:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Wed, 23 Jul 2014 03:06:16 -0700 (PDT)
In-Reply-To: <loom.20140723T115536-199@post.gmane.org>
References: <loom.20140723T084046-919@post.gmane.org>
	<CAJTo0La-UMGQ=-+StwSQkfhwRXGHQc5eZ7T1Uez7pVBYGL79Dg@mail.gmail.com>
	<loom.20140723T115536-199@post.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 23 Jul 2014 11:06:16 +0100
Message-ID: <CAJTo0Lbj699Zyq+gX7LDBwrv6XEM=gu1CgrTsbuDYfyHPfdXVQ@mail.gmail.com>
To: Anoop <babu.anoop@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Bitbake Error - rmp-native task failure
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
X-List-Received-Date: Wed, 23 Jul 2014 10:06:44 -0000
Content-Type: text/plain; charset=UTF-8

On 23 July 2014 11:00, Anoop <babu.anoop@gmail.com> wrote:
> Thank you for the inputs.
> So until I over come this error I need to do bitbake rpm-native -cclean and
> then re-run bitbake tizen-common-core-image-minimal-dev. ?
> I'm asking this since i'm continuously getting task error on meta-tizen rpm
> receipt.

That was how I fixed it when I hit this problem.  I suggest contacting
the maintainers of meta-tizen directly, they're probably not on this
mailing list.

Ross

