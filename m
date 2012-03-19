Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C32ADE013A3
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 11:03:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Mar 2012 11:03:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="119201712"
Received: from unknown (HELO envy.home) ([10.7.199.162])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2012 11:03:23 -0700
Message-ID: <4F6774C1.3080704@linux.intel.com>
Date: Mon, 19 Mar 2012 11:02:41 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <alpine.DEB.2.02.1202291147340.2150@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945173476@ORSMSX101.amr.corp.intel.com>
	<4F6767CE.5080802@linux.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945173A2A@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237945173A2A@ORSMSX101.amr.corp.intel.com>
X-Enigmail-Version: 1.4
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: my idea of a quick start guide
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
X-List-Received-Date: Mon, 19 Mar 2012 18:03:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 03/19/2012 10:17 AM, Rifenbark, Scott M wrote:
> I could replace the Beagleboard xM machine with qemux86.  The
> introductory bit up front provides minimal inconvenience to the

"Minimal inconvenience" is a subjective assessment of course. I find it
very annoying to slog through that much material when all I want are the
3 shell commands to get it going, from which I can typically infer a lot.

Other have reported similar views.

> reader to quickly hop down to the section via the link.

I missed this on my first scan, despite checking for it. My fault? Sure.
But I'm not likely to be the only one.

--
Darren

> 
> Scott
> 
> -----Original Message----- From: Darren Hart
> [mailto:dvhart@linux.intel.com] Sent: Monday, March 19, 2012 11:07
> AM To: Rifenbark, Scott M Cc: Robert P. J. Day; Yocto discussion
> list Subject: Re: [yocto] my idea of a quick start guide
> 
> 
> 
> On 03/16/2012 04:27 PM, Rifenbark, Scott M wrote:
>> Several people have indicated a quick start section like Robert's
>> wiki page would be good in the YP QS.  I agree that the idea of
>> diverting the super user to a shortened, more concise section that
>> let's you kick the tires of Yocto is a good idea.  I have created a
>> section based on Robert's example from his wiki page.  You can see
>> it at this link:
>> 
>> http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs.html#super-user
>>
>>
>> 
Feedback and comments welcome.
> 
> It's not a bad section to have, but it doesn't feel integrated into
> the quickstart, especially the bit about building for Beagleboard xM.
> Users looking for a truly quick start will still have to troll
> through pages of introductory overview and concepts before they get
> to this. I still argue that a new user should be able to build and
> boot qemux86 sato using the QS guide without having to scroll down.
> 
> -- Darren
> 
>> 
>> Scott
>> 
>> -----Original Message----- From: yocto-bounces@yoctoproject.org
>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Robert P. J.
>> Day Sent: Wednesday, February 29, 2012 10:49 AM To: Yocto
>> discussion list Subject: [yocto] my idea of a quick start guide
>> 
>> 
>> since it's easier to just write something than suggest numerous 
>> fixes, i took less than an hour and wrote this:
>> 
>> http://www.crashcourse.ca/wiki/index.php/Yocto_Project_Quick_Start
>> 
>> it's the sort of thing that would have been perfect for me when i 
>> first jumped into yocto.
>> 
>> i'm going to add a couple more short sections but, technically, it 
>> contains everything i would have needed to know to build my first 
>> image.
>> 
>> thoughts?
>> 
>> rday
>> 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

