Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07F24E0045D
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 17:07:07 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>)
	id 1TrIAG-0001gp-KI; Sat, 05 Jan 2013 01:03:08 +0000
Message-ID: <50E77C80.1000806@dynamicdevices.co.uk>
Date: Sat, 05 Jan 2013 01:06:08 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: ml@communistcode.co.uk
References: <50E4AAFE.4080905@btinternet.com>
	<50E5620A.3070208@communistcode.co.uk>
In-Reply-To: <50E5620A.3070208@communistcode.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: Basic failures building 1st Yocto Project and Yocto Raspberry Pi
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
X-List-Received-Date: Sat, 05 Jan 2013 01:07:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

> It should just be a matter of changing a few git revisions, and tweaking 
> the wording a bit to involve the new meta-yocto, meta-yocto-bsp split. 
> If anyone wishes to step up to the plate the source for this blog post 
> is available at [1] and I will happily accept patches.
> 

Jack, I've taken up your invitation, forked the repo and committed a
change to my fork which updates the document to current meta-raspberrypi
commit and a recent (circa two weeks) Yocto commit.

I've just built this from scratch here and aside from a couple of GitHub
feed hiccups it works. It runs up on the RPi.

I've sent a pull request over to your base repo (or at least I think I
have...)

Cheers,

Alex

> Cheers,
> Jack.
> 
> [1] https://github.com/CommunistCode/PimpMyPi-Community-Blog-Posts
> 


