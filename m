Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ADC4E0148B
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 05:10:45 -0800 (PST)
Received: from wnpgmb0903w-ds01-73-59.dynamic.mtsallstream.net
	([207.161.73.59]:34369 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tn7no-0005wX-9b
	for yocto@yoctoproject.org; Mon, 24 Dec 2012 08:10:44 -0500
Date: Mon, 24 Dec 2012 07:10:40 -0600 (CST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212240657280.6305@oneiric>
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
Subject: a bit confused about dev host "requirements" versus ASSUME_PROVIDED
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
X-List-Received-Date: Mon, 24 Dec 2012 13:10:45 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i'm still a bit unclear on the differences(?) between what is listed
as "required packages for the host development system" in the
reference manual, and what's listed as ASSUME_PROVIDED in the oe-core
bitbake.conf file.

  should those two lists not match?  for instance, the ref manual
states that, for example, "unzip" is an essential native package.  but
that's not mentioned in bitbake.conf as ASSUME_PROVIDED.  am i
misunderstanding the purpose of ASSUME_PROVIDED?

  if you scan across the supported distros, there are a number of
software packages that are listed as "essential" in one or more places
(diffutils, for example) that aren't mentioned in bitbake.conf.

  so what's the relationship here?

rday

p.s.  i'm aware that one can use ASSUME_PROVIDED to bypass the step of
building a native package if one is supremely confident that that
package is compatible with yocto.  i've used that to skip building
subversion for a number of recent builds, as one example.

  would there be any value in a script that pokes around the dev host
and reports back what *appear* to be adequately recent dev packages?
i'm aware that that would void my warranty :-), but given a suitably
recent distro, i'm assuming that quite a number of required dev tools
would match what's already installed and save quite a bit of time
building from scratch.

  does such a script exist?

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

