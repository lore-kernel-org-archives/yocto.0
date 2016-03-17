Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5B43E00B9E; Wed, 16 Mar 2016 21:37:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 828D5E00B89
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 21:37:52 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 5BF4B68A01C; Thu, 17 Mar 2016 04:37:50 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 9B49A68A019;
	Thu, 17 Mar 2016 04:37:49 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 404E767406B9;
	Thu, 17 Mar 2016 05:37:49 +0100 (CET)
To: yocto@yoctoproject.org
References: <50f8e13e-bf3e-96b9-221b-3f6a92f948ee@noir.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56EA349D.10107@mlbassoc.com>
Date: Thu, 17 Mar 2016 05:37:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <50f8e13e-bf3e-96b9-221b-3f6a92f948ee@noir.com>
Subject: Re: hddimg vs hdddirect?
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
X-List-Received-Date: Thu, 17 Mar 2016 04:37:57 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/16/2016 08:40 PM, K Richard Pixley wrote:
> What's the intended difference between hddimg and hdddirect?
>
> I'm confused about the intent here. The data flow in previous releases,
> even jethro, seems to be somewhat confused/broken so looking at the
> source code isn't really helping here.
>
> Is one intended to be a simple syslinux bootable image while the other
> is a "live" image with multiple boot choices?
>
> In master... How does one go about requesting either a vmdk of a live
> image or a directly bootable vmdk?

I'm not sure the difference between the .hddimg and .hdddirect.
I tried converting a .hddimg to .vdi or .vmdk using the VBoxManage
tool, but that didn't come up - there was a message about (paraphrased)
"waiting for removable media to become ready"  and the boot just hung up

However, I do know that .vmdk will boot easily with VirtualBox
Just add this to your local.conf
   IMAGE_FSTYPES += " vmdk"

Note: as mentioned in the documentation, you must use += as
IMAGE_FSTYPES_append will not do.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

