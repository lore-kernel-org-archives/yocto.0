Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E8CEE013A7
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 10:07:05 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S64DY-0002Vf-Bu; Fri, 09 Mar 2012 13:07:04 -0500
Date: Fri, 9 Mar 2012 13:06:58 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Jeremy Puhlman <jpuhlman@gmail.com>
In-Reply-To: <4F5A43EB.9000704@gmail.com>
Message-ID: <alpine.DEB.2.02.1203091305580.30177@oneiric>
References: <alpine.DEB.2.02.1203090547080.16743@oneiric>
	<4F5A43EB.9000704@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: contradictory explanations of IMAGE_INSTALL in yocto manuals
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
X-List-Received-Date: Fri, 09 Mar 2012 18:07:05 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 9 Mar 2012, Jeremy Puhlman wrote:
... snip ...

> Some images(not neccisarily in oe-core) set IMAGE_INSTALL explictly
> hard, which means you can add what ever you want in your
> local.conf and it will get replaced with what is in the recipe. If the
> recipe sets IMAGE_INSTALL soft, then what happens is when your
> local.conf is read, the value should start out as not defined, so when
> you += to the value you get what ever you set as the only value.
> Later on when things like core-image attempt to set via =? it sees that
> it is already set and should break the image since it doesn't add
> what it thinks is the right stuff to make the image, just the stuff you
> set in your local.conf.
>
> If from the local.conf, you so IMAGE_INSTALL_append, what ever you set
> will get added after all the processing of the various settings for the
> image is
> already complete.
>
> In an image recipe, like the one you call out, all the image processing
> of what should be added etc, is alreaqdy done, when the =+ is added, so
> the result is what you would expect.
>
> Different use cases generally have different suggested methods. However
> this is more of a funcitonal discssion as I am not sure what the
> community consensus
> suggestions for setting things like IMAGE_INSTALL in local.conf is any more.

  ah, got it.  i didn't follow *every* detail above, but i had
forgotten about the different levels of assignment "hardness", so in
principle, i see what's happening.  thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

