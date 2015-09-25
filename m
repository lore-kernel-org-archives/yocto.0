Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E119E00FBE; Fri, 25 Sep 2015 10:43:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65322E006CD
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 10:43:09 -0700 (PDT)
Received: by lacrr8 with SMTP id rr8so26988991lac.2
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 10:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=1nBk9iVRtFfBF2Tp75ZPNd001dUCjL7ju536iq1qCAw=;
	b=BOW6fyOoSG8TB7R0zjYW7MsazRgtc8ewL2fNk1rgH+SZnYJOSQOHbrvtJWEiKpNbVE
	Y9HvIpL0XO3EzpGn+cMUsBL90Z8edyISCLHg9iR8x/W341BjioDz85YERiHTJv+J1Bgb
	Pyn+wg5n3VBJuVn8C+IqD6ndAKWzdpF6/yD+dOoK41KxNSzRzjFTbKzjs7wObM9zB7Fs
	Qi3sBDOM3djBZIPrAoxPAXwhLoztDt2HqSfiqxChSrS5Wq3ejhfqHgPNjW4rSUskMT14
	SW5o5DUV5nQgU9MWYQajay3mwXH12SLKq59gbiV0fbDgQ03TWvu/Kab5KkMhMDbaPyM6
	AA7A==
MIME-Version: 1.0
X-Received: by 10.25.16.195 with SMTP id 64mr1331248lfq.39.1443202987492; Fri,
	25 Sep 2015 10:43:07 -0700 (PDT)
Received: by 10.114.245.38 with HTTP; Fri, 25 Sep 2015 10:43:07 -0700 (PDT)
In-Reply-To: <CAGMdoF=KwoU1NaQN4QHheh2O8rexgrCtXOMHU_APiPTqPKfhjg@mail.gmail.com>
References: <CAGMdoF=KwoU1NaQN4QHheh2O8rexgrCtXOMHU_APiPTqPKfhjg@mail.gmail.com>
Date: Fri, 25 Sep 2015 10:43:07 -0700
Message-ID: <CAGMdoFmZs5TEYnBJ9dajdPOecaA3y8HoKKGBaPPe21=5gj5CmQ@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: CONFIG_ENV_IS_IN_UBI not working nicely with CONFIG_SPI_FLASH_MTD
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
X-List-Received-Date: Fri, 25 Sep 2015 17:43:11 -0000
Content-Type: text/plain; charset=UTF-8

I'm sorry, I posted this to the wrong list. Meant to post to u-boot list.


On Fri, Sep 25, 2015 at 10:12 AM, Edward Wingate <edwingate8@gmail.com> wrote:
> I have been using u-boot with CONFIG_SPI_FLASH_MTD.  This has allowed
> me to use MTD/UBI/UBIFS with SPI flash.  I now want to use
> CONFIG_ENV_IS_IN_UBI, but after enabling this, u-boot can't read the
> environment on start-up:
>
> ===
> U-Boot 2015.07 (Sep 24 2015 - 17:10:41 -0700)
>
> Model: Zynq Zed Development Board
> I2C:   ready
> DRAM:  ECC disabled 512 MiB
> MMC:   zynq_sdhci: 0
> Device nor0 not found!
> Error initializing mtdparts!
>
> ** Cannot find mtd partition "uboot-env-itb"
> Using default environment
> ===
>
> "mtdparts" and "saveenv" do not work until after I do "sf probe".
>
> I'm using u-boot on a Zynq 7020 SoC.  Can someone help me with what sf
> probe-equivalent function call to make and where?  I'm guessing in
> board_init_f() or board_init_r()?
>
> Thanks for your help.

