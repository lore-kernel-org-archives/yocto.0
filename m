Return-Path: <matt.office@impsoftware.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 439EAE00BD2; Sat, 27 Oct 2018 13:39:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [69.89.18.3 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1477 seconds by postgrey-1.32 at yocto-www;
	Sat, 27 Oct 2018 13:39:03 PDT
Received: from gproxy2-pub.mail.unifiedlayer.com
	(gproxy2-pub.mail.unifiedlayer.com [69.89.18.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C86F1E00A25
	for <yocto@yoctoproject.org>; Sat, 27 Oct 2018 13:39:03 -0700 (PDT)
Received: from cmgw15.unifiedlayer.com (unknown [10.9.0.15])
	by gproxy2.mail.unifiedlayer.com (Postfix) with ESMTP id 509191E09F0
	for <yocto@yoctoproject.org>; Sat, 27 Oct 2018 14:14:25 -0600 (MDT)
Received: from host194.hostmonster.com ([74.220.207.194]) by cmsmtp with ESMTP
	id GUyXgrn5qj0soGUyXgRNOR; Sat, 27 Oct 2018 14:14:25 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=impsoftware.org; s=default;
	h=Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Sender:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7sPvSr7v9iie8iw6kgfIhgUQV5lESFcanDgVVZXbk0c=;
	b=CH4JfV/PxLcP4aLX63x6jX8ee
	84Zad6mNsaEVqcbNpKYDGd+KckrLkmiyB5Jr+oKgrvR+r9T8haifCR8asxedIO0WfAf8X1WtVJGuy
	k0kTCl1gron5JTDuJNI9sQE2O6;
Received: from [63.140.26.14] (port=57576 helo=[192.168.112.60])
	by host194.hostmonster.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <matt.office@impsoftware.org>)
	id 1gGUyW-00154k-Q6; Sat, 27 Oct 2018 14:14:24 -0600
To: Jon Szymaniak <jon.szymaniak.foss@gmail.com>, matt@impsoftware.org
References: <5c997a41-6069-1579-27d3-72975ab195a6@impsoftware.org>
	<CAPxrFVmj-1R9xZELyegVGW+A+HxFQ1V=5frUzqfn6HjgxH03ig@mail.gmail.com>
From: Matt Ervin <matt.office@impsoftware.org>
Organization: imp software
Message-ID: <a860b8fa-16cf-2cef-8a28-7f071be1765e@impsoftware.org>
Date: Sat, 27 Oct 2018 13:14:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAPxrFVmj-1R9xZELyegVGW+A+HxFQ1V=5frUzqfn6HjgxH03ig@mail.gmail.com>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - host194.hostmonster.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - impsoftware.org
X-BWhitelist: no
X-Source-IP: 63.140.26.14
X-Source-L: No
X-Exim-ID: 1gGUyW-00154k-Q6
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.112.60]) [63.140.26.14]:57576
X-Source-Auth: matt.office@impsoftware.org
X-Email-Count: 2
X-Source-Cap: aW1wc29mdHc7aW1wc29mdHc7aG9zdDE5NC5ob3N0bW9uc3Rlci5jb20=
X-Local-Domain: yes
Cc: yocto@yoctoproject.org
Subject: Re: NVIDIA or AMD accelerated graphics on x86 or x86-64 machine architecture
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: matt@impsoftware.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 27 Oct 2018 20:39:05 -0000
Content-Type: multipart/alternative;
	boundary="------------D860FB833C30E0233A2DBD7E"
Content-Language: en-US

--------------D860FB833C30E0233A2DBD7E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Jon,

Q: 1) Which OakLabs layer you using, and what exactly the failures 
messages are?

A: I’m using the Oak Labs repo located here: 
https://github.com/OakLabsInc/meta-nvidia
I have the “pyro” branch checked out, as it’s the only branch in the 
repo, and I followed the instructions in the “README” to add the recipe 
to my build by modifying my “local.conf” file.  This is the output it 
produces:

$ bitbake sockeye-gm
WARNING: Layer nvidia should set LAYERSERIES_COMPAT_nvidia in its 
conf/layer.conf file to list the core layer names it is compatible with.
WARNING: Layer nvidia should set LAYERSERIES_COMPAT_nvidia in its 
conf/layer.conf file to list the core layer names it is compatible with.
WARNING: Host distribution "ubuntu-18.04" has not been validated with 
this version of the build system; you may possibly experience unexpected 
failures. It is recommended that you use a tested distribution.
Parsing recipes: 100% 
|########################################################################################################################################################| 
Time: 0:00:21
Parsing of 1553 .bb files complete (0 cached, 1553 parsed). 2188 
targets, 73 skipped, 0 masked, 0 errors.
ERROR: No recipes available for:
/home/peniwize/yocto/poky/meta-nvidia/recipes-graphics/mesa/mesa_17.0.2.bbappend
/home/peniwize/yocto/poky/meta-nvidia/recipes-graphics/xorg-xserver/xserver-xorg_1.19.1.bbappend

