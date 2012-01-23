Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11BD2E01373
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2012 06:01:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q0NE1QrJ000570
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 23 Jan 2012 06:01:26 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 23 Jan 2012 06:01:26 -0800
Message-ID: <4F1D682B.5070905@windriver.com>
Date: Mon, 23 Jan 2012 09:01:15 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <56375FA8-BB1F-4D3B-91EC-C84665DF9905@gmail.com>
	<4F1CB41A.301@mlbassoc.com> <4F1D57CE.2050807@gmail.com>
	<4F1D5C39.6070503@mlbassoc.com>
In-Reply-To: <4F1D5C39.6070503@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: tar ball vs. git development questions
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
X-List-Received-Date: Mon, 23 Jan 2012 14:01:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-23 08:10 AM, Gary Thomas wrote:
> On 2012-01-23 05:51, jfabernathy wrote:
>> On 01/22/2012 08:12 PM, Gary Thomas wrote:
>>> On 2012-01-22 13:19, James Abernathy wrote:
>>>> I have used both git and the tarball methods of bitbaking projects,
>>>> all of them derivatives of the examples in the Yocto documentation.
>>>> I was having issues using the local clone of
>>>> the Yocto kernel git repository this weekend. I had successfully
>>>> done that before, but I was rebuilding the PC workstation, and
>>>> getting everything setup and tested some of the
>>>> meta-intel BSPs to make sure I had everything right. Cloning the
>>>> linux-yocto-3.0 repository was successful, but the bakes against it
>>>> failed. I made sure I had poky-extras setup
>>>> right, but I still had problems. To isolate the problem, I changed
>>>> to building with the tarballs and everything worked fine.
>>>>
>>>> So that got me thinking what are the differences between the 2 methods:
>>>>
>>>> * I assume that if I use the tarball method, bitbake, using the
>>>> recipes, pulls down files from the online repositories and puts
>>>> those files into the centralized local download
>>>> directory ($DL_DIR), allowing reuse instead of re-downloading each
>>>> time. The content downloaded for linux-yocto-3.0 is exactly what
>>>> would be pulled from the local repository if
>>>> I used a local clone of the git repository for linux-yocto-3.0.
>>>> * If my assumption above is correct, if I'm not modifying the source
>>>> code of the kernel (only changing config parameters), then once
>>>> you've run at least one build with the
>>>> tarball method, the $DL_DIR directory contains all the files you'll
>>>> need to build any image with linux-yocto-3.0. So there is no need to
>>>> have a local clone of the kernel
>>>> repository for speeding up development. Am I right?
>>>> * If I have a successful creation of a bare clone of
>>>> linux-yocto-3.0.git, how could builds of Edison packages be failing?
>>>> That makes me concerned about using git and successfully
>>>> repeating builds of stable branches like Edison.
>>>
>>> If you set BB_GENERATE_MIRROR_TARBALLS = "1" (e.g. in local.conf)
>>> then you'll get tarballs which hold the git repositories after
>>> download. You can then reuse these (by sharing the DL_DIR or
>>> using a local mirror). Does that help with the issue you're seeing?
>>>
>> I'm not sure it does. I don't want poky to do more work. I have my
>> download directory, $DL_DIR, outside my build directory so I can keep
>> it run to run, as mentioned in the comments
>> in local.conf. I was trying to understand 2 basic questions:
>>
>> 1. what could be causing build failures using a freshly created bare
>> clone yesterday vs. using the poky-edison-6.0 tarball. It would be
>> scary if you could clone the linux-yocto-3.0
>> successfully one day and have it be used in a build successfully, but
>> clone it another day and it not work. I figured that bitbake/poky
>> pulled the same information into DL_DIR
>> regardless of whether you pulled from the bare clone locally or
>> straight from the on-line repository.
>
> What kind of errors? Some details might help understand what the problem
> is.
>
>> 2. I was trying to look at items to speed up build runs. I thought
>> that if the downloads in DL_DIR were reused if they existed, it would
>> speed up a run. It seems to. So the
>> question is, after the first build, the files I need for
>> linux-yocto-3.0 are in DL_DIR regardless of whether they came from the
>> online repository or the local bare clone. right?
>
> I think so, but I'm not 100% sure.

 From my experience, this is true. Regardless of the SRCI_URI, the
downloads directory contains everything that poky/bitbake need to
do builds after the initial fetch has been performed. And that's
where subsequent updates are pullled.

Cheers,

Bruce

>
> The way I have my system set up, I never download anything more
> than once :-) I have a shared source repository which I point to
> using MIRRORS and then all my builds are relative to that. If there
> is new code, it gets downloaded and saved (as a tarball) in my sources
> repository to be used by subsequent builds. To do this, I just have
> these lines in <distro>.conf
> # Provide pre-staged sources
> SOURCE_MIRROR_URL ?= "file://${COREBASE}/sources/"
> INHERIT += "own-mirrors"
> BB_GENERATE_MIRROR_TARBALLS = "1"
> I don't define DL_DIR in local.conf so files only come from my mirror.
>
> This process is so successful that I almost always run with
> BB_NO_NETWORK="1"
> which causes the fetcher to die if it can't find the file locally. If I
> find
> that I do need to download something new, I disable this and let the
> fetcher
> download it. I'll then have a saved tarball (either downloaded directly or
> synthesized) in <build_dir>/downloads that I can push to my mirror.
>


