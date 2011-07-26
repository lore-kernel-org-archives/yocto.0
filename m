Return-Path: <prvs=6188cc0d54=jmitchell@ll.mit.edu>
Received: from mx2.ll.mit.edu (unknown [129.55.12.46])
	by mx1.pokylinux.org (Postfix) with ESMTP id 63C714C801BF
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2011 12:00:53 -0500 (CDT)
Received: from LLE2K7-HUB01.mitll.ad.local (LLE2K7-HUB01.mitll.ad.local) by
	mx2.ll.mit.edu (unknown) with ESMTP id p6QH0nqr012648;
	Tue, 26 Jul 2011 13:00:49 -0400
Message-ID: <4E2EF2C1.7060708@ll.mit.edu>
Date: Tue, 26 Jul 2011 13:00:49 -0400
From: Jeff Mitchell <jmitchell@ll.mit.edu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110721 Thunderbird/5.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4E205D20.2060106@ll.mit.edu> <4E2EEFBF.5030804@mlbassoc.com>
In-Reply-To: <4E2EEFBF.5030804@mlbassoc.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.4.6813, 1.0.211,
	0.0.0000
	definitions=2011-07-26_05:2011-07-26, 2011-07-26,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	ipscore=0 suspectscore=2
	phishscore=0 bulkscore=0 adultscore=0 classifier=spam adjust=0
	reason=mlx
	scancount=1 engine=6.0.2-1012030000 definitions=main-1107260135
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 26 Jul 2011 17:00:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/26/2011 12:47 PM, Gary Thomas wrote:
> On 2011-07-15 09:30, Jeff Mitchell wrote:
>> Darren Hart suggested I send this to the list...
>>
>> Attached is a picture of my screen running Terminal. This is on a BeagleBoard xM rev C connected via its HDMI out to a DVI adapter and then into a Dell UltraSharp monitor. Angstrom
>> doesn't display these problems, so the setup should be fine.
>>
>> I'm not quite sure what is causing this. The resolution is also fairly low, and I haven't had any success using boot parameters (either the older video=omapfb:mode variant or the
>> newer DSS2 omapfb.mode variant).
>
> Did you ever find out what is causing this?

No, but I'll be testing out a new build soon -- haven't been able to for 
a bit.

> When you say that it works on one system (Poky?) vs another (Angstrom?)
> are they both running the same version of U-Boot?  I'm seeing this same
> behaviour on one of my boards, but only when I run U-Boot from 2011.06

Yes -- Yocto/Poky/Sato vs. Angstrom. I doubt they're running the same 
version of U-Boot, but I don't know the version numbers offhand.

> BTW - why did you send your original query to the Poky list?

Because Darren suggested that I do so, to get various eyes on it  :-)

Thanks,
jeff

