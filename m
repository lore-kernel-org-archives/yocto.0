Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9711E00E4E; Fri, 25 Sep 2015 10:12:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED91CE006F6
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 10:12:27 -0700 (PDT)
Received: by lacrr8 with SMTP id rr8so26159222lac.2
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 10:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=PELAJXmKxmCfQ98FmYNpxEsT9SjvNKzXcR9OLBg05Ns=;
	b=fQoPLwz3HP1OeWc0LKJt4Nscjf9ffKeOn9EPFU6oWTwoNiIJh+DeS7mE7jDHI9rH8+
	YEBy5k829FVBZcUWDJqD21PoLpZS/wgo2A/VwldC9JK4y3wId+Ff9wCL88hSNfxOdwkz
	M5wQ0k04bWgQLz5xiTfJSA5ZCMb/qCbWLcIvaIImFsVFUwdog5GSgrdpYOGJPKDVSrYN
	QYJ9DsWBHgKr4NdXXp5jxq5qL/s/e6d5WDvNMtttOKuTixZKtzBOWDxvTuXsK+nlfoSO
	atq+DPBsO3QEcdo5wyN6qzenzii2pnZB1griebc+o0jp0ShICDU19IS9UkeUrKhaM4HD
	F6IQ==
MIME-Version: 1.0
X-Received: by 10.25.154.5 with SMTP id c5mr1319260lfe.103.1443201145579; Fri,
	25 Sep 2015 10:12:25 -0700 (PDT)
Received: by 10.114.245.38 with HTTP; Fri, 25 Sep 2015 10:12:25 -0700 (PDT)
Date: Fri, 25 Sep 2015 10:12:25 -0700
Message-ID: <CAGMdoF=KwoU1NaQN4QHheh2O8rexgrCtXOMHU_APiPTqPKfhjg@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: yocto@yoctoproject.org
Subject: CONFIG_ENV_IS_IN_UBI not working nicely with CONFIG_SPI_FLASH_MTD
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
X-List-Received-Date: Fri, 25 Sep 2015 17:12:28 -0000
Content-Type: text/plain; charset=UTF-8

I have been using u-boot with CONFIG_SPI_FLASH_MTD.  This has allowed
me to use MTD/UBI/UBIFS with SPI flash.  I now want to use
CONFIG_ENV_IS_IN_UBI, but after enabling this, u-boot can't read the
environment on start-up:

===
U-Boot 2015.07 (Sep 24 2015 - 17:10:41 -0700)

Model: Zynq Zed Development Board
I2C:   ready
DRAM:  ECC disabled 512 MiB
MMC:   zynq_sdhci: 0
Device nor0 not found!
Error initializing mtdparts!

** Cannot find mtd partition "uboot-env-itb"
Using default environment
===

"mtdparts" and "saveenv" do not work until after I do "sf probe".

I'm using u-boot on a Zynq 7020 SoC.  Can someone help me with what sf
probe-equivalent function call to make and where?  I'm guessing in
board_init_f() or board_init_r()?

Thanks for your help.

