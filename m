Return-Path: <raj.khem@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE69CE00B11
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2011 08:00:02 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ggnr1 with SMTP id r1so1053654ggn.35
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2011 08:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=ATcS5E9jRV4PhGeFx0Lyf5KT0QKJIv6GbJt/tKp3NX0=;
	b=cfaG7SdKhTZ20PmQzIGCLxf6REw/exR5oiicn5appQzYSsjm9crZvariMw1VsU7Ciq
	aIyGB6HzzVJ6oQEz12OQRLujhrpdy8tWdOxsb00lAv9DT5sKbvvAMhch1UU0rHmZUAP3
	yIvfM+eX/xsWT/tq8VjyRpBXpqCqDPtTfvJQ8=
Received: by 10.68.30.65 with SMTP id q1mr13123493pbh.91.1319036401095;
	Wed, 19 Oct 2011 08:00:01 -0700 (PDT)
Received: from [192.168.1.70] (99-57-141-118.lightspeed.sntcca.sbcglobal.net.
	[99.57.141.118])
	by mx.google.com with ESMTPS id z3sm8192757pbu.7.2011.10.19.07.59.58
	(version=SSLv3 cipher=OTHER); Wed, 19 Oct 2011 07:59:58 -0700 (PDT)
Message-ID: <4E9EE5E8.50400@gmail.com>
Date: Wed, 19 Oct 2011 07:59:52 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4E9EC5ED.6050503@ts.fujitsu.com>
In-Reply-To: <4E9EC5ED.6050503@ts.fujitsu.com>
Subject: Re: Questions from a greenhorn about build problems
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
X-List-Received-Date: Wed, 19 Oct 2011 15:00:03 -0000
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

On 10/19/2011 5:43 AM, Rainer Koenig wrote:
> Hi all,
>
> I'm using yoctoproject since one week now and got the latest
> yocto-1.1/edison-6.0 git tree. I have been able to build core-image-sato
> for the Beagleboard xM rev. A and the image works fine.
>
> Now my next goal is to build an image for the TI 8148 EVM board. Since
> Yocto is based on OE-core I thought it was a good idea to get the
> meta-texasinstruments layer that is listed in the OE wiki:
> http://www.openembedded.org/wiki/LayerIndex
>
> So I cloned my git tree for meta-texasinstruments from
> git://git.angstrom-distribution.org/meta-texasinstruments
>
> and looked a bit around in that. conf/machine shows a conf for
> c6a814x-evm so I replaced the machine "beagleboard" with "c6a814x-evm"
> in my local conf.
>
> I started `bitbake -k core-image-sato` and after builing around 4100 of
> the 4221 recipes I got an error on a kernel tree from the arago-project
> and from the u-boot compilation. I guess the second error occurs because
> of the first error, so I had a better look at the first error.
>
> The buildstats for this packet show, that fetch failed. I tried to fetch
> the SRC_URL by hand and it worked without any problem. Note: I'm behind
> a firewall, so to clone git://... I need to go over a SOCKS proxy.
> Therefore I created an /etc/gitconfig that works fine and the downloads
> show, that lots of git-repos from the yocto recipes worked without any
> probem, but now those from the meta-texasinstruments layer seem not to
> work. I tried a bit around with bitbake -b -D and saw long commandlines
> with lots of export before.
>
> It exports a GIT_CONFIG which points to
> poky/tmp/sysroots/x86_64linux/usr/etc/gitconfig.
>
> First I replaced this gitconfig with my own gitconfig from /etc, but
> that didn't work. Looking at the file structure there it seems that
> ../sysroots/x86_64linux/ is chroot'ed somehow so I put gitconfig under
> that chroot's /etc and now it seems that fetch is working.
>
> So stupid question: Is there a documentation that explains how that
> build process is working on the machine/script level and why are the
> recipes from yocto behaving different than to the ones that I imported
> with the meta-texasinstruments layer?

they should not behave differently but since kernels and uboot are 
machine specific they will be different and might have fetching problems

Read through meta/conf/site.conf.sample there it lists how to use SOCKS


>
> Best regards
> Rainer


