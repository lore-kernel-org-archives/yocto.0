Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBB83E013A7
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 08:56:58 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S637h-0005rq-Uw; Fri, 09 Mar 2012 11:56:58 -0500
Date: Fri, 9 Mar 2012 11:56:52 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Rudolf Streif <rstreif@linuxfoundation.org>
In-Reply-To: <CA+gsK-rP0ZFZuaoF5AgcmXuijAzjTjDRS4A-DZ_e2xMd-tVgWA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1203091156090.28222@oneiric>
References: <alpine.DEB.2.02.1203090547080.16743@oneiric>
	<CA+gsK-rP0ZFZuaoF5AgcmXuijAzjTjDRS4A-DZ_e2xMd-tVgWA@mail.gmail.com>
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
X-List-Received-Date: Fri, 09 Mar 2012 16:56:59 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 9 Mar 2012, Rudolf Streif wrote:

> I tried the versions _append and += as well as _prepend and =+ with
> the IMAGE_INSTALL and other variables. So far I have not run into
> any issues where one would behave differently from the other. The
> only thing you have to remember with the _append and _prepend
> versions is that you have to include a space at the beginning for
> _append and at the end for _prepend. Although I have found that not
> always to be consistent either. However, an additional space does
> not hurt.

  well, as i mentioned, the manual suggests quite strongly that there
is a fundamental difference.  i'd just like to understand clearly what
that is.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

