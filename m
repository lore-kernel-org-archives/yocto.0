Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39934E00BBD; Thu, 10 Dec 2015 06:53:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.94.94.40 listed in list.dnswl.org]
Received: from arroyo.ext.ti.com (arroyo.ext.ti.com [192.94.94.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7A86E00457
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 06:53:40 -0800 (PST)
Received: from dflxv15.itg.ti.com ([128.247.5.124])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id tBAErVd0029060;
	Thu, 10 Dec 2015 08:53:31 -0600
Received: from DLEE70.ent.ti.com (dlee70.ent.ti.com [157.170.170.113])
	by dflxv15.itg.ti.com (8.14.3/8.13.8) with ESMTP id tBAErVX2025522;
	Thu, 10 Dec 2015 08:53:31 -0600
Received: from dlep33.itg.ti.com (157.170.170.75) by DLEE70.ent.ti.com
	(157.170.170.113) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 10 Dec 2015 08:53:31 -0600
Received: from gtwmills.gt.design.ti.com (ileax41-snat.itg.ti.com
	[10.172.224.153])	by dlep33.itg.ti.com (8.14.3/8.13.8) with ESMTP id
	tBAErVug017386;	Thu, 10 Dec 2015 08:53:31 -0600
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>, "Longchamp, Valentin"
	<Valentin.Longchamp@keymile.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <688824bb-bfed-4888-8e46-a64338f1db97@keymile.com>
	<30C2D590D16A5C46ADFE65219103779853A94D6C@AZ-US1EXMB03.global.avaya.com>
	<B7AC17D946CFB9489B0C4EEDFEE0C8EC1355B4D2A7@SRVDEHAN1MX1.keymile.net>
	<30C2D590D16A5C46ADFE65219103779853A954ED@AZ-US1EXMB03.global.avaya.com>
From: William Mills <wmills@ti.com>
Message-ID: <566991EB.6000907@ti.com>
Date: Thu, 10 Dec 2015 09:53:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <30C2D590D16A5C46ADFE65219103779853A954ED@AZ-US1EXMB03.global.avaya.com>
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
X-List-Received-Date: Thu, 10 Dec 2015 14:53:47 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit


On 12/10/2015 09:40 AM, Vuille, Martin (Martin) wrote:
> Hi Valentin,
> 
> When we first encountered the need for custom kernel headers, I asked
> a similar question to yours on this list. And what I learned from some of the
> responses was that modifying the standard headers was fraught with
> problems, including the issue that you raise.
> 
> Fortunately, we got away without having to modify and export any standard
> headers, so I dodged that bullet.
> 
> Some ideas that come to mind:
> 
> - Can you install your customized version in ${includedir}/XXX and use the
>   include path search order to make sure the compiler sees it first?

This was the approach we used in a Debian based system.  Applications
that needed to be dependent on the custom capabilities of our kernel
depended on our XXX-kernel-header package and adjusted their include
path to use it first.  All other apps continue to use the standard
kernel headers.  (busybox or tar does not really care about our new
wizbang feature and the Debian distro sure was not going to rebuild them
just for us.)

I see no reason this could not work as well in an OE based distro.

> 
> - Can you include the standard header in a "wrapper" header and make your
>   customizations in the wrapper instead?
> 
> Regards,
> MV
> 
>> -----Original Message-----
>> From: Longchamp, Valentin [mailto:Valentin.Longchamp@keymile.com]
>> Sent: December 10, 2015 4:47 AM
>> To: Vuille, Martin (Martin); yocto@yoctoproject.org
>> Cc: Brunck, Holger
>> Subject: RE: Custom kernel headers and SDK
>>
>> Hi Martin,
>>
>> Thanks a lot for the suggestion. I had in the meantime come to a simliar
>> solution: define a linux-XXX-headers recipe in our own meta layer where I
>> install the missing kernel headers and then I add this linux-XXX-headers-dev
>> package to our SDK's sysroot thanks to TARGET_TOOLCHAIN_TASK.
>> Your implementation looks fine and I am going to pick some ideas from it.
>>
>> However, I have stumbled upon another problem with this approach: it
>> works well if you add new files to the kernel headers. We unforntunately
>> have at least one uapi file (i2c.h to name it) that is present in the standard
>> kernel headers where we have our own version with some
>> additions/extensions. If I install our version from ou linux-XXX-headers
>> recipe, bitbake (correctly) complains that this file is provided by 2 packages
>> (linux-libc-headers and linux-XXX-headers). And here I really don't know how
>> to solve this issue. Any ideas/suggestions ?
>>
>> Thanks
>>
>> Valentin

