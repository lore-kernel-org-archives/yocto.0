Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A522E0096A; Tue, 21 Jul 2015 08:39:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB5AFE00837
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 08:39:18 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id BF3C1F811DA; Tue, 21 Jul 2015 09:39:17 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5B90AF811DA;
	Tue, 21 Jul 2015 09:39:17 -0600 (MDT)
Message-ID: <55AE67B9.5010902@mlbassoc.com>
Date: Tue, 21 Jul 2015 09:39:37 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAK5mteyN20HOKiGAu+YJrkdTQ==YDWV75UdLJ1Qmf59tVRs+xg@mail.gmail.com>
In-Reply-To: <CAK5mteyN20HOKiGAu+YJrkdTQ==YDWV75UdLJ1Qmf59tVRs+xg@mail.gmail.com>
Subject: Re: Why do I need to specify kernel-modules in local.conf if I did bitbake menuconfig?
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
X-List-Received-Date: Tue, 21 Jul 2015 15:39:21 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-21 09:30, Victor Rodriguez wrote:
> Hi team
>
> The other day I enable a module ( USB WEB CAM ) in my
> core-image-minimal-xfce but I could find the module once it booted
> until someone really kind toll me that you need to add the kernel
> modules:
>
> IMAGE_INSTALL_append = " kernel-modules"
>
> Is not the expected that if you do bitbake menuconfig then enable the
> module you want save it .. the module be there .. I mean thats the
> reason why you did the menuconfig right ?
>
> Is this an expected behaivor for Yocto ?

Enabling the module(s) via menuconfig and what gets installed in
your image are separate.  Just because you've built the modules
does not imply that they should be installed.  Indeed, using
the 'kernel-modules' package is telling bitbake that you want
all possible modules installed in your image.  Often this is
not needed nor desirable and only a [limited] set of kernel
modules will be installed.

So, yes, this is the expected behaviour.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

