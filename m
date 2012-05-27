Return-Path: <yocto@mindchasers.com>
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEB5CE006DA
	for <yocto@yoctoproject.org>; Sun, 27 May 2012 06:33:58 -0700 (PDT)
Received: from [192.168.1.41] (unknown [108.25.140.29])
	by smtp.webfaction.com (Postfix) with ESMTP id 756B821025CC;
	Sun, 27 May 2012 08:33:57 -0500 (CDT)
Message-ID: <4FC22D43.1020908@mindchasers.com>
Date: Sun, 27 May 2012 09:33:55 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: =?ISO-8859-1?Q?K=F6vesdi_Gy=F6rgy?= <kgy@teledigit.eu>
References: <1886451.M9Ys9y8xhR@linux-8cfk>
In-Reply-To: <1886451.M9Ys9y8xhR@linux-8cfk>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: help building my own recipes
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
X-List-Received-Date: Sun, 27 May 2012 13:33:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 05/27/2012 07:41 AM, Kövesdi György wrote:
> Hi,
>
> I have a Beagleboard-C4, and have successfully built some default images.
>
> I started to collect receipes for my own build, following their dependencies.
> At a point, i got the following error message:
>
> ERROR: Failure expanding variable FILESPATH, expression was ${@base_set_filespath([ "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine/ti-codecs-omap3530-4_00_00_00-${MACHINE_KERNEL_PR}a", "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine/ti-codecs-omap3530-4_00_00_00", "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine/ti-codecs-omap3530", "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine/ti-codecs-omap3530-4_00_00_00", "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine/ti-codecs-omap3530", "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine/files", "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine" ], d)} which triggered exception SyntaxError: EOL while scanning string literal (FILESPATH, line 1)
> ERROR: Command execution failed: Exited with 1
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
> According to the answers i found in mail archives, a variable setting is missing, but i cannot
> determine which. It happened when 'meta-ti' was added.
> How can i determine what is missing?
>
> Thanx
> Gyorgy Kovesdi
>

Is the variable definition for MACHINE_KERNEL_PR valid?

Do a "bitbake <recipe> -e" to see the setting.




