Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDD144C80039
	for <yocto@yoctoproject.org>; Thu, 13 Jan 2011 10:37:33 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0DGbWL6028279;
	Thu, 13 Jan 2011 08:37:32 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 13 Jan 2011 08:37:31 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 13 Jan 2011 08:37:31 -0800
Message-ID: <4D2F2A4A.8030305@windriver.com>
Date: Thu, 13 Jan 2011 11:37:30 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
References: <4D2F2977.90007@intel.com>
In-Reply-To: <4D2F2977.90007@intel.com>
X-OriginalArrivalTime: 13 Jan 2011 16:37:31.0905 (UTC)
	FILETIME=[2CADAF10:01CBB340]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Current Build Failures for	d82f205cfa790b40e132e11b7937050bc3b97ff3
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
X-List-Received-Date: Thu, 13 Jan 2011 16:37:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-01-13 11:33 AM, Elizabeth Flanagan wrote:
> All,
>
> The current nightly based on d82f205cfa790b40e132e11b7937050bc3b97ff3 is
> showing 3 build failures so far.
>
> Machine: qemux86
> Failure: intermittent tasks_0.18 failure at do_compile
> Description: Tasks_0.18 has failed during one buildset, however it's not
> failing on the other.
>
>
> Machine: arm
> Failure: sanity tests time out and cause cascading failures.
> Description: I'm patching the autobuilder today so that sanity tests
> timing out shouldn't cause a cascading failure, however the arm sanity
> tests are still timing out.
>
> Machine: qemux86-64
> Failure: linux-yocto_git failing at do_compile_perf
> Description:
> |     CC util/scripting-engines/trace-event-perl.o
> | cc1: warnings being treated as errors
> | cc1: error: include location "/usr/local/include" is unsafe for
> cross-compilation

I saw this one as well, but hadn't gone back to look at
it yet. Did something change underneath us?

I haven't updated any parts of the recipes or kernel that
would have triggered the new failure. Or at least nothing
that has ever showed up in my testing.

Darren/Tom: you guys have been into perf/trace recently,
any ideas (or time) for a quick fix ? I'm going to be
pegged for the day trying to sort out some other items.

Cheers,

Bruce

> | make: *** [util/scripting-engines/trace-event-perl.o] Error 1
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


