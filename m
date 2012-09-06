Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F37EAE0027F
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 22:39:03 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-84-143.range81-153.btcentralplus.com
	[81.153.84.143]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 216CF9ADE
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 06:39:02 +0100 (BST)
Message-ID: <504836F6.2080303@r-finger.com>
Date: Thu, 06 Sep 2012 06:39:02 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50450DC6.20303@r-finger.com>
	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
	<50451947.2090401@r-finger.com>
	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>
	<5045C2B7.1070406@r-finger.com> <1346881616.21985.100.camel@ted>
In-Reply-To: <1346881616.21985.100.camel@ted>
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Thu, 06 Sep 2012 05:39:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/09/12 22:46, Richard Purdie wrote:
> On Tue, 2012-09-04 at 09:58 +0100, Tomas Frydrych wrote:
>> Hi Bruce,
>>
>> On 03/09/12 22:08, Bruce Ashfield wrote:
>>> That being said, taking a step back, what are you trying to get out of
>>> meta-yocto in this scenario ? 
>>
>> a) I am targeting multiple chips, including TI Omap and Intel Atom.
>> meta-yocto is a prerequisite for the various machines in meta-intel, so
>> I have to include meta-yocto if I want to build images for an Intel
>> chip. Nothing unusual here.
> 
> Is that really true? What in meta-intel depends on meta-yocto?

No, it is not true; I corrected that erroneous statement earlier in this
thread.


> Effectively this is what we've now done and was always the intention
> (see the Yocto Project compatible criteria).

Yes, that looks like it solves the problem neatly. Now I should be able
to include both meta-yocto and meta-yocto-bsb if I want to.

Tomas


