Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A613E00C70; Tue, 27 Nov 2018 18:14:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E750EE00C46
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2018 18:14:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wAS2CuoK016459
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 27 Nov 2018 18:13:07 -0800
Received: from [128.224.163.141] (128.224.163.141) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 27 Nov 2018 18:12:45 -0800
To: Richard Weinberger <richard.weinberger@gmail.com>,
	<yocto@yoctoproject.org>, "Burton, Ross" <ross.burton@intel.com>, Richard
	Purdie <richard.purdie@linuxfoundation.org>
References: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <8696dc77-3ecc-a339-ff46-a2272c093488@windriver.com>
Date: Wed, 28 Nov 2018 10:19:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
X-Originating-IP: [128.224.163.141]
Subject: Re: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Wed, 28 Nov 2018 02:14:07 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/28/2018 05:46 AM, Richard Weinberger wrote:
> Hi!
>
> I have a hard time understanding how to build a distro with x86_64
> kernel, i586 userland
> and an SDK for that.
> In the beginning I assumed and have been told on IRC that multilib is
> the way to go.
>
> But it seems that building and SDK is currently broken/disabled:
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=e153efde9754a650e555f46cba09680baabd7d7e

The above issue has been filed a bug in bugzilla.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=13047

I've also added my comments there.

Best Regards,
Chen Qi

> Another issue,if I try to add lib32 packages to my x86_64 image
> building the rootfs fails due
> to such odd apt errors:
> The following packages have unmet dependencies:
>   lib32-packagegroup-core-ssh-dropbear : Depends: lib32-dropbear but it
> is not installable
>   lib32-packagegroup-core-x11-base : Depends: lib32-dbus-1 but it is
> not installable
>                                      Depends: lib32-matchbox-terminal
> but it is not installable
>                                      Depends: lib32-matchbox-wm but it
> is not installable
>                                      Depends: lib32-mini-x-session but
> it is not installable
>                                      Depends:
> lib32-packagegroup-core-x11-utils but it is not going to be installed
>                                      Depends:
> lib32-packagegroup-core-x11-xserver but it is not installable
>
> Are there other possibilities?
> Userspace can be pure i586, so full multilib support is not needed.
> Having a x86_64 toolchain should be goof enough, it could build
> userspace with -m32
> and the kernel as-is.
>


