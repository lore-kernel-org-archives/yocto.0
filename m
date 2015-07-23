Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3FF9E0097F; Thu, 23 Jul 2015 04:20:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95016E00947
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 04:20:02 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C9919F811DF; Thu, 23 Jul 2015 05:20:01 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 45ECAF811DE;
	Thu, 23 Jul 2015 05:20:01 -0600 (MDT)
Message-ID: <55B0CDE4.7030905@mlbassoc.com>
Date: Thu, 23 Jul 2015 05:20:04 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <858020079.672977.1437603410191.JavaMail.yahoo@mail.yahoo.com>	<55B033F6.0@mlbassoc.com>
	<CAJTo0LZSFsZF+xOm_TH+JHRUw=11f2_S9DiqZ0gHQjoigrkzgA@mail.gmail.com>
In-Reply-To: <CAJTo0LZSFsZF+xOm_TH+JHRUw=11f2_S9DiqZ0gHQjoigrkzgA@mail.gmail.com>
Subject: Re: raspberry Pi core-image-sato
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
X-List-Received-Date: Thu, 23 Jul 2015 11:20:10 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-07-23 03:54, Burton, Ross wrote:
>
> On 23 July 2015 at 01:23, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     You must have added something to your image - core-image-sato does
>     not include libepoxy by default.
>
>
> "Well actually", if your using oe-core master and DISTRO_FEATURES includes wayland then xserver-xorg will build the xwayland server, which requires libepoxy.

Good catch, but one never knows as the original poster has
not provided enough details :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

