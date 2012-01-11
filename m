Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7847BE0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 06:58:10 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0BEw7dZ015179
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Jan 2012 06:58:07 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 11 Jan 2012 06:58:07 -0800
Message-ID: <4F0DA377.9090903@windriver.com>
Date: Wed, 11 Jan 2012 09:57:59 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Brian Hutchinson <b.hutchman@gmail.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
In-Reply-To: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Wed, 11 Jan 2012 14:58:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-11 09:41 AM, Brian Hutchinson wrote:
> Hi,
>
> I followed the example in the "Yocto Project Development Manual" for
> setting up a local kernel repo and it didn't go so well.
>
> A month or two ago I checked out Edison and was able to build all the
> images required for Beagleboard and it booted fine (using command line
> ... not hob.  Tried hob but couldn't get it to work).
>
> So then I checked out linux-yocto-3.0 kernel and setup a local kernel
> git repo and went through the process of setting up poky-extras,
> modifying bblayers.conf etc. to point to my local repo.
>
> Any time I try to build core-image-minimal it looks like it always
> wants to use the 2.6.37 recipe instead of finding my 3.0 repo.  I've
> tried everything I can think of and I must me missing something.
>
> So, I guess my questions are:
>
> 1.  Will linux-yocto-3.0 work with Beagleboard?

It will. I sent patches recently to make that the preferred version
in the master branch. Cherry picking that change would probably
be all you would need.

> 2.  Is the example for setting up for kernel modification in the
> development manual still valid for Edison?

Should be.

Bruce

>
> Regards,
>
> Brian
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


