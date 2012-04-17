Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8752E013A8
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 08:35:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3HFZKTC017873
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Apr 2012 08:35:20 -0700 (PDT)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 17 Apr 2012 08:35:20 -0700
Message-ID: <4F8D8DB7.6030301@windriver.com>
Date: Tue, 17 Apr 2012 10:35:19 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:11.0) Gecko/20120327 Thunderbird/11.0.1
MIME-Version: 1.0
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
References: <1334624465.26744.4.camel@dongxiao-osel>
In-Reply-To: <1334624465.26744.4.camel@dongxiao-osel>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: A question about PACKAGE_ARCH renaming
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
X-List-Received-Date: Tue, 17 Apr 2012 15:35:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/16/12 8:01 PM, Xu, Dongxiao wrote:
> Hi,
>
> I am testing beagleboard with RPM, and there is a question I am confused
> with that PACKAGE_ARCH is renamed for certain packages. For example the
> "acl" package, whose expected PACKAGE_ARCH is "armv7a-vfp-neon", however
> in RPM file, the arch is renamed to "armv7a", see
> "acl-2.2.51-r2.armv7a.rpm". However IPK package still shows
> "acl_2.2.51-r2_armv7a-vfp-neon.ipk".
>
> Could anybody give hint on this?
>
> Thanks,
> Dongxiao
>

I've not seen that happen before.  Can you checked if an 
acl-...armv7a-vfp-neon.rpm was generated and RPM is simply not using it, or was 
it never generated?

As another user mentioned, it is possible for a package to say it wants a 
specific arch type, but if it did -- it should be consistent between packaging 
systems.

--Mark

