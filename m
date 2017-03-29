Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 220C0E00655; Wed, 29 Mar 2017 02:29:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [194.138.37.39 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 946 seconds by postgrey-1.32 at yocto-www;
	Wed, 29 Mar 2017 02:29:42 PDT
Received: from lizzard.sbs.de (lizzard.sbs.de [194.138.37.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75569E004E5
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 02:29:41 -0700 (PDT)
Received: from mail1.sbs.de (mail1.sbs.de [192.129.41.35])
	by lizzard.sbs.de (8.15.2/8.15.2) with ESMTPS id v2T9DqqU007748
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Wed, 29 Mar 2017 11:13:52 +0200
Received: from [139.16.24.227] ([139.16.24.227])
	by mail1.sbs.de (8.15.2/8.15.2) with ESMTPS id v2T9DpvK027270
	(version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 29 Mar 2017 11:13:51 +0200
To: "Burton, Ross" <ross.burton@intel.com>
References: <1489074820-14554-1-git-send-email-pascal.bach@siemens.com>
	<CAJTo0LY4rCoCsJ1qBDuAwWxQ-JCbKY7MmOmwTY+WZQw2u8qN3g@mail.gmail.com>
From: Pascal Bach <pascal.bach@siemens.com>
Message-ID: <2738bffa-394b-9eee-7d45-c44b3d0f8620@siemens.com>
Date: Wed, 29 Mar 2017 11:13:44 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LY4rCoCsJ1qBDuAwWxQ-JCbKY7MmOmwTY+WZQw2u8qN3g@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-qt4][PATCH] qt4: don't override dbg package content
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
X-List-Received-Date: Wed, 29 Mar 2017 09:29:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 09.03.2017 17:06, Burton, Ross wrote:
>
> On 9 March 2017 at 15:53, Pascal Bach <pascal.bach@siemens.com <mailto:pascal.bach@siemens.com>> wrote:
>
>     The default from bitbake.conf is `FILES_${PN}-dbg = "/usr/lib/debug /usr/src/debug"`
>     which is perfectly fine as a basis for Qt4.
>
>
> Note that oe-core master (and morty, and maybe krogoth) doesn't need FILES_PN-dbg to be set at all.
>
This is exactly what this commit does. Remove the FILES_PN-dbg so that the recipe uses the default.

Pascal

