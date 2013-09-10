Return-Path: <Yi.Zhao@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DC86E0153B
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 00:29:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r8A7SwwC000835
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Sep 2013 00:28:58 -0700 (PDT)
Received: from [128.224.159.157] (128.224.159.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Tue, 10 Sep 2013 00:28:58 -0700
Message-ID: <522ECA37.1080302@windriver.com>
Date: Tue, 10 Sep 2013 15:28:55 +0800
From: Yi Zhao <yi.zhao@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: JC <jc@vtkloud.com>
References: <522E227C.1080700@vtkloud.com>
In-Reply-To: <522E227C.1080700@vtkloud.com>
X-Originating-IP: [128.224.159.157]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issue with SmartPM install from file
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
X-List-Received-Date: Tue, 10 Sep 2013 07:29:03 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


于 2013年09月10日 03:33, JC 写道:
> Hi,
>
> I'm trying to get a better hand on how smart work. I've been 
> successful to create a repo, update and install from it. Now I want to 
> go further. Let's assume:
> - I have a working repo and a working device
> - I build a new recipe (here, git) and update my repo
> - I "smart update" on my device
> Now instead of installing, I choose to "download" the package :
>
> # smart download git
>
> It's successful. Now I want to install it :
>
> # smart install ./git-1.8.1.4-r0.armv6_vfp.rpm
> Loading cache...
> error: Unable to create channel for file: ./git-1.8.1.4-r0.armv6_vfp.rpm

That because there is no rpm-sys channel in your target. You could run 
"smart channel --show" to check it.

# smart channel --show
[rpmsys]
type = rpm-sys

The rpm-sys channel is a default channel. It should be created when 
build the rootfs.

>
> Whatever I do I end up with this error.
>
> Does it ring a bell to anyone? Is this the right place to ask?
>
> Thanks a lot for your help
> Regards
> Jay
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


