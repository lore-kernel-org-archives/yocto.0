Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D8C5E0049A
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 12:30:09 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:46365 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1T0HNv-0005S3-3v; Sat, 11 Aug 2012 15:30:07 -0400
Date: Sat, 11 Aug 2012 15:30:03 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANmXySuVe03ODbLqPhao75b+e0Y8muCUL_D=wz-9ek9_Aw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1208111524130.12464@oneiric>
References: <alpine.DEB.2.02.1208111301170.5438@oneiric>
	<CABcZANmw1WJKkAUeZL3L=+NqJxTm1eTHMrQsJ44dBK_fwDen0Q@mail.gmail.com>
	<alpine.DEB.2.02.1208111422560.12092@oneiric>
	<CABcZANmXySuVe03ODbLqPhao75b+e0Y8muCUL_D=wz-9ek9_Aw@mail.gmail.com>
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
X-List-Received-Date: Sat, 11 Aug 2012 19:30:09 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 11 Aug 2012, Chris Larson wrote:

> On Sat, Aug 11, 2012 at 11:32 AM, Robert P. J. Day
> <rpjday@crashcourse.ca> wrote:

> > p.s.  as a more obvious example, consider "git".  it's now
> > "ASSUME_PROVIDED", and listed in the quick start guide as required
> > on the dev host, but it also still supports a native build.  i'm
> > just trying to clarify that, in cases like that, supporting the
> > -native build is no longer necessary.  or am i missing something?

> Supporting it isn't necessary, this is true, but we do want to
> remove as many hard host dependencies as possible over time, no?

  we do?  since when?  not being facetious, but wondering if this is
an actual, codified goal, since it seems fly in the face of the recent
addition of "git-native" to ASSUME_PROVIDED.  what was the point of
that, if not to remove the burden of providing "git" from OE and
dumping it in the lap of the developer?

> Perhaps the bbclassextend only exists to prepare for such a point.
> Also, having a -native available doesn't *harm* anything. At most it
> slightly increases ram usage up front when it produces the second
> variation of the recipe.

  yup, i agree, i'm just trying to understand the philosophy here.

rday

p.s.  i'm still wondering if there's a convenient way to identify
utilities on the dev host that are candidates for ASSUME_PROVIDED.
surely a relatively recent version of subversion would be adequate,
but how would one actually *know* that?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

