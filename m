Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D187E00726; Thu, 25 May 2017 02:01:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07919E00349
	for <yocto@yoctoproject.org>; Thu, 25 May 2017 02:01:05 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 8D62268A01C; Thu, 25 May 2017 10:01:04 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 5FCDC68A019;
	Thu, 25 May 2017 10:01:03 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 142866740427;
	Thu, 25 May 2017 11:01:03 +0200 (CEST)
To: yocto@yoctoproject.org
References: <CAHUNapSYmEfVLLdLE4_Nr8XEJt830R5cvHMrcnsohYF5sXSaVw@mail.gmail.com>
	<CAHUNapRGHVwA5agFkp26Vv46qQbyDXYdhvR=wxdU-bAYifS0Eg@mail.gmail.com>
	<CAHUNapR=ucND-LTtiGgPGMCpXc_WRJwWOSFPeJ6LMwC40_zhHQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <713d15f8-240b-a20d-9a4a-6c340412a529@mlbassoc.com>
Date: Thu, 25 May 2017 11:01:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAHUNapR=ucND-LTtiGgPGMCpXc_WRJwWOSFPeJ6LMwC40_zhHQ@mail.gmail.com>
Subject: Re: etnaviv image
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
X-List-Received-Date: Thu, 25 May 2017 09:01:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-05-25 10:48, Trevor Woerner wrote:
> w00t!!
> 
> It took a lot of hacking, but I was able to build and run an image for
> the wandboard dual that uses etnaviv :-D
> 
> Patches to follow.
> 
> I now have 4 dev boards using open-source graphics:
> 1) rpi3-32 with vc4
> 2) dragonboard-410c with freedreno
> 3) minnow (turbot) with Intel's stuff
> 4) wandboard with etnaviv

Would you mind sharing your configuration (conf/local.conf, conf/bblayers.conf)?
I'm mostly interested in trying this on my RaspberryPi3.

Thanks

