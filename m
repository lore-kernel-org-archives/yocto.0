Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B49BE00D4A; Mon, 23 Sep 2019 06:59:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93A8CE00D00
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 06:59:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x8NDxPML003414
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 06:59:26 -0700 (PDT)
Received: from [128.224.162.157] (128.224.162.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.468.0;
	Mon, 23 Sep 2019 06:59:25 -0700
To: Ovidiu Panait <ovidiu.panait@windriver.com>, <yocto@yoctoproject.org>
References: <20190923064135.18204-1-ovidiu.panait@windriver.com>
From: Hongxu Jia <hongxu.jia@windriver.com>
Message-ID: <53a5378c-9281-3077-f58c-54d61882d3ff@windriver.com>
Date: Mon, 23 Sep 2019 21:59:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190923064135.18204-1-ovidiu.panait@windriver.com>
Subject: Re: [meta-anaconda][PATCH 1/1] initramfs-module-setup-live: call udev settle before umounting /run/media/*
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
X-List-Received-Date: Mon, 23 Sep 2019 13:59:27 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Merged

//Hongxu
On 9/23/19 2:41 PM, Ovidiu Panait wrote:
> This fixes a race conditition which leaves devices mounted, causing the
> following anaconda installation failure:
> File "/usr/lib64/python3.5/site-packages/gi/overrides/BlockDev.py", line 963, in wrapped
>    raise transform[1](msg)
> File "/usr/lib64/python3.5/site-packages/blivet/devices/lvm.py", line 913, in _teardown
>    blockdev.lvm.lvdeactivate(self.vg.name, self._name)
> File "/usr/lib64/python3.5/site-packages/blivet/threads.py", line 53, in run_with_lock
>    return m(*args, **kwargs)
> File "/usr/lib64/python3.5/site-packages/blivet/devices/storage.py", line 431, in teardown
>    self._teardown(recursive=recursive)
> File "/usr/lib64/python3.5/site-packages/blivet/threads.py", line 53, in run_with_lock
>    return m(*args, **kwargs)
> File "/usr/lib64/python3.5/site-packages/blivet/devices/lvm.py", line 1933, in teardown
>    return DMDevice.teardown(self, recursive)
> gi.overrides.BlockDev.LVMError: Process reported exit code 5:   Logical volume wrll_intel-x86-64/root contains a filesystem in use.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
> ---
>   recipes-installer/initrdscripts/files/umountfs | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/recipes-installer/initrdscripts/files/umountfs b/recipes-installer/initrdscripts/files/umountfs
> index f01adea..4792110 100644
> --- a/recipes-installer/initrdscripts/files/umountfs
> +++ b/recipes-installer/initrdscripts/files/umountfs
> @@ -3,6 +3,9 @@ umountfs_enabled() {
>   }
>   
>   umountfs_run() {
> +    # Make sure /run/media is fully populated
> +    udevadm settle
> +
>       # Umount other media for anaconda
>       for dir in `awk '/\/dev.* \/run\/media/{print $2}' /proc/mounts`; do
>           umount $dir



