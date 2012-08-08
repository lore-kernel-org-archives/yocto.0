Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30A66E00348
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 08:17:10 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:51097 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1Sz80S-0006Jj-15; Wed, 08 Aug 2012 11:17:08 -0400
Date: Wed, 8 Aug 2012 11:17:05 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tim Verstraete <Tim.Verstraete@medecbenelux.be>
In-Reply-To: <4439C3C0562087488F139C696CD862A72C1F99@SBS-MEDEC.medecbenelux.local>
Message-ID: <alpine.DEB.2.02.1208081115390.12423@oneiric>
References: <4439C3C0562087488F139C696CD862A72C1CD6@SBS-MEDEC.medecbenelux.local>
	<CAEsOVNewE-5HUwwe5euHztTLq1piN8fCbnh03gO4CeUFeQaQKA@mail.gmail.com>
	<4439C3C0562087488F139C696CD862A72C1F5D@SBS-MEDEC.medecbenelux.local>
	<CAEsOVNe6V2_DY9ZCCYu0qVWc=19OEZzVa=i+0qBeR-sDHnLS5Q@mail.gmail.com>
	<4439C3C0562087488F139C696CD862A72C1F99@SBS-MEDEC.medecbenelux.local>
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
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: image recipe gives error: has no buildable providers
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
X-List-Received-Date: Wed, 08 Aug 2012 15:17:10 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 8 Aug 2012, Tim Verstraete wrote:

> Hi,
>
> What i see is that when i do bitbake-layers show_layers that it shows the correct layers and the correct priority of the layers.
>
> The layers.conf is the following
>
> # We have a conf and classes directory, add to BBPATH BBPATH :=
> "${BBPATH}:${LAYERDIR}"
>
> # We have a recipes directory, add to BBFILES BBFILES := "${BBFILES}
> ${LAYERDIR}/recipes-*/*/*.bb \
>         ${LAYERDIR}/recipes-*/*/*.bbappend"
>
>  BBFILE_COLLECTIONS += "test-test1"
>  BBFILE_PATTERN_ test-test1:= "^${LAYERDIR}/"
>  BBFILE_PRIORITY_ test-test1 = "25"
                   ^ space?

  did you seriously copy and paste the above?  because it's just
wrong.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

