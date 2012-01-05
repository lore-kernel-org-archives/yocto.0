Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B48F4E0030B
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 08:09:51 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q05G9mR6024624
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 5 Jan 2012 08:09:49 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 5 Jan 2012 08:09:48 -0800
Message-ID: <4F05CB4B.4090604@windriver.com>
Date: Thu, 5 Jan 2012 10:09:47 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <4F05C8C6.2010603@gmail.com>
In-Reply-To: <4F05C8C6.2010603@gmail.com>
Subject: Re: building Yocto on Fedora 14 vs. Ubuntu 11.10
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
X-List-Received-Date: Thu, 05 Jan 2012 16:09:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 1/5/12 9:59 AM, Jim Abernathy wrote:
> I'm finding differences between the number of task for building
> meta-cedartrail on ubuntu 11.10 vs. doing the same thing on Fedora 14
> and wondered if this is a problem.
>
> On a clean build of core-image-sato, the first section has 63 tasks on
> Ubuntu 11.10, but 126 tasks on Fedora 14.  126 is the number I remember
> seeing for the first section of the build on other Sato builds.
>
> Is this an issue? is this caused by the different development O/S's?
>
> BTW the second part of the build has 4426 tasks on Ubuntu 11.10 and also
> on Fedora 14.

In the bitbake wrapper (scripts/bitbake), there is a check to see if the host 
version of tar is greater then 1.23.  If it is not, then tar is added to the 
early set of tasks.  This likely is the cause of the different task sets you see.

--Mark

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


