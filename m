Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59415E007B8
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 08:31:12 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id CDECEF8122E; Thu, 12 Dec 2013 09:31:11 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id B125EF81207;
	Thu, 12 Dec 2013 09:31:10 -0700 (MST)
Message-ID: <52A9E4CE.1060000@mlbassoc.com>
Date: Thu, 12 Dec 2013 09:31:10 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <52A9D0F7.7050501@mlbassoc.com> <3017575.Mc510FLHbh@helios>
	<52A9E41A.8010601@mlbassoc.com>
In-Reply-To: <52A9E41A.8010601@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How to force the use of git-native?
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
X-List-Received-Date: Thu, 12 Dec 2013 16:31:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-12-12 09:28, Gary Thomas wrote:
> On 2013-12-12 09:20, Paul Eggleton wrote:
>> Hi Gary,
>>
>> On Thursday 12 December 2013 08:06:31 Gary Thomas wrote:
>>> I've found that the latest bitbake fetcher changes (require
>>> the use of branch names) fails with older versions of git.
>>> I have a Fedora 13 machine which I routinely use to build
>>> my Yocto projects that has git version 1.7.7.6.  On that machine,
>>> all git fetches fail, no matter what.  On my Ubuntu builder
>>> which has git 1.7.9.4, all is OK.
>>>
>>> I see that there is a git recipe in OE-core.  How can I force
>>> it to be built and used where the host's native git is inadequate?
>>
>> The solution we provide for this kind of situation is buildtools-tarball, as
>> described here (linked from the QS guide as well):
>>
>> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#required-git-tar-and-python-versions
>
> Thanks, I'll give this a go.

Oops, looks like I have a circular dependency problem since trying to make
the buildtools-tarball actually needs a working version of git??

ERROR: Fetcher failure: Unable to find revision 757a1664a440c60e8126443bf984e4bdf374c327 in branch master even from upstream
ERROR: Function failed: Fetcher failure for URL: 'git://git.yoctoproject.org/opkg-utils'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/local/rpi_2013-12-12/tmp/work/i686-linux/opkg-utils-native/0.1.8+gitAUTOINC+757a1664a4-r0/temp/log.do_fetch.15416
ERROR: Task 85 (virtual:native:/home/local/poky-multi/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb, do_fetch) failed with exit code '1'
ERROR: Fetcher failure: Unable to find revision 6822ec76aa95f278195aeae59d4868ef224d7e4d in branch cross_prelink even from upstream
ERROR: Function failed: Fetcher failure for URL: 'git://git.yoctoproject.org/prelink-cross.git;branch=cross_prelink'. Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: /home/local/rpi_2013-12-12/tmp/work/i686-linux/prelink-native/1.0+gitAUTOINC+6822ec76aa-r0/temp/log.do_fetch.15406
ERROR: Task 244 (virtual:native:/home/local/poky-multi/meta/recipes-devtools/prelink/prelink_git.bb, do_fetch) failed with exit code '1'

>>
>> Interesting that git 1.7.7.6 is still not adequate though, that may be a
>> prompt to either fix the check to work with older versions of git or
>> increase our version number requirement.
>
> If you have ideas how I can investigate why this fails, I'd be glad
> to help out (to see if it can be made to work with 1.7.7.6 or if we
> just need a newer version period)
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