Q: 2) Which NVIDIA and AMD devices you need to support? Specifically 
which drivers do you want installed?

A: I’m planning to use an NVIDIA 1050 ti, if I can get the NVIDIA 
drivers working with Yocto.  The latest driver installer can be 
downloaded from: 
https://us.download.nvidia.com/XFree86/Linux-x86_64/410.73/NVIDIA-Linux-x86_64-410.73.run, 
which I found from https://www.geforce.com/drivers/results/139110, which 
I found from https://www.geforce.com/drivers.

I’m not certain about which AMD device I would use.  I’m trying to find 
out which devices are supported by Yocto to see if I can find a hardware 
provider for any of them.  I currently have one hardware provider that 
offers these AMD devices:

AMD Embedded Radeon™ GFX-E9175
AMD Radeon™ RX 560 GFX-AR560F16-5A
AMD Radeon™ Pro WX 5100 GFX-5100 Radeon Pro
AMD Radeon™ HD7750 GPU
AMD Radeon™ E6760 Embedded GPU
AMD Radeon™ E6760 Embedded GPU
AMD Radeon™ E6760 Embedded GPU

A quick google search for drivers led me to: 
https://www.amd.com/en/support/graphics/radeon-500-series/radeon-rx-500-series/radeon-rx-560. 
It looks like I can download rpm’s or deb’s so perhaps I can extract the 
required drivers directly from those packages and use them verbatim.  
I’ve never used a Radeon so I don’t know it it requires kernel modules 
or if there is any compilation involved with installing its drivers like 
there is with NVIDIA drivers.

Thanks for the help!

- Matt

On 10/27/18 11:36 AM, Jon Szymaniak wrote:
> On Fri, Oct 26, 2018 at 15:51 Matt Ervin <matt.office@impsoftware.org 
> <mailto:matt.office@impsoftware.org>> wrote:
>
>     I’m creating a poky (sumo branch) based OS image for x86_64 PC
>     hardware. It’s an embedded device that is essentially a desktop PC
>     in a box with additional features. My device requires accelerated
>     graphics (either NVIDIA or AMD, not Intel) and I’m having
>     difficulty identifying which layer and recipe to use for either
>     device. Are there any recipes that encapsulate the NVIDIA Linux
>     desktop binary drivers for x86? If not then are there any
>     consultants willing to sell me some time to help me create one, or
>     to create one for me? I did some google searching and found a
>     layer from OakLabs, but it doesn’t work (at least not with the
>     sumo branch). The README file in the recipe also states that it’s
>     likely to break the build, and it did produce errors for me. I’m
>     not familiar with AMD on Linux so I don’t know if the
>     xf86-video-ati recipe in the meta-oe layer provides accelerated
>     desktop drivers or, if it does, which AMD devices it supports. I’m
>     obviously very new to Yocto so any guidance is greatly appreciated.
>
>
>
>     - Matt
>
>
> Hi Matt,
>
> Any chance you share a bit more info including:
>
> 1) Which OakLabs layer you using, and what exactly the failures 
> messages are?
>
> 2) Which NVIDIA and AMD devices you need to support?  Specifically 
> which drivers do you want installed?
>
>
> Thanks,
> Jon

--------------D860FB833C30E0233A2DBD7E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Hi Jon,<br>
      <br>
      Q: 1) Which OakLabs layer you using, and what exactly the failures
      messages are?<br>
      <br>
      A: I’m using the Oak Labs repo located here:
      <a class="moz-txt-link-freetext" href="https://github.com/OakLabsInc/meta-nvidia">https://github.com/OakLabsInc/meta-nvidia</a><br>
      I have the “pyro” branch checked out, as it’s the only branch in
      the repo, and I followed the instructions in the “README” to add
      the recipe to my build by modifying my “local.conf” file.  This is
      the output it produces:<br>
      <br>
      $ bitbake sockeye-gm<br>
      WARNING: Layer nvidia should set LAYERSERIES_COMPAT_nvidia in its
      conf/layer.conf file to list the core layer names it is compatible
      with.<br>
      WARNING: Layer nvidia should set LAYERSERIES_COMPAT_nvidia in its
      conf/layer.conf file to list the core layer names it is compatible
      with.<br>
      WARNING: Host distribution "ubuntu-18.04" has not been validated
      with this version of the build system; you may possibly experience
      unexpected failures. It is recommended that you use a tested
      distribution.<br>
      Parsing recipes: 100%
|########################################################################################################################################################|
      Time: 0:00:21<br>
      Parsing of 1553 .bb files complete (0 cached, 1553 parsed). 2188
      targets, 73 skipped, 0 masked, 0 errors.<br>
      ERROR: No recipes available for:<br>
       
/home/peniwize/yocto/poky/meta-nvidia/recipes-graphics/mesa/mesa_17.0.2.bbappend<br>
       
