Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF09BE00307
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 08:32:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pA7GWRw0027368
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 7 Nov 2011 08:32:27 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.232) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 7 Nov 2011 08:32:27 -0800
Message-ID: <4EB8081A.5020501@windriver.com>
Date: Mon, 7 Nov 2011 10:32:26 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1111071058550.1246@localhost6.localdomain6>
	<4EB8020E.6000005@windriver.com>
	<alpine.DEB.2.02.1111071120080.4441@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1111071120080.4441@localhost6.localdomain6>
Cc: yocto@yoctoproject.org
Subject: Re: do all recipes really need LIC_FILES_CHKSUM?
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
X-List-Received-Date: Mon, 07 Nov 2011 16:32:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 11/7/11 10:24 AM, Robert P. J. Day wrote:
> On Mon, 7 Nov 2011, Mark Hatle wrote:
> 
>> On 11/7/11 10:01 AM, Robert P. J. Day wrote:
>>>
>>>   current poky ref manual seems pretty adamant about need for
>>> LIC_FILES_CHKSUM:
>>>
>>> "Note that this variable is mandatory for all recipes, unless the
>>> LICENSE variable is set to "CLOSED".
>>>
>>> but there's at least one counter-example,
>>> meta-demoapps/recipes-graphics/pong-clock/pong-clock_1.0.bb:
>>
>> Bug in the example.. it should be fixed.

I'm not surprised that meta-demoapps is missing this stuff..  AFAIK the stuff
here isn't run though the normal build/QA process.

If this information isn't deprecated as Gary thought it might be... then it
absolutely should be fixed.

>   oooookay, but it's really not hard to find more examples like that,
> such as meta-demoapps/recipes-graphics/libxklavier/libxklavier_3.9.bb:
> 
> DESCRIPTION = "Utility library to make using XKB easier"
> SECTION = "x11/libs"
> DEPENDS = "iso-codes libxml2 glib-2.0 libxkbfile"
> LICENSE = "LGPL"
> PR = "r2"
> 
> SRC_URI = "${SOURCEFORGE_MIRROR}/gswitchit/libxklavier-${PV}.tar.bz2 \
>            file://pkgconfigfix.patch;patch=1"
> 
> inherit autotools
> 
>   or "xournal" in the same directory, etc, etc.  i'm not trying to be
> annoyingly pedantic (he lied), just pointing out the inconsistencies.
> 
> rday
> 


