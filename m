Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDD9FE00D35; Mon, 27 May 2019 13:49:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08954E00C78
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 13:49:47 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id b18so17917683wrq.12
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 13:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=XX3s24rWgHupkKgaZOL2+x+WHj8OUkFrxRNfRRTLP1o=;
	b=S+CkM+y6keDz9JtWd7dggREI+C90uwd8Y7w49FXDDKu99Wlb0yueS9++i3LGEt0ZqJ
	eyq4mS3dvcT0Y05s0GkkxR9x5Ddm72RXc0P0PpZzDdSCfe5/+kquEZ7M1SOlOgU8+FeH
	JlxkhX2eTCJ1bNEyMTRCDRrHR2zUJCjxYkFdLNStyNV8ZRYnL1Fju6UHWMpDGrwAJ99z
	AyigDIri+mH1MPJxf4tvfVdvswvV+X6zqhTyur3dvLhqMYY5EoL2ML2karL3JWEWQQw/
	apeofYIhrA4JVQk0qjfhtbhEfe40VW/0lo9Yn9KzU3oiQRZOLi/qQNSJGUgYy7xXUTCp
	wR2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XX3s24rWgHupkKgaZOL2+x+WHj8OUkFrxRNfRRTLP1o=;
	b=c+0rizY9+F6MYEVcU6hiGC+c20Ih62vvF5JNBRZAM6SzF3bQNQgMHdwhCVs7XSRTs9
	lTDw8M07pV2vM8bazLNpmMH6AITYt9gN1TCrVF3il7tV9Yjv4569CHjDRd6Yf6IgjNgJ
	dzrG7Qmie3wP29eqarsgxDcZim2mHH1ETQwOLX1kKAZR6BJ31FWIohtLNcK6e+ZAedqy
	foakakLTqyPw3/hEDWXrbfA3Wyc7OqM3Ssny3AgUP0QTCrPld+9dOhcErZKGgmYO7nu9
	s95LbHVRvids7SNFHniwjDNn5+HDOZRXi0VefjkyrF0ZRBSXlf4MEsFy3mOTK2ZsoZ7/
	Mhvg==
X-Gm-Message-State: APjAAAUusJzQXe9BG3wSSNOVO2NaLpLLVdmDIJlPbZCbPapvyzz8r7qv
	xsd1mC6fqmMcKgNKWKokJxuc/GKR1UiQCVXwEbSP+C4o2RY=
X-Google-Smtp-Source: APXvYqy3hkccA9/MH9JXQZ80v/w9ol1XL1tNSF/2yvjdhxjsfkvoC7OTJ0IvMkt10CvR4gCSDUiZwGcb3GypRxG1zuc=
X-Received: by 2002:adf:cc8d:: with SMTP id p13mr22904600wrj.114.1558990186788;
	Mon, 27 May 2019 13:49:46 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 27 May 2019 22:49:34 +0200
Message-ID: <CAAfyv37hwLXMMXsu1Vbh-C5jLq+ETzHxL79m4Cq6h8_sJ9Kwgw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: gstreamer1.0-plugins-base meta-sunxi issue with custom virtual/egl or virtual/libgles2 on thud
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
X-List-Received-Date: Mon, 27 May 2019 20:49:48 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to compile image using libnice which have dependency on
gstreamer. Everything went fine but I get QA issues for plugins-base
like:

ERROR: gstreamer1.0-plugins-base-1.14.4-r0 do_package_qa: QA Issue:
/usr/lib/libgstgl-1.0.so.0.1404.0 contained in package libgstgl-1.0
requires libGLESv2.so, but no providers found in
RDEPENDS_libgstgl-1.0? [file-rdeps]
ERROR: gstreamer1.0-plugins-base-1.14.4-r0 do_package_qa: QA Issue:
/usr/lib/libgstgl-1.0.so.0.1404.0 contained in package libgstgl-1.0
requires libEGL.so, but no providers found in RDEPENDS_libgstgl-1.0?
[file-rdeps]
ERROR: gstreamer1.0-plugins-base-1.14.4-r0 do_package_qa: QA Issue:
/usr/lib/gstreamer-1.0/libgstopengl.so contained in package
gstreamer1.0-plugins-base-opengl requires libGLESv2.so, but no
providers found in RDEPENDS_gstreamer1.0-plugins-base-opengl?
[file-rdeps]
ERROR: gstreamer1.0-plugins-base-1.14.4-r0 do_package_qa: QA Issue:
/usr/lib/gstreamer-1.0/libgstopengl.so contained in package
gstreamer1.0-plugins-base-opengl requires libEGL.so, but no providers
found in RDEPENDS_gstreamer1.0-plugins-base-opengl? [file-rdeps]
ERROR: gstreamer1.0-plugins-base-1.14.4-r0 do_package_qa: QA run found
fatal errors. Please consider fixing them.
ERROR: gstreamer1.0-plugins-base-1.14.4-r0 do_package_qa: Function
failed: do_package_qa

meta-sunxi is using custom recipe which provide virtual/egl
virtual/libgles2 see:
https://github.com/linux-sunxi/meta-sunxi/blob/master/recipes-graphics/libgles/sunxi-mali_git.bb

also in configuration there is:
PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
PREFERRED_PROVIDER_virtual/libgles1 ?= "sunxi-mali"
PREFERRED_PROVIDER_virtual/libgles2 ?= "sunxi-mali"
PREFERRED_PROVIDER_virtual/egl ?= "sunxi-mali"
XSERVER += "sunxi-mali \
sunxi-mali-dev"
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "\
kernel-module-mali \
kernel-module-mali-drm \
"

which is fine. I was able to workaround this issue by adding bbappend
for plugins base with content:
RDEPENDS_libgstgl-1.0 += "sunxi-mali"
RDEPENDS_${PN}-opengl += "sunxi-mali"

and add RPROVIDES_${PN} = "libGLESv1_CM.so libGLESv2.so libEGL.so" to
sunxi-mali.bb recipe.

Above workaround is not nice because if someone update
PREFERRED_PROVIDER then gstreamer will be broken. Any ideas how to fix
properly this QA issue? Thanks.

BR,

marek


-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

