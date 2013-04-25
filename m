Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 040A1E013C3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 15:32:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3PMWetF025354
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 15:32:40 -0700 (PDT)
Received: from msp-dhcp5.wrs.com (172.25.34.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Thu, 25 Apr 2013 15:32:40 -0700
Message-ID: <5179AF07.2030708@windriver.com>
Date: Thu, 25 Apr 2013 17:32:39 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130328 Thunderbird/17.0.5
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CANge7vWGtcVQE6Sv1rn1dxWR25W99eK53UdDJjBVp2zQW=nr+Q@mail.gmail.com>
In-Reply-To: <CANge7vWGtcVQE6Sv1rn1dxWR25W99eK53UdDJjBVp2zQW=nr+Q@mail.gmail.com>
Subject: Re: Finding/Generating Rootfs Package List
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
X-List-Received-Date: Thu, 25 Apr 2013 22:32:41 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

You can use the license manifest to give you this information.  See:

build/tmp/deploy/licenses/<image>-<machine>-<timedate>/...

There is a license.manifest and package.manifest.  The license.manifest includes 
package version.

--Mark

On 4/25/13 9:10 AM, Jon Szymaniak wrote:
> Hi all,
>
> I generally like to keep a little manifest file with my rootfs images,
> containing a list of installed packages and their associated versions.  On
> images where I keep package data around, I usually generate this via 'opkg list'.
>
> In my current situation, I have a small read-only image where I can't afford to
> ship pkg data, and wanted to gather this info on the host side of things.  I
> assume this information is tracked somewhere in the poky build directory, but
> I'm having some trouble finding it.
>
> Could someone kindly point me towards this information or the documentation
> section(s) that I may have overlooked.
>
> Thank you!
> Jon
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


