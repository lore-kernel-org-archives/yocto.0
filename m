Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B3FCE01400
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 21:37:13 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r0U5b9eo027046
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 29 Jan 2013 21:37:09 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.20.154) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.318.4; Tue, 29 Jan 2013 21:37:09 -0800
Message-ID: <5108B181.9000204@windriver.com>
Date: Wed, 30 Jan 2013 00:37:05 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: <daniel.kenji.morgan@gmail.com>
References: <5106A449.7020902@gmail.com>
In-Reply-To: <5106A449.7020902@gmail.com>
Cc: yocto@yoctoproject.org, Richard Purdie <richard.purdie@intel.com>
Subject: Re: PREFERRED_PROVIDER in image recipes
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
X-List-Received-Date: Wed, 30 Jan 2013 05:37:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-01-28 11:16 AM, Daniel Kenji Morgan wrote:
> Sorry to bring up an old post, but I haven't managed to find information in the mail archives and bugzilla on how the issue stands as of today.
>
> The post I am referring to is as follows:
> https://lists.yoctoproject.org/pipermail/yocto/2011-December/005951.html
>
> I have two separate recipes for the same kernel version.
> One with a kernel configuration with various options enabled to assist debugging.
> The other with said options disabled.
>
> Ideally, I would like to be able to set PREFERRED_PROVIDER to the kernel recipes in custom image recipes for the same machine.
> This is something that is being discussed in the referred post above.
> Does anyone know if such functionality is being pursued in a future release of Poky?

I haven't heard of anything myself, local.conf, distro configs or
separate machines are how this is still currently being done.

We have quite a bit of flexibility in the way that kernel configs
can be stacked and used since the thread that you noticed, so there
are options in that area to pursue as well. There's been planning
around image creation and construction lately, that could also end
up helping a use case such as this down the road.

As to whether or not work is planned in the areas of images and
preferred providers, Richard would know.

Cheers,

Bruce

>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


