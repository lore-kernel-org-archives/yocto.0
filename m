Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A29FE00576; Tue, 26 Aug 2014 13:00:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 433AFE0054C
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 13:00:05 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id bj1so23961701pad.25
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 13:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Hzw0YbKZsT57nzSMWRUu2bohLVWHcAWHlIISZiT/BCc=;
	b=SCM3p5OLICBfPtIwGIJZjL2BUlDU+rBBvlj/RCQ6txunywgbC9Q+o6P9mv9bKB2D6v
	973st2cMyUGwxb16OUNvdEXOBVxD1+sS7/x1Dxc6vD6oP4it6tbldnm6cSH+14AX4/bH
	ZV+ptN82NT3civoPzd8r6ko5A9ygYulgHk9QCYTvolf2G9Ja/qYO52tLAU8QhfS5oUe1
	H01IfcPopMXVKK1C5snvbauAaJMmEJZQad6Ijnzdv8yEKt8nKcmG5Ag+CkGxmEetJHYs
	X77ukaERC82VFrHxM3UGIQW/T4YkqjruB6/d5BDby7QaNmNP2PSJTyQ6YxePYU5i8G3U
	Zs4w==
X-Received: by 10.66.243.208 with SMTP id xa16mr38928517pac.41.1409083204880; 
	Tue, 26 Aug 2014 13:00:04 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id
	nh11sm6120499pdb.69.2014.08.26.13.00.03 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Aug 2014 13:00:04 -0700 (PDT)
Date: Tue, 26 Aug 2014 13:03:48 -0700
From: Khem Raj <raj.khem@gmail.com>
To: "Crast, Nicholas" <Nicholas.Crast@saabsensis.com>
Message-ID: <20140826200348.GG18989@haswell>
References: <36A43B0E1E88D84791516F9D44BC48331B3C9E7D@corpmail01.corp.sensis.com>
	<20140825053448.GD1014@haswell>
	<36A43B0E1E88D84791516F9D44BC48331B3CA7E5@corpmail01.corp.sensis.com>
MIME-Version: 1.0
In-Reply-To: <36A43B0E1E88D84791516F9D44BC48331B3CA7E5@corpmail01.corp.sensis.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using uboot to boot a large uimage
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
X-List-Received-Date: Tue, 26 Aug 2014 20:00:10 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-26 18:41:22, Crast, Nicholas wrote:
> I am currently attempting to boot with an initramfs built into my uimage using uboot. 
> 
> However, I cannot get it to boot correctly. If I make the uimage totally bare-bones, and just use core-image-minimal-initramfs, then it hangs huring init at the waiting for devices... printout. Going and gutting the init script, I can get to single user mode and it looks like the filesystem is there.
> 
> I want a more full system, so I included core-image-boot and core-image-basic. I figured this would initialize better. When I do this, my uImage jumps up to ~50MB. U-boot then hangs at "starting kernel..."
> 

core-image-minimal should boot you into shell console. That should have
been enough

> I don't think that the uimage is clobbering the device tree, because the device tree is loaded at 0x100, and the uimage is loaded at 0x8000. 
> 

make sure that memory is not overlapping and is initiaized


