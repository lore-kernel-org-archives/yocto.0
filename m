Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38296E006C3
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2013 00:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=DhtlnOMhsIOXkcKTCYSGvVpRPxf5UCGrEs0VmX/+Axg=; 
	b=ZMhpbAUh616werDv6Ws+VZFCjlQDW41AfpzdCk9/cxuMAVvcB8ThSBDtSFz5ASFZET9gLlIbRDRomJPKaH/w661d3nvs9REzcWyb0RbEHZTKQVHUmf5OeJ2Q8XaNKOQK;
Received: from [109.224.129.17] (port=31768
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1TtDFZ-000QvD-Ho; Thu, 10 Jan 2013 08:12:33 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <50EAF727.6060107@linux.intel.com>
Date: Thu, 10 Jan 2013 08:12:32 +0000
Message-Id: <51E40CE9-E90D-4FB3-9345-91559013F529@keylevel.com>
References: <93700C12-76D8-4F46-9AAB-B66A9869D70C@keylevel.com>
	<50D4A7B6.6040603@r-finger.com> <50EAF727.6060107@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: yocto@yoctoproject.org
Subject: Re: I think my kernel image just went back in time...
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
X-List-Received-Date: Thu, 10 Jan 2013 08:12:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 7 Jan 2013, at 16:26, Darren Hart wrote:

>=20
>=20
> On 12/21/2012 10:17 AM, Tomas Frydrych wrote:
>> On 09/12/12 23:17, Chris Tapp wrote:
>>> In tmp/deploy/images:
>>>=20
>>> 1) bzImage had a timestamp of 2012-12-09 21:49 and the file ended
>>> -20121209214459.bin
>>>=20
>>> 2) Cleaned the image and the task it contained (to pick up some
>>> changes on rebuild) and deleted the image files (.hddimg, etc.) in
>>> tmp/deploy/images making sure to leave the kernel files intact.
>>=20
>> Did you cleansstate it? I find that without cleaning the state kernel
>> image gets always pulled out of sstate rather than properly rebuilt.

It was a while back now and I can't recall for sure. I'm 99.9% certain I =
used -c cleanall on the image.

>> Tomas
>=20
> Do you still experience this on the master branch?

I've not had a chance to try and I can't remember the exact steps to =
reproduce it. I've only seen this happen once for the same work-flow.

> --=20
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Technical Lead - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




