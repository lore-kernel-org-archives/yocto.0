Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 42C214C80815
	for <yocto@yoctoproject.org>; Tue,  9 Nov 2010 18:34:58 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAA0YtAq024895;
	Wed, 10 Nov 2010 00:34:55 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 24843-01; Wed, 10 Nov 2010 00:34:51 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAA0YcJG024889
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 10 Nov 2010 00:34:45 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4CD9663A.50200@windriver.com>
References: <8EA2C2C4116BF44AB370468FBF85A77701BC9526F4@orsmsx504.amr.corp.intel.com>
	<4CD8601A.4090500@windriver.com>
	<8EA2C2C4116BF44AB370468FBF85A77701BCA3809D@orsmsx504.amr.corp.intel.com>
	<4CD8E634.1090403@windriver.com>  <4CD9663A.50200@windriver.com>
Date: Wed, 10 Nov 2010 07:31:58 +0800
Message-ID: <1289345518.1272.55.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: [PULL] devel/toolchain Recipes upgrades
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
X-List-Received-Date: Wed, 10 Nov 2010 00:34:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-11-09 at 09:18 -0600, Mark Hatle wrote:
> On 11/9/10 12:12 AM, Bruce Ashfield wrote:
> > On 10-11-08 7:41 PM, Kamble, Nitin A wrote:
> >> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> >>
> >> Out of curiosity. What's the logic/requirement behind this
> >> change ? Since we don't have a 'supported' 2.6.36 kernel, using
> >> these would be a mismatch with what is actually booting on
> >> the targets.
> >>
> >> There's probably something I just don't understand here, so
> >> apologies in advance for the (potentially) dumb question.
> >>
> >>      AFAIU the linux-libc-headers are independent from the running kernel. These are headers for libc.
> >
> > But they aren't. The libc headers should be coupled to the
> > kernel version. New ABIs are established and glibc can detect
> > and deal with this, but you should never have a newer set of
> > headers than the running kernel.
> >
> > To say the least, I'd like more explanation of this change.
> 
> I agree with Bruce here.  If anything the linux-libc-headers should be the same 
> or OLDER then the running kernel for this exact reason.  It's quite dangerous 
> for newer kernel headers, as they may trigger behavioral differences within the 
> glibc configuration.

When you compile [e]glibc you specify the oldest kernel you wish to
support. As far as I know it is safe to use a recent set of kernel
headers to build [e]glibc and then use older kernels with it. I have
never seems a problem caused directly by kernel versions unless it was
related to ABI changes or massive kernel version differences (2.4
kernels on a 2.6 optimised glibc, compiled with 2.6 as the oldest kernel
it would support).

I'm therefore ok in general with keeping linux-libc-headers tracking the
most recent kernels and letting the toolchain optionally support
features from the most recent kernel.

If I'm missing something or anyone has experience of this causing
problems I'd be interested to learn about it though.

Cheers,

Richard


