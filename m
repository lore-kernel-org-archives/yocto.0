Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69AFC4C80815
	for <yocto@yoctoproject.org>; Fri, 26 Nov 2010 21:52:06 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2010 19:52:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,264,1288594800"; d="scan'208";a="681416711"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga001.jf.intel.com with ESMTP; 26 Nov 2010 19:52:05 -0800
Received: from [10.255.13.188] (10.255.13.188) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Fri, 26 Nov 2010 20:52:05 -0700
Message-ID: <4CF08064.1030604@intel.com>
Date: Fri, 26 Nov 2010 19:52:04 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Sat, 27 Nov 2010 03:52:06 -0000
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Meant to cc: the list.

Scott

-------- Original Message --------
Subject: Re: [yocto] About autobuilder images
Date: Fri, 26 Nov 2010 20:48:35 -0700
From: Scott Garman <scott.a.garman@intel.com>
To: Tian, Kunwei <kunwei.tian@intel.com>

On 11/25/2010 01:55 AM, Tian, Kunwei wrote:
> Hi, Elizabeth I find the folder 20101123-1 and folder 20101124-1 are
> empty,which from http://autobuilder.pokylinux.org/nightly/. Do you
> know what is the matter? And also , I find folder 20101115-1 only
> have qemu images,but folder 20101115-2 is ok. What is the different
> between folder 20101115-1 and folder 20101115-2?

Most likely you're looking at output from a build that was canceled.

Previously, the output directories in the web area were only created at
the very end of the buildset, and the images copied over in one big
step. However, due to the length of time builds were taking and our need
to make the images available to QA as quickly as possible, images are
now copied over to the web area in several steps (generally as each main
machine arch is completed).

The -1 vs. -2 directory naming definitely indicates that the first build
was originally canceled and a second one was run.

To make this clearer, I'm thinking at the start of the build to touch a
file named BUILD_INCOMPLETE or somesuch, and then delete that at the
very end of the build, to clarify the state of the build. I can probably
add this early next week.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

