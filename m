Return-Path: <SRS0=bCB4U0=CQ=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout03.eigbox.net (bosmailout03.eigbox.net [66.96.190.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8856E00596
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 14:28:39 -0700 (PDT)
Received: from bosmailscan02.eigbox.net ([10.20.15.2])
	by bosmailout03.eigbox.net with esmtp (Exim) id 1SHicA-0001hE-QF
	for yocto@yoctoproject.org; Tue, 10 Apr 2012 17:28:38 -0400
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan02.eigbox.net with esmtp (Exim)
	id 1SHic9-0002ba-PN; Tue, 10 Apr 2012 17:28:37 -0400
Received: from bosauthsmtp13.eigbox.net ([10.20.18.13])
	by bosimpout02.eigbox.net with NO UCE
	id wMUe1i0050GvDVm01MUeMJ; Tue, 10 Apr 2012 17:28:38 -0400
X-Authority-Analysis: v=2.0 cv=BexvJMR2 c=1 sm=1
	a=1tk2KXT9X5KuiK9ZGSyBkw==:17 a=mn2ndCrYJZwA:10 a=5XsFQGJ3Uf0A:10
	a=K1hxueWf2WoA:10 a=Lk7aQFya1KUA:10 a=8nJEP1OIZ-IA:10
	a=y8AVZKxkgn7I5hoBZTUA:9 a=6CIAoQP6jsNJ4YLZWLwA:7 a=wPNLvfGTeEIA:10
	a=UH8/iCWBfdUmbm4Ft4Vi3Q==:117
X-EN-OrigOutIP: 10.20.18.13
X-EN-IMPSID: wMUe1i0050GvDVm01MUeMJ
Received: from [108.25.140.29] (helo=[192.168.1.41])
	by bosauthsmtp13.eigbox.net with esmtpa (Exim)
	id 1SHic9-0001nz-Ub; Tue, 10 Apr 2012 17:28:38 -0400
Message-ID: <4F84A5FF.4080604@mindchasers.com>
Date: Tue, 10 Apr 2012 17:28:31 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <8F9BD230-D053-4D52-AD15-97E27C84013D@keylevel.com>
In-Reply-To: <8F9BD230-D053-4D52-AD15-97E27C84013D@keylevel.com>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.140.29
X-EN-OrigHost: unknown
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Reconfiguring the kernel
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
X-List-Received-Date: Tue, 10 Apr 2012 21:28:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/10/2012 04:40 PM, Chris Tapp wrote:
> I think this is a summary of the steps needed to reconfigure the kernel,based on the instructions in the 6.0.1 dev manual:
>
> 1) bitbake linux-yocto -c clean
> 2) bitbake linux-yocto -c menuconfig
> 3) bitbake linux-yocto -c compile -f
> 4) bitbake linux-yocto
>
> However, the bzimage in tmp/deploy/images is the same as the one that I had before I executed the above. I'm not sure if the md5sum is the same (will check next time round the loop), but it certainly doesn't seem to pick up the new configuration that I'm generating within menuconfig.
>
> If I use 'cleanall' in step 1 (as shown in the manual) then I do get a new image, but at the expense of having to download the kernel branch again (even with a DL_DIR set). Can I get away with just using 'clean' if I do something else as well ?
>
> Chris Tapp
>


Chris,

Don't you find bzImage under your work directory 
(<machine>/tmp/work/<machine>-poky-linux/linux-yocto....) ?

I just gave your steps a spin with the beta release, and I do see that 
the image is missing in my deploy/images directory, but I do find it in 
my work directory.

I'm just pointing this out in case you're stuck wanting a new image to 
work with.

Bob




