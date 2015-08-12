Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 808C7E00758; Wed, 12 Aug 2015 10:24:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4732 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Aug 2015 10:24:35 PDT
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A3BEE003D9
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 10:24:35 -0700 (PDT)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	t7CG5g2i025722
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 11:05:42 -0500
Received: from [10.2.106.105] ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2015081211054264-1410062 ;
	Wed, 12 Aug 2015 11:05:42 -0500 
Message-ID: <55CB6ED6.6060007@ni.com>
Date: Wed, 12 Aug 2015 11:05:42 -0500
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <55C4B071.30709@gmail.com>	<20150809100724.GA24792@bang.betafive.co.uk>
	<55C8ABFB.3050802@gmail.com>
In-Reply-To: <55C8ABFB.3050802@gmail.com>
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 08/12/2015 11:05:42 AM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 08/12/2015 11:05:42 AM,
	Serialize complete at 08/12/2015 11:05:42 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-08-12_09:, , signatures=0
Subject: Re: ipk zImage in master-next
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Aug 2015 17:24:41 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=windows-1252



On 08/10/2015 08:49 AM, Trevor Woerner wrote:
> On 08/09/15 06:07, Paul Barker wrote:
>> On Fri, Aug 07, 2015 at 09:19:45AM -0400, Trevor Woerner wrote:
>>> When packaging a zImage kernel for IPK in master-next the following
>>> error shows up:
>>>
>>> | kernel-image-zImage-4.1.2-fslc+g95d9e15
>>> | *** Error: Package name  contains illegal characters, (other than
>>> [a-z0-9.+-])
>>>
>>> It looks like the newer kernel.bbclass is much more sophisticated about
>>> generating package names than before.
>>>
>>> Has anyone else seen this? Is there a simple way of saying "the type is
>>> zimage where packaging for ipk is concerned but zImage otherwise"?
>>>
>>> Best regards,
>>> 	Trevor
>>
>> I believe this check is present in opkg-build just to ensure compatibility with
>> the Debian Policy Manual. I don't remember this being an actual restriction of
>> opkg.
>>
>> You could try patching the opkg-build script (in opkg-utils) to remove this
>> check and see if opkg is happy to install the resulting package.
> 
> Yes, this works. Removing the check from opkg-build causes my build to
> succeed, and the resulting image boots with this kernel (meaning opkg is
> happy to install the package into the image).
> 
> Normally this is the part where I'd ask if you want me to send a patch,
> but if that check is there for a reason, simply removing it isn't a
> proper solution.
> 
> Thoughts?

Looks like the dpkg back-end should be broken too. Sounds to me like the problem
is not on opkg-build but on the new changes to the kernel class, maybe is
missing a call to legitimize_package_name?.

-- 
cheers,

Alejandro

