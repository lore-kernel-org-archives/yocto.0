Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28EC9E00A6D; Mon, 10 Aug 2015 06:50:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75C27E007B1
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 06:49:51 -0700 (PDT)
Received: by ioii16 with SMTP id i16so169559145ioi.0
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 06:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=m5y2zo/W7lhB0NkP3iWN9HNUlqnWeF/syhY4Z4CWbqk=;
	b=dwcqUX0ay9HCRkKXYhMCjL1NiMq3WMzfdS8eiyTO7vun3FWkIXB3hjLr/3xazSmBjl
	CwYQVm6rItc/9Sagh9u5PTIhHALHwHyCl3xseQYWfQFn82oatsYcB37ap8QD9qP1xzPU
	9AuI71cUo0r9ZPvXfdpliOTocgAJZWEmeaN687lARbGF24HX7O5pQsykUhzkK2g6USmU
	JeMA+GvCLjrM7elYzW4Yz2bgQxUA0EIooFkfgqZVNR71lOnouv8wdglXHkC6vYXtXJd+
	9Kg+WZ11egBN31rIaG0u3QQoG56kY+HTmLljODjLWlzk4a9ZqvPui3marbtmVqmEeHGU
	/pPQ==
X-Received: by 10.107.14.10 with SMTP id 10mr19442017ioo.45.1439214591059;
	Mon, 10 Aug 2015 06:49:51 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	w4sm5835790igl.22.2015.08.10.06.49.49
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Aug 2015 06:49:50 -0700 (PDT)
To: Paul Barker <paul@paulbarker.me.uk>
References: <55C4B071.30709@gmail.com>
	<20150809100724.GA24792@bang.betafive.co.uk>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55C8ABFB.3050802@gmail.com>
Date: Mon, 10 Aug 2015 09:49:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <20150809100724.GA24792@bang.betafive.co.uk>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 10 Aug 2015 13:50:02 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 08/09/15 06:07, Paul Barker wrote:
> On Fri, Aug 07, 2015 at 09:19:45AM -0400, Trevor Woerner wrote:
>> When packaging a zImage kernel for IPK in master-next the following
>> error shows up:
>>
>> | kernel-image-zImage-4.1.2-fslc+g95d9e15
>> | *** Error: Package name  contains illegal characters, (other than
>> [a-z0-9.+-])
>>
>> It looks like the newer kernel.bbclass is much more sophisticated about
>> generating package names than before.
>>
>> Has anyone else seen this? Is there a simple way of saying "the type is
>> zimage where packaging for ipk is concerned but zImage otherwise"?
>>
>> Best regards,
>> 	Trevor
> 
> I believe this check is present in opkg-build just to ensure compatibility with
> the Debian Policy Manual. I don't remember this being an actual restriction of
> opkg.
> 
> You could try patching the opkg-build script (in opkg-utils) to remove this
> check and see if opkg is happy to install the resulting package.

Yes, this works. Removing the check from opkg-build causes my build to
succeed, and the resulting image boots with this kernel (meaning opkg is
happy to install the package into the image).

Normally this is the part where I'd ask if you want me to send a patch,
but if that check is there for a reason, simply removing it isn't a
proper solution.

Thoughts?

Best regards,
	Trevor

