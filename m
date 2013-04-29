Return-Path: <anders@chargestorm.se>
Received: from stoexhub03.domain01.net (STOEXHUB03.domain01.net
	[83.145.59.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A87CAE013DE
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 04:26:46 -0700 (PDT)
Received: from 2.71.145.217.mobile.tre.se (2.71.145.217) by
	stoexhub03.domain01.net (10.12.10.3) with Microsoft SMTP Server (TLS)
	id 8.3.279.1; Mon, 29 Apr 2013 13:26:42 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <CAAGt+t2_5LUQD9Rnq9B-_7ou1=_Wj+N6qq8o6-88uoSdVwWFVg@mail.gmail.com>
References: <CAAGt+t04eUOBF3ZXeGVGatFh3V-vB3GWJ+JNtiWtH49hYUTUFw@mail.gmail.com>
	<1419490.bYp03IPXpY@helios>
	<CAAGt+t3a8AR_+W4toh_xTgw8RYRtVMg12cZdAdAtZ74t2A_OuQ@mail.gmail.com>
	<1757782.s36vEYL6HR@helios>
	<CAAGt+t2_5LUQD9Rnq9B-_7ou1=_Wj+N6qq8o6-88uoSdVwWFVg@mail.gmail.com>
MIME-Version: 1.0
From: Anders Darander <anders@chargestorm.se>
Date: Mon, 29 Apr 2013 13:26:37 +0200
To: Zafrullah Syed <zafrullahmehdi@gmail.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Message-ID: <c46460b7-9c66-40f3-9a1c-1be602fb0172@email.android.com>
X-GFI-SMTP-Submission: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky: Bitbake nothing provides error
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
X-List-Received-Date: Mon, 29 Apr 2013 11:26:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit



Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:

>After setting MACHINE and adding the meta-gumstix and
>meta-gumstix-extras path to conf/bblayers.conf and when building again,
>i get the following:
>
>
>WARNING: gumstix-repo-task: task.bbclass is deprecated, please inherit
>packagegroup instead                                                   
>   | ETA:  00:00:30
>
>Parsing recipes: 100%
>|###########################################################################################################################|
>Time: 00:00:37
>
>Parsing of 889 .bb files complete (0 cached, 889 parsed). 1196 targets,
>44 skipped, 0 masked, 0 errors.
>
>ERROR: No recipes available for:
>
>/home/zaif/poky-danny-8.0/meta-gumstix/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.bbappend
>
>/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity/networkmanager/networkmanager_0.9.2.0.bbappend
>
>/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/systemd/systemd_git.bbappend
>
>/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-core/systemd/systemd_git.bbappend
>
>/home/zaif/poky-danny-8.0/meta-gumstix/recipes-xfce/libxfce4ui/libxfce4ui_4.8.1.bbappend
>
>/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/base-passwd/base-passwd_3.5.24.bbappend
>
>/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-connectivity/rfkill/rfkill_0.4.bbappend
>
>/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/netbase/netbase_4.47.bbappend
>
>/home/zaif/poky-danny-8.0/meta-gumstix-extras/recipes-support/vim/vim_7.2.446.bbappend
>
>/home/zaif/poky-danny-8.0/meta-gumstix/recipes-core/gawk/gawk_4.0.0.bbappend
>
>ERROR: Command execution failed: Exited with 1


These are applications whose versions have been upgraded in either OE-Core or meta-oe. Thus, you need to update the bbappends in meta-gumstix to match the current versions. 
Cheers, 
Anders 

>
>i hope i am not annoying you. Thank You for your time and patience.

-- 
Anders Darander
ChargeStorm AB          Tel: +46 702 44 84 36
Laxholmstorget 3        Email: anders@chargestorm.se
602 21 Norrköping       Web: www.chargestorm.se

Sent from my Android phone with K-9 Mail. Please excuse my brevity.

