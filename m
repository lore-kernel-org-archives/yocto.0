Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DF194C811AD
	for <yocto@yoctoproject.org>; Mon, 29 Nov 2010 12:07:31 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Nov 2010 10:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,276,1288594800"; d="scan'208";a="682052834"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.99]) ([10.7.201.99])
	by orsmga001.jf.intel.com with ESMTP; 29 Nov 2010 10:07:20 -0800
Message-ID: <4CF3EB7C.8060205@intel.com>
Date: Mon, 29 Nov 2010 10:05:48 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.15) Gecko/20101026 SUSE/3.0.10 Lightning/1.0b1
	Thunderbird/3.0.10 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4CF08064.1030604@intel.com>
In-Reply-To: <4CF08064.1030604@intel.com>
Subject: Re: About autobuilder images
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
X-List-Received-Date: Mon, 29 Nov 2010 18:07:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I looked into this this morning and that's exactly what he's seeing,
canceled builds. I agree that some way of ensuring that incomplete
builds aren't copied to nightly is needed, but I also think it's
important that we look at a different way to solve the issue of getting
nightly images to QA.

One idea that I'm bouncing around, is that we create a QA nightly that
consists of single arch targets (e.g. nightly-x86 nightly-arm
nightly-x86_64). It solves the problem of a single failing architechture
causing the entire nightly to fail and allows quicker turn around for
QA. It doesn't reduce the time for an entire nightly to run but it
shouldn't increase it either (as long as each target shares a common
buildtime directory), but it does make it so that if one thing fails in,
say x86, that the entire QA effort is not blocked. I'll have an RFC for
this by tomorrow morning that sketches this out in finer detail.

-b

On 11/26/2010 07:52 PM, Scott Garman wrote:
> Meant to cc: the list.
> 
> Scott
> 
> -------- Original Message --------
> Subject: Re: [yocto] About autobuilder images
> Date: Fri, 26 Nov 2010 20:48:35 -0700
> From: Scott Garman <scott.a.garman@intel.com>
> To: Tian, Kunwei <kunwei.tian@intel.com>
> 
> On 11/25/2010 01:55 AM, Tian, Kunwei wrote:
>> Hi, Elizabeth I find the folder 20101123-1 and folder 20101124-1 are
>> empty,which from http://autobuilder.pokylinux.org/nightly/. Do you
>> know what is the matter? And also , I find folder 20101115-1 only
>> have qemu images,but folder 20101115-2 is ok. What is the different
>> between folder 20101115-1 and folder 20101115-2?
> 
> Most likely you're looking at output from a build that was canceled.
> 
> Previously, the output directories in the web area were only created at
> the very end of the buildset, and the images copied over in one big
> step. However, due to the length of time builds were taking and our need
> to make the images available to QA as quickly as possible, images are
> now copied over to the web area in several steps (generally as each main
> machine arch is completed).
> 
> The -1 vs. -2 directory naming definitely indicates that the first build
> was originally canceled and a second one was run.
> 
> To make this clearer, I'm thinking at the start of the build to touch a
> file named BUILD_INCOMPLETE or somesuch, and then delete that at the
> very end of the build, to clarify the state of the build. I can probably
> add this early next week.
> 
> Scott
> 


