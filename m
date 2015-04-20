Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 340CFE00953; Mon, 20 Apr 2015 07:52:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADE04E00932
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 07:52:03 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3KEpwti020301
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 20 Apr 2015 07:51:58 -0700 (PDT)
Received: from [128.224.22.169] (128.224.22.169) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 20 Apr 2015 07:51:58 -0700
Message-ID: <5535128C.6010701@windriver.com>
Date: Mon, 20 Apr 2015 10:51:56 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Matt Schuckmann <Matt.Schuckmann@planar.com>, Yocto Project
	<yocto@yoctoproject.org>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDCA585B2@MSXBEBVT12.planar.net>
	<20150420084300.GC11779@ad.chargestorm.se>
In-Reply-To: <20150420084300.GC11779@ad.chargestorm.se>
Subject: Re: Problems enabling systemd
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
X-List-Received-Date: Mon, 20 Apr 2015 14:52:07 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 04/20/2015 04:43 AM, Anders Darander wrote:
> * Matt Schuckmann <Matt.Schuckmann@planar.com> [150417 23:27]:
>> I've got an image for a AM3352 system based on Dylan and Arago and I'm
>> trying to switch to systemd for init.
>
>> So far I haven't had much luck.
>> First off I'm getting different results depending on where I turn it on.
>> I'm turning it on via the following 2 lines:
>
>> DISTRO_FEATURES_append = " systemd"
>> VIRTUAL-RUNTIME_init_manager = "systemd"
>
> These two lines looks correct, though, if you're building a systemd-only
> distro & image, you migth want to add:
>
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
>
>> If I place these lines in my_image.bb file I seem to get a partial
>> install of systemd, systemd_udev is there and seems to run but that's
>> about it, there is no systemctrl journalctl and the sysvinit init
>> scripts still seem to be called.


And also on this point, make sure to check your PACKAGECONFIG values
for systemd. The optional utilities like networkd are not enabled by
default, and a bbapend of the systemd recipe is needed to enable them
via PACKAGECONFIG.

Cheers,

Bruce

>
> DISTRO_FEATURES is a distro (policy) configuration, and thus, can't be
> modfied in a recipe. The correct way would be to add this in your own
> my_distro.conf.
>
>> If I place these lines in either local.conf or my_distrobution.conf
>> all of the systemd utility seem to get installed and systemd startups
>> up but it's clearly not configured correctly.
>
> Good that it seems to be installed OK.
>
>> For starters the systemd dbus isn't getting created and that seems to
>> lead to a whole host of other problems, including journald constant
>> spewing the following error messages:
>
>> [   55.926223] systemd-journald[715]: Failed to write entry, ignoring: Argument list too long
>> [   55.936931] systemd-journald[715]: Failed to rotate /run/log/journal/c37feca280b74ec583564afcc2a93f0a/system.journal: No such file or directory
>> [   55.950911] systemd-journald[715]: Failed to write entry, ignoring: Argument list too long
>> [   55.961580] systemd-journald[715]: Failed to rotate /run/log/journal/c37feca280b74ec583564afcc2a93f0a/system.journal: No such file or directory
>> [   55.975568] systemd-journald[715]: Failed to write entry, ignoring: Argument list too long
>> [   55.986329] systemd-journald[715]: Failed to rotate /run/log/journal/c37feca280b74ec583564afcc2a93f0a/system.journal: No such file or directory
>
>> I don't know if it matters but this system has no display at all, it's
>> a strictly embedded installation.
>
> That shouldn't really matter, I'm running systemd in headless setups.
>
> I'd guess that you're getting some errors earlier than this in the
> bootlog? Could you paste them?
>
> Cheers,
> Anders
>
>


