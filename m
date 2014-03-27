Return-Path: <stuartl@vrt.com.au>
Received: from ipmail04.adl6.internode.on.net (ipmail04.adl6.internode.on.net
	[150.101.137.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A09F8E00BA1
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 12:55:27 -0700 (PDT)
Received: from eth2015.qld.adsl.internode.on.net (HELO
	atomos.longlandclan.yi.org) ([150.101.176.226])
	by ipmail04.adl6.internode.on.net with ESMTP; 28 Mar 2014 06:25:24 +1030
Received: by atomos.longlandclan.yi.org (Postfix, from userid 8)
	id 5137F2024BD1; Fri, 28 Mar 2014 05:55:22 +1000 (EST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	atomos.longlandclan.yi.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0, required=5.0, tests=[ALL_TRUSTED=-1]
	autolearn=unavailable version=3.3.2
Received: from [IPv6:2001:44b8:21ac:7053:223:6cff:fe83:b6b7] (vk4msl-mb.local
	[IPv6:2001:44b8:21ac:7053:223:6cff:fe83:b6b7])
	by atomos.longlandclan.yi.org (Postfix) with ESMTPSA id 86E3D2024BD1;
	Fri, 28 Mar 2014 05:55:18 +1000 (EST)
Message-ID: <5334829A.80001@vrt.com.au>
Date: Fri, 28 Mar 2014 05:57:14 +1000
From: Stuart Longland <stuartl@vrt.com.au>
Organization: VRT Systems
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <5333BC31.1030405@vrt.com.au>
	<CAJTo0LaHX3fFfdCkROuaj69SmA7LKAL79MinWtXRPUG-1rCZxw@mail.gmail.com>
In-Reply-To: <CAJTo0LaHX3fFfdCkROuaj69SmA7LKAL79MinWtXRPUG-1rCZxw@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: matchbox-terminal and function keys
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
X-List-Received-Date: Thu, 27 Mar 2014 19:55:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Ross,
On 27/03/14 22:27, Burton, Ross wrote:
> Can you paste the output of cat to confirm the values you're seeing?
> The xterm guide says VT100 for F1-F4 (as VT100 doesn't define F5
> onwards) and VT220 for F5-F10 and that's what I'm seeing when I
> attempt this (F10 specifically being ^[[21~).

Well, evidently the ncurses devs didn't get that memo as F1-F5 aren't
recognised when TERM=xterm.  I understood xterm was a superset of vt220.

I'll do a `cat` to a file and post the contents when I get in.  I'm just
confused as to why ncurses applications don't seem to recognise F1-F5.

Regards,
-- 
Stuart Longland
Contractor
     _ ___
\  /|_) |                           T: +61 7 3535 9619
 \/ | \ |     38b Douglas Street    F: +61 7 3535 9699
   SYSTEMS    Milton QLD 4064       http://www.vrt.com.au



