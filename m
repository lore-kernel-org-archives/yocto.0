Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AFA4E006E9
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 05:12:18 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:46860 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UYEqV-0007uz-L9; Fri, 03 May 2013 08:12:15 -0400
Date: Fri, 3 May 2013 08:12:09 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Trevor Woerner <twoerner@gmail.com>
In-Reply-To: <CAHUNapTFABWCNOLf4=iiBuTEMtxim-KZAbMVbstW+u3925X_8Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1305030811150.13190@oneiric>
References: <5181AF9F.8040702@gmail.com> <1370035.2iCAacKgHz@helios>
	<CAE_REAsbEPTn_x6bwJgUe2sXci_KEwCJA+E4R9Lx6QFwO4-nDw@mail.gmail.com>
	<2435942.LYTrJQCOfG@helios>
	<CAHUNapTFABWCNOLf4=iiBuTEMtxim-KZAbMVbstW+u3925X_8Q@mail.gmail.com>
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
Subject: Re: bash specific syntax in bbclass files
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
X-List-Received-Date: Fri, 03 May 2013 12:12:18 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 3 May 2013, Trevor Woerner wrote:

> If every other distribution, over the next year, switched to
> python-3 as their default, but (instead of updating) future versions
> of Ubuntu installed a symlink called python-3 pointing back to
> python-2, would that hold back Yocto from adopting python-3-isms
> too?
>
> It's sad how Ubuntu has so effectively killed the adoption of all
> features of bash (the default shell on many Linux distributions)
> introduced in the last 10 years by masquerading their crippled shell
> as "bash". And it's even sadder to see how so many projects, in
> response, have simply said "let's write all our shell scripts in
> original Bourne shell syntax" as a result.

  personally, i try to be posix-compliant as much as possible to
avoid this kind of grief.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

