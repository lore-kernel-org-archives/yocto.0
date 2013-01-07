Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 936CAE0144A
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 10:07:04 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:35051 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TsH6F-0004uU-KK; Mon, 07 Jan 2013 13:07:03 -0500
Date: Mon, 7 Jan 2013 13:07:00 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
In-Reply-To: <50EB0DFD.3030007@dynamicdevices.co.uk>
Message-ID: <alpine.DEB.2.02.1301071305500.1774@oneiric>
References: <50E31E11.2090708@comcast.net>
	<50E73A16.4070303@dynamicdevices.co.uk>
	<50EA5C2E.9060701@comcast.net>
	<50EAB28F.6080506@dynamicdevices.co.uk>
	<alpine.DEB.2.02.1301071251510.1319@oneiric>
	<50EB0DFD.3030007@dynamicdevices.co.uk>
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
Cc: yocto@yoctoproject.org, ed nelson <enelson1000@comcast.net>
Subject: Re: Raspberry Pi do_fetch failure
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
X-List-Received-Date: Mon, 07 Jan 2013 18:07:04 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 7 Jan 2013, Alex J Lennon wrote:

> On 07/01/2013 17:53, Robert P. J. Day wrote:
> > fatal: The remote end hung up unexpectedly
> > fatal: early EOF
> > fatal: index-pack failed
>
> fwiw there's a note here which relates to Cygwin:
>
> http://stackoverflow.com/questions/2505644/git-checking-out-problem-fatal-early-eofs
>
> I wonder if it might be worth trying the compression setting to see if
> that helps (less than ideal I know)
>
> git config --add core.compression -1

  i'm just heading out for a bit, i'll give that a shot when i get
home (unless someone else wants to try it first).  but FWIW, i've had
fetching issues before with kernel source for other builds -- it's not
like raspberry pi is the only configuration where i've seen this
error.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

