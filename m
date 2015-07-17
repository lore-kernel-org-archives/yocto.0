Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2149DE009E5; Fri, 17 Jul 2015 10:26:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57AEDE009C3
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 10:26:16 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id B2A1E27E2D1;
	Fri, 17 Jul 2015 17:26:15 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id zMXfPPCORXgG; Fri, 17 Jul 2015 17:26:14 +0000 (UTC)
Received: from [192.168.0.12] (cpc47-live22-2-0-cust92.17-2.cable.virginm.net
	[86.17.157.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id A362127E289;
	Fri, 17 Jul 2015 17:26:14 +0000 (UTC)
Message-ID: <55A93AAF.7010601@dynamicdevices.co.uk>
Date: Fri, 17 Jul 2015 18:26:07 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Richard Tollerton <rich.tollerton@ni.com>, yocto@yoctoproject.org
References: <cover.1437151912.git.rich.tollerton@ni.com>
In-Reply-To: <cover.1437151912.git.rich.tollerton@ni.com>
Subject: Re: [meta-mono] [RFC] [PATCH 0/1] Force MONO_CFG_DIR
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
X-List-Received-Date: Fri, 17 Jul 2015 17:26:19 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi Richard,

On 17/07/2015 17:57, Richard Tollerton wrote:
> Hi Alex,
>
> When you mentioned having weird build troubles, that reminded me that I
> was seeing weird build problems of my own, that I had been refraining
> from sending patches on until I could better characterize the issue.
>
> If you've been seeing weird build failures in executables that really
> should never be failing in the first place -- i.e., gacutils failures,
> or "invalid resx file", or anything involving not being able to dlopen
> libc or being unable to open /etc/mono/config -- you might be interested
> in this patch.

I think I have identified the problems I was seeing with the recipes,
which boil down to the lack of a mono gmcs script and inheriting
autotools-brokensep instead of autotools.

I can't quite understand why you were not seeing the problem at your
end, but I can see that gmcs was removed at end 2014 -

https://github.com/mono/mono/commit/b304ec5e0e694ef7098e0fc3eba9dbc0162f4568

The commits I made today address the autotools-brokensep issue and get
me to a point where I can build image-full-mono with a hand-added gmcs
script in sysroot

(There was a patch needed for monotools-server to support the more
recent mono-xsp and mono-upnp needed autotools-brokensep).

Now I just need to decide whether to reintroduce the gmcs script or fix
all the other autotools configurations...

I am probably going to reintroduce the script due to time contraints
unless you want to take a look at this?

> That said, if you *don't* have problems compiling to an ARM sysroot, I'd
> be interested in knowing that too. :F
>
>
> The following changes since commit 041cc6b70c7fb3b55e73b90b1a101844da1726b2:
>
>   README: Update to remove references to mono < 3.12.1 (2015-07-17 12:38:32 +0100)
>
> are available in the git repository at:
>
>   git://github.com/rtollert/meta-mono dev/rtollert/v5/mono-cfg
>   https://github.com/rtollert/meta-mono/tree/dev/rtollert/v5/mono-cfg
>
> Richard Tollerton (1):
>   mono.bbclass: set MONO_CFG_DIR
>
>  classes/mono.bbclass | 2 ++
>  1 file changed, 2 insertions(+)
>

I use mono primarily on ARM (i.MX6) - commercially, quite a lot - and
haven't seen anything that was problematical with the build for some
time, since I addressed some issues with use of out of tree mono
installed on the host.

So from my experience "all is well" with Mono ARM builds. I'd like to
know about any issues you or others have seen on ARM platforms though
which we need to address.

That said, I can't see any reason not to apply your patch so will merge
that in.

Regards,

Alex


