Return-Path: <jan.siegmund0@hm.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5927DE00DC6; Sat, 13 Jan 2018 10:59:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [129.187.255.137 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 386 seconds by postgrey-1.32 at yocto-www;
	Sat, 13 Jan 2018 10:59:22 PST
Received: from postout1.mail.lrz.de (postout1.mail.lrz.de [129.187.255.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FC70E006D2
	for <yocto@yoctoproject.org>; Sat, 13 Jan 2018 10:59:22 -0800 (PST)
Received: from lxmhs51.srv.lrz.de (localhost [127.0.0.1])
	by postout1.mail.lrz.de (Postfix) with ESMTP id 3zJpdz43ykzyVg;
	Sat, 13 Jan 2018 19:52:55 +0100 (CET)
X-Virus-Scanned: by amavisd-new at lrz.de in lxmhs51.srv.lrz.de
Received: from postout1.mail.lrz.de ([127.0.0.1])
	by lxmhs51.srv.lrz.de (lxmhs51.srv.lrz.de [127.0.0.1]) (amavisd-new,
	port 20024)
	with LMTP id bwpkCsa9VEV1; Sat, 13 Jan 2018 19:52:55 +0100 (CET)
Received: from [IPv6:2001:4c50:149:b900:244f:ba9e:3d1e:41d1] (unknown
	[IPv6:2001:4c50:149:b900:244f:ba9e:3d1e:41d1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by postout1.mail.lrz.de (Postfix) with ESMTPSA id 3zJpdz0TpVzyVP;
	Sat, 13 Jan 2018 19:52:55 +0100 (CET)
To: colin.helliwell@ln-systems.com, yocto@yoctoproject.org
References: <066501d38c90$f0151890$d03f49b0$@ln-systems.com>
From: Jan Siegmund <jan.siegmund0@hm.edu>
Message-ID: <1641fe8c-35ed-f740-e873-17f952898b35@hm.edu>
Date: Sat, 13 Jan 2018 19:52:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <066501d38c90$f0151890$d03f49b0$@ln-systems.com>
Subject: Re: Specifying MACHINE when setting up build environment
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
X-List-Received-Date: Sat, 13 Jan 2018 18:59:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

Am 13.01.2018 um 18:07 schrieb colin.helliwell@ln-systems.com:
> Is there a way to specify what MACHINE is put into local.conf when first
> setting up the build directory with oe-init-build-env?
> I have my own TEMPLATECONF which I use, but I'd like to be able to set the
> MACHINE on the command line rather than having to then modify local.conf
If it would suit your needs to specify the MACHINE on every bitbake call,
try

$ MACHINE=<machine> bitbake <image-recipe>

e. g.

$ MACHINE=qemuarm bitbake core-image-minimal

If your want to use QEMU, you can use

$ env DEPLOY_DIR_IMAGE=<image_dir> runqemu

Not sure if the 'env' is needed though.

Regards,
Jan



