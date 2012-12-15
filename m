Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB00BE003DA
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 16:53:15 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id qBF0rFS9028940
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 14 Dec 2012 16:53:15 -0800 (PST)
Received: from msp-dhcp56.wrs.com (172.25.34.56) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Fri, 14 Dec 2012 16:53:13 -0800
Message-ID: <50CBC9FA.7090605@windriver.com>
Date: Fri, 14 Dec 2012 18:53:14 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Brian Hutchinson <b.hutchman@gmail.com>
References: <50CB8173.4030801@am.sony.com>
	<CAJTo0LaHPuYMnasJJ3dvufb6HYy9rpf8CUpkB8CcwMNSyux5NQ@mail.gmail.com>
	<50CB9004.60908@windriver.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B6C012@ORSMSX101.amr.corp.intel.com>
	<CAFZh4h-nVqnzFVH8SsmKyJL+=8DPa6ew-YQG1=dy2j13kxCtSA@mail.gmail.com>
In-Reply-To: <CAFZh4h-nVqnzFVH8SsmKyJL+=8DPa6ew-YQG1=dy2j13kxCtSA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is GMAE?
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
X-List-Received-Date: Sat, 15 Dec 2012 00:53:16 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/14/12 3:57 PM, Brian Hutchinson wrote:
> On Fri, Dec 14, 2012 at 4:09 PM, Zhang, Jessica <jessica.zhang@intel.com> wrote:
>> Actually I talked with Richard regarding retiring the toolchain targets (meta-toolchain and meta-toolchain-gmae) as Mark mentioned that now we can build a toolchain matching the >image.  Also, we're continue improving adt-installer which also allows you to setup sysroot using the target image as well.  Richard's concern is there maybe some legacy user that >preferred the toolchain target. With the latest changes in toolchain generation which really maps to target images, probably we should unplug to legacy ones to make the toolchain generation more streamline.  Thoughts or concerns?
>
> I'm one of the users that is stuck using Edison 6.0.  I'm desperate
> for the ability to generate a toolchain and sysroot that matches our
> target.  Right now I have to build meta-toolchain and then manually
> look in the tmp for sysroot-destdir related stuff from our build and
> copy it to the sysroot in /opt/poky and hand that out to developers.
> When our sister group overseas makes a change that effects the sysroot
> it breaks our build and I have to figure out what happened and
> manually adjust our sysroot to fix the problem.  I sure would like to
> be able to just do an update and then bitbake the toolchain to pick up
> the changes.  I figure we are stuck with Edison for a while ... can I
> back port these toolchain features you all are talking about to
> Edison?

There are changes to both bitbake and oe-core required.  You'll have to look 
back at the oe-core mailing list to find the right set to backport.

We have backported the items to our 1.2 (7.0 Denzil) based system, but I'm not 
aware of anyone who is using it in 1.1 (6.0 Edison).

--Mark

> Regards,
>
> Brian
>


