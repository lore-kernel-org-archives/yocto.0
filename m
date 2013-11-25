Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2DDEE00510
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 09:29:11 -0800 (PST)
Received: from [67.210.172.157] (port=55328 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vkzy8-0001uw-H2; Mon, 25 Nov 2013 12:29:08 -0500
Date: Mon, 25 Nov 2013 12:29:05 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Bryan Evenson <bevenson@melinkcorp.com>
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153C1156096@pluto.melinkcorp.local>
Message-ID: <alpine.DEB.2.02.1311251227140.6887@oneiric>
References: <alpine.DEB.2.02.1311240533220.32547@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F511F7@ORSMSX101.amr.corp.intel.com>
	<91586D499ADFD74FBCFB8425266A5DE40153C1156096@pluto.melinkcorp.local>
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
Subject: Re: stupid question about post-installation scripts
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
X-List-Received-Date: Mon, 25 Nov 2013 17:29:15 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 25 Nov 2013, Bryan Evenson wrote:

> Robert,
>
> That's how it works in my experience.  I have some packages for my
> system that have a postinst piece that needs to run during image
> creation, and other pieces that need to run only on a package
> upgrade.  By checking whether "x${D}" = "${D}", I am filtering out
> whether the postinst script is running during image creation or on
> the actual hardware.  Been working great so far.

  right, but what i was trying to clarify is (and i think you answer
it) that postint scripts will be invoked *both* at image creation time
and boot time, and it's your responsibility to identify which parts
run at which times.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

