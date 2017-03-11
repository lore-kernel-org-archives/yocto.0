Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FBF4E00A0A; Sat, 11 Mar 2017 02:35:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 084B0E009B9
	for <yocto@yoctoproject.org>; Sat, 11 Mar 2017 02:35:42 -0800 (PST)
Received: by mail-pf0-f172.google.com with SMTP id o126so51290398pfb.3
	for <yocto@yoctoproject.org>; Sat, 11 Mar 2017 02:35:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=UH59uOeuS5RzHbjetnT7imgyjovPqgkeRifQzDJWFlc=;
	b=XM1oWHLm+DC1PZ5VhiiKFE/sA0YFn+9ikpsOJWjRUYzAYNHMrtIpTW4rKmDtRr2/NM
	2+WAD7KjQpgym+syQPrkTKtRW1o05UC+Tw2EsaiofmyJvP6hRi0SGWjZMKEzj2tIa3zT
	NdtjLMNDXgqPOuVCiirqor77haAqc/RB0Aw1jCpsX4fW/s3SUg1eob20CvNJCbs3cfsb
	up9EchG/KD6RXIaWnMsx0qH/lXM4VunG5430naHuNqExkSq/PgdAMYlO/L9MJKHnwXuU
	TlqSYhe7LF+NYx0CqNcfYbSOPg8NuL0HjKVPi3WCgFcHNyZ1s23I5loPyojMcbkeV5NP
	02wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=UH59uOeuS5RzHbjetnT7imgyjovPqgkeRifQzDJWFlc=;
	b=j4ck8DPaCkUHDyMA2JKl/3t9LPYBGXpB2+rOxuKOckW7XKu/uPJhPCUuW+qGqcGT1+
	w7jM2xYjNY1nIqYQc25Sh5t66Ez7GIy0jdY9moYAwfgxjA3KBjyhcagg2wHYKyZIe6Cg
	PvVVY6nMveu5QigF6pqvxejyQ6jaxB6ZEuyOp7XXkWZu1viLDvy6yzRa8GvaWziUAAxu
	5wmrJ2WXKtPXrHTpGZ5z6yNh7CXBgmsvqsaDIqm0cmrkBuiwXPspwWsI5LAbr3pxdanC
	NvsqbrwzPhxPSoHEanOy1XQhXXP81qKz/np12ViCUieZkGRX/7EfGpDljKqjZGxyZ2RN
	fn6w==
X-Gm-Message-State: AMke39koXiAnmisUyn21kYX3js2lRSuHESJqnDYh74CHlFrpIZehLUIsYm/gfzKqyxZ8vA==
X-Received: by 10.98.57.23 with SMTP id g23mr26508466pfa.32.1489228541886;
	Sat, 11 Mar 2017 02:35:41 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:51e9:1748:d935:c39a])
	by smtp.gmail.com with ESMTPSA id
	23sm23406176pfz.127.2017.03.11.02.35.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Mar 2017 02:35:41 -0800 (PST)
To: Gary Thomas <gary@mlbassoc.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <057e9971-070d-5610-6aa3-63e4a4e65f47@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <bf45da1b-9683-c928-1e55-7b8e8abab2c9@gmail.com>
Date: Sat, 11 Mar 2017 02:35:40 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <057e9971-070d-5610-6aa3-63e4a4e65f47@mlbassoc.com>
Subject: Re: [meta-raspberrypi] Errors building
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
X-List-Received-Date: Sat, 11 Mar 2017 10:35:43 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 3/11/17 2:12 AM, Gary Thomas wrote:
> If I build for RaspberryPi-3 with vc4graphics enabled, I get
> this error building omxplayer:
> 
> | In file included from linux/RBP.h:45:0,
> |                  from linux/RBP.cpp:22:
> | ./DllBCM.h:34:22: fatal error: bcm_host.h: No such file or directory
> |  #include <bcm_host.h>
> |                       ^
> | compilation terminated.
> | Makefile:44: recipe for target 'linux/RBP.o' failed
> | make: *** [linux/RBP.o] Error 1
> | make: *** Waiting for unfinished jobs....
> | In file included from OMXCore.h:32:0,
> |                  from OMXClock.h:27,
> |                  from OMXReader.cpp:29:
> | DllOMX.h:36:25: fatal error: IL/OMX_Core.h: No such file or directory
> |  #include <IL/OMX_Core.h>
> |                          ^
> | compilation terminated.
> | Makefile:44: recipe for target 'OMXReader.o' failed


omxplayer knows too much about rpi and assumes that you always use
userland for graphics. It need some surgery to get it working with
vc4graphics driver, not that easy to fix.

> 
> If I disable the vc4graphics, I can't build webkitgtk:
> 
> |
> /build/rpi3_2016-09-13/tmp/work/cortexa7t2hf-neon-vfpv4-amltd-linux-gnueabi/webkitgtk/2.14.5-r0/webkitgtk-2.14.5/Source/WebCore/platform/graphics/egl/GLContextEGLX11.cpp:
> In static member function 'static void*
> WebCore::GLContextEGL::createWindowSurfaceX11(EGLDisplay, EGLConfig,
> GLNativeWindowType)':
> |
> /build/rpi3_2016-09-13/tmp/work/cortexa7t2hf-neon-vfpv4-amltd-linux-gnueabi/webkitgtk/2.14.5-r0/webkitgtk-2.14.5/Source/WebCore/platform/graphics/egl/GLContextEGLX11.cpp:42:91:
> error: invalid static_cast from type 'GLNativeWindowType {aka long long
> unsigned int}' to type 'EGLNativeWindowType {aka void*}'
> |      return eglCreateWindowSurface(display, config,
> static_cast<EGLNativeWindowType>(window), nullptr);
> 

I have seen this error, but never got time to look closer. Just to let
you know you are not alone.

> Using current master of Poky/Yocto & meta-raspberrypi
> meta              = "master:d454dc2fc17711d3efe6dbe5aca3c734f0ed158b"
> meta-raspberrypi  = "master:c768a3d1aed8d16d08afe12fddb359914e0a203a"
> 
> Ideas?  Ideally, I'd like both of these packages in my image for the rpi3.
> 
> Thanks
> 

