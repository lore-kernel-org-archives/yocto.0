Return-Path: <charles.chau@habeyusa.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07819E009F3; Mon, 23 Nov 2015 14:28:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from server.habeyonline.com (server.habeyonline.com [142.4.26.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4A6AE00957
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 14:28:16 -0800 (PST)
Received: from [96.31.254.242] (port=37825 helo=[192.168.0.227])
	by server.habeyonline.com with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <charles.chau@habeyusa.com>)
	id 1a0zam-0005ko-Bf; Mon, 23 Nov 2015 22:28:12 +0000
To: Tanu Kaskinen <tanuk@iki.fi>, yocto@yoctoproject.org
References: <564FC280.7040205@habeyusa.com> <1448295644.6918.11.camel@iki.fi>
From: Charles Chau <charles.chau@habeyusa.com>
Message-ID: <565392FA.2070608@habeyusa.com>
Date: Mon, 23 Nov 2015 14:28:10 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1448295644.6918.11.camel@iki.fi>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.habeyonline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - habeyusa.com
X-Get-Message-Sender-Via: server.habeyonline.com: authenticated_id:
	charles.chau@habeyusa.com
X-Authenticated-Sender: server.habeyonline.com: charles.chau@habeyusa.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: i.MX6DL Qt5.5 Image
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
X-List-Received-Date: Mon, 23 Nov 2015 22:28:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I have meta-fsl-arm, meta-fsl-arm-extra, and meta-fsl-demos.  I checked 
and it has fsl-alsa-plugin as well as alsa-plugin.

I tried to delete the recipes-multimedia in meta-fsl-arm, and it fails 
during compile.
What should I do?
--------
I have narrow down to only bitbake qtbase  (Jethro branch) and still get 
the libgl-mesa-dev dependencies error.  How do I add the library Package 
into Yocto? Is it already there? I just don't know how to use it.

Seems like I am missing a bunch:  libgles3-mx6-dev, imx-gpu-viv-dev, 
libclc-mx6, libgl-mesa-dev...

     ERROR: Nothing RPROVIDES 'libgl-mesa-dev' (but 
/mountdata/hio-yocto-bsp/sources/meta-fsl-arm/recipes- 
graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p7.1-hfp.bb RDEPENDS on or 
otherwise requires it)

Thank you very much,

On 11/23/2015 08:20 AM, Tanu Kaskinen wrote:
> On Fri, 2015-11-20 at 17:01 -0800, Charles Chau wrote:
>> Hello,
>>
>> I am trying to upgrade my image from Daisy to Jethro.
>>
>> I followed this tutorial from Wandboard
>> http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard
>> The Core Board I am using is Freescale i.MX6DL board
>>
>> I am getting a lot of error of dependencies from the previous tutorial
>> IMAGE_INSTALL_append and could not find the recipes for them.
>>
>>> ERROR: Nothing RPROVIDES 'alsa-plugins-pulseaudio-conf' (but
>>> /mountdata/hio-yocto-bsp/sources/poky/meta/recipes-multimedia/pulseaudio/pulseaudio_6.0.bb
>>> RDEPENDS on or otherwise requires it)
> The alsa-plugins recipe from Jethro should provide alsa-plugins-
> pulseaudio-conf, unless you have explicitly disabled pulseaudio
> support. Do you perhaps have a different alsa-plugins recipe provided
> by some other layer that overrides Poky? alsa-plugins was not included
> in Poky before Jethro, so it might appear in other layers.
>
>

-- 
Charles Chau


