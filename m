Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A64DE00AD5; Wed, 13 Feb 2019 12:02:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17937E00708
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2019 12:02:12 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x1DK26Kx001600
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Feb 2019 12:02:07 -0800 (PST)
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.435.0;
	Wed, 13 Feb 2019 12:02:06 -0800
To: Kristupas Savickas <kristupas.savickas@teltonika.lt>,
	<yocto@yoctoproject.org>
References: <cc6d6bc3-da90-11b6-434c-df794597bc90@teltonika.lt>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <36f062aa-a236-adb1-7316-599e66ac3096@windriver.com>
Date: Wed, 13 Feb 2019 15:02:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <cc6d6bc3-da90-11b6-434c-df794597bc90@teltonika.lt>
X-Originating-IP: [172.25.44.4]
Subject: Re: Using SDK/ESDK to build images
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
X-List-Received-Date: Wed, 13 Feb 2019 20:02:13 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 2/12/19 6:55 AM, Kristupas Savickas wrote:
> Hi,
> 
> we're looking into providing our customers with SDK/ESDK packages to 
> develop custom solutions on our boards. We don't want to provide the 
> whole project itself as it would leak our intellectual property, so 
> precompiled packages are a must. Looking around, it seems like both SDK 
> and ESDK are suited to build single packages, rather than complete 
> images. Am I correct about this? 
Yes.
> Is there some kind of method to allow 
> images be built using SDK packages?

No, or none that I'm aware of at least.

My assumption has been that you either:
  1. enable package management in the image and
     then add the app developed with the eSDK
     using dnf/rpm or other pkgs mgmt tools or
  2. you develop the app using the eSDK then bring
     it into the build system as a released/tagged entity (tarball/git)
     and build your image.

I suppose you could create another mechanism where you apply
the app on top of the image or in another partition.
Maybe someone here has done that or has more experience with
your situation.

Oh, an obvious mechanism would be as an app container using for
example OverC:
    https://github.com/OverC/meta-overc
 
https://github.com/OverC/meta-overc/blob/master/docs/README.c3_app_container
-- 
# Randy MacLeod
# Wind River Linux

