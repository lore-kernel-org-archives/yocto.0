Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00C4AE007D4
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 08:43:25 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id CF037F8122E; Thu, 12 Dec 2013 09:43:24 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 90B2BF81207;
	Thu, 12 Dec 2013 09:43:22 -0700 (MST)
Message-ID: <52A9E7AA.5000105@mlbassoc.com>
Date: Thu, 12 Dec 2013 09:43:22 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <52A9D0F7.7050501@mlbassoc.com>
	<52A9E41A.8010601@mlbassoc.com>	<52A9E4CE.1060000@mlbassoc.com>
	<21339055.Kdy9A2es3f@helios>
In-Reply-To: <21339055.Kdy9A2es3f@helios>
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
X-List-Received-Date: Thu, 12 Dec 2013 16:43:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-12-12 09:37, Paul Eggleton wrote:
> On Thursday 12 December 2013 09:31:10 Gary Thomas wrote:
>> On 2013-12-12 09:28, Gary Thomas wrote:
>>> On 2013-12-12 09:20, Paul Eggleton wrote:
>>>> Hi Gary,
>>>>
>>>> On Thursday 12 December 2013 08:06:31 Gary Thomas wrote:
>>>>> I've found that the latest bitbake fetcher changes (require
>>>>> the use of branch names) fails with older versions of git.
>>>>> I have a Fedora 13 machine which I routinely use to build
>>>>> my Yocto projects that has git version 1.7.7.6.  On that machine,
>>>>> all git fetches fail, no matter what.  On my Ubuntu builder
>>>>> which has git 1.7.9.4, all is OK.
>>>>>
>>>>> I see that there is a git recipe in OE-core.  How can I force
>>>>> it to be built and used where the host's native git is inadequate?
>>>>
>>>> The solution we provide for this kind of situation is buildtools-tarball,
>>>> as described here (linked from the QS guide as well):
>>>>
>>>> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#requi
>>>> red-git-tar-and-python-versions>
>>> Thanks, I'll give this a go.
>>
>> Oops, looks like I have a circular dependency problem since trying to make
>> the buildtools-tarball actually needs a working version of git??
>
> I don't think it's reasonable to expect to build buildtools-tarball on a
> system that isn't capable of building at the moment; you should just download
> a prebuilt version as linked from the manual section above *or* build it on
> another machine.

Too bad that pointer is only for x86_64 hosts (mine is i386 only)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

