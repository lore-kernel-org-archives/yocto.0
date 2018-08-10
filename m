Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92C50E00AD1; Fri, 10 Aug 2018 04:04:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BE91E00708
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 04:03:59 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id v8-v6so15100673oie.5
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 04:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fo+ndcHHIXLXql2hpPHYBPwRyGjvEnne/JcWy8wj3Cc=;
	b=lTgyvepT7WEsNdQv1k2gEdD1uc6TIImAqHzsQQMm9eQkV3A0wIRd28ynSFoy3tynEG
	gesrL5+jBR4bAAHAVYF7t90fxrHDWziQBj3m2yflbGXe5oTj1cFu+vGpz03rb/V92BSA
	Cj6Dsi96aHJqxI8JpoS6MVPbTGgUltrPn118ITCh6b9Lejl19s5sMPsCWr7M1lRZEWPA
	J3cmsf7eiNPaXJDfMQ4YT3AIGnqe/1/XqzGreswPmHZ7fr50wULYXQ1OA+vOV5XNJDcj
	ucywvgrIUWc6aUs91qbTHiWZd8NZPno1Erw9s8ueR2Q7d/YOw7ios2eMwlNqq924AWaY
	kl9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fo+ndcHHIXLXql2hpPHYBPwRyGjvEnne/JcWy8wj3Cc=;
	b=NBYo9DbLwUhFBMMWmY9xyK6YRNGX1jE/FAAvfl7CTH2MxclYNlL7K8fjgDXy3rfTTd
	6VuykNlfHwislv0RPfIUYqLETMtj08pHjOzNZXB6tLD1XWJR/t5Ca2h2w4G7o1WFW1W9
	1CHaRmgt7IA5khnxD7NQpYnhMRte55D0j8L8Zc1ZOnFlgCEjcoO19GLdZLQm5vuZlejO
	nTHmqXRtsECv3Tn3luweBhxJWvON6tkJ+rvbhnHneGvP+AMVQsZjlzJR/hiyHqOBvxdD
	aOfIE574LSCssxazCGg9mCTdqC69QJhm85TUg1GUR/CUdtmmzf2NbJeh9cFYswP34N+W
	Wbvg==
X-Gm-Message-State: AOUpUlE0jeGR9kYnq+xRaRPIDzU7FZnwTpR5XGmRgb+3H9FSUFdXS84V
	Nj9OexyS99NLV6QBudETBQ11S48Y41wiz5+UqY8=
X-Google-Smtp-Source: AA+uWPy2fk8vsmkCS50dY1NjHLecwcf04VrBlMVRmT4g6L6JAwd5VTUtMRuYpaeN24H2vC5v8GqYshlE08vNYUx6gpc=
X-Received: by 2002:aca:4782:: with SMTP id
	u124-v6mr6407106oia.45.1533899039143; 
	Fri, 10 Aug 2018 04:03:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Fri, 10 Aug 2018 04:03:58
	-0700 (PDT)
In-Reply-To: <CA+-BmJZsJa_iBOaAAeYmGwOiR68sdpAwuo26fms7qCMFEWwrXg@mail.gmail.com>
References: <CA+-BmJZsJa_iBOaAAeYmGwOiR68sdpAwuo26fms7qCMFEWwrXg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 10 Aug 2018 13:03:58 +0200
Message-ID: <CANNYZj9HS9GfaZQNJbYVKva6tL-m_gLoNouR88CNvDRP6Utmtw@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@googlemail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Annoying taskhash error
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
X-List-Received-Date: Fri, 10 Aug 2018 11:04:02 -0000
Content-Type: text/plain; charset="UTF-8"

My apologies, but do not use $DATETIME in your version strings. It's a
seriously bad idea that goes against Yocto's philosophy - that
everything that goes into a build is deterministic and does not change
on the fly. Instead, define and update the date and time statically
through config files. If you need the exact, current timestamp in
specific places (e.g. image or kernel names), place it there, and only
there, with aprropriate vardepsexclude qualifiers.

Alex

