Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6584E009CA; Sat, 10 Dec 2016 13:02:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1592BE008CA
	for <yocto@yoctoproject.org>; Sat, 10 Dec 2016 13:02:44 -0800 (PST)
Received: by mail-ua0-f173.google.com with SMTP id 12so49269694uas.2
	for <yocto@yoctoproject.org>; Sat, 10 Dec 2016 13:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GtJYYzUzB4yXnjsKQ35sJpSdAFXPzxhYj7nsTPKAQQY=;
	b=jMdshzzoqYxjAZ5ZDHXdP2uPwMThGRVeTog5UwZLYjIq4/tWoojX3HIYdbaff9XSjU
	o5pfMfyl+OuA7w5Sudl3xZNtrSZdZ0BjTooNldn2M3tG+HiKKLYV3x9LVdM4+UwiGQUI
	OUd6klxE3xk0A0PR+kQKDCi3lrQpW7wb8YDDCpSNnl4962kHwjdMLE8VKuEcCJ1DAA6y
	gL8/mcoq8ubRtZJr8J02IyuEuWHk6Xd3YLVq+29S7zca6hpXPqN2VtxJdUwK38LyATJv
	1nmZlORT9LUNd2f8h0q0VN4LdNHgeNl7GVdPGlvYoTEX08x5ibTDe2shlKZ5ybrTbMYk
	GwzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GtJYYzUzB4yXnjsKQ35sJpSdAFXPzxhYj7nsTPKAQQY=;
	b=KYl+SYNZlPA64Qrmo57Y7hd/lQyOb6Ev3ruHTPAA77ffk5evXVFSNW5IQ+0dwifnte
	ZYIvVVNgSxJEEM4fAD2UW2+nmnSTtJA+hsfSdoFIENRLIXG/K65QqkCdVYbRynIiP+aN
	7V7kfh3Ll3VzZxZSv6X38QsfXa6YQB/5buHOBR6sL1pLN0N1xmFSEZCZXLetWzlMPJ14
	c3Qi/iDtNtPQ0QqKi7iix4SUSYuXdVUXT3N6Y4Ure/+FwNXPSPN29VsIDBnOK8XZRbxL
	Kc6iSxSKG6N5U75B2MtxSdJtvxaJjlhR+AlNLXAbm4fpg0VHABoDQvKiA/CFqsqioHqv
	+q6g==
X-Gm-Message-State: AKaTC03Zda8ioiDFyBX3x1YqRPVs+TJ3P8v+NbKMdv+d5Vx6Z61pjF9jhMPvwx3Tn5VZRl27ioPJ6u12wvAVdw==
X-Received: by 10.176.1.17 with SMTP id 17mr54974563uak.143.1481403763875;
	Sat, 10 Dec 2016 13:02:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Sat, 10 Dec 2016 13:02:13 -0800 (PST)
In-Reply-To: <CAJ70iBTSsyb9oXvPexe+T=McGQPg7gwVpuRPAnVA2T_RRyv2-g@mail.gmail.com>
References: <CAJ70iBTSsyb9oXvPexe+T=McGQPg7gwVpuRPAnVA2T_RRyv2-g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 10 Dec 2016 13:02:13 -0800
Message-ID: <CAMKF1sogx4YCPJgGZRoUjGvpRmiANUe-nkSGTkcz5Fhq7hpqkw@mail.gmail.com>
To: Mont3z Claros <mont3z.claro5@gmail.com>
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
X-List-Received-Date: Sat, 10 Dec 2016 21:02:45 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Dec 10, 2016 at 7:52 AM, Mont3z Claros <mont3z.claro5@gmail.com> wrote:
> Hi all,
>
> I don't know what I'm doing wrong but I'm getting an error during
> compilation of webkit for raspberry pi3. Please see below the error
> and my configurations,
>
> Thanks,
> Mont3z
>
> local.conf:
> MACHINE = "raspberrypi3"
> DISTRO_FEATURES_append = " x11 gles2"
> IMAGE_INSTALL_append = " webkitgtk-bin"
>
> Error:
> | ERROR: oe_runmake failed
> | In file included from
> /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/cairo/GraphicsContext3DCairo.cpp:51:0:
> | /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/opengl/Extensions3DOpenGLES.h:109:5:
> error: 'PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC' does not name a
> type
> |      PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC
> m_glFramebufferTexture2DMultisampleIMG;
> |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>
> command:
> bitbake core-image-sato
>
> bblayes.conf:
> BBLAYERS ?= " \
>   /home/mont3z/yocto/poky/meta \
>   /home/mont3z/yocto/poky/meta-poky \
>   /home/mont3z/yocto/poky/meta-yocto-bsp \
>   /home/mont3z/yocto/meta-openembedded/meta-oe \
>   /home/mont3z/yocto/meta-webkit \


what does this layer do ?

>   /home/mont3z/yocto/meta-raspberrypi \
>   "

