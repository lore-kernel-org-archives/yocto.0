Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F327E0049A
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 13:20:07 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:47019 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1T0IAG-0006zz-Bc; Sat, 11 Aug 2012 16:20:04 -0400
Date: Sat, 11 Aug 2012 16:20:00 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANn3qq_H6y9MsHs++ZT+Q88XF6AX3aOYnaUR4ufFOyguMg@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1208111619080.13044@oneiric>
References: <alpine.DEB.2.02.1208111301170.5438@oneiric>
	<CABcZANmw1WJKkAUeZL3L=+NqJxTm1eTHMrQsJ44dBK_fwDen0Q@mail.gmail.com>
	<alpine.DEB.2.02.1208111422560.12092@oneiric>
	<CABcZANmXySuVe03ODbLqPhao75b+e0Y8muCUL_D=wz-9ek9_Aw@mail.gmail.com>
	<alpine.DEB.2.02.1208111524130.12464@oneiric>
	<CABcZANn3qq_H6y9MsHs++ZT+Q88XF6AX3aOYnaUR4ufFOyguMg@mail.gmail.com>
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
Subject: Re: under what circumstances is BBCLASSEXTEND = "native" required in a recipe?
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
X-List-Received-Date: Sat, 11 Aug 2012 20:20:07 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 11 Aug 2012, Chris Larson wrote:

> On Sat, Aug 11, 2012 at 12:30 PM, Robert P. J. Day
> <rpjday@crashcourse.ca> wrote:
> > p.s.  i'm still wondering if there's a convenient way to identify
> > utilities on the dev host that are candidates for ASSUME_PROVIDED.
> > surely a relatively recent version of subversion would be adequate,
> > but how would one actually *know* that?
>
> This gets brought up pretty regularly, and the answer is it's a pain
> to know when it can be done. Getting a successful build doesn't
> necessarily mean you can get away with whatever it was you added to
> ASSUME_PROVIDED, because it just means you didn't try to build
> something that required X feature that isn't in version Y of the
> software. Basically you can arrange something like that, but you'd
> never be supported in your efforts, because it could always break
> sometime.

  oh, i absolutely understand the technical traps involved.

> For what it's worth, I do something like that in most of my builds,
> and it has only rarely caused any problems. I can show you what I
> use if you'd like, but again it's buyer^Wbuilder beware :)

  sure, i'm interested, send me a pointer offline, thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

