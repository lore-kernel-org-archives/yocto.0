Return-Path: <charles.chau@habeyusa.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECED1E00B19; Mon, 23 Nov 2015 20:41:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from server.habeyonline.com (server.habeyonline.com [142.4.26.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4BD6E00AE6
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 20:41:52 -0800 (PST)
Received: from 71-84-254-69.dhcp.gldl.ca.charter.com ([71.84.254.69]:18993
	helo=[127.0.0.1])
	by server.habeyonline.com with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.86) (envelope-from <charles.chau@habeyusa.com>)
	id 1a15QJ-0003P8-Rp; Tue, 24 Nov 2015 04:41:48 +0000
To: Tanu Kaskinen <tanuk@iki.fi>
References: <564FC280.7040205@habeyusa.com> <1448295644.6918.11.camel@iki.fi>
	<565392FA.2070608@habeyusa.com> <1448336006.6918.83.camel@iki.fi>
From: Charles Chau <charles.chau@habeyusa.com>
Message-ID: <5653EA90.80708@habeyusa.com>
Date: Mon, 23 Nov 2015 20:41:52 -0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1448336006.6918.83.camel@iki.fi>
X-Antivirus: avast! (VPS 151123-1, 11/23/2015), Outbound message
X-Antivirus-Status: Clean
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
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 24 Nov 2015 04:41:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Thank you very much for replying,

Most of the problem I encounter is Package Dependencies which I cannot 
find anywhere (with Google).  I am still learning the components to 
build an image so Yocto is confusing.

I wanted to build qt5 for free i.MX6 board.
In the beginning, I was trying to build core-image-minimal and all the 
dependencies error popped up.
So I change to only bitbake qtbase, to start from small.

Right now, I have deleted libgl-mesa-dev from
/meta-fsl-arm/recipes-graphics/imx-gpu-viv/imx-gpu-viv.inc

Although I still encounter Kernel issue, at least it get passed the 
configuring stage.

The thing I want to learn is that, How can I add libgl-mesa-dev to my 
Yocto build without delete stuff. I tried to add "mesa" to 
"IMAGE_INSTALL_append" and it did not work though.

For example, if I miss gnome, I would go to the web to find it and git 
clone, then go to bblayers and add gnome path. But package definition or 
libraries are different, I just do not know how they work.

Again, thank you!!!

On 11/23/2015 7:33 PM, Tanu Kaskinen wrote:
> On Mon, 2015-11-23 at 14:28 -0800, Charles Chau wrote:
>> I have meta-fsl-arm, meta-fsl-arm-extra, and meta-fsl-demos.  I checked
>> and it has fsl-alsa-plugin as well as alsa-plugin.
>>
>> I tried to delete the recipes-multimedia in meta-fsl-arm, and it fails
>> during compile.
>> What should I do?
> Deleting everything in recipes-multimedia seems overkill if the only
> problem was that the meta-fsl-* layers had an alsa-plugins recipe that
> overrode the Poky version.
>
> Regarding the compilation failure, it's hard to say anything without
> knowing the exact error.
>
> By the way, the layer search engine didn't find alsa-plugins in the
> meta-fsl-* repos:
> http://layers.openembedded.org/layerindex/branch/master/recipes/?q=alsa-plugins
>
> Only fsl-alsa-plugins was found, which is a different thing. This makes
> me doubt a bit your statement that the meta-fsl-* layers would contain
> an alsa-plugins recipe, but maybe you have your recipes from some
> repository that isn't known to the search engine... I'm not personally
> familiar with any of the fsl repos.
>
>> --------
>> I have narrow down to only bitbake qtbase  (Jethro branch)
> I don't understand what you mean by this.
>
>> and still get
>> the libgl-mesa-dev dependencies error.  How do I add the library Package
>> into Yocto? Is it already there? I just don't know how to use it.
>>
>> Seems like I am missing a bunch:  libgles3-mx6-dev, imx-gpu-viv-dev,
>> libclc-mx6, libgl-mesa-dev...
>>
>>       ERROR: Nothing RPROVIDES 'libgl-mesa-dev' (but
>> /mountdata/hio-yocto-bsp/sources/meta-fsl-arm/recipes-
>> graphics/imx-gpu-viv/imx-gpu-viv_5.0.11.p7.1-hfp.bb RDEPENDS on or
>> otherwise requires it)
> meta/recipes-graphics/mesa/mesa.inc from Poky contains the libgl-mesa-
> dev package definition. I don't know what the problem might be.
>
> -- Tanu
>
>
>> Thank you very much,
>>
>> On 11/23/2015 08:20 AM, Tanu Kaskinen wrote:
>>> On Fri, 2015-11-20 at 17:01 -0800, Charles Chau wrote:
>>>> Hello,
>>>>
>>>> I am trying to upgrade my image from Daisy to Jethro.
>>>>
>>>> I followed this tutorial from Wandboard
>>>> http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard
>>>> The Core Board I am using is Freescale i.MX6DL board
>>>>
>>>> I am getting a lot of error of dependencies from the previous tutorial
>>>> IMAGE_INSTALL_append and could not find the recipes for them.
>>>>
>>>>> ERROR: Nothing RPROVIDES 'alsa-plugins-pulseaudio-conf' (but
>>>>> /mountdata/hio-yocto-bsp/sources/poky/meta/recipes-multimedia/pulseaudio/pulseaudio_6.0.bb
>>>>> RDEPENDS on or otherwise requires it)
>>> The alsa-plugins recipe from Jethro should provide alsa-plugins-
>>> pulseaudio-conf, unless you have explicitly disabled pulseaudio
>>> support. Do you perhaps have a different alsa-plugins recipe provided
>>> by some other layer that overrides Poky? alsa-plugins was not included
>>> in Poky before Jethro, so it might appear in other layers.
>>>
>>>

-- 
Charles Chau

HABEY USA
21015 Commerce Point Drive
Walnut, CA 91789
Tel: 909-594-7600 x 101
Email: charles.chau@habeyusa.com
Web: www.habeyusa.com


