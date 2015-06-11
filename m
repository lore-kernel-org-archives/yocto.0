Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B75EE009F6; Thu, 11 Jun 2015 03:31:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBE4DE009C2
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 03:31:41 -0700 (PDT)
Received: from [70.30.87.145] (port=44234 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Z2zmN-0005rT-Qe; Thu, 11 Jun 2015 06:32:11 -0400
Date: Thu, 11 Jun 2015 06:31:30 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LZ8o=8KHZ=357AuNcF4-Y480t_jHCdbpfRev0nxy=Nqfw@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1506110630340.5358@localhost>
References: <F38A866CD026F746A3BF0928A84397BE3A42B2EE@AZ-FFEXMB01.global.avaya.com>
	<CAJTo0LZ8o=8KHZ=357AuNcF4-Y480t_jHCdbpfRev0nxy=Nqfw@mail.gmail.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
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
Subject: Re: Merging of two recipes
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
X-List-Received-Date: Thu, 11 Jun 2015 10:31:42 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 11 Jun 2015, Burton, Ross wrote:

>
> On 11 June 2015 at 10:54, Bipnesh, Abhinav (Abhinav) <abhinavbipnesh@avaya.com> wrote:
>
>       So I want to merge these both recipes to produce the same artificats as above but using a single
>       recipe. So any thoughts how to do it.
>
>
> Just add "tar" to PACKAGE_CLASSES and you'll get a tarball of every
> package alongside the RPM.
>
> (note that the tar packages are relatively untested but they're also
> very simple so should still work)

  i vaguely recall from way back that the tar packaging was not really
supported, or was mostly unused, or something to that effect. what's
the status on that these days?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

