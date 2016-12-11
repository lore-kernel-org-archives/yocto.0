Return-Path: <mont3z.claro5@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8754DE00A6B; Sun, 11 Dec 2016 07:49:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mont3z.claro5[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.177 listed in list.dnswl.org]
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38B44E00519
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 07:49:43 -0800 (PST)
Received: by mail-yw0-f177.google.com with SMTP id a10so48179315ywa.3
	for <yocto@yoctoproject.org>; Sun, 11 Dec 2016 07:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gtQA2Ftrf88BfWcP9z9eb/fsHAV589mUoInEMgkodCA=;
	b=rp4n34D/UxbOjrqYhESsH0nJ6DjHz1OPH3kYxD9boEhdAe2BVRrEVsuCforCU3K9jd
	pQhfN4Ajzk3C80H5ok22Du1SucvyS4K5J9y4hj/pM1J+AynThPF7EOSX5BDHQpSo38n9
	ji7EDDhZnLHOAsehmFvR0qMUPR94slN70tSoXdF5rZtv76CGOr440ZvmwMGXIMMAJpSW
	hzA6FPTWnOovtkC0hHuiZr8p6NjwOgWTC5WXi1N3elfVN3+3ANLheXoCokXGgrmEtPsS
	b5YOsvKsJZVk+bJhHKbWWtrgdjUqOLfZ+DplqWie5L0hEO4fqsreInm5l0RHavxkCa3V
	Dj/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gtQA2Ftrf88BfWcP9z9eb/fsHAV589mUoInEMgkodCA=;
	b=B1XSI4gjde0xZ0V8HUBAhmLNj452ZJl7Pt/clCYcn52kHBworv+9w7MXzkmxY+SAP/
	fhu3400Jk8SKSzV9fjYcqWLn+3yw9D5VLiWDIk5H7hsObNZN0bbHma8X1G1yEjs7VdjP
	sxEdBacZq6h9IJ29stqPHk10vQhOpjfiDnA8yA/fg8GK85V9xdixtHINPXhJWfHbG1eO
	ayaZOEBfj0RlD3CLSnk/V7ZS868tgJg1Z4gIGOVYfFXqrOLwumf07wIrc/Z9UQRov9n1
	4dLmB167kF6NYO9y2HCdbfFfxGG0G7+KBXraPvb4FT+bKRY1pm3h5KrNupJCG+lUOe4b
	ZN4Q==
X-Gm-Message-State: AKaTC01V7TtWAHzgnS9CWOkmbuJLMZTobspfZvKWMawf423taEY3ejKPwemYRzCIryWW5qOPMyoiWtYP9cC7Rw==
X-Received: by 10.13.207.197 with SMTP id r188mr83107836ywd.88.1481471383359; 
	Sun, 11 Dec 2016 07:49:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.129.121.1 with HTTP; Sun, 11 Dec 2016 07:49:43 -0800 (PST)
In-Reply-To: <CAMKF1sogx4YCPJgGZRoUjGvpRmiANUe-nkSGTkcz5Fhq7hpqkw@mail.gmail.com>
References: <CAJ70iBTSsyb9oXvPexe+T=McGQPg7gwVpuRPAnVA2T_RRyv2-g@mail.gmail.com>
	<CAMKF1sogx4YCPJgGZRoUjGvpRmiANUe-nkSGTkcz5Fhq7hpqkw@mail.gmail.com>
From: Mont3z Claros <mont3z.claro5@gmail.com>
Date: Sun, 11 Dec 2016 07:49:43 -0800
Message-ID: <CAJ70iBSSsnqR=p8u1gjZR3hd0r6GB-NRZTds2Hb8coUZeP9zxg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error during webkit compilation for rasberry pi3
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
X-List-Received-Date: Sun, 11 Dec 2016 15:49:47 -0000
Content-Type: text/plain; charset=UTF-8

Hi Khem,

this layer is:
https://layers.openembedded.org/layerindex/branch/master/layer/meta-webkit/

I've also tried to use the webkit recipe from poky but I've got the
same error. In this case I used a different configuration because poky
doesn't have webkitgtk-bin (mini browser). To test that I've tried to
build a modified version of meta-web-kiosk
 (https://github.com/mont3z/meta-web-kiosk). This is still a work in
progress but basically it replaces midori by epiphany.

local.conf:
MACHINE = "raspberrypi3"
DISTRO_FEATURES_append = " x11 gles2"

command:
bitbake core-image-web-kiosk

bblayes.conf:
BBLAYERS ?= " \
  /home/mont3z/yocto/poky/meta \
  /home/mont3z/yocto/poky/meta-poky \
  /home/mont3z/yocto/poky/meta-yocto-bsp \
  /home/mont3z/yocto/meta-openembedded/meta-oe \
  /home/mont3z/yocto/meta-raspberrypi \
  /home/mont3z/yocto/meta-web-kiosk \
"

I also found this discussion about rpi2. I'll try to run some of those
configurations:
https://github.com/Igalia/meta-webkit/issues/1

On Sat, Dec 10, 2016 at 1:02 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Sat, Dec 10, 2016 at 7:52 AM, Mont3z Claros <mont3z.claro5@gmail.com> wrote:
>> Hi all,
>>
>> I don't know what I'm doing wrong but I'm getting an error during
>> compilation of webkit for raspberry pi3. Please see below the error
>> and my configurations,
>>
>> Thanks,
>> Mont3z
>>
>> local.conf:
>> MACHINE = "raspberrypi3"
>> DISTRO_FEATURES_append = " x11 gles2"
>> IMAGE_INSTALL_append = " webkitgtk-bin"
>>
>> Error:
>> | ERROR: oe_runmake failed
>> | In file included from
>> /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/cairo/GraphicsContext3DCairo.cpp:51:0:
>> | /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/opengl/Extensions3DOpenGLES.h:109:5:
>> error: 'PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC' does not name a
>> type
>> |      PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC
>> m_glFramebufferTexture2DMultisampleIMG;
>> |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>
>> command:
>> bitbake core-image-sato
>>
>> bblayes.conf:
>> BBLAYERS ?= " \
>>   /home/mont3z/yocto/poky/meta \
>>   /home/mont3z/yocto/poky/meta-poky \
>>   /home/mont3z/yocto/poky/meta-yocto-bsp \
>>   /home/mont3z/yocto/meta-openembedded/meta-oe \
>>   /home/mont3z/yocto/meta-webkit \
>
>
> what does this layer do ?
>
>>   /home/mont3z/yocto/meta-raspberrypi \
>>   "

