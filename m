Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABF22E0044A
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 11:49:47 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1SFVH5-0006vj-Uy
	for yocto@yoctoproject.org; Wed, 04 Apr 2012 20:49:43 +0200
Received: from 81.92.22.26 ([81.92.22.26])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2012 20:49:43 +0200
Received: from gmane by 81.92.22.26 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2012 20:49:43 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 04 Apr 2012 21:49:32 +0300
Organization: Reliable Embedded Systems
Message-ID: <jli53s$3p3$1@dough.gmane.org>
References: <4F7C1F1F.4070806@r-finger.com>	<CAC+thW1Vah3pUPH=CNcQCH=C4QEj2RY17DX+tDHGd_MuCsxViQ@mail.gmail.com>	<4F7C438D.5020800@windriver.com>
	<4F7C5651.60209@mlbassoc.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 81.92.22.26
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.24) Gecko/20111108 Thunderbird/3.1.16
In-Reply-To: <4F7C5651.60209@mlbassoc.com>
Subject: Re: Not booting on BeagleBoard xM 0x2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 04 Apr 2012 18:49:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Garry/Andrea,

I am currently giving a training based on the Beagle-XM an this error
happened at the same time on 5 boards with a 3.1 kernel.


> error pattern.  It hangs at this point:
>   Waiting for root device /dev/mmcblk0p2...
>   mmc0: error -110 whilst initialising SD card
> 

The fix was to change the SD cards and use cards from a different
manufacturer, so yes, it seems to be related to some funny SD card timings.

I did not try to patch yet.

Regards,

Robert


..."To assert that the earth revolves around the sun is as erroneous as
to claim that Jesus was not born of a virgin." - Cardinal Bellarmine
1615, during the trial of Galileo

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



