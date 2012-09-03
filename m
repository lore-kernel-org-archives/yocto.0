Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (unknown [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5E23E01370
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 10:52:52 -0700 (PDT)
Received: from localhost ([127.0.0.1]:53864 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T8aox-0002BA-H5
	for yocto@yoctoproject.org; Mon, 03 Sep 2012 17:52:23 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:content-type
	:content-transfer-encoding; s=default; bh=/Vhndao7nvG5GG03iZLIOc
	z1o2A=; b=quR6cqDgvQEUw9vJL2704VrxK8N4cVZ7PKx1ooG70Iy8JnlBRLVdPj
	dgKoB/5Rod+Qk+IR35CPjUCrqZmlljxoUf0r3SHn040VRXLwmcGWpKsovdpuzilV
	Fl3or2TSWkBtcLBchmRliRDJjK4Fk64pP25Ob4F5ixDAZ+pCWh1O8=
Received: from cpc2-cmbg15-2-0-cust171.5-4.cable.virginmedia.com
	([86.26.12.172]:49840 helo=[192.168.1.113])
	by eumx.net with esmtpsa (TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <ml@communistcode.co.uk>)
	id 1T8aox-0002B6-ER
	for yocto@yoctoproject.org; Mon, 03 Sep 2012 17:52:23 +0000
Message-ID: <5044EE55.4050208@communistcode.co.uk>
Date: Mon, 03 Sep 2012 18:52:21 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:15.0) Gecko/20120824 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Building a Custom Raspberry Pi Image using OpenEmbedded and Yocto
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
X-List-Received-Date: Mon, 03 Sep 2012 17:52:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Good evening all,

Over the past month or so I have been experimenting with using Yocto and 
meta-raspberrypi to get a minimal image booting. After some frustration, 
plenty of bug fixes and heaps of help from members of the community; I 
believe that the layers are now well tested and fairly stable.

As some of you know I run a small Raspberry Pi community site[1] and I 
would like to write a follow up to an earlier blog post about preparing 
yourself for programming on the Raspberry Pi with the Yocto Project. As 
I am no novelist I have put the blog post up on GitHub[2] and I would be 
very grateful if people would be willing to give it once over and point 
out (or patch!) any flaws. I know Yocto/OpenEmbedded/Bitbake can be a 
minefield for the beginner and I still sometimes get it wrong.

If you are interested in contributing or making alterations I would 
suggest either cloning the repository, or editing and commiting through 
the GitHub web interface. Please use soft-line wrapping and take note of 
the 'similar' bbcode style tags.

I plan to post it up in the next few days and try to let some people 
know in the Raspberry Pi community.

[1] http://www.pimpmypi.com
[2] https://github.com/CommunistCode/PimpMyPi-Community-Blog-Posts

Cheers,
Jack



