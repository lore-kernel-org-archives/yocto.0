Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5B2CF4C80479
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2011 15:20:33 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p57KKTOM023127;
	Tue, 7 Jun 2011 21:20:29 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 23045-02; Tue,  7 Jun 2011 21:20:25 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p57KKOM3023114
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 7 Jun 2011 21:20:24 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Daryl Spitzer <daryl.spitzer@gmail.com>
In-Reply-To: <BANLkTikfTbJD=5SoQH5ukrTMK6u6Ob0kZQ@mail.gmail.com>
References: <BANLkTikfTbJD=5SoQH5ukrTMK6u6Ob0kZQ@mail.gmail.com>
Date: Tue, 07 Jun 2011 21:20:20 +0100
Message-ID: <1307478020.15712.53.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Configuring CVS to work through a proxy?
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
X-List-Received-Date: Tue, 07 Jun 2011 20:20:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2011-06-07 at 10:47 -0700, Daryl Spitzer wrote:
> I followed the "Building an Image" instructions in the Yocto Project
> Quick Start (on a newly configured machine running Ubuntu 11.04 (64
> bit), and got an error.  The contents of the failure logfile is:
> 
> NOTE: fetch http://anonymous@autobuilder.yoctoproject.org/sources/config_cvs.sv.gnu.org__20080123.tar.gz

What is odd/interesting here is that its trying the http address for the
cache of this. If I click the above link, I do get the file after a
warning about the anonymous user. I wonder if that username is upsetting
wget somehow and breaking our mirroring infrastructure?

"wget
http://anonymous@autobuilder.yoctoproject.org/sources/config_cvs.sv.gnu.org__20080123.tar.gz"

does seem to work here for me...

> NOTE: Fetch cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=config;method=pserver;date=20080123
> cvs [checkout aborted]: connect to cvs.sv.gnu.org(140.186.70.72):2401
> failed: Connection timed out
> ERROR: Function 'Fetcher failure for URL:
> 'cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=config;method=pserver;date=20080123'.
> Unable to fetch URL
> cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=config;method=pserver;date=20080123
> from any source.' failed
> 
> I'm guessing this problem is because I haven't configured CVS to work
> through my employer's HTTP proxy.
> 
> I did a search, and didn't find any definitive instructions for
> configuring CVS.  (In fact, I found
> http://www.cygwin.com/ml/kawa/2003-q3/msg00069.html, which I'm hoping
> is out-of-date since it talks about a patch, which—8 years ago at
> least—wasn't included in GNU CVS.  I did try defining the CVS_PROXY
> environment variable as directed in that page just in case the CVS
> build I'm using includes that patch—but I got the same build error.)
> 
> Can anyone point me to up-to-date instructions for configuring CVS to
> work through a proxy?

Good questions. I know we have people with this working behind firewalls
but I'm not sure how they have it working...

Does the wget command above work for you?

Cheers,

Richard


