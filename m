Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD5DDE0082E; Wed, 25 Jan 2017 00:53:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E925E007EB
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2017 00:53:29 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 564B768A01C; Wed, 25 Jan 2017 08:53:28 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id F2D6068A019;
	Wed, 25 Jan 2017 08:53:27 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id AC31867401D0;
	Wed, 25 Jan 2017 09:53:27 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <32082733-57cb-09fd-3d28-d95a313b87e6@mlbassoc.com>
Date: Wed, 25 Jan 2017 09:53:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
Subject: More new messages
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
X-List-Received-Date: Wed, 25 Jan 2017 08:53:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Seems updating to the latest master has brought a lot of new messages.
I'm seeing lots like these:

WARNING: libsndfile1-1.0.27-r0 do_package: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?
WARNING: pulseaudio-9.0-r0 do_prepare_recipe_sysroot: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?
WARNING: sbc-1.3-r0 do_prepare_recipe_sysroot: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?
WARNING: sbc-1.3-r0 do_install: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?
WARNING: pulseaudio-9.0-r0 do_install: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?
WARNING: pulseaudio-9.0-r0 do_populate_sysroot: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?
WARNING: sbc-1.3-r0 do_populate_sysroot: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?
WARNING: pulseaudio-9.0-r0 do_package: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?
WARNING: libsamplerate0-0.1.9-r1 do_prepare_recipe_sysroot: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?
WARNING: libsamplerate0-0.1.9-r1 do_install: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?
WARNING: sbc-1.3-r0 do_package: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?
WARNING: libsamplerate0-0.1.9-r1 do_package: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?
WARNING: libsamplerate0-0.1.9-r1 do_populate_sysroot: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?
WARNING: libass-0.13.2-r0 do_configure: QA Issue: libass: configure was passed unrecognised options: --enable-enca 
[unknown-configure-option]
WARNING: imx-alsa-plugins-1.0.26-r0 do_prepare_recipe_sysroot: Manifest 
/build/p0382_2016-01-13/tmp/sstate-control/manifest-allarch-alsa-lib.populate_sysroot not found?

Any ideas?  Perhaps this has something to do with having a very
old (constantly updated, never removed since 2016-01-13) sstate-cache?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

