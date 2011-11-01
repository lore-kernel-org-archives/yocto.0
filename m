Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97815E0054F
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2011 15:47:56 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RLN7Y-0007NQ-Ty; Tue, 01 Nov 2011 18:47:53 -0400
Date: Tue, 1 Nov 2011 18:47:48 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1320184489.2400.88.camel@elmorro>
Message-ID: <alpine.DEB.2.02.1111011835470.5888@localhost6.localdomain6>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<alpine.DEB.2.02.1111011733510.5226@localhost6.localdomain6>
	<1320183968.2400.83.camel@elmorro>
	<1320184489.2400.88.camel@elmorro>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build error while following Appendix A. Yocto Project Development manual
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
X-List-Received-Date: Tue, 01 Nov 2011 22:47:56 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  some questions/observations as i'm getting close to the end of this
appendix (some of which you've already seen and addressed), all done
on my 64-bit ubuntu 11.10 system:

  * section A.3: rather than force the reader to follow a link or go
to an earlier section, why not just supply the command to check out
meta-intel/?

  $ git clone http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel

  * section A.5.1: is it actually *necessary* to delete the
crownbay.conf file, and to change the comments in the mymachine.conf
file?  admittedly, it's nice to keep things consistent, but if the
text claims that something is "needed", then it really should be
required.

  * section A.5.2.1: as we've noted, that first command can be tossed.
in addition, should one remove the "crownbay" directory from that
location?  since "crownbay" content is being removed from other
locations, it would be nice to be consistent.

  * section A.5.2.2: delete first command

  * section A.5.2.4: the "SRCREV_meta" values listed in the appendix
don't match what's in the actual file.  so what are the correct
values?

  ... back to work ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

