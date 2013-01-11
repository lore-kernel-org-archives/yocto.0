Return-Path: <thomas.petazzoni@free-electrons.com>
Received: from mail.free-electrons.com (mail.free-electrons.com [94.23.32.191])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A107E006D2
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2013 08:19:15 -0800 (PST)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id 20ABE1A5; Fri, 11 Jan 2013 17:19:11 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.3.2
Received: from skate (humanoidz.org [82.247.183.72])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 6C221D1;
	Fri, 11 Jan 2013 17:19:11 +0100 (CET)
Date: Fri, 11 Jan 2013 17:19:08 +0100
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Message-ID: <20130111171908.5162428c@skate>
In-Reply-To: <kcop9d$mfv$1@ger.gmane.org>
References: <kcop9d$mfv$1@ger.gmane.org>
Organization: Free Electrons
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.10; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: gcov on target
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
X-List-Received-Date: Fri, 11 Jan 2013 16:19:15 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Dear Robert Berger,

On Fri, 11 Jan 2013 12:24:47 +0200, Robert Berger wrote:

> I use Yocto Project, 1.3 "danny" for a beagle-xm and would like to show
> kernel code coverage with a core-image-sato-sdk.
> This image is pretty complete. Unfortunately there is no gcov available
> on the target.
> 
> It looks like it's only built for the host.
> 
> Did someone manage to build/run gcov for an armv7a?
> ... or let's put it otherwise: Why doesn't it exist on the target?

I supposed the idea is to generate to coverage data on the target, and
then analyze them with gcov on the build machine. See
http://gcc.gnu.org/onlinedocs/gcc/Cross_002dprofiling.html#Cross_002dprofiling.

Best regards,

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

