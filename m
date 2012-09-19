Return-Path: <marc.ferland@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 426B6E013E6
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 14:13:11 -0700 (PDT)
Received: by iagt4 with SMTP id t4so1371459iag.35
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 14:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=S4sHnZU3MeX+F0oBtQlSNrj3Y40JdlfMLfsPaqX7LDA=;
	b=LpgBYXjqgyxEjhcsgfwIXITvwOQsZoxEXyZulK8MDSjllSjC5YwGGElZPX60g83DjN
	GZYwNkI87ByIyLBFS/dOmWZIHAAUw6QgQopXUIKQfY7WFqSUZmErN2kWCiNF7ZOqvARI
	Q/ywEdcqHsuT64c/y2E8/EuXX0CEJaHBpM/uFCUJ7/0DGQXbhDAg/3ELaShaxlC6wiNg
	W0FIXDINRDeVIyr2PAnnVgvxtlHb5ibtBtqWYyXvFFwDxOEutF79x543qU9N9B/IJlaH
	Nki5xROBWWSq0TbtVQU6NE4PuQsrcnomStTmHzOmvQDgYypvyb09a+Nr9jTPl/baOhXz
	Yq7w==
Received: by 10.50.0.203 with SMTP id 11mr452157igg.69.1348089188570;
	Wed, 19 Sep 2012 14:13:08 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id ch4sm13901769igb.2.2012.09.19.14.13.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 19 Sep 2012 14:13:07 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Wed, 19 Sep 2012 17:13:09 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: Saul Wold <sgw@linux.intel.com>
References: <87ipb9d9u8.fsf@sonatest.com> <505A2FAF.60609@linux.intel.com>
	<87r4px91jy.fsf@sonatest.com> <505A3245.7070503@linux.intel.com>
Date: Wed, 19 Sep 2012 17:13:09 -0400
In-Reply-To: <505A3245.7070503@linux.intel.com> (Saul Wold's message of "Wed, 
	19 Sep 2012 13:59:49 -0700")
Message-ID: <87haqt90nu.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: About bug 2331
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
X-List-Received-Date: Wed, 19 Sep 2012 21:13:11 -0000
Content-Type: text/plain

Saul Wold <sgw@linux.intel.com> writes:

> On 09/19/2012 01:53 PM, Marc Ferland wrote:
>> Saul Wold <sgw@linux.intel.com> writes:
>>
>>> On 09/19/2012 01:41 PM, Marc Ferland wrote:
>>>> Hi,
>>>>
>>>> I'm currently trying to create a "live" system with squashfs+unionfs and
>>>> I stumbled on the same bug described here:
>>>>
>>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=2331
>>>>
>>>> I was wondering if there was a plan to resolve this issue for 1.3?
>>>>
>>> Marc,
>>>
>>> It seems to be marked as resolved and verified, is there still and
>>> issue?  If so we need to reopen this bug.  Or are you referring to the
>>> underlying issue?
>>>
>> I was referring to the underlying issue.
>>
>>
> No, unfortunately it seems that did not have visibility, I think bug
> 1487 is open against that issue, at least with an ISO image, which is
> what got partially reverted.  I think the issue was upstream unionfs,
> do you know if any changes to resolve the problem upstream?
>
Unfortunately no. Maybe I'll have more chance using aufs or maybe
overlayfs. Unionfs looks pretty much dead... I'm probably better off
without it!

