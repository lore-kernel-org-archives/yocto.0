Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F8FEE01788
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 02:38:55 -0700 (PDT)
Received: from [173.34.6.101] (port=33124 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VajHg-0003pz-Si; Mon, 28 Oct 2013 05:38:52 -0400
Date: Mon, 28 Oct 2013 05:38:49 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <17076206.HsEGNRlfMJ@helios>
Message-ID: <alpine.DEB.2.02.1310280537490.6411@oneiric>
References: <CAM1ZcoXQEO9w+gJKfK8xYft=JegKHoWGn8Q6CF=hBd77o0ezyw@mail.gmail.com>
	<1700191.EdxHocCYrr@helios>
	<CAM1ZcoW7b8t-TFtUyZb=-PWDJNTPxbJuKA4CKBqc1izh+P7GUw@mail.gmail.com>
	<17076206.HsEGNRlfMJ@helios>
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
Subject: Re: fetch from perforce
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
X-List-Received-Date: Mon, 28 Oct 2013 09:38:56 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 28 Oct 2013, Paul Eggleton wrote:

> Hi Katu,
>
> On Thursday 24 October 2013 10:09:50 Katu Txakur wrote:
> > it took me longer than I thought because I couldn't find any documentation
> > or comments in the code, but I finally got this working. The sintax to call
> > it was, (there are actually 2 options, I took this one because I don't need
> > user/passwd):
> >
> >
> > P4PORT = "yourhost:yourportnumber"
>
> Is this not able to be specified in the SRC_URI?
>
> > FETCHCOMMAND_p4 = "p4"
>
> We should really get a default value for FETCHCOMMAND_p4 defined in OE-Core
> (and perhaps also the default bitbake.conf bundled with bitbake itself).

  IIRC, richard purdie once suggested that the "FETCHCOMMAND_"
versions of the variables were deprecated, and that "FETCHCMD_" was
the correct usage. can someone clarify this?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

