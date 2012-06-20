Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3F9FE01423
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 23:04:02 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-38-202.range86-170.btcentralplus.com
	[86.170.38.202]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id D72E360E52
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 07:04:01 +0100 (BST)
Message-ID: <4FE167D1.9010907@r-finger.com>
Date: Wed, 20 Jun 2012 07:04:01 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A11736@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A11736@ORSMSX101.amr.corp.intel.com>
Subject: Re: developing with devshell and effect of the bitbake.conf file
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
X-List-Received-Date: Wed, 20 Jun 2012 06:04:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Scott,

On 19/06/12 19:13, Rifenbark, Scott M wrote:
> Hi, I want to throw this out for discussion.  I recently was looking
> at a section in the YP Reference manual
> (http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#platdev-appdev-devshell)
> where it talks about developing using devshell.  I asked Darren Hart
> if this was a valid development model and he says it is.

Absolutely, without devshell poky would be just a distro image builder,
devshell makes into a proper development tool, e.g. devshell is by far
the easiest way to develop/maintain patches (together with quilt) or to
tweak applications when debugging and testing.


> There is a
> part of the section though that talks about the bitbake.conf file.
> That section in the conf file does not seem to exist anymore.  And,
> Darren (after some testing) doesn't see how what is in the
> bitbake.conf file affects development with devshell.  Any comments
> welcome.

I think that bit of the manual is leftover from days of distant past.
The terminal selection it mentions generally happens automatically, but
can be forced by the OE_TERMINAL variable from local.conf, where it is
also documented.

Tomas


