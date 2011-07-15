Return-Path: <prvs=6177fe60a2=jmitchell@ll.mit.edu>
Received: from mx2.ll.mit.edu (MX2.LL.MIT.EDU [129.55.12.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id 46C7D4C80836
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 14:33:02 -0500 (CDT)
Received: from LLE2K7-HUB01.mitll.ad.local (LLE2K7-HUB01.mitll.ad.local) by
	mx2.ll.mit.edu (unknown) with ESMTP id p6FJWauP019463;
	Fri, 15 Jul 2011 15:32:58 -0400
Message-ID: <4E2095E4.1080904@ll.mit.edu>
Date: Fri, 15 Jul 2011 15:32:52 -0400
From: Jeff Mitchell <jmitchell@ll.mit.edu>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110505 Lightning/1.0b3pre Thunderbird/3.1.10
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <4E205D20.2060106@ll.mit.edu> <4E208803.3050306@linux.intel.com>
	<596D642B-8887-4A7B-8FEB-E9830351EABC@dominion.thruhere.net>
In-Reply-To: <596D642B-8887-4A7B-8FEB-E9830351EABC@dominion.thruhere.net>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.4.6813, 1.0.211,
	0.0.0000
	definitions=2011-07-15_06:2011-07-15, 2011-07-15,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	ipscore=0 suspectscore=2
	phishscore=0 bulkscore=0 adultscore=0 classifier=spam adjust=0
	reason=mlx
	scancount=1 engine=6.0.2-1012030000 definitions=main-1107150161
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Color ghosting on BeagleBoard xM rev C
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
X-List-Received-Date: Fri, 15 Jul 2011 19:33:02 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/15/2011 03:12 PM, Koen Kooi wrote:
>
> Op 15 jul 2011, om 20:33 heeft Darren Hart het volgende geschreven:
>
>> Jason, Koen,
>>
>> Does anything spring to mind as an obvious fix for this? Perhaps
>> some kernel parameter initialization string for the graphics
>> hardware?
>
> I've never seen it in angstrom, so you'd have to see what meta-yocto
> is doing different. In other news, for beagleboard please use the
> meta-ti layer for that, it's the offcial upstream for beagle and is
> known to work.

I'm not using meta-ti because I'm working with Darren to test out 
support for the rev C board in meta-yocto. We just don't know what 
difference is causing this  :-)

--Jeff

