Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1BE6E007B8
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 08:56:16 -0800 (PST)
Received: by mail-vb0-f42.google.com with SMTP id w5so479459vbf.15
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 08:56:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=uXhKs/ewAxPQ9CL/5GA2o341S2y8oOvwPFIs10tYssI=;
	b=TlUwdW1LBCcrM0tssqsZaxLx15SRyCucg9zsMsstEcAJPbpETBrPFVKtG83uDGpoc2
	fkbbdbDPiTj1CoMj0NIXeranU+Kq0E3zrAV4ZRTauqZVf+FnF3Kym0eU8BnLYkTxC3lx
	fRA3aMO8WKY+sJdaGvYM13t84ZIJ+OZ4Dpfu0WG4x99dsDM9uGPA1pMjpC6jdgdrVkQh
	KSCAq+F5N/KGW4CH5JSES6CyCPyQGtcIF8OySjWoT/6n1F1m9CPQgW7lFf61c1Re77q2
	uQ/QM30PhbnZNo2mL3ZW6xr5WKEX0yd2khAfw5Rdid2z+UInMlmvu1c9APv7NiqG7QIs
	S+hA==
X-Gm-Message-State: ALoCoQnkaUE1P/fi5r9MXl0rQDy5yvFhRjsd8+BI3hUm26hJCBMmX9O6XFtVqvbVPOoYuKLkES0p
MIME-Version: 1.0
X-Received: by 10.58.241.135 with SMTP id wi7mr35298vec.70.1386867375413; Thu,
	12 Dec 2013 08:56:15 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Thu, 12 Dec 2013 08:56:15 -0800 (PST)
In-Reply-To: <52A9E7AA.5000105@mlbassoc.com>
References: <52A9D0F7.7050501@mlbassoc.com> <52A9E41A.8010601@mlbassoc.com>
	<52A9E4CE.1060000@mlbassoc.com> <21339055.Kdy9A2es3f@helios>
	<52A9E7AA.5000105@mlbassoc.com>
Date: Thu, 12 Dec 2013 16:56:15 +0000
Message-ID: <CAPhnLPDRL8ttVU1eA7=1bmQAx46F0YPX=BP6fEMQdsWwS82y9Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 12 Dec 2013 16:56:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

Gary,

If you give me a few hours I'll generate the proper tarball for you.
I've upgraded the release process to include a i386 host tarball from
now on.

I'll send you the link when I have it done.

-b

On Thu, Dec 12, 2013 at 4:43 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2013-12-12 09:37, Paul Eggleton wrote:
>>
>> On Thursday 12 December 2013 09:31:10 Gary Thomas wrote:
>>>
>>> On 2013-12-12 09:28, Gary Thomas wrote:
>>>>
>>>> On 2013-12-12 09:20, Paul Eggleton wrote:
>>>>>
>>>>> Hi Gary,
>>>>>
>>>>> On Thursday 12 December 2013 08:06:31 Gary Thomas wrote:
>>>>>>
>>>>>> I've found that the latest bitbake fetcher changes (require
>>>>>> the use of branch names) fails with older versions of git.
>>>>>> I have a Fedora 13 machine which I routinely use to build
>>>>>> my Yocto projects that has git version 1.7.7.6.  On that machine,
>>>>>> all git fetches fail, no matter what.  On my Ubuntu builder
>>>>>> which has git 1.7.9.4, all is OK.
>>>>>>
>>>>>> I see that there is a git recipe in OE-core.  How can I force
>>>>>> it to be built and used where the host's native git is inadequate?
>>>>>
>>>>>
>>>>> The solution we provide for this kind of situation is
>>>>> buildtools-tarball,
>>>>> as described here (linked from the QS guide as well):
>>>>>
>>>>>
>>>>> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#requi
>>>>> red-git-tar-and-python-versions>
>>>>
>>>> Thanks, I'll give this a go.
>>>
>>>
>>> Oops, looks like I have a circular dependency problem since trying to
>>> make
>>> the buildtools-tarball actually needs a working version of git??
>>
>>
>> I don't think it's reasonable to expect to build buildtools-tarball on a
>> system that isn't capable of building at the moment; you should just
>> download
>> a prebuilt version as linked from the manual section above *or* build it
>> on
>> another machine.
>
>
> Too bad that pointer is only for x86_64 hosts (mine is i386 only)
>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

