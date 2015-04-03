Return-Path: <cca_liam_maps@mail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30B7DE0095C; Fri,  3 Apr 2015 13:39:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cca_liam_maps[at]mail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.208.4.201 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Fri, 03 Apr 2015 13:39:12 PDT
Received: from mout.gmx.com (mout.gmx.com [74.208.4.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4988E00922
	for <yocto@yoctoproject.org>; Fri,  3 Apr 2015 13:39:12 -0700 (PDT)
Received: from [192.168.0.54] ([84.41.69.7]) by mail.gmx.com (mrgmxus001) with
	ESMTPSA (Nemesis) id 0LxP6S-1ZWJcq0Lhy-016ueI for
	<yocto@yoctoproject.org>; Fri, 03 Apr 2015 22:34:06 +0200
Message-ID: <551EF93B.7080307@mail.com>
Date: Fri, 03 Apr 2015 22:34:03 +0200
From: Liam Maps <cca_liam_maps@mail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Provags-ID: V03:K0:k4vEnbm9D1jKGaEP6fRkBv29mUJkimneewf29teqZDjaJkn/mr/
	RkDTHvXaWtvRZnh6vxuHb78qEPyPvpFIN44TDKifLs/tvl6fAQBdOsIeL7jIX8F9gd+Z0we
	rXHIxogD+l7snAYjSONUnR8xKttokfjHVZyaLd0an5cViZp+oyBobZ+bvAlAzqCW5s7qBIK
	SZszkdWVgVgG6pfjZeAsw==
X-UI-Out-Filterresults: notjunk:1;
Subject: [kernel config]: specified values did not make it into the kernel's final configuration
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
X-List-Received-Date: Fri, 03 Apr 2015 20:39:16 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

During the build of a core-image-base for BeagleBone using the master 
branch I was presented with the following warning:

"WARNING: [kernel config]: specified values did not make it into the 
kernel's final configuration:"

The full list of configuration values, which did not make it into 
kernel's configuration can be found here:
http://pastebin.com/sAvXuNC8

Most variables seem to have something to do with things which are not 
applicable for my particular build and device. There is no need for any 
graphics so values such as CONFIG_FB_CFB_REV_PIXELS_IN_BYTE and 
CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY seem like they are not needed 
anyway. But there are a few which look less innocent such as for example 
CONFIG_ARCH_NR_GPIO and CONFIG_LEDS_GPIO.

I did a few builds with poky-dizzy-12.0.1 before moving to the master 
branch and the mentioned warning was not issued during those builds.

The only information about the warning I was able to find on the web is 
this:
http://patchwork.openembedded.org/patch/89289/

So it seems that this is not that critical and somewhere during the 
build process some kernel configuration values are dropped. Since I do 
not have enough knowledge about the subject I would like to ask the more 
knowledgeable of you to reassure me that this warning is not critical. 
Also, if someone could give an example of why some values are dropped 
and by who/what, I would be most grateful.

I should probably mention that I can successfully deploy the build 
despite the warnings and everything works as expected. Well, there is 
one thing and that is that one of requested packages is not built 
(ntfs-3g) but that is an issue for another thread, if I am unable to 
find the solution myself.

Thank you.

FYI: I am new to Yocto and this mailing list

