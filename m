Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E047E00406
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2013 20:42:42 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=Vs2JA9YVghaReJL2o/HU2PtypJ+9g2rg+Cn3vKheGpoCR+OCRtKuyIVCzgXIS8r8;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VBcq9-0001tV-Hq; Mon, 19 Aug 2013 23:42:41 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Chris Larson'" <clarson@kergoth.com>
References: <A3D4719B266E4F519452EFCF893FEF4A@PAULD>
	<CABcZANkcqBYLH+X07-o5Pn5=C8offw8eYr3e_FOtEqZxHu+s0Q@mail.gmail.com>
In-Reply-To: <CABcZANkcqBYLH+X07-o5Pn5=C8offw8eYr3e_FOtEqZxHu+s0Q@mail.gmail.com>
Date: Mon, 19 Aug 2013 20:42:40 -0700
Message-ID: <DE94D842ADDE4E0D867D91780CD61EE4@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6dNR3aCIfpXZuQTIycZZ+23hE3RAAICAqg
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688492ac3219e72009c016225f729d19c60350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Trying to tweak a build with a setup.cfg file
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
X-List-Received-Date: Tue, 20 Aug 2013 03:42:43 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Mon, Aug 19, 2013 at 3:52 PM, Paul D. DeRocco 
> <pderocco@ix.netcom.com> wrote:
> 
> 
> 	I'm trying to build python-matplotlib from the Danny branch of
> 	meta-openembedded/meta-oe/recipes-devtools/python. I 
> need to add a
> 	setup.cfg file to tweak the build, but I don't know how 
> to get it into the
> 	right place.
> 	
> 	I put the setup.cfg into a python-matplotlib 
> subdirectory in my recipes
> 	directory, and added a python-matplotlib_1.1.0.bbappend 
> file which
> 	contains the following lines:
> 	
> 	FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> 	PRINC := "${@int(PRINC) + 2}"
> 	SRC_URI += "file://setup.cfg"
> 	
> 	The file is being copied into
> 	
> .../work/armv7a-vfp-neon-poky-linux-gnueabi/python-matplotlib-1.1.0-r3
> 	rather than
> 	
> .../work/armv7a-vfp-neon-poky-linux-gnueabi/python-matplotlib-
> 1.1.0-r3/mat
> 	plotlib-1.1.0 where it needs to be. How do I push it 
> down a level?

> From: Chris Larson
> 
> By default, anything in SRC_URI goes into ${WORKDIR}, not 
> ${S}. You should be able to change this like so:
> 
>     SRC_URI += "file://setup.cfg;subdir=matplotlib-${PV}"

Thanks. That'll get me over this hump.

While I was out at my daily workout, I was thinking about this. Is it
possible to mimic the directory structure in the metadata, in this case
pushing the file down a level, and then specifying that subdirectory name
in front of the filename in the SRC_URI, instead of as a "subdir" option
after it? Or must file:// always be followed by a simple filename?

I'd experiment with it, but I have a reallly slooow build system which
takes about fifteen minutes just to do the do_rootfs.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
> -- 
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics 
> 


