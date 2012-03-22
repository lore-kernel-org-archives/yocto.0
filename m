Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEA37E00723
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 08:29:09 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SAjwq-0003qJ-NJ
	for yocto@yoctoproject.org; Thu, 22 Mar 2012 11:29:08 -0400
Date: Thu, 22 Mar 2012 11:29:02 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203221123080.6483@oneiric>
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
Subject: yocto docs: confusion between shell env vars and bitbake env vars
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
X-List-Received-Date: Thu, 22 Mar 2012 15:29:10 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  since i'm reading this out of the yocto/poky reference manual, i
might as well point it out here.

  there is occasional confusion when the docs refer to "environment
variables", since it's not clear when that means *shell* env vars or
*bitbake* env vars.  for instance, in the ref manual, section B.1,
"Parsing", you read:

"The first thing BitBake does is look for the bitbake.conf file. The
Yocto Project keeps this file in the Yocto Project file's meta/conf/
directory. BitBake finds it by examining the BBPATH environment
variable and looking for the meta/conf/ directory."

  but there is no BBPATH shell environment variable.  in fact,
oe-init-build-env explicitly *unsets* that shell variable at the very
end.

  however, you can check the *bitbake* environment with "bitbake -e"
and there it is, and i think that not being clear about the difference
has the potential to massively confuse readers.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

