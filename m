Return-Path: <gaurav.chaturvedi@nsl.eu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED634E00B70; Wed, 21 May 2014 03:11:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
X-Greylist: delayed 1792 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 May 2014 03:11:43 PDT
Received: from mailgate.nsl.eu.com (unknown [80.177.211.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F6E0E00AFD
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 03:11:43 -0700 (PDT)
Received: from ojpc.nsl ([192.168.17.67])
	by mailgate.nsl.eu.com with esmtp (Exim 4.76)
	(envelope-from <gaurav.chaturvedi@nsl.eu.com>) id 1Wn31y-0008C7-2U
	for yocto@yoctoproject.org; Wed, 21 May 2014 10:41:50 +0100
Message-ID: <537C74E1.1000307@nsl.eu.com>
Date: Wed, 21 May 2014 10:41:53 +0100
From: Gaurav Chaturvedi <gaurav.chaturvedi@nsl.eu.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: [Yocto 9.0.2 over Overo/Beagleboard] "screen" utility not working as expected
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
X-List-Received-Date: Wed, 21 May 2014 10:11:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am using Yocto dylan 9.0.2 code to generate Ubuntu kernel and images 
for Gumstix Overo/Beagleboard. Everything is working fine except the 
utility "screen" that I am using to ssh to board, running an application 
and logout.
This is what it is used for, but unfortunately it is not working that 
way. The application also exits once I logout from the board/terminate 
the ssh session.

I have tried different arguments of screen, but no use. Is anybody aware 
of similar issue with "screen" utility with any kernel version.

I read on some forums and Yocto help pages about 2 versions of SSH: 
Dropbear and OpenSSH. The Dropbear version seem to have this issue, but 
not sure. I tried compiling OpenSSH from source and including that in 
the filesystem on my Overo board, but the issue remains.

Any suggestion or information regarding this issue would be very helpful.

Thanks in advance.

Cheers
Gaurav


