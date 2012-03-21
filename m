Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 621DAE013A6
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 04:12:52 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SAJTH-00034Y-S1
	for yocto@yoctoproject.org; Wed, 21 Mar 2012 07:12:51 -0400
Date: Wed, 21 Mar 2012 07:12:46 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
In-Reply-To: <alpine.DEB.2.02.1203210703200.7447@oneiric>
Message-ID: <alpine.DEB.2.02.1203210710090.2402@oneiric>
References: <alpine.DEB.2.02.1203210703200.7447@oneiric>
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
Subject: Re: setting of BBPATH differs between ref manual and actual layer.conf file
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
X-List-Received-Date: Wed, 21 Mar 2012 11:12:52 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 21 Mar 2012, Robert P. J. Day wrote:

>
>   admittedly picky but the ref manual here:
>
> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#usingpoky-changes-layers
>
> shows a sample setting of BBPATH in yocto's layer.conf:
>
>   BBPATH := "${BBPATH}:${LAYERDIR}"
>
> however the actual layer.conf for yocto reads:
>
>   BBPATH := "${LAYERDIR}:${BBPATH}"
>
> should the ordering be consistent here?  should readers be warned
> about the (admittedly remote) possibility of weirdness if they happen
> to try to include two layers with the same name?  is that even
> possible?  does any of this even matter?

  i really hate replying to my own posts because i forgot to do
something basic, but i did a quick grep:

$ grep -r "BBPATH :=" *
documentation/dev-manual/dev-manual-common-tasks.xml:     BBPATH := "${LAYERDIR}:${BBPATH}"
documentation/dev-manual/dev-manual-kernel-appendix.xml:     BBPATH := "${BBPATH}:${LAYERDIR}"
documentation/bsp-guide/bsp.xml:     BBPATH := "${BBPATH}:${LAYERDIR}"
meta-hob/conf/layer.conf:BBPATH := "${BBPATH}:${LAYERDIR}"
meta-skeleton/conf/layer.conf:BBPATH := "${BBPATH}:${LAYERDIR}"
meta-yocto/conf/layer.conf:BBPATH := "${LAYERDIR}:${BBPATH}"
$

  so there's a mixture of that ordering.  if there's no real reason
for that, it should really be consistent so readers don't wonder about
it.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

