Return-Path: <bob.feretich@rafresearch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 612F7E00BAA; Mon,  5 May 2014 16:52:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.39.62.45 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm14.access.bullet.mail.gq1.yahoo.com
	(nm14.access.bullet.mail.gq1.yahoo.com [216.39.62.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D447E00B7A
	for <yocto@yoctoproject.org>; Mon,  5 May 2014 16:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1399333936; bh=5DlhiijdJFBF1Ok46SyJiRbx0XHBLXAQYmqdbmJ5U/0=;
	h=Received:Received:Received:X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:X-Rocket-Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:Content-Type:Content-Transfer-Encoding;
	b=KifXmXMJXSQkrpMkq4Ih48vExTfZm+N5Z6BD2N+H6srLXRLX95LEl596UMp2s+hHhRWP57EDWeaa+QBuanArlS6iungmIXb6Oij9OGaSg0hTtySfacLOOWC3KHzs6T+sTpQGwqbhWTY4JKUzVL7/lvc1fXnuoMaHItyMYMZ1/CnKH123Sh+bGgR9hh8uxO+Q4epZX3N1TuG0fDh5cN5v92bUzTz0JBhQFTJUu9OmEQXcDQNu2iikY+bgYodA7UL1bKAXJxZGe7JCzNHGGS/2KEy5Iz06VRsxBkEpD1v+Z/Ydkeijeoq8fXuUcrmiFP9rQsi1YpD9hpo6aZ77RAjYeg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s2048; d=yahoo.com;
	b=NcUPC/nbi+jXexRApH/1vPZLTT6JdwnQr17FujNyiTbusUHinBcgMpUfGxKszebid+GN5Uu3p8XFd6bM8ONyBs1pqjS5H4KedvcAuwb6HX2c72X11oev3JAH0YKaonNXOj5ZKL+NcmkepumqCZBYyNqvoullv3OU+uau+L38bx2M+2OwZ2z/HJY1BgwK56QG+ox0TcKgH4VzSTfLZvgA8ANwRaO0/QAwX9iwDjIW1rjzub9uh/eJJYeNNIiYsEarESrwe0rqHrkysklx2X/ycwSUs3JKT41K1Ez8JAVdNNmsecOBx7WQ9zahpr87LH7S7HlYhBYpErA4mEBsX8OMRg==;
Received: from [216.39.60.172] by nm14.access.bullet.mail.gq1.yahoo.com with
	NNFMP; 05 May 2014 23:52:16 -0000
Received: from [98.138.104.97] by tm8.access.bullet.mail.gq1.yahoo.com with
	NNFMP; 05 May 2014 23:52:16 -0000
Received: from [127.0.0.1] by smtp117.sbc.mail.ne1.yahoo.com with NNFMP;
	05 May 2014 23:52:16 -0000
X-Yahoo-Newman-Id: 587181.36577.bm@smtp117.sbc.mail.ne1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: hViL1S0VM1nvX8e.jqqfgKnF18eERef3VfIWemA.P2FjzsL
	0T_3rXekENp5I00BR6LXewRmJLUbFhXFQcLS7KuOiNqyIB6Gq2EIV43nNPpK
	xSTrlRNDx5m89YaZAGYTv_N33DJ_8C1cZPFhAITcv13JYZENYQLYbnChY6v1
	jMxlRBp1QkVZiMC0IbFZN1ROj8GDq_lQNspWw92PFSSHoDCO6TFh3dwRd02U
	U95AaDWt6TiVQCHAkyZjifjjn3ozj6v6jHZsv9_cuRbIs9SJuyzrV5I_LGTV
	NiEge.fMTvMhS5mPkDqhDQcavBuw8DpOFC8e6uwgPnDNz6Sd7v6QDWM_CWIE
	FJzpRlI1PHkd6RJ4gncHpKrGywqWS2hTor9qPb7wop2X32Hj3itWuXAX51OO
	OH7LQRQj0ak5o.EKyHOB883uUPnaxpL6xmVGVKX.mzdgmgXALVpBdOLaYBA6
	nTyTmsT6qzbnOnXIGDUSqeXXSwNqI.XO1RAUDppxGFDUM6fPueQp7QufPEoA
	lAx6sozsPDUMc6Yi5nrrhSX8UyCEu6t1o2ybZDg--
X-Yahoo-SMTP: jHZ71LyswBA8vPppSFebFmPnYvk1gIPKrFjcBqA_GiVlfXPeew--
X-Rocket-Received: from [192.168.1.101] (bob.feretich@71.131.4.202 with plain
	[98.138.84.52]) by smtp117.sbc.mail.ne1.yahoo.com with SMTP;
	05 May 2014 23:52:16 +0000 UTC
Message-ID: <53682429.6070103@rafresearch.com>
Date: Mon, 05 May 2014 16:52:09 -0700
From: Bob Feretich <bob.feretich@rafresearch.com>
User-Agent: Mozilla/5.0 (Windows NT 6.0;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Definition of Yocto tasks
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
X-List-Received-Date: Mon, 05 May 2014 23:52:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Is there a document that provides a detailed definition of what each 
these tasks do?
Yocto, OE, and bitbake manuals tell us how to command a specific task to 
be run, but not what they do.

The task name provides a good hint sometimes, but often that is not 
enough. Users shouldn't have to read the python code for this 
information. These descriptions should be a part of the yocto manual.

Sections 5.3.4 to 5.3.11 of the Yocto mega-manual provide a good 
overview of some of these tasks in the context of a workflow, but 
doesn't mention most of these tasks and doesn't go into enough detail on 
the tasks it discusses.

It wouldn't be appropriate to add more detail at that point in the 
manual, but it would be appropriate to include details regarding all of 
the tasks in an appendix.

Examples...
The manual states that do_fetch fetches source, but doesn't state that 
when git is used whether it performs a pull, fetch, or clone. What are 
the common failure conditions of do_fetch? And what should the user do 
to fix the problem?

do_build is mentioned a few times, but there is no reference to it being 
the default task or what tasks are invoked by do_build and which are 
omitted.

do_rm_work and do_wm_work_all are not mentioned at all.

Result of listtasks:
do_fetchall
do_build
do_devshell
do_package_write_ipk
do_cleansstate
do_savedefconfig
do_uboot_mkimage
do_sizecheck
do_strip
do_packagedata_setscene
do_configure
do_clean
do_deploy_setscene
do_cleanall
do_populate_lic
do_populate_sysroot
do_devicetree_image
do_deploy
do_menuconfig
do_patch
do_bundle_initramfs
do_packagedata
do_listtasks
do_compile
do_package_setscene
do_populate_lic_setscene
do_fetch
do_checkuri
do_compile_kernelmodules
do_package_write_ipk_setscene
do_package_write
do_rm_work
do_package
do_unpack
do_install
do_checkuriall
do_populate_sysroot_setscene
do_rm_work_all

I don't have the knowledge to create such an appendix, but I volunteer 
to be a proofreader.

Regards,
Bob



