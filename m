Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA203E011DA; Fri, 20 Jul 2018 22:38:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammad.rasim96[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f44.google.com (mail-pl0-f44.google.com
	[209.85.160.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53E8EE00C1B
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2018 22:38:07 -0700 (PDT)
Received: by mail-pl0-f44.google.com with SMTP id m1-v6so1046863plt.6
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2018 22:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=arKi2JlrNve+EhqQ+qaRUksQo9/8ztRWka7dzqQ9zIs=;
	b=dJmWr7duvSs5DM6RZbD2QUchj+NPKkdjt3xZ83GqdNXMxz3SshEM4zGtIBvtem5CJ3
	D7p+64ib/+hJ0Wv4DOn+/4KMcm032ItgQxBDi8HtRPl7BoxHn9+fl/XhSgxcM5/FRHq/
	HoTk6RAfNTrguoAvIphEBEASxegLseaXbXFMJD7J+zC2mjQAeYRMJCujPW/UNujBcuOM
	BjcPlhdJK+QAYHQ5pKVzcE400Fe1F0yBaeVfixcFFjN5AvkYpPul1rujVk08Gc42ynVf
	y0cCK/FBkKjKHoMLay6vIqL6mcUDtLMHgEuRAaifZ2g2PScRY0kvO0o8wSGXOzTRF0aI
	rJ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=arKi2JlrNve+EhqQ+qaRUksQo9/8ztRWka7dzqQ9zIs=;
	b=ZgZRRs7akT36rV39s2BR4E757Ea4qSC56URaP3XL/6FHToGBFYVGyZ216EpDwmqZj5
	BRJTm7vH9v2v6BDPg/p/hzdiGAsXIit0Q7f3Iv6vvcTcKHSG9NpNyP/czUMx3W4xvd1g
	RtNmzrki/bcy9Z9oV6tTztQ/mhwiQ7uUbhH2tItJyXtHqOehi8lzj5wEQhKenxL0QmcE
	ka9aD1LoAogO9aQeQ+eNDqVCJv2ukxnUj6209/X5LTduk0bcekbUGtgmPYKonRTd4ct1
	kmC0Fd6Kh7V+KYSQ1tmUY1F9UPun3eJ3u7jky06mq4AdtDIiS/S7NHECzHpTyD35QcrK
	Kz2w==
X-Gm-Message-State: AOUpUlHPTBiVDXfD/PSQ7vAtvMFXnJGtWKA8TUxAIyeUhVKnmAHP7tEA
	VdgLzNvERnRJ2cWw1qNvDOkvLNOtAf8=
X-Google-Smtp-Source: AAOMgpck1z/JeE7P+hyDoztmslmAnVxlL2hTKU0gSx7LLGrqDFOFlDWFjfdcdE7KYpecLshYPWMR7w==
X-Received: by 2002:a17:902:2006:: with SMTP id
	n6-v6mr4609438pla.325.1532151486391; 
	Fri, 20 Jul 2018 22:38:06 -0700 (PDT)
Received: from [10.211.4.220] (fp76f115f6.knge107.ap.nuro.jp. [118.241.21.246])
	by smtp.gmail.com with ESMTPSA id
	d81-v6sm10192618pfj.122.2018.07.20.22.38.03
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 Jul 2018 22:38:05 -0700 (PDT)
To: yocto@yoctoproject.org
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Message-ID: <051ffcba-0255-4d93-e8f8-01993e967ef2@gmail.com>
Date: Sat, 21 Jul 2018 08:37:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
Subject: bitbake is corrupting my files during unpacking
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
X-List-Received-Date: Sat, 21 Jul 2018 05:38:08 -0000
Content-Type: multipart/alternative;
	boundary="------------F4EB4F311838F48FCD99D4FE"
Content-Language: en-US

--------------F4EB4F311838F48FCD99D4FE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

I'm new to openembedded and yocto. I'm using the openpli meta layers to 
build openembedded https://github.com/OpenPLi/openpli-oe-core

Now I'm trying to build a recipe for the kernel but I encountered a 
strange issue, bitbake is corrupting my source files when unpacking from 
zip file (http link of zip file) but not when using git to get the 
source the files are fine and not corrupted, the downloaded zip file 
itself is not corrupted and If I unzip it from the sources 
directory(outside bitbake environment) then the resulting files are not 
corrupted

The zip file I'm downloading 
https://github.com/PLi-metas/linux-amlogic/archive/amlogic-3.14-nougat.zip

examples of corruption I saw :

1- /drivers/w1/slaves/Kconfig (this file is converted to a broken 
symlink not to a path but to the content of the file itself, see:

file 
build/tmp/work-shared/k2pro_s905/kernel-source/drivers/w1/slaves/Kconfig
build/tmp/work-shared/k2pro_s905/kernel-source/drivers/w1/slaves/Kconfig: 
broken symbolic link to #\012# 1-wire slaves 
configuration\012#\012\012menu "1-wire Slaves"\012\012config 
W1_SLAVE_THERM\012\011tristate "Thermal family 
implementation"\012\011help\012\011  Say Y here if you want to connect 
1-wire thermal sensors to your\012\011 wire.\012\012config 
W1_SLAVE_SMEM\012\011tristate "Simple 64bit memory family 
implementation"\012\011help\012\011  Say Y here if you want to connect 
1-wire\012\011  simple 64bit memory rom(ds2401/ds2411/ds1990*) to your 
wire.\012\012config W1_SLAVE_DS2408\012\011tristate "8-Channel 
Addressable Switch (IO Expander) 0x29 family support 
(DS2408)"\012\011help\012\011 Say Y here if you want to use a 
1-wire\012\011  DS2408 8-Channel Addressable Switch device 
support\012\012config W1_SLAVE_DS2408_READBACK\012\011bool "Read-back 
values written to DS2408's output register"\012\011depends on 
W1_SLAVE_DS2408\012\011default y\012\011help\012\011  Enabling this will 
cause the driver to read back the values written\012\011  to the chip's 
output register in order to detect errors.\012\012\011  This is slower 
but useful when debugging chips and/or busses.\012\012config 
W1_SLAVE_DS2413\012\011tristate "Dual Channel Addressable Switch 0x3a 
family support (DS2413)"\012\011help\012\011  Say Y here if you want to 
use a 1-wire\012\011  DS2413 Dual Channel Addressable Switch device 
support\012\012config W1_SLAVE_DS2423\012\011tristate "Counter 1-wire 
device (DS2423)"\012\011select CRC16\012\011help\012\011  If you enable 
this you can read the counter values available\012\011  in the DS2423 
chipset from the w1_slave file under the\012\011  sys file 
system.\012\012\011  Say Y here if you want to use a 1-wire\012\011  
counter family device (DS2423).\012\012config 
W1_SLAVE_DS2431\012\011tristate "1kb EEPROM family support 
(DS2431)"\012\011help\012\011  Say Y here if you want to use a 
1-wire\012\011  1kb EEPROM family device (DS2431)\012\012config 
W1_SLAVE_DS2433\012\011tristate "4kb EEPROM family support 
(DS2433)"\012\011help\012\011  Say Y here if you want to use a 
1-wire\012\011  4kb EEPROM family device (DS2433).\012\012config 
W1_SLAVE_DS2433_CRC\012\011bool "Protect DS2433 data with a 
CRC16"\012\011depends on W1_SLAVE_DS2433\012\011select 
CRC16\012\011help\012\011  Say Y here to protect DS2433 data with a 
CRC16.\012\011  Each block has 30 bytes of data and a two byte 
CRC16.\012\011  Full block writes are only allowed if the CRC is 
valid.\012\012config W1_SLAVE_DS2760\012\011tristate "Dallas 2760 
battery monitor chip (HP iPAQ & others)"\012\011depends on 
W1\012\011help\012\011  If you enable this you will have the DS2760 
battery monitor\012\011  chip support.\012\012\011  The battery monitor 
chip is used in many batteries/devices\012\011  as the one who is 
responsible for charging/discharging/monitoring\012\011  Li+ 
batteries.\012\012\011  If you are unsure, say N.\012\012config 
W1_SLAVE_DS2780\012\011tristate "Dallas 2780 battery monitor 
chip"\012\011depends on W1\012\011help\012\011  If you enable this you 
will have the DS2780 battery monitor\012\011  chip support.\012\012\011  
The battery monitor chip is used in many batteries/devices\012\011  as 
the one who is responsible for charging/discharging/monitoring\012\011  
Li+ batteries.\012\012\011  If you are unsure, say N.\012\012config 
W1_SLAVE_DS2781\012\011tristate "Dallas 2781 battery monitor 
chip"\012\011depends on W1\012\011help\012\011  If you enable this you 
will have the DS2781 battery monitor\012\011  chip support.\012\012\011  
The battery monitor chip is used in many batteries/devices\012\011  as 
the one who is responsible for charging/discharging/monitoring\012\011  
Li+ batteries.\012\012\011  If you are unsure, say N.\012\012config 
W1_SLAVE_DS28E04\012\011tristate "4096-Bit Addressable 1-Wire EEPROM 
with PIO (DS28E04-100)"\012\011depends on W1\012\011select 
CRC16\012\011help\012\011  If you enable this you will have the 
DS28E04-100\012\011  chip support.\012\012\011  Say Y here if you want 
to use a 1-wire\012\011  4kb EEPROM with PIO family device 
(DS28E04).\012\012\011  If you are unsure, say N.\012\012config 
W1_SLAVE_BQ27000\012\011tristate "BQ27000 slave support"\012\011depends 
on W1\012\011help\012\011  Say Y here if you want to use a hdq\012\011  
bq27000 slave support.\012\012endmenu\012

2- /linux-amlogic-amlogic-3.14-nougat/security/keys/request_key_auth.c 
(this file is not extracted)



--------------F4EB4F311838F48FCD99D4FE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi,</p>
    <p>I'm new to openembedded and yocto. I'm using the openpli meta
      layers to build openembedded
      <a class="moz-txt-link-freetext" href="https://github.com/OpenPLi/openpli-oe-core">https://github.com/OpenPLi/openpli-oe-core</a></p>
    <p>Now I'm trying to build a recipe for the kernel but I encountered
      a strange issue, bitbake is corrupting my source files when
      unpacking from zip file (http link of zip file) but not when using
      git to get the source the files are fine and not corrupted, the
      downloaded zip file itself is not corrupted and If I unzip it from
      the sources directory(outside bitbake environment) then the
      resulting files are not corrupted <br>
    </p>
    <p>The zip file I'm downloading
<a class="moz-txt-link-freetext" href="https://github.com/PLi-metas/linux-amlogic/archive/amlogic-3.14-nougat.zip">https://github.com/PLi-metas/linux-amlogic/archive/amlogic-3.14-nougat.zip</a></p>
    <p>examples of corruption I saw :</p>
    <p>1- /drivers/w1/slaves/Kconfig (this file is converted to a broken
      symlink not to a path but to the content of the file itself, see:</p>
    <p><samp>file 
        build/tmp/work-shared/k2pro_s905/kernel-source/drivers/w1/slaves/Kconfig
      </samp><samp><br>
      </samp><samp>build/tmp/work-shared/k2pro_s905/kernel-source/drivers/w1/slaves/Kconfig:
        broken symbolic link to #\012# 1-wire slaves
        configuration\012#\012\012menu "1-wire Slaves"\012\012config
        W1_SLAVE_THERM\012\011tristate "Thermal family
        implementation"\012\011help\012\011  Say Y here if you want to
        connect 1-wire thermal sensors to your\012\011 
        wire.\012\012config W1_SLAVE_SMEM\012\011tristate "Simple 64bit
        memory family implementation"\012\011help\012\011  Say Y here if
        you want to connect 1-wire\012\011  simple 64bit memory
        rom(ds2401/ds2411/ds1990*) to your wire.\012\012config
        W1_SLAVE_DS2408\012\011tristate "8-Channel Addressable Switch
        (IO Expander) 0x29 family support (DS2408)"\012\011help\012\011 
        Say Y here if you want to use a 1-wire\012\011  DS2408 8-Channel
        Addressable Switch device support\012\012config
        W1_SLAVE_DS2408_READBACK\012\011bool "Read-back values written
        to DS2408's output register"\012\011depends on
        W1_SLAVE_DS2408\012\011default y\012\011help\012\011  Enabling
        this will cause the driver to read back the values
        written\012\011  to the chip's output register in order to
        detect errors.\012\012\011  This is slower but useful when
        debugging chips and/or busses.\012\012config
        W1_SLAVE_DS2413\012\011tristate "Dual Channel Addressable Switch
        0x3a family support (DS2413)"\012\011help\012\011  Say Y here if
        you want to use a 1-wire\012\011  DS2413 Dual Channel
        Addressable Switch device support\012\012config
        W1_SLAVE_DS2423\012\011tristate "Counter 1-wire device
        (DS2423)"\012\011select CRC16\012\011help\012\011  If you enable
        this you can read the counter values available\012\011  in the
        DS2423 chipset from the w1_slave file under the\012\011  sys
        file system.\012\012\011  Say Y here if you want to use a
        1-wire\012\011  counter family device (DS2423).\012\012config
        W1_SLAVE_DS2431\012\011tristate "1kb EEPROM family support
        (DS2431)"\012\011help\012\011  Say Y here if you want to use a
        1-wire\012\011  1kb EEPROM family device (DS2431)\012\012config
        W1_SLAVE_DS2433\012\011tristate "4kb EEPROM family support
        (DS2433)"\012\011help\012\011  Say Y here if you want to use a
        1-wire\012\011  4kb EEPROM family device (DS2433).\012\012config
        W1_SLAVE_DS2433_CRC\012\011bool "Protect DS2433 data with a
        CRC16"\012\011depends on W1_SLAVE_DS2433\012\011select
        CRC16\012\011help\012\011  Say Y here to protect DS2433 data
        with a CRC16.\012\011  Each block has 30 bytes of data and a two
        byte CRC16.\012\011  Full block writes are only allowed if the
        CRC is valid.\012\012config W1_SLAVE_DS2760\012\011tristate
        "Dallas 2760 battery monitor chip (HP iPAQ &amp;
        others)"\012\011depends on W1\012\011help\012\011  If you enable
        this you will have the DS2760 battery monitor\012\011  chip
        support.\012\012\011  The battery monitor chip is used in many
        batteries/devices\012\011  as the one who is responsible for
        charging/discharging/monitoring\012\011  Li+
        batteries.\012\012\011  If you are unsure, say N.\012\012config
        W1_SLAVE_DS2780\012\011tristate "Dallas 2780 battery monitor
        chip"\012\011depends on W1\012\011help\012\011  If you enable
        this you will have the DS2780 battery monitor\012\011  chip
        support.\012\012\011  The battery monitor chip is used in many
        batteries/devices\012\011  as the one who is responsible for
        charging/discharging/monitoring\012\011  Li+
        batteries.\012\012\011  If you are unsure, say N.\012\012config
        W1_SLAVE_DS2781\012\011tristate "Dallas 2781 battery monitor
        chip"\012\011depends on W1\012\011help\012\011  If you enable
        this you will have the DS2781 battery monitor\012\011  chip
        support.\012\012\011  The battery monitor chip is used in many
        batteries/devices\012\011  as the one who is responsible for
        charging/discharging/monitoring\012\011  Li+
        batteries.\012\012\011  If you are unsure, say N.\012\012config
        W1_SLAVE_DS28E04\012\011tristate "4096-Bit Addressable 1-Wire
        EEPROM with PIO (DS28E04-100)"\012\011depends on
        W1\012\011select CRC16\012\011help\012\011  If you enable this
        you will have the DS28E04-100\012\011  chip
        support.\012\012\011  Say Y here if you want to use a
        1-wire\012\011  4kb EEPROM with PIO family device
        (DS28E04).\012\012\011  If you are unsure, say N.\012\012config
        W1_SLAVE_BQ27000\012\011tristate "BQ27000 slave
        support"\012\011depends on W1\012\011help\012\011  Say Y here if
        you want to use a hdq\012\011  bq27000 slave
        support.\012\012endmenu\012</samp><br>
    </p>
    <p>2-
      /linux-amlogic-amlogic-3.14-nougat/security/keys/request_key_auth.c
      (this file is not extracted)<br>
    </p>
    <p><br>
    </p>
  </body>
</html>

--------------F4EB4F311838F48FCD99D4FE--