2018-08-10 10:27 GMT+02:00 Ayoub Zaki <ayoub.zaki@googlemail.com>:
> Hello list,
>
> I'm building a custom yocto distro based on sumo, in my distro config I have
> defined :
>
> DISTRO = "paos"
> DISTRO_NAME = "PAOS"
> DISTRO_VERSION = "V00.00.00.00+${DATETIME}"
> DISTRO_CODENAME = "sumo"
> SDK_VENDOR = "-paossdk"
> SDK_VERSION = "${DATETIME}"
>
> Taskhash errors are related of using DATETIME variable, I fixed that error
> when building my image by appending some package .e.g os-release with:
>
> DISTRO_VERSION[vardepsexclude] += "DATETIME"
>
> But when build the toolchains I get a lot of those error message:
>
> zaki@xps:/opt/PAOS/paos/build$ MACHINE=n03 bitbake meta-toolchain
> NOTE: Started PRServer with DBfile:
> /opt/PAOS/paos/build/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 44549, PID:
> 27158
> Loading cache: 100%
> |##############################################################################################################################################################################################|
> Time: 0:00:00
> Loaded 2924 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           = "1.38.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal"
> TARGET_SYS           = "i686-poky-linux"
> MACHINE              = "n03"
> DISTRO               = "paos"
> DISTRO_VERSION       = "V00.00.00.00+20180810081758"
> TUNE_FEATURES        = "m32 core2"
> TARGET_FPU           = ""
> meta
> meta-poky
> meta-yocto-bsp       = "sumo:90f7edb32ac2500d93bb7ca5045a9d048f551223"
> meta-intel           = "sumo:2430f73ee06f3315ebebe69899f1977f9a09e29f"
> meta-oe
> meta-networking
> meta-webserver
> meta-python          = "sumo:b0950aeff5b630256bb5e25ca15f4d59c115e7c1"
> meta-paos            = "sumo:868e997207973e36b0c234d0fc15feb95bd43691"
>
> Initialising tasks: 100%
> |#########################################################################################################################################################################################|
> Time: 0:00:01
> NOTE: Executing SetScene Tasks
> ERROR: When reparsing
> /opt/PAOS/paos/meta/recipes-core/meta/meta-environment.bb.do_install, the
> basehash value changed from 24111597162d38fd390e841e6f56dc4d to
> 4a106097d4026a13c8c4cd044d3205ea. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> /opt/PAOS/paos/meta/recipes-core/meta/meta-environment.bb.do_build, the
> basehash value changed from 5c43aed4a9092b482bb1752bf2bc6c77 to
> f1826637a34672b54af7df5c386ef23e. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> /opt/PAOS/paos/meta/recipes-core/meta/meta-environment.bb.do_rm_work_all,
> the basehash value changed from feebb25773dc03b1cf6db636d5214969 to
> 2f1459ba52df671e203ee4eebf329c1b. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> /opt/PAOS/paos/meta/recipes-core/meta/meta-environment.bb.do_rm_work, the
> basehash value changed from 2439e6e4307fc4e8fa3b16ae176465a7 to
> 0ed9ab83e5f072e8de213cc9173fc3f1. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> /opt/PAOS/paos/meta/recipes-core/meta/meta-environment.bb.do_package_qa, the
> basehash value changed from f0986c1a9ed77a7a02f5a1701ad6555c to
> 703b85ffb48341ac9448cdc09b21972c. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> /opt/PAOS/paos/meta/recipes-core/meta/meta-environment.bb.do_package, the
> basehash value changed from 8dfee62341c210c1491f7a55bfdf1599 to
> 7bf74359937329f35f45dc323df3838f. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> /opt/PAOS/paos/meta/recipes-core/meta/meta-environment.bb.do_packagedata,
> the basehash value changed from 82d302910ea05592c02cef9345ea03c5 to
> d81e3172b19508fa700d9c0ddd5189a3. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> /opt/PAOS/paos/meta/recipes-core/meta/meta-environment.bb.do_generate_content,
> the basehash value changed from 94851fe026f63ca9177435dd95bc9892 to
> f81e1185488d59cf32b16c1dee2a9ae8. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-devtools/gnu-config/gnu-config_git.bb.do_populate_sysroot,
> the basehash value changed from 4d246741a8c07f0e9b360e483e057849 to
> 94f49989601e38100e28ec723a0847a3. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-devtools/gnu-config/gnu-config_git.bb.do_configure,
> the basehash value changed from 750ef62f4d7030ec7dfd01036b384d54 to
> 2213a251819b1c2ad91a825814e1caf0. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-devtools/gnu-config/gnu-config_git.bb.do_compile,
> the basehash value changed from 9023398d142227c1d855ffb017cdd21d to
> ec8fa059f32a68ee55206d3b58dd4487. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-devtools/gnu-config/gnu-config_git.bb.do_install,
> the basehash value changed from b766be0d41cd5cb9c45f0504f42bfda9 to
> bcdfa81b39dcc55794444e84eb07b67d. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-devtools/gnu-config/gnu-config_git.bb.do_build,
> the basehash value changed from db140c141cc4d11a21a9057fa8c0b0f0 to
> 90dbba8f922b62820fb0e379c079fbd4. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-devtools/gnu-config/gnu-config_git.bb.do_rm_work_all,
> the basehash value changed from 0fe92f9dfb9a24784576ae683657ca34 to
> d2d6384f5a603cab56745bfb555bb385. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-devtools/gnu-config/gnu-config_git.bb.do_rm_work,
> the basehash value changed from da1110507f0df550eb3bb419d17d5ea8 to
> beb119b2bfa0ec2c1bbd1587244baa62. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-devtools/gnu-config/gnu-config_git.bb.do_package_qa,
> the basehash value changed from 7a2ac3bc23bc6c8b51700f6d3434b276 to
> 0802663d5ed4dcaa08f17fbde2add72c. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-devtools/gnu-config/gnu-config_git.bb.do_package,
> the basehash value changed from d5ee703c00a95926656c1e92f72a27eb to
> 2342eb874dd6278113dcdaf2866fd264. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-devtools/gnu-config/gnu-config_git.bb.do_packagedata,
> the basehash value changed from 9ba02607d7a0ebf8fb0cef77f86a32a9 to
> a2fa606869d9eca7fefbc9a8f9037f68. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.15.7.bb.do_populate_sysroot,
> the basehash value changed from f1897b91201f8314eabc3c11e158926c to
> ef45ec72632e2a528cf758081412b12f. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.15.7.bb.do_configure,
> the basehash value changed from 627616f63c954834a55e8536f7ce0cd5 to
> d2e0aa1d672ebbfaac794ddc45104101. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.15.7.bb.do_compile,
> the basehash value changed from d24ffb3066a3d3aed23501decd31dc4f to
> da538e5090eb6620cb5ad9d5654dea4e. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.15.7.bb.do_install,
> the basehash value changed from 485c1a15106a48a29fc0d6fadcd454d4 to
> f19d1e91e9274722d684eeb26f9dfe83. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.15.7.bb.do_build,
> the basehash value changed from ddb96f47de75ec889213bfa334eeaebd to
> 792b649700b287543fcf658865d5b991. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.15.7.bb.do_rm_work_all,
> the basehash value changed from d49791f1ef543cd062270cf67340268c to
> 98ea1610fd6f16cd2d7e23d9205edacc. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.15.7.bb.do_rm_work,
> the basehash value changed from d8339329c38b637a350dfff3ad93aa67 to
> 9ceac1585027f1432791c145074807f9. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.15.7.bb.do_package_qa,
> the basehash value changed from 2b6dc651d9a9e2c7710488917223f8d6 to
> d6f7e56b6fb08a484f5302ad5edb96be. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.15.7.bb.do_package,
> the basehash value changed from 57e5ac5d9a520d2fbf4ee1a3f37aa474 to
> 181352a6f7b78c49b760865802f9bb8a. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_4.15.7.bb.do_packagedata,
> the basehash value changed from 9fa802b321642f1a6d15bc7167224c1b to
> 9a34b6bf6bcb7ae828352072d1fe5e23. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc_2.27.bb.do_patch,
> the basehash value changed from ae07ee7f8b5dca028be037e4b059b0b6 to
> b08a067f579600cfbee60bf46432e4f1. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc_2.27.bb.do_populate_sysroot,
> the basehash value changed from 90ea7efb016c53b45cb58f6bace8e915 to
> 25634f175892d60aebe3c8ca811fb3da. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc_2.27.bb.do_configure,
> the basehash value changed from a7d194bf516d5b0484632ac7d4dddfd6 to
> 320f6ce0d2f857ab9c3229a3c7e1b013. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc_2.27.bb.do_compile,
> the basehash value changed from 8abef9e03a8082434a165c6bc5b0d675 to
> 9c2194b2eff43cad5e0e80300537f3ee. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc_2.27.bb.do_install,
> the basehash value changed from b8c31be9302e12f0dec06538991451bf to
> 63224dbb79d850dbcb873f0791674cb1. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc_2.27.bb.do_build,
> the basehash value changed from f358c1665842ca8dd4493052ef698366 to
> 96182917489340e7be94e6294c6b4c5e. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc_2.27.bb.do_rm_work_all,
> the basehash value changed from b98d50a532a26a3668dd78a79ef192fa to
> b5441e1f3cb6a55fc72dddbb9d92e19d. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc_2.27.bb.do_rm_work,
> the basehash value changed from 1847e8771992825a7548759c8b91174e to
> ba6a1cca02c76daa39c34f973e3ac842. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc_2.27.bb.do_package_qa,
> the basehash value changed from 5080555d05b746bb862b42a384fff761 to
> 4029a4ba102e359032d1e413c898e417. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc_2.27.bb.do_package,
> the basehash value changed from 5da1e0f1c4dcf80cdfd48174d45cf979 to
> 4b97597fe322a5978c2c51d2555e1652. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc_2.27.bb.do_packagedata,
> the basehash value changed from 876339efed4eb6fbdbd882ce1aeb3e33 to
> 3901ef6b72d6923a382b5c79e01f99a5. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc_2.27.bb.do_stash_locale,
> the basehash value changed from a6a3e5201c3839674e68c4289b4a311a to
> d3a90e1943b738bac85f20a6983f893f. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc_2.27.bb.do_poststash_install_cleanup,
> the basehash value changed from 0516d86103ea58861063c07f5ee04392 to
> 8473c30bb9d96c5bddc36e8aacc49888. The metadata is not deterministic and this
> needs to be fixed.
> NOTE: Executing RunQueue Tasks
> ERROR: When reparsing
> /opt/PAOS/paos/meta/recipes-devtools/gcc/gcc-crosssdk_7.3.bb.do_configure,
> the basehash value changed from 9c393389bdb7a2d1bc120c467f44bbbf to
> 640b012f8c18f1e9d7f5f41bd9bbd84d. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> /opt/PAOS/paos/meta/recipes-devtools/gcc/gcc-crosssdk_7.3.bb.do_install, the
> basehash value changed from 9d517e60a8b16a7e26027a235d547639 to
> 1d63fc4d1b2c87f6ef8af4a2e4d3c6b9. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc-locale_2.27.bb.do_populate_sysroot,
> the basehash value changed from 1071e2c283a5e87cc9ed4cf3a1764432 to
> c0e9778b4560e15b002a0300518fe554. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc-locale_2.27.bb.do_configure,
> the basehash value changed from 48b3afa072d1255e852493030c6c83b9 to
> 281fabf44e38786fad13aaec34fa0823. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc-locale_2.27.bb.do_compile,
> the basehash value changed from 9023398d142227c1d855ffb017cdd21d to
> ec8fa059f32a68ee55206d3b58dd4487. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc-locale_2.27.bb.do_install,
> the basehash value changed from 903f9f651ae88a926627448fb9808a3a to
> ee47f5a1b63a6937a75a22bd044367ac. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc-locale_2.27.bb.do_build,
> the basehash value changed from db140c141cc4d11a21a9057fa8c0b0f0 to
> 90dbba8f922b62820fb0e379c079fbd4. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc- I get
> anlocale_2.27.bb.do_rm_work_all, the basehash value changed from
> 0fe92f9dfb9a24784576ae683657ca34 to d2d6384f5a603cab56745bfb555bb385. The
> metadata is not deterministic and this needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc-locale_2.27.bb.do_rm_work,
> the basehash value changed from 8cff5aab0dd05add6d3f7c7adde96817 to
> 00bc42bf606e8171282e143776298ce1. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc-locale_2.27.bb.do_package_qa,
> the basehash value changed from 503dd828b437d8a91645f99184579c30 to
> df3ce5f0bc452b2a78c6a1e55ebc6834. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc-locale_2.27.bb.do_package,
> the basehash value changed from 0968f67d6a3c757e3f55684eb3fcf988 to
> da38066f2b5643802180507ac5b449d4. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> virtual:nativesdk:/opt/PAOS/paos/meta/recipes-core/glibc/glibc-locale_2.27.bb.do_packagedata,
> the basehash value changed from 23ab09293fa5ea20b760ceeb23f8fd98 to
> 17c88d87cfba1b634105677e663b0054. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> /opt/PAOS/paos/meta/recipes-devtools/gcc/gcc-crosssdk_7.3.bb.do_configure,
> the basehash value changed from 9c393389bdb7a2d1bc120c467f44bbbf to
> 640b012f8c18f1e9d7f5f41bd9bbd84d. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: When reparsing
> /opt/PAOS/paos/meta/recipes-devtools/gcc/gcc-crosssdk_7.3.bb.do_install, the
> basehash value changed from 9d517e60a8b16a7e26027a235d547639 to
> 1d63fc4d1b2c87f6ef8af4a2e4d3c6b9. The metadata is not deterministic and this
> needs to be fixed.
> Currently  2 running tasks (2073 of 3249)  63%
> |################################################################################################################
> |
> 0: nativesdk-glibc-locale-2.27-r0 do_package_write_ipk - 113s (pid 27821)
> 1: gcc-crosssdk-x86_64-paossdk-linux-7.3.0-r0 do_gcc_stash_builddir - 2s
> (pid 27714)
>
>
> Is there anyway to fix this kind of errors ?
>
>
> Best reagards
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

