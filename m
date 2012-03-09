Return-Path: <SRS0=PbUgHA=BQ=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout11.eigbox.net (bosmailout11.eigbox.net [66.96.189.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F35EE013A3
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 06:36:42 -0800 (PST)
Received: from bosmailscan11.eigbox.net ([10.20.15.11])
	by bosmailout11.eigbox.net with esmtp (Exim) id 1S60vx-0003HC-D0
	for yocto@yoctoproject.org; Fri, 09 Mar 2012 09:36:41 -0500
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan11.eigbox.net with esmtp (Exim) id 1S60vx-0002DO-AS
	for yocto@yoctoproject.org; Fri, 09 Mar 2012 09:36:41 -0500
Received: from bosauthsmtp06.eigbox.net ([10.20.18.6])
	by bosimpout02.eigbox.net with NO UCE
	id jSch1i00507rX7u01Sch3d; Fri, 09 Mar 2012 09:36:41 -0500
X-Authority-Analysis: v=2.0 cv=OOmQK1mB c=1 sm=1
	a=DyN8zkliAUdISGavr0A7eg==:17 a=mn2ndCrYJZwA:10 a=y6CmfMN_vBIA:10
	a=Lk7aQFya1KUA:10 a=IkcTkHD0fZMA:10 a=ag1SF4gXAAAA:8 a=07d9gI8wAAAA:8
	a=usZp50ADn_Vwv6K8LgMA:9 a=raXqGe6W65oKcVUNIVQA:7 a=QEXdDO2ut3YA:10
	a=fIc3/5IyPUehxkj7BpkQ7Q==:117
X-EN-OrigOutIP: 10.20.18.6
X-EN-IMPSID: jSch1i00507rX7u01Sch3d
Received: from pool-108-25-200-43.atclnj.east.verizon.net ([108.25.200.43]
	helo=[192.168.1.3]) by bosauthsmtp06.eigbox.net with esmtpa (Exim)
	id 1S60vw-0006dH-Uq
	for yocto@yoctoproject.org; Fri, 09 Mar 2012 09:36:41 -0500
Message-ID: <4F5A1577.1010600@mindchasers.com>
Date: Fri, 09 Mar 2012 09:36:39 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F59F59F.4040807@enea.com> <4F5A0913.20207@windriver.com>
In-Reply-To: <4F5A0913.20207@windriver.com>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.200.43
X-EN-OrigHost: pool-108-25-200-43.atclnj.east.verizon.net
Subject: Re: yocto and LTSI
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
X-List-Received-Date: Fri, 09 Mar 2012 14:36:42 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 03/09/2012 08:43 AM, Bruce Ashfield wrote:
> On 12-03-09 07:20 AM, David Nyström wrote:
>> Hi All,
>>
>> Whats yoctos take on LTSI ?
>>
>> http://git.linuxfoundation.org/?p=ltsi-kernel.git;a=summary
>> http://lwn.net/Articles/484337/
>>
>> I've noticed that LTT-ng and other kernel patches are independently
>> ported and maintained by the yocto project.
>> Are there any plans for yocto to have ltsi-kernel patches as upstream ?
>
> We'll be syncing up with the ltsi kernel parts over the summer.
> But yes, LTSI will be one of the sources used for yocto kernel trees.
>
> Cheers,
>
> Bruce
>
>>

I just finished reviewing the slides for LTSI given at ELC: 
(https://events.linuxfoundation.org/images/stories/pdf/lf_elc12_shibata.pdf). 


Why does the Linux Foundation need to get behind yet another effort to 
maintain a kernel repository for embedded?  It seems that many of the 
objectives are the same for the two projects regarding the kernel.  Why 
not just branch a yearly Yocto kernel as long-term stable and add the 
support methodology outlined in the LTSI slides to this branch?  Perhaps 
this could also be done with the Poky repo?

How is a developer supposed to view Yocto and LTSI?  The former is 
cutting edge, developer friendly with all the bells & whistles, and 
experimental but use the latter for production???  Or maybe use the 
tools and rootfs from Yocto but the kernel from LTSI?

It seems Greg K-H of LTSI should join forces with Yocto and keep things 
simple & unified for us embedded developers (or Yocto should dump 
maintaining its own kernel repos and just draw from LTSI).


Bob







