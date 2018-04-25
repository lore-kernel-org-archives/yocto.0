Return-Path: <mirza@mkrak.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3622CE00B57; Wed, 25 Apr 2018 01:59:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B3B0E00B01
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:59:30 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id 126-v6so20214639oig.0
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mkrak-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=B4T0mT6TWO1BEGE330pP9n8ZsMWc1dAKTajQqTlE3rA=;
	b=WuzjrZqcL5Je4pPYU8ZL6NKfieU03xDi2yF6kaObC9zfFw6Z1ya4Byb76Grr8ocIuH
	FhBIfXSOw6Wuo4hL1tMCylj2tvAJnClPeP8Fw8eX8LzuNzfLiAvbMMjJEE+Lb4CzQA0J
	jJd5GpUP6ZX4SaSxwzkajboujhy+/ed0WdCG/maQ/PFFkuub+xTetsYwPyUbR6QWsXK+
	XPL9YYlyuBvZZz2j+8VVabo7s9PK8eWw98xVTg0XcI440aZ7NPSz8YTfOTSxU8i7q+W8
	pqTDyf4NTg9NUGI87UWUXKaAeNqDqno3Jwf/xefmVtRvXNTgw+hmBG4/Cct7YGlxxXJA
	JJPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=B4T0mT6TWO1BEGE330pP9n8ZsMWc1dAKTajQqTlE3rA=;
	b=DgL+qTsuEWPYHCO4HjoOxbkoEJKFJdwxuCmYBwY6XZZvMIK/4vlGY9ocOQaTBW2m8v
	RNVKCaveuYAO7zypIQuPTbHigR1FtpX0H5wq05czf2S0m2EdW8aClHJ4cw0klu/3vSAU
	MGQPLT9W+wqecKDVB8PSU5+JWBTxsXjfpxl06U/PN8dMk5wlmsDz481GNaVUnOSI1I/f
	jQJuNpD685yANJf/TIhPIsA5raPB2XKU2P7xexRs+a2nfWiJJAZwFVIsqkxNLp/WQNeX
	hKceYl6fRymdmOvF8unpjQaj4tH1buKabhxFKSKiSb6CXtLhsjynSMGmv6DC/qNSu1On
	9yHw==
X-Gm-Message-State: ALQs6tDbrLuKON4QQoH5B3sspQ5YgWBzFrofhXGhlLvAInjQ9yLbrrpQ
	pUvf5WJDRxmWWady+U82cCR2Bqjn448=
X-Google-Smtp-Source: AIpwx484fx4RzSD4tWjos9T3Kxi/OVEAKF2yc8FVUF1lLO8B1Bu+PU3MdGkWkYv6MptTorB5xBFFTw==
X-Received: by 2002:aca:f447:: with SMTP id
	s68-v6mr18280593oih.204.1524646769395; 
	Wed, 25 Apr 2018 01:59:29 -0700 (PDT)
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com.
	[209.85.218.43]) by smtp.gmail.com with ESMTPSA id
	h1-v6sm9735600otg.21.2018.04.25.01.59.28 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 25 Apr 2018 01:59:29 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id b130-v6so1395780oif.12
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 01:59:28 -0700 (PDT)
X-Received: by 2002:aca:538b:: with SMTP id
	h133-v6mr2930173oib.252.1524646768733; 
	Wed, 25 Apr 2018 01:59:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:20e9:0:0:0:0:0 with HTTP; Wed, 25 Apr 2018 01:59:28
	-0700 (PDT)
In-Reply-To: <CAJTo0LZYNa9GpBNcLuoWtNaO98wRzaVZjhH+oz+UNire3A6z5A@mail.gmail.com>
References: <CALw8SCWhMWJuQGDDbaG3fA617Qew9GvAapc+JvVU6d+9DoOafw@mail.gmail.com>
	<CAJTo0LZYNa9GpBNcLuoWtNaO98wRzaVZjhH+oz+UNire3A6z5A@mail.gmail.com>
From: Mirza Krak <mirza@mkrak.org>
Date: Wed, 25 Apr 2018 10:59:28 +0200
X-Gmail-Original-Message-ID: <CALw8SCUwmhBh3Os0a5G_CDmW=8+G1JD9_1vaKHtECBofWY6Y4Q@mail.gmail.com>
Message-ID: <CALw8SCUwmhBh3Os0a5G_CDmW=8+G1JD9_1vaKHtECBofWY6Y4Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gcc not found
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
X-List-Received-Date: Wed, 25 Apr 2018 08:59:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 25 April 2018 at 10:39, Burton, Ross <ross.burton@intel.com> wrote:
> Is the build tree deleted after it fails?  It would be interesting to
> see if the compiler is present in the sysroot, or if it has a
> different name, or something else weird.

Isn't it weird that it does not have a log for "prepare_recipe_sysroot?

Below log is from when the build actually passed, but still I do not
see the "prepare_recipe_sysroot" log which I can find in other
recipes.

brcm-patchram-plus/0.1-r0/temp$ ls
log.do_compile log.do_populate_lic   run.do_devshell.171
run.do_qa_unpack.22258    run.package_fixsymlinks.4292
run.sstate_hardcode_path_unpack.22353
log.do_compile.1451 log.do_populate_lic.22353   run.do_install
run.do_terminal.171    run.package_get_auto_pr.4292
run.sstate_hardcode_path_unpack.4151
log.do_compile.22289 log.do_populate_sysroot   run.do_install.4121
run.do_unpack    run.package_name_hook.4292
run.sstate_sign_package.22353
log.do_configure log.do_populate_sysroot.4151   run.do_package
run.do_unpack.22258    run.patch_do_patch.22269
run.sstate_sign_package.4151
log.do_configure.22278 log.task_order   run.do_package.4292
run.extend_recipe_sysroot.171    run.perform_packagecopy.4292
run.sstate_task_postfunc.22353
log.do_devshell run.base_do_unpack.22258   run.do_patch
run.extend_recipe_sysroot.22269    run.populate_lic_qa_checksum.22353
run.sstate_task_postfunc.4151
log.do_devshell.171 run.debian_package_name_hook.4292
run.do_patch.22269 run.extend_recipe_sysroot.4121
run.populate_packages.4292 run.sstate_task_prefunc.22353
log.do_install run.do_compile   run.do_populate_lic
run.extend_recipe_sysroot.4151     run.remove_libtool_la.4121
run.sstate_task_prefunc.4151
log.do_install.4121 run.do_compile.1451   run.do_populate_lic.22353
run.extend_recipe_sysroot.4292     run.split_and_strip_files.4292
run.sstate_task_prefunc.4292
log.do_package run.do_compile.22289   run.do_populate_sysroot
run.fixup_perms.4292    run.sstate_create_package.22353
run.sysroot_stage_all.4151
log.do_package.4292 run.do_configure   run.do_populate_sysroot.4151
run.package_do_filedeps.4292    run.sstate_create_package.4151
run.sysroot_strip.4151
log.do_patch run.do_configure.22278   run.do_qa_configure.22278
run.package_do_shlibs.4292    run.sstate_hardcode_path.22353
run.uninative_changeinterp.22353
log.do_patch.22269 run.do_devshell   run.do_qa_staging.4151
run.package_do_split_locales.4292  run.sstate_hardcode_path.4151
run.uninative_changeinterp.4151

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak
email: mirza@mkrak.org
web: https://mkrak.org

