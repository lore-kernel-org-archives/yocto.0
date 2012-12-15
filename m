Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0946E006CC
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2012 09:50:51 -0800 (PST)
Received: from localhost ([127.0.0.1]:42835 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1Tjvsw-0003c6-Aa
	for yocto@yoctoproject.org; Sat, 15 Dec 2012 17:50:50 +0000
Received: from host86-162-126-11.range86-162.btcentralplus.com
	([86.162.126.11]:45823 helo=[192.168.1.78])
	by eumx.net with esmtpsa (TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <ml@communistcode.co.uk>)
	id 1Tjvsw-0003c1-3Q
	for yocto@yoctoproject.org; Sat, 15 Dec 2012 17:50:50 +0000
Message-ID: <50CCB70C.8020008@communistcode.co.uk>
Date: Sat, 15 Dec 2012 17:44:44 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50CB8173.4030801@am.sony.com>
	<CAJTo0LaHPuYMnasJJ3dvufb6HYy9rpf8CUpkB8CcwMNSyux5NQ@mail.gmail.com>
	<50CB9004.60908@windriver.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B6C012@ORSMSX101.amr.corp.intel.com>
	<CAFZh4h-nVqnzFVH8SsmKyJL+=8DPa6ew-YQG1=dy2j13kxCtSA@mail.gmail.com>
In-Reply-To: <CAFZh4h-nVqnzFVH8SsmKyJL+=8DPa6ew-YQG1=dy2j13kxCtSA@mail.gmail.com>
Subject: Re: What is GMAE?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 15 Dec 2012 17:50:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/14/12 21:57, Brian Hutchinson wrote:
> On Fri, Dec 14, 2012 at 4:09 PM, Zhang, Jessica <jessica.zhang@intel.com> wrote:
>> Actually I talked with Richard regarding retiring the toolchain targets (meta-toolchain and meta-toolchain-gmae) as Mark mentioned that now we can build a toolchain matching the >image.  Also, we're continue improving adt-installer which also allows you to setup sysroot using the target image as well.  Richard's concern is there maybe some legacy user that >preferred the toolchain target. With the latest changes in toolchain generation which really maps to target images, probably we should unplug to legacy ones to make the toolchain generation more streamline.  Thoughts or concerns?
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

Hi Brian,

I may be missing a trick here, but for our internal toolchain I pretty 
much made a copy of meta-toolchain, made a copy of the 
toolchain-packagegroup, edited the package group to contain the same 
libs, apps etc as my image, pointed meta-toolchain copy to that 
package-group instead of the default and now when ever I make an update 
to the image it is just a case of running

bitbake core-image-product meta-toolchain-product

and that spits out both the image and customized toolchain. If I have 
missed something obvious then please excuse my ramblings :)

Cheers,
Jack.

>
> Regards,
>
> Brian
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