/home/peniwize/yocto/poky/meta-nvidia/recipes-graphics/xorg-xserver/xserver-xorg_1.19.1.bbappend<br>
      <br>
      Q: 2) Which NVIDIA and AMD devices you need to support? 
      Specifically which drivers do you want installed?<br>
      <br>
      A: I’m planning to use an NVIDIA 1050 ti, if I can get the NVIDIA
      drivers working with Yocto.  The latest driver installer can be
      downloaded from:
<a class="moz-txt-link-freetext" href="https://us.download.nvidia.com/XFree86/Linux-x86_64/410.73/NVIDIA-Linux-x86_64-410.73.run">https://us.download.nvidia.com/XFree86/Linux-x86_64/410.73/NVIDIA-Linux-x86_64-410.73.run</a>,
      which I found from <a class="moz-txt-link-freetext" href="https://www.geforce.com/drivers/results/139110">https://www.geforce.com/drivers/results/139110</a>,
      which I found from <a class="moz-txt-link-freetext" href="https://www.geforce.com/drivers">https://www.geforce.com/drivers</a>.<br>
      <br>
      I’m not certain about which AMD device I would use.  I’m trying to
      find out which devices are supported by Yocto to see if I can find
      a hardware provider for any of them.  I currently have one
      hardware provider that offers these AMD devices:<br>
      <br>
      AMD Embedded Radeon™ GFX-E9175<br>
      AMD Radeon™ RX 560 GFX-AR560F16-5A<br>
      AMD Radeon™ Pro WX 5100 GFX-5100 Radeon Pro<br>
      AMD Radeon™ HD7750 GPU<br>
      AMD Radeon™ E6760 Embedded GPU<br>
      AMD Radeon™ E6760 Embedded GPU<br>
      AMD Radeon™ E6760 Embedded GPU<br>
      <br>
      A quick google search for drivers led me to:
<a class="moz-txt-link-freetext" href="https://www.amd.com/en/support/graphics/radeon-500-series/radeon-rx-500-series/radeon-rx-560">https://www.amd.com/en/support/graphics/radeon-500-series/radeon-rx-500-series/radeon-rx-560</a>. 
      It looks like I can download rpm’s or deb’s so perhaps I can
      extract the required drivers directly from those packages and use
      them verbatim.  I’ve never used a Radeon so I don’t know it it
      requires kernel modules or if there is any compilation involved
      with installing its drivers like there is with NVIDIA drivers.<br>
      <br>
      Thanks for the help!<br>
      <br>
      - Matt<br>
      <br>
    </p>
    <div class="moz-cite-prefix">On 10/27/18 11:36 AM, Jon Szymaniak
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAPxrFVmj-1R9xZELyegVGW+A+HxFQ1V=5frUzqfn6HjgxH03ig@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div>On Fri, Oct 26, 2018 at 15:51 Matt Ervin &lt;<a
          href="mailto:matt.office@impsoftware.org"
          moz-do-not-send="true">matt.office@impsoftware.org</a>&gt;
        wrote:<br>
      </div>
      <div>
        <div class="gmail_quote">
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div bgcolor="#FFFFFF" text="#000000">
              <p> </p>
              <p style="margin-bottom:0in;line-height:100%">I’m creating
                a poky (sumo branch) based OS image for x86_64 PC
                hardware. It’s an embedded device that is essentially a
                desktop PC in a box with additional features. My device
                requires accelerated graphics (either NVIDIA or AMD, not
                Intel) and I’m having difficulty identifying which layer
                and recipe to use for either device. Are there any
                recipes that encapsulate the NVIDIA Linux desktop binary
                drivers for x86? If not then are there any consultants
                willing to sell me some time to help me create one, or
                to create one for me? I did some google searching and
                found a layer from OakLabs, but it doesn’t work (at
                least not with the sumo branch). The README file in the
                recipe also states that it’s likely to break the build,
                and it did produce errors for me. I’m not familiar with
                AMD on Linux so I don’t know if the xf86-video-ati
                recipe in the meta-oe layer provides accelerated desktop
                drivers or, if it does, which AMD devices it supports.
                I’m obviously very new to Yocto so any guidance is
                greatly appreciated.</p>
            </div>
            <div bgcolor="#FFFFFF" text="#000000">
              <p style="margin-bottom:0in;line-height:100%"><br>
                <br>
                - Matt</p>
            </div>
          </blockquote>
          <div dir="auto"><br>
          </div>
          <div dir="auto">Hi Matt,</div>
          <div dir="auto"><br>
          </div>
          <div dir="auto">Any chance you share a bit more info
            including:</div>
          <div dir="auto"><br>
          </div>
          <div dir="auto">1) Which OakLabs layer you using, and what
            exactly the failures messages are?</div>
          <div dir="auto"><br>
          </div>
          <div dir="auto">2) Which NVIDIA and AMD devices you need to
            support?  Specifically which drivers do you want installed?</div>
          <div dir="auto"><br>
          </div>
          <div dir="auto"><br>
          </div>
          <div dir="auto">Thanks,</div>
          <div dir="auto">Jon</div>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------D860FB833C30E0233A2DBD7E--
