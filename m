Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 565C6E0044D
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 08:31:29 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SF5ha-00038U-LT; Tue, 03 Apr 2012 11:31:22 -0400
Date: Tue, 3 Apr 2012 11:31:16 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237945178362@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1204031130360.20954@oneiric>
References: <alpine.DEB.2.02.1203260815240.29065@oneiric>
	<857BE142E5399E46B20FD45B9DB8A7BC0FD1C2FA@SHSMSX101.ccr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945178362@ORSMSX101.amr.corp.intel.com>
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
Subject: Re: ref manual, ch 5, claims that toolchain should be installed under /opt/poky
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
X-List-Received-Date: Tue, 03 Apr 2012 15:31:29 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 3 Apr 2012, Rifenbark, Scott M wrote:

> According to Jessica, there has been no change in the behavior of
> how the toolchain unpacks.  /opt/poky is still used.
>
> Scott
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Lu, Lianhao
> Sent: Monday, April 02, 2012 6:47 PM
> To: Robert P. J. Day; Yocto discussion list
> Subject: Re: [yocto] ref manual, ch 5, claims that toolchain should be installed under /opt/poky
>
>
> Robert P. J. Day wrote on 2012-03-26:
> >
> >   currently, ch 5 of the reference manual claims that a generated
> > "meta-toolchain" tarball should be unpacked under /opt/poky, which
> > might be *historically* correct but i just baked a meta-toolchain and
> > its tarball contents are all prefixed with "./usr/local/", which seems
> > inconsistent with that.
>
> Did you include the meta-yocto layer when you bake the
> meta-toolchain? "/opt/poky" is the default settings for the
> toolchain generated using meta-yocto layer, while oe-core uses
> "/usr/local". I don't know why your prefix is "./usr/local". The
> location of toolchain should be configurable by the value of
> variable SDKPATH, but we didn't test it with other values in the
> context of meta-yocto layer.

  ah, i think i might have done this under oe-core, that would explain
it.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