> 
> glmark2-es2:
> 
> root@wandboard:~# glmark2-es2; cat /proc/loadavg
> =======================================================
>      glmark2 2014.03
> =======================================================
>      OpenGL Information
>      GL_VENDOR:     etnaviv
>      GL_RENDERER:   Gallium 0.4 on Vivante GC880 rev 5106
>      GL_VERSION:    OpenGL ES 2.0 Mesa 17.0.4
> =======================================================
> [build] use-vbo=false: FPS: 69 FrameTime: 14.493 ms
> [build] use-vbo=true: FPS: 80 FrameTime: 12.500 ms
> [texture] texture-filter=nearest: FPS: 68 FrameTime: 14.706 ms
> [texture] texture-filter=linear: FPS: 68 FrameTime: 14.706 ms
> [texture] texture-filter=mipmap: FPS: 66 FrameTime: 15.152 ms
> [shading] shading=gouraud: FPS: 70 FrameTime: 14.286 ms
> [shading] shading=blinn-phong-inf: FPS: 61 FrameTime: 16.393 ms
> [shading] shading=phong: FPS: 47 FrameTime: 21.277 ms
> [shading] shading=cel: FPS: 39 FrameTime: 25.641 ms
> [bump] bump-render=high-poly: FPS: 52 FrameTime: 19.231 ms
> [bump] bump-render=normals: FPS: 67 FrameTime: 14.925 ms
> [bump] bump-render=height: FPS: 60 FrameTime: 16.667 ms
> libpng warning: iCCP: known incorrect sRGB profile
> [effect2d] kernel=0,1,0;1,-4,1;0,1,0;: FPS: 32 FrameTime: 31.250 ms
> libpng warning: iCCP: known incorrect sRGB profile
> [effect2d] kernel=1,1,1,1,1;1,1,1,1,1;1,1,1,1,1;: FPS: 14 FrameTime: 71.429 ms
> [pulsar] light=false:quads=5:texture=false: FPS: 61 FrameTime: 16.393 ms
> libpng warning: iCCP: known incorrect sRGB profile
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> [desktop] blur-radius=5:effect=blur:passes=1:separable=true:windows=4:
> FPS: 67 FrameTime: 14.925 ms
> Error: RenderObject::init: glCheckFramebufferStatus failed (0x8cdd)
> libpng warning: iCCP: known incorrect sRGB profile
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> Error: RenderObject::size: glCheckFramebufferStatus failed (0x8cdd)
> [desktop] effect=shadow:windows=4: FPS: 68 FrameTime: 14.706 ms
> [buffer] columns=200:interleave=false:update-dispersion=0.9:update-fraction=0.5:update-method=map:
> FPS: 29 FrameTime: 34.483 ms
> [buffer] columns=200:interleave=false:update-dispersion=0.9:update-fraction=0.5:update-method=subdata:
> FPS: 29 FrameTime: 34.483 ms
> [buffer] columns=200:interleave=true:update-dispersion=0.9:update-fraction=0.5:update-method=map:
> FPS: 31 FrameTime: 32.258 ms
> [ideas] speed=duration:[ 2797.051681] etnaviv-gpu 130000.gpu:
> hangcheck detected gpu lockup!
> [ 2797.059575] etnaviv-gpu 130000.gpu:      completed fence: 50513
> [ 2797.065622] etnaviv-gpu 130000.gpu:      active fence: 50514
> [ 2797.072346] etnaviv-gpu 130000.gpu: hangcheck recover!
> [ 2800.011603] etnaviv-gpu 130000.gpu: hangcheck detected gpu lockup!
> [ 2800.017890] etnaviv-gpu 130000.gpu:      completed fence: 50514
> [ 2800.023895] etnaviv-gpu 130000.gpu:      active fence: 50515
> [ 2800.029752] etnaviv-gpu 130000.gpu: hangcheck recover!
> [ 2803.051591] etnaviv-gpu 130000.gpu: hangcheck detected gpu lockup!
> [ 2803.057899] etnaviv-gpu 130000.gpu:      completed fence: 50516
> [ 2803.063874] etnaviv-gpu 130000.gpu:      active fence: 50518
> [ 2803.069702] etnaviv-gpu 130000.gpu: hangcheck recover!
> [ 2805.531626] etnaviv-gpu 130000.gpu: hangcheck detected gpu lockup!
> [ 2805.537973] etnaviv-gpu 130000.gpu:      completed fence: 50518
> [ 2805.544052] etnaviv-gpu 130000.gpu:      active fence: 50520
> [ 2805.551826] etnaviv-gpu 130000.gpu: hangcheck recover!
>   FPS: 0 FrameTime: inf ms
> [jellyfish] <default>: FPS: 28 FrameTime: 35.714 ms
> [terrain] <default>: FPS: 2 FrameTime: 500.000 ms
> [shadow] <default>: FPS: 30 FrameTime: 33.333 ms
> Error: DistanceRenderTarget::setup: glCheckFramebufferStatus failed (0x8cdd)
> Error: Failed to set up the render target for the depth pass
> [refract] <default>: Set up failed
> [conditionals] fragment-steps=0:vertex-steps=0: FPS: 61 FrameTime: 16.393 ms
> [conditionals] fragment-steps=5:vertex-steps=0: FPS: 31 FrameTime: 32.258 ms
> [conditionals] fragment-steps=0:vertex-steps=5: FPS: 62 FrameTime: 16.129 ms
> [function] fragment-complexity=low:fragment-steps=5: FPS: 46
> FrameTime: 21.739 ms
> [function] fragment-complexity=medium:fragment-steps=5: FPS: 29
> FrameTime: 34.483 ms
> [loop] fragment-loop=false:fragment-steps=5:vertex-steps=5: FPS: 45
> FrameTime: 22.222 ms
> [loop] fragment-steps=5:fragment-uniform=false:vertex-steps=5: FPS: 45
> FrameTime: 22.222 ms
> [loop] fragment-steps=5:fragment-uniform=true:vertex-steps=5: FPS: 29
> FrameTime: 34.483 ms
> =======================================================
>                                    glmark2 Score: 46
> =======================================================
> 0.46 0.24 0.09 1/98 621
> 
> 
> not the greatest results, a couple crashes, but better than swrast!
> 


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

