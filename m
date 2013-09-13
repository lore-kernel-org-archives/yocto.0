Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64272E01554
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 08:05:29 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 58FBBF811F6; Fri, 13 Sep 2013 09:05:26 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id C8D7AF811D8;
	Fri, 13 Sep 2013 09:05:24 -0600 (MDT)
Message-ID: <523329E7.2050909@mlbassoc.com>
Date: Fri, 13 Sep 2013 09:06:15 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <5233192B.60901@mlbassoc.com> <5110332.cctxih5Myx@helios>
In-Reply-To: <5110332.cctxih5Myx@helios>
Cc: yocto@yoctoproject.org
Subject: Re: Differing fetch results
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
X-List-Received-Date: Fri, 13 Sep 2013 15:05:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-09-13 08:47, Paul Eggleton wrote:
> Hi Gary,
>
> On Friday 13 September 2013 07:54:51 Gary Thomas wrote:
>> I just did a build, totally from scratch, using the current master:
>>     commit dd36930f3f37b2e0e1258de28ac1b1fa99cf196f
>>     Author: Richard Purdie <richard.purdie@linuxfoundation.org>
>>     Date:   Thu Sep 12 13:06:22 2013 +0000
>>
>> I mention "from scratch" as I did this on a fresh machine with
>> no pre-downloaded sources. (I mostly build using sources I've
>> already collected over the past years...)  What I noticed is
>> that many of the freshly downloaded packages have the same
>> time stamps as the ones in my download repository, but a fair
>> number have today's date on them.
>>
>> Here are a few examples of downloads that differ:
>>
>> My sources repository:
>> -rw-rw-r-- 1 gthomas gthomas  1781068 May 14 04:19 bison-2.7.1.tar.xz
>> -rw-rw-r-- 1 gthomas gthomas  2213841 May 14 04:19 gmp-5.1.1.tar.bz2
>> -rw-rw-r-- 1 gthomas gthomas   983500 Aug  8  2012 gperf-3.0.4.tar.gz
>> -rw-rw-r-- 1 gthomas gthomas  2826473 Aug  8  2012 ncurses-5.9.tar.gz
>>
>> Today's build:
>> -rw-rw-r-- 1 gthomas gthomas  1781068 Sep 13 12:11 bison-2.7.1.tar.xz
>> -rw-rw-r-- 1 gthomas gthomas  2213841 Sep 13 12:11 gmp-5.1.1.tar.bz2
>> -rw-rw-r-- 1 gthomas gthomas   983500 Sep 13 12:12 gperf-3.0.4.tar.gz
>> -rw-rw-r-- 1 gthomas gthomas  2826473 Sep 13 12:12 ncurses-5.9.tar.gz
>>
>> Note: the MD5 hashes match so these are the same files, just different
>> dates.
>>
>> Can someone explain why they are different?  The full list of files
>> which were downloaded to build a minimal image are attached.
>
> You haven't set up local PREMIRRORS (perhaps via own-mirrors.bbclass) by any
> chance?

I do use own-mirrors, but in this case the mirror directory is empty.

Because my local mirror is empty, all the required files were downloaded into
${BUILD}/downloads.  My question is why some of them had "original" dates,
yet others have today's date.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

