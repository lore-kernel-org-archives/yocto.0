Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19052E00DD3; Tue, 19 Nov 2019 17:34:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E92A5E008D9
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2019 17:34:11 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAK1Y8PI006276
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 19 Nov 2019 17:34:08 -0800 (PST)
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Tue, 19 Nov 2019 17:34:07 -0800
To: Jeff Kaisner <jkaisner@aeronix.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <e8888d43e2c44373b8c3affaea368dba@aeronix.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <56b2962f-22e6-0c20-2cf8-5c76174bb6fb@windriver.com>
Date: Tue, 19 Nov 2019 20:34:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <e8888d43e2c44373b8c3affaea368dba@aeronix.com>
X-Originating-IP: [172.25.44.8]
Subject: Re: Install native recipe into filesystem
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
X-List-Received-Date: Wed, 20 Nov 2019 01:34:13 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 8bit

On 11/19/19 4:15 PM, Jeff Kaisner wrote:
> We have several executables that can run on the target (ARM64) but also 
> on the host system (x86).  I added the BBCLASSEXTEND = "native" and can 
> build all the recipes in native mode.  

What do you mean here by 'in native mode'? I'd expect that you mean:
    $ bitbake somepackage-native
Right?

A few explanations related to your question are here:
 
https://wiki.yoctoproject.org/wiki/Technical_FAQ#What_does_.22native.22_mean.3F
and here:
 
https://wiki.yoctoproject.org/wiki/Technical_FAQ#Why_are_all_of_these_-native_items_being_built_when_my_host_distro_has_some_of_these_available.3F


 > Once done, I would like to be
 > able to install them on the host system, but don’t see a package for
 > them (or understand that part of the process).

You don't add -native package to the target system; they are for the
build (host) system to help build object files for the target machine.

You can either edit the conf/local.conf file then build a standard image
or define your own image. For the former:
 
https://wiki.yoctoproject.org/wiki/Cookbook:Example:Adding_packages_to_your_OS_image


Additional details are in the YP Mega Manual:
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html

Good luck and welcome to the Yocto Project,

../Randy

> 
> Any help would be appreciated.
> 
> Regards,
> 
> Jeff
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

