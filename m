Return-Path: <prvs=079055f57f=valentin.longchamp@keymile.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA26BE00C15; Sun, 13 Dec 2015 23:37:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [195.8.104.250 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-de.keymile.com (mail-de.keymile.com [195.8.104.250])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1130E0083E
	for <yocto@yoctoproject.org>; Sun, 13 Dec 2015 23:37:22 -0800 (PST)
Received: from frodo.de.keymile.net ([10.9.1.54]:47537
	helo=mailrelay.de.keymile.net)
	by mail-de.keymile.com with esmtp (Exim 4.82_1-5b7a7c0-XX)
	(envelope-from <valentin.longchamp@keymile.com>)
	id 1a8Nh8-000438-2O; Mon, 14 Dec 2015 08:37:18 +0100
Received: from ch10650.keymile.net (ch10650.keymile.net [172.31.40.247])
	by mailrelay.de.keymile.net (8.12.2/8.12.2) with ESMTP id
	tBE7bFfn002913; Mon, 14 Dec 2015 08:37:15 +0100 (MET)
To: William Mills <wmills@ti.com>, "Vuille, Martin (Martin)"
	<vmartin@avaya.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <688824bb-bfed-4888-8e46-a64338f1db97@keymile.com>
	<30C2D590D16A5C46ADFE65219103779853A94D6C@AZ-US1EXMB03.global.avaya.com>
	<B7AC17D946CFB9489B0C4EEDFEE0C8EC1355B4D2A7@SRVDEHAN1MX1.keymile.net>
	<30C2D590D16A5C46ADFE65219103779853A954ED@AZ-US1EXMB03.global.avaya.com>
	<566991EB.6000907@ti.com>
From: Valentin Longchamp <valentin.longchamp@keymile.com>
Message-ID: <566E71AD.9070708@keymile.com>
Date: Mon, 14 Dec 2015 08:37:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <566991EB.6000907@ti.com>
Cc: "Brunck, Holger" <Holger.Brunck@keymile.com>
Subject: Re: Custom kernel headers and SDK
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
X-List-Received-Date: Mon, 14 Dec 2015 07:37:27 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hello William and Martin,

On 10/12/2015 15:53, William Mills wrote:
> 
> On 12/10/2015 09:40 AM, Vuille, Martin (Martin) wrote:
>> Hi Valentin,
>>
>> When we first encountered the need for custom kernel headers, I asked
>> a similar question to yours on this list. And what I learned from some of the
>> responses was that modifying the standard headers was fraught with
>> problems, including the issue that you raise.
>>
>> Fortunately, we got away without having to modify and export any standard
>> headers, so I dodged that bullet.
>>
>> Some ideas that come to mind:
>>
>> - Can you install your customized version in ${includedir}/XXX and use the
>>   include path search order to make sure the compiler sees it first?
> 
> This was the approach we used in a Debian based system.  Applications
> that needed to be dependent on the custom capabilities of our kernel
> depended on our XXX-kernel-header package and adjusted their include
> path to use it first.  All other apps continue to use the standard
> kernel headers.  (busybox or tar does not really care about our new
> wizbang feature and the Debian distro sure was not going to rebuild them
> just for us.)
> 
> I see no reason this could not work as well in an OE based distro.
> 
>>
>> - Can you include the standard header in a "wrapper" header and make your
>>   customizations in the wrapper instead?
>>
>> Regards,
>> MV

I just wanted to thank you for your answers and suggestion.

I have now used this approach and it works fine:
- make a new package that installs our changed linux-headers into another
directory than the linux-libc-headers
- added this package to TOOLCHAIN_TARGET_TASK so that it gets installed to the
SDK's sysroot
- changed the include path of the userspace applications that require these
changed headers and use the SDK so that they find them ($SDKTARGETSYSROOT helps
a lot here).

Valentin

>>
>>> -----Original Message-----
>>> From: Longchamp, Valentin [mailto:Valentin.Longchamp@keymile.com]
>>> Sent: December 10, 2015 4:47 AM
>>> To: Vuille, Martin (Martin); yocto@yoctoproject.org
>>> Cc: Brunck, Holger
>>> Subject: RE: Custom kernel headers and SDK
>>>
>>> Hi Martin,
>>>
>>> Thanks a lot for the suggestion. I had in the meantime come to a simliar
>>> solution: define a linux-XXX-headers recipe in our own meta layer where I
>>> install the missing kernel headers and then I add this linux-XXX-headers-dev
>>> package to our SDK's sysroot thanks to TARGET_TOOLCHAIN_TASK.
>>> Your implementation looks fine and I am going to pick some ideas from it.
>>>
>>> However, I have stumbled upon another problem with this approach: it
>>> works well if you add new files to the kernel headers. We unforntunately
>>> have at least one uapi file (i2c.h to name it) that is present in the standard
>>> kernel headers where we have our own version with some
>>> additions/extensions. If I install our version from ou linux-XXX-headers
>>> recipe, bitbake (correctly) complains that this file is provided by 2 packages
>>> (linux-libc-headers and linux-XXX-headers). And here I really don't know how
>>> to solve this issue. Any ideas/suggestions ?
>>>
>>> Thanks
>>>
>>> Valentin


