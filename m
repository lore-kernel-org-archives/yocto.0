Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5363FE0078F
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2013 07:10:27 -0800 (PST)
Received: by mail-ve0-f181.google.com with SMTP id oy12so3341856veb.26
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2013 07:10:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=/6TfqYj8UwPjfWYofjByOeoFe4VYcVe2Zm1yWQsKelM=;
	b=kft5CbDxiLkk2/37j2AZ0aFscoVS5SZE+ea4XA90xcnZf2V8Zf58CAoGf0PpjBSprP
	NJaZOCGdqRS+MHW6Eakax58buH5tpNt8yy0NJvqMWMV23UBpynuHLXJ2VqNz+UFT/GTb
	Og4p27EYA+9z2qZb8UCwwa0gfvV+WAFWrg2TFXiA//DqQddh/cYcWCa0m+y4VJtyrMmI
	Os32ntyYo+66J2snT5dm9e4a6XzN9qxaxjkd9ya9hxk6xvhS0FbT6/rNfec5Jgo9iUP2
	21L8zmZVhsOeV8BU7GbyvA2zw1tSpQK4fZF7WZdz+yfY5mN+8s7iP6E/DVIcbRABAi5s
	hbdg==
X-Gm-Message-State: ALoCoQnHpxVDEsdgVJ1HLg7Rh6TSuZ5giF6SoLB8JYGqQDj3zU1tLjduwOwXEFjCbIkuMsh/I4tZ
MIME-Version: 1.0
X-Received: by 10.58.155.162 with SMTP id vx2mr2062675veb.46.1387206626942;
	Mon, 16 Dec 2013 07:10:26 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Mon, 16 Dec 2013 07:10:26 -0800 (PST)
In-Reply-To: <52A9ECDD.3040208@mlbassoc.com>
References: <52A9D0F7.7050501@mlbassoc.com> <52A9E41A.8010601@mlbassoc.com>
	<52A9E4CE.1060000@mlbassoc.com> <21339055.Kdy9A2es3f@helios>
	<52A9E7AA.5000105@mlbassoc.com>
	<CAPhnLPDRL8ttVU1eA7=1bmQAx46F0YPX=BP6fEMQdsWwS82y9Q@mail.gmail.com>
	<52A9ECDD.3040208@mlbassoc.com>
Date: Mon, 16 Dec 2013 15:10:26 +0000
Message-ID: <CAPhnLPAEpU-B0b6zU_XSL7DgOmCnfwjjZcRq2xkffHmU0PMHyQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 16 Dec 2013 15:10:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

Gary:

This should help.
http://autobuilder.yoctoproject.org/pub/buildtools/20131216-2/buildtools/poky-eglibc-i686-buildtools-tarball-i586-buildtools-nativesdk-standalone-1.5.sh

I haven't tested this out yet, but it is based off of the dora 10.0.0
release, so please, let me know if you have problems with it.

-b

On Thu, Dec 12, 2013 at 5:05 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2013-12-12 09:56, Flanagan, Elizabeth wrote:
>>
>> Gary,
>>
>> If you give me a few hours I'll generate the proper tarball for you.
>> I've upgraded the release process to include a i386 host tarball from
>> now on.
>>
>> I'll send you the link when I have it done.
>
>
> Thanks, I appreciate this.
>
>
>> On Thu, Dec 12, 2013 at 4:43 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>
>>> On 2013-12-12 09:37, Paul Eggleton wrote:
>>>>
>>>>
>>>> On Thursday 12 December 2013 09:31:10 Gary Thomas wrote:
>>>>>
>>>>>
>>>>> On 2013-12-12 09:28, Gary Thomas wrote:
>>>>>>
>>>>>>
>>>>>> On 2013-12-12 09:20, Paul Eggleton wrote:
>>>>>>>
>>>>>>>
>>>>>>> Hi Gary,
>>>>>>>
>>>>>>> On Thursday 12 December 2013 08:06:31 Gary Thomas wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>> I've found that the latest bitbake fetcher changes (require
>>>>>>>> the use of branch names) fails with older versions of git.
>>>>>>>> I have a Fedora 13 machine which I routinely use to build
>>>>>>>> my Yocto projects that has git version 1.7.7.6.  On that machine,
>>>>>>>> all git fetches fail, no matter what.  On my Ubuntu builder
>>>>>>>> which has git 1.7.9.4, all is OK.
>>>>>>>>
>>>>>>>> I see that there is a git recipe in OE-core.  How can I force
>>>>>>>> it to be built and used where the host's native git is inadequate?
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> The solution we provide for this kind of situation is
>>>>>>> buildtools-tarball,
>>>>>>> as described here (linked from the QS guide as well):
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#requi
>>>>>>> red-git-tar-and-python-versions>
>>>>>>
>>>>>>
>>>>>> Thanks, I'll give this a go.
>>>>>
>>>>>
>>>>>
>>>>> Oops, looks like I have a circular dependency problem since trying to
>>>>> make
>>>>> the buildtools-tarball actually needs a working version of git??
>>>>
>>>>
>>>>
>>>> I don't think it's reasonable to expect to build buildtools-tarball on a
>>>> system that isn't capable of building at the moment; you should just
>>>> download
>>>> a prebuilt version as linked from the manual section above *or* build it
>>>> on
>>>> another machine.
>>>
>>>
>>>
>>> Too bad that pointer is only for x86_64 hosts (mine is i386 only)
>>>
>>>
>>> --
>>> ------------------------------------------------------------
>>> Gary Thomas                 |  Consulting for the
>>> MLB Associates              |    Embedded world
>>> ------------------------------------------------------------
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

