Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45ABEE00B47; Wed, 31 May 2017 12:34:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1955 seconds by postgrey-1.32 at yocto-www;
	Wed, 31 May 2017 12:34:29 PDT
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [184.154.208.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D81DE00992
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 12:34:29 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8] helo=siteground282.com)
	by se6.mailspamprotection.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1dG8sS-0002LK-4z
	for yocto@yoctoproject.org; Wed, 31 May 2017 14:01:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:Subject:Cc:To:From:Date:
	Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=f47loJWF0d6er0VcOcIpHMFHl6Ee+xf1UMYFqMePNUU=;
	b=sPix4j7lv/w/SD/gsGpuNGrqxN
	CSGFFZ1y5rDMhlrK/sLg/iAY6q4HFldlT5YaAK+qRrM5SX+iw+yH/3BGSQIOF6ybvPdl7rpka5EgB
	/apdvWenes5T8NSsj7GlRzTwXZiP2tSV2KhKXvm118jAfs1KQugWhgyHSoncRsAxh5j0=; 
Received: from [127.0.0.1] (port=50972 helo=secure282.sgcpanel.com)
	by siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1dG8sR-0002KO-SG; Wed, 31 May 2017 14:01:51 -0500
MIME-Version: 1.0
Date: Wed, 31 May 2017 14:01:51 -0500
From: gmane@reliableembeddedsystems.com
To: yocto@yoctoproject.org, armccurdy@gmail.com
Message-ID: <dcfc77e90f187d33412b0d451333653d@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/1.2.4
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.07)
X-Recommended-Action: accept
X-Filter-ID: s0sct1PQhAABKnZB5plbIWEcM0d9a2K3OcfFeaASvaIT05e+4t99MpEggFbXzbnhJWdbsu/PGngF
	sP6QHv82uiZTaFCDa9A7C/jInU0NPk5o9qUFE8XEupMgL9lQhc5MhXE3Kd6zku9YzkFh73wKYPbj
	aPZXen3YvWHScRpGw7A40pIiLcKdagK+IDwjGrwS6AOt2JGZuZJFuTGYbK9UkufHzJ6mVE7ewsip
	SVIfs4bHluC/N6S4YKs5HRLMhK8kYb30GV/LTTOHpImWPCex54onRWlBmDnjzYnePIvOXJvlgTl6
	fJxyntEfhZCKje4ZpF5GFn0VGJE1yVv3RLa3Fi7/+fOTvqVqTiiM4NskccT/51HuFxEGlQ85t+9R
	s1HAWpqH02ENgZUUUrBwtgAspuoAEMCxBXuH+MlsW5Hvjb1aa40DxZPJuLUk3zkVKd8p5Y7I2CWT
	8Blyjv8ff7POYJbM9wNE79ywYAFDI/l/Ch19Xvup00ykaCetGbgwh6w19yu3PsN6rObOy/Hw4klu
	yN2tI4ORboLLJ1/iZb6eaQlxyGe8Oo3j1g27BsRrIsZRZ6VZsjZEXqWgl88PYDZKsoPAgTtUp75u
	qlx0KezvZHVXKGk9tt+fc1lyT0JS+sJ7g5n8VBio8m6UFbwbb/Mty7VMVgat3TQaaU1HqyTxak55
	nzL4YRLClWuMPFGDl2tB9/wyR8kiMkUYmQJ8RxdH4rNPNEistnKIzLEVaVpKxj4Kak/GrkTZV0HL
	aIZY1AoPndMoM4oje6MgFEdV2EMwOFVDHQIR9o9cJRAFHQVwLSkZ+U7/9Y0b3+LASxF/viBSJUWW
	h7gFkpx3itz3UgOkPtp/5K4SGJTTG30tMHU7RvuW6jg6228cxUfsfpgTRv7supyuJSfXA4D93gwm
	Fg9IjjEvuGslKTrRIXcXpFg5ivY=
X-Report-Abuse-To: spam@quarantine1.mailspamprotection.com
Cc: robert.berger@reliableembeddedsystems.com
Subject: Re: [PATCH] yocto-bsp: Fix QEMUARM based bsps to not offer SMP support
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
X-List-Received-Date: Wed, 31 May 2017 19:34:33 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2017-05-31 21:20, Andre McCurdy wrote:
> 
> Keeping the existing platform but updating the CPU would have the
> advantage that qemuarm could then share binaries and sstate with real
> world ARM targets.
> 
> It would also be a step towards defining an official "generic ARMv7"
> tuning target within OE, which could be used as the default
> DEFAULTTUNE for all ARMv7 targets.
> 

I would highly appreciate a "generic ARMv7" target!

What I usually use on various boards is:

*) DEFAULTTUNE = "armv7a-neon"
    include conf/machine/include/arm/arch-armv7a.inc
*) same rootfs binay for all boards
*) a kernel starting from a multi_v7_defconfig
*) a different device tree for each board
*) a different u-boot for each board

I even got such a kernel/rootfs to work with the qemu which comes with 
the Yocto project with some ancient Yocto version by hacking the qemu 
run script [1][2]. This uses the versatile expressa qemu target and uses 
a device tree. I did not try, but nowadays runqemu is in Python and 
something like this should be possible as well. Like this the same 
binaries could run on qemu and on various boards.

[1] 
https://github.com/RobertBerger/poky/blob/2015-03-20-dizzy%2B/scripts/runqemu
[2] 
https://github.com/RobertBerger/poky/blob/2015-03-20-dizzy%2B/scripts/runqemu-internal

