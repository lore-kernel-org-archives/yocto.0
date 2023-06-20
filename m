Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37F37EB64DB
	for <webhook@archiver.kernel.org>; Tue, 20 Jun 2023 08:01:55 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web11.5354.1687248110223168117
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jun 2023 01:01:50 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=ohZ+T5So;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-970028cfb6cso700301066b.1
        for <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 01:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687248108; x=1689840108;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/OxfYEikilYwlt3Etur6dKZ79IiJzrvSrCpuJFwZXx0=;
        b=ohZ+T5So69HnSUb1t5EX5hib0xlg9Y3Xo5S82GbYTEZ8L9HV78jNticd+Hu3IeVl7X
         8vPk+NP54AtwF7QL+H6+iIDXGdpo7Y6P5UAn8stYEJqgmTdzgO5bZIdPaVu9WE0uWjFY
         deK+gx/w8uKkR5/ZiIngsQrqZ5XPAGmMk0cQzIYcnDQlmwo6hkXaLz9iGdhvHPbj4mLR
         YTFzed+1ZXIsh6k/ISSphOnYWgdUkndbU+WVXKkM0TS7qvbZX9bPoRalvQeSeGPkndI9
         Nc76ErZr1TMu1WKRZBKPnb/f/FZVI4mDcSKU/vFWOzO7pKs34aLMJ8EuP3L/cyMDPaLF
         Qa1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687248108; x=1689840108;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/OxfYEikilYwlt3Etur6dKZ79IiJzrvSrCpuJFwZXx0=;
        b=J+kwepykSoqSZLCBiDnPQfeLPAxtkNlhzLh4aNcOtD+7tu3KShaPg0RKSsu707Deid
         KvDGNcF+aA64Zm2NaGmXxpkiI5BiSt0CnN2kzWL1beYFeVzAhlUaMadoba5xVWnFtkWW
         L/QRvf1IzeN+f9/8o5PFwUuRDjSj6fLfUCkGQDSsiIr+JtiNGYEBbvgwJ3XsGL49Rl5p
         TpwM8jxgmjIt0S7EgFiEE+IRUKEQO68KTIcVlKIv0SkjG5QxKxdkcSsEahOPvS7RgRX/
         d/r1P/qZpGjHkHZmDGoFIQFjc6eWxEa55HhfwPVhrZzHX4L917AvkMlPUQSCA9bkIpWG
         7hag==
X-Gm-Message-State: AC+VfDwqSvu7tglue8QCljYqFJu5O7nYBvumbFWd7s0ZSXLasKyOgQ2K
	7PlLYerJgBRsJcbySQxzi4kJ47Ahrgl4y+qWPfibr4+E0VxZzg==
X-Google-Smtp-Source: ACHHUZ72WzJmXf7JSYIOx191LSvds0FVhCuWko5OgzLXWqov0vEGmCZCqnzIwoNowJaxDdMKmHFw2V/1AhWJeXlp6kg=
X-Received: by 2002:a17:906:14ca:b0:974:62bc:33d5 with SMTP id
 y10-20020a17090614ca00b0097462bc33d5mr9053371ejc.20.1687248107089; Tue, 20
 Jun 2023 01:01:47 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Tue, 20 Jun 2023 13:31:35 +0530
Message-ID: <CAPJWBnjNrBkxJTL9QAsVZBzF4seT-EijBhA2LwC3KjqswPh2Kw@mail.gmail.com>
Subject: Out of tree driver file compilation error
To: yocto@lists.yoctoproject.org
Content-Type: multipart/mixed; boundary="00000000000012819c05fe8b108a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jun 2023 08:01:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60356

--00000000000012819c05fe8b108a
Content-Type: multipart/alternative; boundary="00000000000012819a05fe8b1088"

--00000000000012819a05fe8b1088
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I am trying to load TI bq2429x drivers into my yocto image. I face errors
when at the do_compile stage. At first glance it looks to be a c program
cross compilation error. I think the issue is due to not being able to link
with the header files.
The error I see on my screen.
ERROR: bq2429x-charger-0.1-r0 do_compile: oe_runmake failed
ERROR: bq2429x-charger-0.1-r0 do_compile: Execution of
'/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/temp/run.do_compile.322928'
failed with exit code 1
ERROR: Logfile of failure stored in:
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/temp/log.do_compile.322928
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4
KERNEL_SRC=/home/mohan/amlogic/build/tmp/work-shared/mesons4-lib32-ap222/kernel-source
KERNEL_PATH=/home/mohan/amlogic/build/tmp/work-shared/mesons4-lib32-ap222/kernel-source
KERNEL_VERSION=5.4.180-amlogic CC=aarch64-poky-linux-gcc   -fuse-ld=bfd
-fdebug-prefix-map=/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0=/usr/src/debug/bq2429x-charger/0.1-r0

-fdebug-prefix-map=/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/recipe-sysroot=

-fdebug-prefix-map=/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/recipe-sysroot-native=

 -fdebug-prefix-map=/home/mohan/amlogic/build/tmp/work-shared/mesons4-lib32-ap222/kernel-source=/usr/src/kernel
LD=aarch64-poky-linux-ld.bfd   AR=aarch64-poky-linux-ar
 O=/home/mohan/amlogic/build/tmp/work-shared/mesons4-lib32-ap222/kernel-build-artifacts
KBUILD_EXTRA_SYMBOLS=
| make -C
/home/mohan/amlogic/build/tmp/work-shared/mesons4-lib32-ap222/kernel-source
M=/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0
| make[1]: Entering directory '/home/mohan/amlogic/aml-comp/kernel/aml-5.4'
| make[2]: Entering directory
'/home/mohan/amlogic/build/tmp/work-shared/mesons4-lib32-ap222/kernel-build-artifacts'
|   AR
 /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/built-in.a
|   CC [M]
 /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.o
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:37:
error: "BQ2429X_OTG_ENABLE" redefined [-Werror]
|    37 | #define BQ2429X_OTG_ENABLE  0x00
|       |
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:36:
note: this is the location of the previous definition
|    36 | #define BQ2429X_OTG_ENABLE  0x01
|       |
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:
In function 'bq2429x_disable_otg':
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:317:14:
error: 'BQ2429X_OTG_DISABLE' undeclared (first use in this function); did
you mean 'BQ2429X_WD_DISABLE'?
|   317 |     u8 val = BQ2429X_OTG_DISABLE << BQ2429x_OTG_SHIFT;
|       |              ^~~~~~~~~~~~~~~~~~~
|       |              BQ2429X_WD_DISABLE
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:317:14:
note: each undeclared identifier is reported only once for each function it
appears in
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:317:37:
error: 'BQ2429x_OTG_SHIFT' undeclared (first use in this function); did you
mean 'BQ2429X_OTG_SHIFT'?
|   317 |     u8 val = BQ2429X_OTG_DISABLE << BQ2429x_OTG_SHIFT;
|       |                                     ^~~~~~~~~~~~~~~~~
|       |                                     BQ2429X_OTG_SHIFT
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:
At top level:
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:323:63:
error: function declaration isn't a prototype [-Werror=strict-prototypes]
|   323 | static int bq2429x_set_chargecurrent(struct bq2429x *bq, enum
bq2429x_charge_current current)
|       |
^~~~~~~~~~~~~~~~~~~~~~
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:
In function 'bq2429x_set_chargevoltage':
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:349:6:
error: unused variable 'ret' [-Werror=unused-variable]
|   349 |  int ret;
|       |      ^~~
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:
In function 'bq2429x_set_input_volt_limit':
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:373:6:
error: unused variable 'ret' [-Werror=unused-variable]
|   373 |  int ret;
|       |      ^~~
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:
At top level:
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:393:69:
error: function declaration isn't a prototype [-Werror=strict-prototypes]
|   393 | static int bq2429x_set_input_current_limit(struct bq2429x *bq,
enum bq2429x_input_current_limit current)
|       |
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:
In function 'bq2429x_set_input_current_limit':
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:397:6:
error: unused variable 'ret' [-Werror=unused-variable]
|   397 |  int ret;
|       |      ^~~
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:
In function 'bq2429x_psy_register':
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:478:9:
error: 'struct power_supply' has no member named 'name'
|   478 |  bq->usb.name = "bq2429x-usb";
|       |         ^
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:479:9:
error: 'struct power_supply' has no member named 'type'
|   479 |  bq->usb.type = POWER_SUPPLY_TYPE_USB;
|       |         ^
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:480:9:
error: 'struct power_supply' has no member named 'properties'
|   480 |  bq->usb.properties = bq2429x_charger_props;
|       |         ^
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:481:9:
error: 'struct power_supply' has no member named 'num_properties'
|   481 |  bq->usb.num_properties = ARRAY_SIZE(bq2429x_charger_props);
|       |         ^
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:482:9:
error: 'struct power_supply' has no member named 'get_property'
|   482 |  bq->usb.get_property = bq2429x_usb_get_property;
|       |         ^
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:483:9:
error: 'struct power_supply' has no member named 'external_power_changed'
|   483 |  bq->usb.external_power_changed = NULL;
|       |         ^
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:485:39:
error: passing argument 2 of 'power_supply_register' from incompatible
pointer type [-Werror=incompatible-pointer-types]
|   485 |  ret = power_supply_register(bq->dev, &bq->usb);
|       |                                       ^~~~~~~~
|       |                                       |
|       |                                       struct power_supply *
| In file included from
/home/mohan/amlogic/aml-comp/kernel/aml-5.4/include/linux/i2c/bq2429x.h:20,
|                  from
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:17:
|
/home/mohan/amlogic/aml-comp/kernel/aml-5.4/include/linux/power_supply.h:451:1:
note: expected 'const struct power_supply_desc *' but argument is of type
'struct power_supply *'
|   451 | power_supply_register(struct device *parent,
|       | ^~~~~~~~~~~~~~~~~~~~~
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:485:8:
error: too few arguments to function 'power_supply_register'
|   485 |  ret = power_supply_register(bq->dev, &bq->usb);
|       |        ^~~~~~~~~~~~~~~~~~~~~
| In file included from
/home/mohan/amlogic/aml-comp/kernel/aml-5.4/include/linux/i2c/bq2429x.h:20,
|                  from
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:17:
|
/home/mohan/amlogic/aml-comp/kernel/aml-5.4/include/linux/power_supply.h:451:1:
note: declared here
|   451 | power_supply_register(struct device *parent,
|       | ^~~~~~~~~~~~~~~~~~~~~
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:491:10:
error: 'struct power_supply' has no member named 'name'
|   491 |  bq->wall.name = "bq2429x-wall";
|       |          ^
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:492:10:
error: 'struct power_supply' has no member named 'type'
|   492 |  bq->wall.type = POWER_SUPPLY_TYPE_MAINS;
|       |          ^
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:493:10:
error: 'struct power_supply' has no member named 'properties'
|   493 |  bq->wall.properties = bq2429x_charger_props;
|       |          ^
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:494:10:
error: 'struct power_supply' has no member named 'num_properties'
|   494 |  bq->wall.num_properties = ARRAY_SIZE(bq2429x_charger_props);
|       |          ^
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:495:10:
error: 'struct power_supply' has no member named 'get_property'
|   495 |  bq->wall.get_property = bq2429x_wall_get_property;
|       |          ^
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:496:10:
error: 'struct power_supply' has no member named 'external_power_changed'
|   496 |  bq->wall.external_power_changed = NULL;
|       |          ^
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:498:39:
error: passing argument 2 of 'power_supply_register' from incompatible
pointer type [-Werror=incompatible-pointer-types]
|   498 |  ret = power_supply_register(bq->dev, &bq->wall);
|       |                                       ^~~~~~~~~
|       |                                       |
|       |                                       struct power_supply *
| In file included from
/home/mohan/amlogic/aml-comp/kernel/aml-5.4/include/linux/i2c/bq2429x.h:20,
|                  from
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:17:
|
/home/mohan/amlogic/aml-comp/kernel/aml-5.4/include/linux/power_supply.h:451:1:
note: expected 'const struct power_supply_desc *' but argument is of type
'struct power_supply *'
|   451 | power_supply_register(struct device *parent,
|       | ^~~~~~~~~~~~~~~~~~~~~
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:498:8:
error: too few arguments to function 'power_supply_register'
|   498 |  ret = power_supply_register(bq->dev, &bq->wall);
|       |        ^~~~~~~~~~~~~~~~~~~~~
| In file included from
/home/mohan/amlogic/aml-comp/kernel/aml-5.4/include/linux/i2c/bq2429x.h:20,
|                  from
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:17:
|
/home/mohan/amlogic/aml-comp/kernel/aml-5.4/include/linux/power_supply.h:451:1:
note: declared here
|   451 | power_supply_register(struct device *parent,
|       | ^~~~~~~~~~~~~~~~~~~~~
| At top level:
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:393:12:
error: 'bq2429x_set_input_current_limit' defined but not used
[-Werror=unused-function]
|   393 | static int bq2429x_set_input_current_limit(struct bq2429x *bq,
enum bq2429x_input_current_limit current)
|       |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:369:12:
error: 'bq2429x_set_input_volt_limit' defined but not used
[-Werror=unused-function]
|   369 | static int bq2429x_set_input_volt_limit(struct bq2429x *bq, enum
bq2429x_input_voltage_limit volt)
|       |            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:345:12:
error: 'bq2429x_set_chargevoltage' defined but not used
[-Werror=unused-function]
|   345 | static int bq2429x_set_chargevoltage(struct bq2429x *bq, enum
bq2429x_charge_voltage_limit volt)
|       |            ^~~~~~~~~~~~~~~~~~~~~~~~~
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:323:12:
error: 'bq2429x_set_chargecurrent' defined but not used
[-Werror=unused-function]
|   323 | static int bq2429x_set_chargecurrent(struct bq2429x *bq, enum
bq2429x_charge_current current)
|       |            ^~~~~~~~~~~~~~~~~~~~~~~~~
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:315:12:
error: 'bq2429x_disable_otg' defined but not used [-Werror=unused-function]
|   315 | static int bq2429x_disable_otg(struct bq2429x *bq)
|       |            ^~~~~~~~~~~~~~~~~~~
|
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:306:12:
error: 'bq2429x_enable_otg' defined but not used [-Werror=unused-function]
|   306 | static int bq2429x_enable_otg(struct bq2429x *bq)
|       |            ^~~~~~~~~~~~~~~~~~
| cc1: all warnings being treated as errors
| make[3]: ***
[/home/mohan/amlogic/aml-comp/kernel/aml-5.4/scripts/Makefile.build:284:
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.o]
Error 1
| ERROR: oe_runmake failed
| make[2]: *** [/home/mohan/amlogic/aml-comp/kernel/aml-5.4/Makefile:1857:
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0]
Error 2
| make[2]: Leaving directory
'/home/mohan/amlogic/build/tmp/work-shared/mesons4-lib32-ap222/kernel-build-artifacts'
| make[1]: *** [Makefile:179: sub-make] Error 2
| make[1]: Leaving directory '/home/mohan/amlogic/aml-comp/kernel/aml-5.4'
| make: *** [Makefile:7: all] Error 2
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of
'/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/temp/run.do_compile.322928'
failed with exit code 1
ERROR: Task
(/home/mohan/amlogic/meta-meson/recipes-kernel/bq2429x_charger/bq2429x-charger_0.1.bb:do_compile)
failed with exit code '1'

I have attached the drivers files I got from the vendor and also the
log.do_compile file.

Thanks
Hassan

--00000000000012819a05fe8b1088
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<br><div>I am trying to load TI bq2429x drivers in=
to my yocto image. I face errors when at the do_compile stage. At first gla=
nce it looks to be a c program cross=C2=A0compilation error. I think the is=
sue is due to not being able to link with the header files.</div><div>The e=
rror I see on my screen.</div><div>ERROR: bq2429x-charger-0.1-r0 do_compile=
: oe_runmake failed<br>ERROR: bq2429x-charger-0.1-r0 do_compile: Execution =
of &#39;/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/b=
q2429x-charger/0.1-r0/temp/run.do_compile.322928&#39; failed with exit code=
 1<br>ERROR: Logfile of failure stored in: /home/mohan/amlogic/build/tmp/wo=
rk/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/temp/log.do_compil=
e.322928<br>Log data follows:<br>| DEBUG: Executing shell function do_compi=
le<br>| NOTE: make -j 4 KERNEL_SRC=3D/home/mohan/amlogic/build/tmp/work-sha=
red/mesons4-lib32-ap222/kernel-source KERNEL_PATH=3D/home/mohan/amlogic/bui=
ld/tmp/work-shared/mesons4-lib32-ap222/kernel-source KERNEL_VERSION=3D5.4.1=
80-amlogic CC=3Daarch64-poky-linux-gcc =C2=A0 -fuse-ld=3Dbfd -fdebug-prefix=
-map=3D/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq=
2429x-charger/0.1-r0=3D/usr/src/debug/bq2429x-charger/0.1-r0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -fdebug-prefix-map=
=3D/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429=
x-charger/0.1-r0/recipe-sysroot=3D =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -fdebug-prefix-map=3D/home/mohan/amlogic/bu=
ild/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/recipe-s=
ysroot-native=3D =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/mohan/amlogic/build/tmp/work=
-shared/mesons4-lib32-ap222/kernel-source=3D/usr/src/kernel LD=3Daarch64-po=
ky-linux-ld.bfd =C2=A0 AR=3Daarch64-poky-linux-ar =C2=A0O=3D/home/mohan/aml=
ogic/build/tmp/work-shared/mesons4-lib32-ap222/kernel-build-artifacts KBUIL=
D_EXTRA_SYMBOLS=3D<br>| make -C /home/mohan/amlogic/build/tmp/work-shared/m=
esons4-lib32-ap222/kernel-source M=3D/home/mohan/amlogic/build/tmp/work/mes=
ons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0<br>| make[1]: Entering d=
irectory &#39;/home/mohan/amlogic/aml-comp/kernel/aml-5.4&#39;<br>| make[2]=
: Entering directory &#39;/home/mohan/amlogic/build/tmp/work-shared/mesons4=
-lib32-ap222/kernel-build-artifacts&#39;<br>| =C2=A0 AR =C2=A0 =C2=A0 =C2=
=A0/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429=
x-charger/0.1-r0/built-in.a<br>| =C2=A0 CC [M] =C2=A0/home/mohan/amlogic/bu=
ild/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_=
charger.o<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-=
linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:37: error: &quot;BQ2429X_OTG=
_ENABLE&quot; redefined [-Werror]<br>| =C2=A0 =C2=A037 | #define BQ2429X_OT=
G_ENABLE =C2=A00x00<br>| =C2=A0 =C2=A0 =C2=A0 |<br>| /home/mohan/amlogic/bu=
ild/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_=
charger.c:36: note: this is the location of the previous definition<br>| =
=C2=A0 =C2=A036 | #define BQ2429X_OTG_ENABLE =C2=A00x01<br>| =C2=A0 =C2=A0 =
=C2=A0 |<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-l=
inux/bq2429x-charger/0.1-r0/bq2429x_charger.c: In function &#39;bq2429x_dis=
able_otg&#39;:<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-=
poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:317:14: error: &#39;BQ2=
429X_OTG_DISABLE&#39; undeclared (first use in this function); did you mean=
 &#39;BQ2429X_WD_DISABLE&#39;?<br>| =C2=A0 317 | =C2=A0 =C2=A0 u8 val =3D B=
Q2429X_OTG_DISABLE &lt;&lt; BQ2429x_OTG_SHIFT;<br>| =C2=A0 =C2=A0 =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~<br>| =
=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BQ24=
29X_WD_DISABLE<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-=
poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:317:14: note: each unde=
clared identifier is reported only once for each function it appears in<br>=
| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x=
-charger/0.1-r0/bq2429x_charger.c:317:37: error: &#39;BQ2429x_OTG_SHIFT&#39=
; undeclared (first use in this function); did you mean &#39;BQ2429X_OTG_SH=
IFT&#39;?<br>| =C2=A0 317 | =C2=A0 =C2=A0 u8 val =3D BQ2429X_OTG_DISABLE &l=
t;&lt; BQ2429x_OTG_SHIFT;<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~~~~~<br>| =C2=A0 =C2=A0 =C2=A0=
 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 BQ2429X_OTG_SHIFT<b=
r>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq242=
9x-charger/0.1-r0/bq2429x_charger.c: At top level:<br>| /home/mohan/amlogic=
/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq242=
9x_charger.c:323:63: error: function declaration isn&#39;t a prototype [-We=
rror=3Dstrict-prototypes]<br>| =C2=A0 323 | static int bq2429x_set_chargecu=
rrent(struct bq2429x *bq, enum bq2429x_charge_current current)<br>| =C2=A0 =
=C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ^~~~~~~~~~~~~~~~~~~~~~<br>| /home/mohan/amlogic/build/tmp/work/m=
esons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c: In =
function &#39;bq2429x_set_chargevoltage&#39;:<br>| /home/mohan/amlogic/buil=
d/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_ch=
arger.c:349:6: error: unused variable &#39;ret&#39; [-Werror=3Dunused-varia=
ble]<br>| =C2=A0 349 | =C2=A0int ret;<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0^~~<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap22=
2-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c: In function &#39;bq2=
429x_set_input_volt_limit&#39;:<br>| /home/mohan/amlogic/build/tmp/work/mes=
ons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:373:6:=
 error: unused variable &#39;ret&#39; [-Werror=3Dunused-variable]<br>| =C2=
=A0 373 | =C2=A0int ret;<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0^~=
~<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq=
2429x-charger/0.1-r0/bq2429x_charger.c: At top level:<br>| /home/mohan/amlo=
gic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq=
2429x_charger.c:393:69: error: function declaration isn&#39;t a prototype [=
-Werror=3Dstrict-prototypes]<br>| =C2=A0 393 | static int bq2429x_set_input=
_current_limit(struct bq2429x *bq, enum bq2429x_input_current_limit current=
)<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~~~~~~~~~~~~~~~<b=
r>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq242=
9x-charger/0.1-r0/bq2429x_charger.c: In function &#39;bq2429x_set_input_cur=
rent_limit&#39;:<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap22=
2-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:397:6: error: unused =
variable &#39;ret&#39; [-Werror=3Dunused-variable]<br>| =C2=A0 397 | =C2=A0=
int ret;<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0^~~<br>| /home/moh=
an/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.=
1-r0/bq2429x_charger.c: In function &#39;bq2429x_psy_register&#39;:<br>| /h=
ome/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-cha=
rger/0.1-r0/bq2429x_charger.c:478:9: error: &#39;struct power_supply&#39; h=
as no member named &#39;name&#39;<br>| =C2=A0 478 | =C2=A0bq-&gt;<a href=3D=
"http://usb.name">usb.name</a> =3D &quot;bq2429x-usb&quot;;<br>| =C2=A0 =C2=
=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>| /home/mohan/amlogic/build/t=
mp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charg=
er.c:479:9: error: &#39;struct power_supply&#39; has no member named &#39;t=
ype&#39;<br>| =C2=A0 479 | =C2=A0bq-&gt;usb.type =3D POWER_SUPPLY_TYPE_USB;=
<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>| /home/mohan=
/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-=
r0/bq2429x_charger.c:480:9: error: &#39;struct power_supply&#39; has no mem=
ber named &#39;properties&#39;<br>| =C2=A0 480 | =C2=A0bq-&gt;usb.propertie=
s =3D bq2429x_charger_props;<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ^<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-po=
ky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:481:9: error: &#39;struct=
 power_supply&#39; has no member named &#39;num_properties&#39;<br>| =C2=A0=
 481 | =C2=A0bq-&gt;usb.num_properties =3D ARRAY_SIZE(bq2429x_charger_props=
);<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>| /home/moh=
an/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.=
1-r0/bq2429x_charger.c:482:9: error: &#39;struct power_supply&#39; has no m=
ember named &#39;get_property&#39;<br>| =C2=A0 482 | =C2=A0bq-&gt;usb.get_p=
roperty =3D bq2429x_usb_get_property;<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ^<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib3=
2_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:483:9: error: &=
#39;struct power_supply&#39; has no member named &#39;external_power_change=
d&#39;<br>| =C2=A0 483 | =C2=A0bq-&gt;usb.external_power_changed =3D NULL;<=
br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>| /home/mohan/=
amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r=
0/bq2429x_charger.c:485:39: error: passing argument 2 of &#39;power_supply_=
register&#39; from incompatible pointer type [-Werror=3Dincompatible-pointe=
r-types]<br>| =C2=A0 485 | =C2=A0ret =3D power_supply_register(bq-&gt;dev, =
&amp;bq-&gt;usb);<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>| =C2=A0 =C2=A0 =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct p=
ower_supply *<br>| In file included from /home/mohan/amlogic/aml-comp/kerne=
l/aml-5.4/include/linux/i2c/bq2429x.h:20,<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/mohan/amlogic/build/tmp/work/m=
esons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:17:<=
br>| /home/mohan/amlogic/aml-comp/kernel/aml-5.4/include/linux/power_supply=
.h:451:1: note: expected &#39;const struct power_supply_desc *&#39; but arg=
ument is of type &#39;struct power_supply *&#39;<br>| =C2=A0 451 | power_su=
pply_register(struct device *parent,<br>| =C2=A0 =C2=A0 =C2=A0 | ^~~~~~~~~~=
~~~~~~~~~~~<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-pok=
y-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:485:8: error: too few argu=
ments to function &#39;power_supply_register&#39;<br>| =C2=A0 485 | =C2=A0r=
et =3D power_supply_register(bq-&gt;dev, &amp;bq-&gt;usb);<br>| =C2=A0 =C2=
=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~~~<br>| In file =
included from /home/mohan/amlogic/aml-comp/kernel/aml-5.4/include/linux/i2c=
/bq2429x.h:20,<br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0from /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-lin=
ux/bq2429x-charger/0.1-r0/bq2429x_charger.c:17:<br>| /home/mohan/amlogic/am=
l-comp/kernel/aml-5.4/include/linux/power_supply.h:451:1: note: declared he=
re<br>| =C2=A0 451 | power_supply_register(struct device *parent,<br>| =C2=
=A0 =C2=A0 =C2=A0 | ^~~~~~~~~~~~~~~~~~~~~<br>| /home/mohan/amlogic/build/tm=
p/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charge=
r.c:491:10: error: &#39;struct power_supply&#39; has no member named &#39;n=
ame&#39;<br>| =C2=A0 491 | =C2=A0bq-&gt;<a href=3D"http://wall.name">wall.n=
ame</a> =3D &quot;bq2429x-wall&quot;;<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>| /home/mohan/amlogic/build/tmp/work/mesons=
4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:492:10: e=
rror: &#39;struct power_supply&#39; has no member named &#39;type&#39;<br>|=
 =C2=A0 492 | =C2=A0bq-&gt;wall.type =3D POWER_SUPPLY_TYPE_MAINS;<br>| =C2=
=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>| /home/mohan/am=
logic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/=
bq2429x_charger.c:493:10: error: &#39;struct power_supply&#39; has no membe=
r named &#39;properties&#39;<br>| =C2=A0 493 | =C2=A0bq-&gt;wall.properties=
 =3D bq2429x_charger_props;<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0^<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap=
222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:494:10: error: &#39=
;struct power_supply&#39; has no member named &#39;num_properties&#39;<br>|=
 =C2=A0 494 | =C2=A0bq-&gt;wall.num_properties =3D ARRAY_SIZE(bq2429x_charg=
er_props);<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<=
br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq24=
29x-charger/0.1-r0/bq2429x_charger.c:495:10: error: &#39;struct power_suppl=
y&#39; has no member named &#39;get_property&#39;<br>| =C2=A0 495 | =C2=A0b=
q-&gt;wall.get_property =3D bq2429x_wall_get_property;<br>| =C2=A0 =C2=A0 =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>| /home/mohan/amlogic/build=
/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_cha=
rger.c:496:10: error: &#39;struct power_supply&#39; has no member named &#3=
9;external_power_changed&#39;<br>| =C2=A0 496 | =C2=A0bq-&gt;wall.external_=
power_changed =3D NULL;<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0^<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-=
poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:498:39: error: passing =
argument 2 of &#39;power_supply_register&#39; from incompatible pointer typ=
e [-Werror=3Dincompatible-pointer-types]<br>| =C2=A0 498 | =C2=A0ret =3D po=
wer_supply_register(bq-&gt;dev, &amp;bq-&gt;wall);<br>| =C2=A0 =C2=A0 =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~<b=
r>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 |<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 struct power_supply *<br>| In file included from /=
home/mohan/amlogic/aml-comp/kernel/aml-5.4/include/linux/i2c/bq2429x.h:20,<=
br>| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /ho=
me/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-char=
ger/0.1-r0/bq2429x_charger.c:17:<br>| /home/mohan/amlogic/aml-comp/kernel/a=
ml-5.4/include/linux/power_supply.h:451:1: note: expected &#39;const struct=
 power_supply_desc *&#39; but argument is of type &#39;struct power_supply =
*&#39;<br>| =C2=A0 451 | power_supply_register(struct device *parent,<br>| =
=C2=A0 =C2=A0 =C2=A0 | ^~~~~~~~~~~~~~~~~~~~~<br>| /home/mohan/amlogic/build=
/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_cha=
rger.c:498:8: error: too few arguments to function &#39;power_supply_regist=
er&#39;<br>| =C2=A0 498 | =C2=A0ret =3D power_supply_register(bq-&gt;dev, &=
amp;bq-&gt;wall);<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0^~=
~~~~~~~~~~~~~~~~~~~<br>| In file included from /home/mohan/amlogic/aml-comp=
/kernel/aml-5.4/include/linux/i2c/bq2429x.h:20,<br>| =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from /home/mohan/amlogic/build/tmp=
/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger=
.c:17:<br>| /home/mohan/amlogic/aml-comp/kernel/aml-5.4/include/linux/power=
_supply.h:451:1: note: declared here<br>| =C2=A0 451 | power_supply_registe=
r(struct device *parent,<br>| =C2=A0 =C2=A0 =C2=A0 | ^~~~~~~~~~~~~~~~~~~~~<=
br>| At top level:<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap=
222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:393:12: error: &#39=
;bq2429x_set_input_current_limit&#39; defined but not used [-Werror=3Dunuse=
d-function]<br>| =C2=A0 393 | static int bq2429x_set_input_current_limit(st=
ruct bq2429x *bq, enum bq2429x_input_current_limit current)<br>| =C2=A0 =C2=
=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~~<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky=
-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c:369:12: error: &#39;bq2429x=
_set_input_volt_limit&#39; defined but not used [-Werror=3Dunused-function]=
<br>| =C2=A0 369 | static int bq2429x_set_input_volt_limit(struct bq2429x *=
bq, enum bq2429x_input_voltage_limit volt)<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~~~~~~~~~~<br>| /ho=
me/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429x-char=
ger/0.1-r0/bq2429x_charger.c:345:12: error: &#39;bq2429x_set_chargevoltage&=
#39; defined but not used [-Werror=3Dunused-function]<br>| =C2=A0 345 | sta=
tic int bq2429x_set_chargevoltage(struct bq2429x *bq, enum bq2429x_charge_v=
oltage_limit volt)<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~~~~~~~<br>| /home/mohan/amlogic/build/tmp/w=
ork/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charger.c=
:323:12: error: &#39;bq2429x_set_chargecurrent&#39; defined but not used [-=
Werror=3Dunused-function]<br>| =C2=A0 323 | static int bq2429x_set_chargecu=
rrent(struct bq2429x *bq, enum bq2429x_charge_current current)<br>| =C2=A0 =
=C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~=
~~~~~~~<br>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-li=
nux/bq2429x-charger/0.1-r0/bq2429x_charger.c:315:12: error: &#39;bq2429x_di=
sable_otg&#39; defined but not used [-Werror=3Dunused-function]<br>| =C2=A0=
 315 | static int bq2429x_disable_otg(struct bq2429x *bq)<br>| =C2=A0 =C2=
=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~~<b=
r>| /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq242=
9x-charger/0.1-r0/bq2429x_charger.c:306:12: error: &#39;bq2429x_enable_otg&=
#39; defined but not used [-Werror=3Dunused-function]<br>| =C2=A0 306 | sta=
tic int bq2429x_enable_otg(struct bq2429x *bq)<br>| =C2=A0 =C2=A0 =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~<br>| cc1: all w=
arnings being treated as errors<br>| make[3]: *** [/home/mohan/amlogic/aml-=
comp/kernel/aml-5.4/scripts/Makefile.build:284: /home/mohan/amlogic/build/t=
mp/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0/bq2429x_charg=
er.o] Error 1<br>| ERROR: oe_runmake failed<br>| make[2]: *** [/home/mohan/=
amlogic/aml-comp/kernel/aml-5.4/Makefile:1857: /home/mohan/amlogic/build/tm=
p/work/mesons4_lib32_ap222-poky-linux/bq2429x-charger/0.1-r0] Error 2<br>| =
make[2]: Leaving directory &#39;/home/mohan/amlogic/build/tmp/work-shared/m=
esons4-lib32-ap222/kernel-build-artifacts&#39;<br>| make[1]: *** [Makefile:=
179: sub-make] Error 2<br>| make[1]: Leaving directory &#39;/home/mohan/aml=
ogic/aml-comp/kernel/aml-5.4&#39;<br>| make: *** [Makefile:7: all] Error 2<=
br>| WARNING: exit code 1 from a shell command.<br>| ERROR: Execution of &#=
39;/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/bq2429=
x-charger/0.1-r0/temp/run.do_compile.322928&#39; failed with exit code 1<br=
>ERROR: Task (/home/mohan/amlogic/meta-meson/recipes-kernel/bq2429x_charger=
/bq2429x-charger_0.1.bb:do_compile) failed with exit code &#39;1&#39;<br></=
div><div><br></div><div>I have attached the drivers files I got from the ve=
ndor and also the log.do_compile file.</div><div><br></div><div>Thanks=C2=
=A0</div><div>Hassan=C2=A0</div></div>

--00000000000012819a05fe8b1088--

--00000000000012819c05fe8b108a
Content-Type: application/octet-stream; name="bq2429x-charger_0.1.bb"
Content-Disposition: attachment; filename="bq2429x-charger_0.1.bb"
Content-Transfer-Encoding: base64
Content-ID: <f_lj3ztz1z0>
X-Attachment-Id: f_lj3ztz1z0

U1VNTUFSWSA9ICJSZWNpcGUgZmlsZSB0byBsb2FkIGJxMjQyOXhfY2hhcmdlciBkcml2ZXIgaW50
byBPUyIKREVTQ1JJUFRJT04gPSAiJHtTVU1NQVJZfSIKTElDRU5TRSA9ICJHUEx2MiIKTElDX0ZJ
TEVTX0NIS1NVTSA9ICJmaWxlOi8vQ09QWUlORzttZDU9MTJmODg0ZDJhZTFmZjg3YzA5ZTViN2Nj
YzJjNGNhN2UiCgppbmhlcml0IG1vZHVsZQoKU1JDX1VSSSA9ICJmaWxlOi8vTWFrZWZpbGUgXAog
ICAgICAgICAgIGZpbGU6Ly9icTI0Mjl4X2NoYXJnZXIuYyBcCiAgICAgICAgICAgZmlsZTovL0NP
UFlJTkcgXAogICAgICAgICAgIgojU1JDX1VSSSA9ICJmaWxlOi8vTWFrZWZpbGUgXAojICAgICAg
ICAgICBmaWxlOi8vaGVsbG8uYyBcCiMgICAgICAgICAgIGZpbGU6Ly9DT1BZSU5HIFwKIyAgICAg
ICAgICAiCgpTID0gIiR7V09SS0RJUn0iCgojIFRoZSBpbmhlcml0IG9mIG1vZHVsZS5iYmNsYXNz
IHdpbGwgYXV0b21hdGljYWxseSBuYW1lIG1vZHVsZSBwYWNrYWdlcyB3aXRoCiMgImtlcm5lbC1t
b2R1bGUtIiBwcmVmaXggYXMgcmVxdWlyZWQgYnkgdGhlIG9lLWNvcmUgYnVpbGQgZW52aXJvbm1l
bnQuCgpSUFJPVklERVNfJHtQTn0gKz0gImtlcm5lbC1tb2R1bGUtYnEyNDI5eF9jaGFyZ2VyIgoj
UlBST1ZJREVTXyR7UE59ICs9ICJrZXJuZWwtbW9kdWxlLWhlbGxvIgo=
--00000000000012819c05fe8b108a
Content-Type: text/x-csrc; charset="US-ASCII"; name="bq2429x_charger.c"
Content-Disposition: attachment; filename="bq2429x_charger.c"
Content-Transfer-Encoding: base64
Content-ID: <f_lj3zu56v2>
X-Attachment-Id: f_lj3zu56v2

LyoKICogQlEyNDI5eCBiYXR0ZXJ5IGNoYXJnaW5nIGRyaXZlcgogKgogKiBDb3B5cmlnaHQgKEMp
IDIwMTMgVGV4YXMgSW5zdHJ1bWVudHMKICoKICogVGhpcyBwYWNrYWdlIGlzIGZyZWUgc29mdHdh
cmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkKICogaXQgdW5kZXIgdGhl
IHRlcm1zIG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSB2ZXJzaW9uIDIgYXMKICog
cHVibGlzaGVkIGJ5IHRoZSBGcmVlIFNvZnR3YXJlIEZvdW5kYXRpb24uCgogKiBUSElTIFBBQ0tB
R0UgSVMgUFJPVklERUQgYGBBUyBJUycnIEFORCBXSVRIT1VUIEFOWSBFWFBSRVNTIE9SCiAqIElN
UExJRUQgV0FSUkFOVElFUywgSU5DTFVESU5HLCBXSVRIT1VUIExJTUlUQVRJT04sIFRIRSBJTVBM
SUVECiAqIFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRJQklMSVRZIEFORCBGSVRORVNTIEZPUiBBIFBB
UlRJQ1VMQVIgUFVSUE9TRS4KICovCgojaW5jbHVkZSA8bGludXgvZ3Bpby5oPgojaW5jbHVkZSA8
bGludXgvaTJjLmg+CiNpbmNsdWRlIDxsaW51eC9pMmMvYnEyNDI5eC5oPgovLyNpbmNsdWRlICJi
cTI0Mjl4LmgiCiNpbmNsdWRlIDxsaW51eC9pbml0Lmg+CiNpbmNsdWRlIDxsaW51eC9pbnRlcnJ1
cHQuaD4KI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgojaW5jbHVkZSA8bGludXgvcG93ZXJfc3Vw
cGx5Lmg+CiNpbmNsdWRlIDxsaW51eC9zbGFiLmg+CgovKiBSZWdpc3RlciAwMGggKi8KI2RlZmlu
ZSBCUTI0MjlYX0lOUFVUX1NSQ19DVFJMCQkweDAwCiNkZWZpbmUgQlEyNDI5WF9WSU5EUE1fTUFT
SwkJMHg3OAojZGVmaW5lIEJRMjQyOVhfVklORFBNX1NISUZUCQkzCiNkZWZpbmUgQlEyNDI5WF9J
SU5MSU1fTUFTSwkJMHgwNwojZGVmaW5lIEJRMjQyOVhfSUlOTElNX1NISUZUCQkwCgovKiBSZWdp
c3RlciAwMWggKi8KI2RlZmluZSBCUTI0MjlYX0NPTkZJRwkJCTB4MDEKI2RlZmluZSBCUTI0MjlY
X09UR19NQVNLCQkweDIwCiNkZWZpbmUJQlEyNDI5WF9PVEdfU0hJRlQJCTUKI2RlZmluZQlCUTI0
MjlYX09UR19FTkFCTEUJCTB4MDEKI2RlZmluZQlCUTI0MjlYX09UR19FTkFCTEUJCTB4MDAKCi8q
IFJlZ2lzdGVyIDAyaCAqLwojZGVmaW5lIEJRMjQyOVhfSUNIR19DVFJMCQkweDAyCiNkZWZpbmUg
QlEyNDI5WF9JQ0hHX01BU0sJCTB4RkMKI2RlZmluZSBCUTI0MjlYX0lDSEdfU0hJRlQJCTIKCi8q
IFJlZ2lzdGVyIDA0aCAqLwojZGVmaW5lIEJRMjQyOVhfVlJFR19DVFJMCQkweDA0CiNkZWZpbmUg
QlEyNDI5WF9WUkVHX01BU0sJCTB4RkMKI2RlZmluZSBCUTI0MjlYX1ZSRUdfU0hJRlQJCTIKCi8q
IFJlZ2lzdGVyIDA1aCAqLwojZGVmaW5lIEJRMjQyOVhfV0RfQ1RSTAkJCTB4MDUKI2RlZmluZSBC
UTI0MjlYX1dEX01BU0sJCQkweDMwCiNkZWZpbmUgQlEyNDI5WF9XRF9TSElGVAkJNAojZGVmaW5l
IEJRMjQyOVhfV0RfRElTQUJMRQkJMHgwMAoKLyogUmVnaXN0ZXIgMDhoICovCiNkZWZpbmUgQlEy
NDI5WF9TVEFUVVMJCQkweDA4CiNkZWZpbmUgQlEyNDI5WF9WQlVTX1NUQVRVU19NQVNLCTB4QzAK
I2RlZmluZSBCUTI0MjlYX1ZCVVNfU1RBVFVTX1NISUZUCTYKI2RlZmluZSBCUTI0MjlYX0NIR19T
VEFUX01BU0sJCTB4MzAKI2RlZmluZSBCUTI0MjlYX0NIR19TVEFUX1NISUZUCQk0CiNkZWZpbmUg
QlEyNDI5WF9OT1RfQ0hBUkdJTkcJCTAKI2RlZmluZSBCUTI0MjlYX0ZBU1RfQ0hBUkdJTkcJCTIK
Ci8qIFJlZ2lzdGVyIDA5aCAqLwojZGVmaW5lIEJRMjQyOVhfRkFVTFQJCQkweDA5CgovKiBDaGFy
Z2luZyBwYXJhbWV0ZXJzICovCiNkZWZpbmUgQlEyNDI5WF9ERUZBVUxUX1VTQl9WTElNCUJRMjQy
OVhfVkxJTV80MzYwbVYKI2RlZmluZQlCUTI0MjlYX0RFRkFVTFRfVVNCX0lMSU0JQlEyNDI5WF9J
TElNXzUwMG1BCiNkZWZpbmUJQlEyNDI5WF9ERUZBVUxUX1VTQl9JQ0hHCUJRMjQyOVhfSUNIR181
MTJtQQojZGVmaW5lCUJRMjQyOVhfREVGQVVMVF9VU0JfVlJFRwlCUTI0MjlYX1ZSRUdfNDM1Mm1W
CgojZGVmaW5lIEJRMjQyOVhfREVGQVVMVF9UQV9WTElNCQlCUTI0MjlYX1ZMSU1fNDM2MG1WCiNk
ZWZpbmUgQlEyNDI5WF9ERUZBVUxUX1RBX0lMSU0JCUJRMjQyOVhfSUxJTV8zMDAwbUEKI2RlZmlu
ZSBCUTI0MjlYX0RFRkFVTFRfVEFfSUNIRwkJQlEyNDI5WF9JQ0hHXzMwMDhtQQojZGVmaW5lCUJR
MjQyOVhfREVGQVVMVF9UQV9WUkVHCQlCUTI0MjlYX1ZSRUdfNDM1Mm1WCgplbnVtIGJxMjQyOXhf
dmJ1c190eXBlIHsKCUJRMjQyOVhfVkJVU19OT05FLAoJQlEyNDI5WF9WQlVTX1VTQl9DSEFSR0VS
LAoJQlEyNDI5WF9WQlVTX1RBX0NIQVJHRVIsCglCUTI0MjlYX1ZCVVNfT1RHLAp9OwoKc3RydWN0
IGJxMjQyOXggewoJc3RydWN0IGRldmljZSAqZGV2OwoJc3RydWN0IGkyY19jbGllbnQgKmNsaWVu
dDsKCWludCBpcnE7CglzdHJ1Y3Qgd29ya19zdHJ1Y3QgaXJxX3dvcms7CgoJc3RydWN0IHBvd2Vy
X3N1cHBseSB1c2I7CglzdHJ1Y3QgcG93ZXJfc3VwcGx5IHdhbGw7CgoJLyogQ2hhcmdpbmcgcGFy
YW1ldGVycyAqLwoJc3RydWN0IGJxMjQyOXhfY2hhcmdlX3BhcmFtIHVzYl9wYXJhbTsKCXN0cnVj
dCBicTI0Mjl4X2NoYXJnZV9wYXJhbSB0YV9wYXJhbTsKfTsKCnN0YXRpYyBpbnQgYnEyNDI5eF9k
aXNhYmxlX3dhdGNoZG9nX3RpbWVyKHN0cnVjdCBicTI0Mjl4ICpicSk7CgpzdGF0aWMgaW50IGJx
MjQyOXhfcmVhZF9ieXRlKHN0cnVjdCBicTI0Mjl4ICpicSwgdTggKmRhdGEsIHU4IHJlZykKewoJ
aW50IHJldDsKCglyZXQgPSBpMmNfc21idXNfcmVhZF9ieXRlX2RhdGEoYnEtPmNsaWVudCwgcmVn
KTsKCWlmIChyZXQgPCAwKSB7CgkJZGV2X2VycihicS0+ZGV2LCAiZmFpbGVkIHRvIHJlYWQgMHgl
LjJ4XG4iLCByZWcpOwoJCXJldHVybiByZXQ7Cgl9CgoJKmRhdGEgPSAodTgpcmV0OwoKCXJldHVy
biAwOwp9CgpzdGF0aWMgaW50IGJxMjQyOXhfd3JpdGVfYnl0ZShzdHJ1Y3QgYnEyNDI5eCAqYnEs
IHU4IHJlZywgdTggZGF0YSkKewoJcmV0dXJuIGkyY19zbWJ1c193cml0ZV9ieXRlX2RhdGEoYnEt
PmNsaWVudCwgcmVnLCBkYXRhKTsKfQoKc3RhdGljIGludCBicTI0Mjl4X3VwZGF0ZV9iaXRzKHN0
cnVjdCBicTI0Mjl4ICpicSwgdTggcmVnLCB1OCBtYXNrLCB1OCBkYXRhKQp7CglpbnQgcmV0OwoJ
dTggdG1wOwoKCXJldCA9IGJxMjQyOXhfcmVhZF9ieXRlKGJxLCAmdG1wLCByZWcpOwoJaWYgKHJl
dCkKCQlyZXR1cm4gcmV0OwoKCXRtcCAmPSB+bWFzazsKCXRtcCB8PSBkYXRhICYgbWFzazsKCgly
ZXR1cm4gYnEyNDI5eF93cml0ZV9ieXRlKGJxLCByZWcsIHRtcCk7Cn0KCnN0YXRpYyBlbnVtIHBv
d2VyX3N1cHBseV9wcm9wZXJ0eSBicTI0Mjl4X2NoYXJnZXJfcHJvcHNbXSA9IHsKCVBPV0VSX1NV
UFBMWV9QUk9QX09OTElORSwKCVBPV0VSX1NVUFBMWV9QUk9QX0NIQVJHRV9UWVBFLAp9OwoKc3Rh
dGljIGVudW0gYnEyNDI5eF92YnVzX3R5cGUgYnEyNDI5eF9nZXRfdmJ1c190eXBlKHN0cnVjdCBi
cTI0Mjl4ICpicSkKewoJdTggdmFsID0gMDsKCglicTI0Mjl4X3JlYWRfYnl0ZShicSwgJnZhbCwg
QlEyNDI5WF9TVEFUVVMpOwoJdmFsICY9IEJRMjQyOVhfVkJVU19TVEFUVVNfTUFTSzsKCXZhbCA+
Pj0gQlEyNDI5WF9WQlVTX1NUQVRVU19TSElGVDsKCglyZXR1cm4gdmFsOwp9CgpzdGF0aWMgaW50
IGJxMjQyOXhfY2hhcmdlX3N0YXR1cyhzdHJ1Y3QgYnEyNDI5eCAqYnEpCnsKCXU4IHZhbCA9IDA7
CgoJYnEyNDI5eF9yZWFkX2J5dGUoYnEsICZ2YWwsIEJRMjQyOVhfU1RBVFVTKTsKCXZhbCAmPSBC
UTI0MjlYX0NIR19TVEFUX01BU0s7Cgl2YWwgPj49IEJRMjQyOVhfQ0hHX1NUQVRfU0hJRlQ7CgoJ
c3dpdGNoICh2YWwpIHsKCWNhc2UgQlEyNDI5WF9GQVNUX0NIQVJHSU5HOgoJCXJldHVybiBQT1dF
Ul9TVVBQTFlfQ0hBUkdFX1RZUEVfRkFTVDsKCWNhc2UgQlEyNDI5WF9OT1RfQ0hBUkdJTkc6CgkJ
cmV0dXJuIFBPV0VSX1NVUFBMWV9DSEFSR0VfVFlQRV9OT05FOwoJZGVmYXVsdDoKCQlyZXR1cm4g
UE9XRVJfU1VQUExZX0NIQVJHRV9UWVBFX1VOS05PV047Cgl9Cn0KCnN0YXRpYyBpbnQgYnEyNDI5
eF91c2JfZ2V0X3Byb3BlcnR5KHN0cnVjdCBwb3dlcl9zdXBwbHkgKnBzeSwKCQkJCWVudW0gcG93
ZXJfc3VwcGx5X3Byb3BlcnR5IHBzcCwKCQkJCXVuaW9uIHBvd2VyX3N1cHBseV9wcm9wdmFsICp2
YWwpCnsKCXN0cnVjdCBicTI0Mjl4ICpicSA9IGNvbnRhaW5lcl9vZihwc3ksIHN0cnVjdCBicTI0
Mjl4LCB1c2IpOwoKCXN3aXRjaCAocHNwKSB7CgljYXNlIFBPV0VSX1NVUFBMWV9QUk9QX09OTElO
RToKCQlpZiAoYnEyNDI5eF9nZXRfdmJ1c190eXBlKGJxKSA9PSBCUTI0MjlYX1ZCVVNfVVNCX0NI
QVJHRVIpCgkJCXZhbC0+aW50dmFsID0gMTsKCQllbHNlCgkJCXZhbC0+aW50dmFsID0gMDsKCQli
cmVhazsKCWNhc2UgUE9XRVJfU1VQUExZX1BST1BfQ0hBUkdFX1RZUEU6CgkJdmFsLT5pbnR2YWwg
PSBicTI0Mjl4X2NoYXJnZV9zdGF0dXMoYnEpOwoJCWJyZWFrOwoJZGVmYXVsdDoKCQlyZXR1cm4g
LUVJTlZBTDsKCX0KCglyZXR1cm4gMDsKfQoKc3RhdGljIGludCBicTI0Mjl4X3dhbGxfZ2V0X3By
b3BlcnR5KHN0cnVjdCBwb3dlcl9zdXBwbHkgKnBzeSwKCQkJCWVudW0gcG93ZXJfc3VwcGx5X3By
b3BlcnR5IHBzcCwKCQkJCXVuaW9uIHBvd2VyX3N1cHBseV9wcm9wdmFsICp2YWwpCnsKCXN0cnVj
dCBicTI0Mjl4ICpicSA9IGNvbnRhaW5lcl9vZihwc3ksIHN0cnVjdCBicTI0Mjl4LCB3YWxsKTsK
Cglzd2l0Y2ggKHBzcCkgewoJY2FzZSBQT1dFUl9TVVBQTFlfUFJPUF9PTkxJTkU6CgkJaWYgKGJx
MjQyOXhfZ2V0X3ZidXNfdHlwZShicSkgPT0gQlEyNDI5WF9WQlVTX1RBX0NIQVJHRVIpCgkJCXZh
bC0+aW50dmFsID0gMTsKCQllbHNlCgkJCXZhbC0+aW50dmFsID0gMDsKCQlicmVhazsKCWNhc2Ug
UE9XRVJfU1VQUExZX1BST1BfQ0hBUkdFX1RZUEU6CgkJdmFsLT5pbnR2YWwgPSBicTI0Mjl4X2No
YXJnZV9zdGF0dXMoYnEpOwoJCWJyZWFrOwoJZGVmYXVsdDoKCQlyZXR1cm4gLUVJTlZBTDsKCX0K
CglyZXR1cm4gMDsKfQoKc3RhdGljIGludCBicTI0Mjl4X3VwZGF0ZV9jaGFyZ2VfcGFyYW1zKHN0
cnVjdCBicTI0Mjl4ICpicSkKewoJZW51bSBicTI0Mjl4X3ZidXNfdHlwZSB0eXBlID0gYnEyNDI5
eF9nZXRfdmJ1c190eXBlKGJxKTsKCWludCByZXQ7Cgl1OCB2bGltOwoJdTggaWxpbTsKCXU4IGlj
aGc7Cgl1OCB2cmVnOwoKCXN3aXRjaCAodHlwZSkgewoJY2FzZSBCUTI0MjlYX1ZCVVNfVVNCX0NI
QVJHRVI6CgkJdmxpbSA9IGJxLT51c2JfcGFyYW0udmxpbTsKCQlpbGltID0gYnEtPnVzYl9wYXJh
bS5pbGltOwoJCWljaGcgPSBicS0+dXNiX3BhcmFtLmljaGc7CgkJdnJlZyA9IGJxLT51c2JfcGFy
YW0udnJlZzsKCQlicmVhazsKCWNhc2UgQlEyNDI5WF9WQlVTX1RBX0NIQVJHRVI6CgkJdmxpbSA9
IGJxLT50YV9wYXJhbS52bGltOwoJCWlsaW0gPSBicS0+dGFfcGFyYW0uaWxpbTsKCQlpY2hnID0g
YnEtPnRhX3BhcmFtLmljaGc7CgkJdnJlZyA9IGJxLT50YV9wYXJhbS52cmVnOwoJCWJyZWFrOwoJ
ZGVmYXVsdDoKCQlyZXR1cm4gLUVJTlZBTDsKCX0KCglyZXQgPSBicTI0Mjl4X3VwZGF0ZV9iaXRz
KGJxLCBCUTI0MjlYX0lOUFVUX1NSQ19DVFJMLAoJCQlCUTI0MjlYX1ZJTkRQTV9NQVNLLCB2bGlt
IDw8IEJRMjQyOVhfVklORFBNX1NISUZUKTsKCWlmIChyZXQpCgkJcmV0dXJuIHJldDsKCglyZXQg
PSBicTI0Mjl4X3VwZGF0ZV9iaXRzKGJxLCBCUTI0MjlYX0lOUFVUX1NSQ19DVFJMLAoJCQlCUTI0
MjlYX0lJTkxJTV9NQVNLLCBpbGltIDw8IEJRMjQyOVhfSUlOTElNX1NISUZUKTsKCWlmIChyZXQp
CgkJcmV0dXJuIHJldDsKCglyZXQgPSBicTI0Mjl4X3VwZGF0ZV9iaXRzKGJxLCBCUTI0MjlYX0lD
SEdfQ1RSTCwKCQkJQlEyNDI5WF9JQ0hHX01BU0ssIGljaGcgPDwgQlEyNDI5WF9JQ0hHX1NISUZU
KTsKCWlmIChyZXQpCgkJcmV0dXJuIHJldDsKCglyZXR1cm4gYnEyNDI5eF91cGRhdGVfYml0cyhi
cSwgQlEyNDI5WF9WUkVHX0NUUkwsCgkJCUJRMjQyOVhfVlJFR19NQVNLLCB2cmVnIDw8IEJRMjQy
OVhfVlJFR19TSElGVCk7Cn0KCnN0YXRpYyB2b2lkIGJxMjQyOXhfaXJxX3dvcmtmdW5jKHN0cnVj
dCB3b3JrX3N0cnVjdCAqd29yaykKewoJc3RydWN0IGJxMjQyOXggKmJxID0gY29udGFpbmVyX29m
KHdvcmssIHN0cnVjdCBicTI0Mjl4LCBpcnFfd29yayk7Cgl1OCBzdGF0dXM7Cgl1OCBmYXVsdDsK
CWludCByZXQ7CgoJLyogRGlzYWJsZSB0aGUgd2F0Y2hkb2cgdGltZXIgZm9yY2VkbHkgKi8KCWJx
MjQyOXhfZGlzYWJsZV93YXRjaGRvZ190aW1lcihicSk7CgoJLyogUmVhZCBTVEFUVVMgYW5kIEZB
VUxUIHJlZ2lzdGVycyAqLwoJcmV0ID0gYnEyNDI5eF9yZWFkX2J5dGUoYnEsICZzdGF0dXMsIEJR
MjQyOVhfU1RBVFVTKTsKCWlmIChyZXQpIHsKCQlkZXZfZXJyKGJxLT5kZXYsICJpMmMgZmFpbHVy
ZTolZFxuIiwgcmV0KTsKCQlyZXR1cm47Cgl9CgoJcmV0ID0gYnEyNDI5eF9yZWFkX2J5dGUoYnEs
ICZmYXVsdCwgQlEyNDI5WF9GQVVMVCk7CglpZiAocmV0KSB7CgkJZGV2X2VycihicS0+ZGV2LCAi
aTJjIGZhaWx1cmU6ICVkXG4iLCByZXQpOwoJCXJldHVybjsKCX0KCglkZXZfaW5mbyhicS0+ZGV2
LCAiSVJRIHN0YXR1cz0weCUuMngsIGZhdWx0PTB4JS4yeFxuIiwgc3RhdHVzLCBmYXVsdCk7CgoJ
LyogU2V0IGNoYXJnaW5nIHBhcmFtZXRlcnM6IFZJTkRQTSwgSUlOTElNIGFuZCBJQ0hHICovCgli
cTI0Mjl4X3VwZGF0ZV9jaGFyZ2VfcGFyYW1zKGJxKTsKfQoKc3RhdGljIGlycXJldHVybl90IGJx
MjQyOXhfaW50ZXJydXB0KGludCBpcnEsIHZvaWQgKmRhdGEpCnsKCXN0cnVjdCBicTI0Mjl4ICpi
cSA9IGRhdGE7CgoJc2NoZWR1bGVfd29yaygmYnEtPmlycV93b3JrKTsKCXJldHVybiBJUlFfSEFO
RExFRDsKfQoKc3RhdGljIGludCBicTI0Mjl4X2Rpc2FibGVfd2F0Y2hkb2dfdGltZXIoc3RydWN0
IGJxMjQyOXggKmJxKQp7Cgl1OCB2YWwgPSBCUTI0MjlYX1dEX0RJU0FCTEUgPDwgQlEyNDI5WF9X
RF9TSElGVDsKCglyZXR1cm4gYnEyNDI5eF91cGRhdGVfYml0cyhicSwgQlEyNDI5WF9XRF9DVFJM
LCBCUTI0MjlYX1dEX01BU0ssIHZhbCk7Cn0KCgpzdGF0aWMgaW50IGJxMjQyOXhfZW5hYmxlX290
ZyhzdHJ1Y3QgYnEyNDI5eCAqYnEpCnsKICAgIHU4IHZhbCA9IEJRMjQyOVhfT1RHX0VOQUJMRSA8
PCBCUTI0MjlYX09UR19TSElGVDsKCglyZXR1cm4gYnEyNDI5eF91cGRhdGVfYml0cyhicSwgQlEy
NDI5WF9DT05GSUcsIEJRMjQyOVhfT1RHX01BU0ssIHZhbCk7CgkKfQoKCnN0YXRpYyBpbnQgYnEy
NDI5eF9kaXNhYmxlX290ZyhzdHJ1Y3QgYnEyNDI5eCAqYnEpCnsKICAgIHU4IHZhbCA9IEJRMjQy
OVhfT1RHX0RJU0FCTEUgPDwgQlEyNDI5eF9PVEdfU0hJRlQ7CgoJcmV0dXJuIGJxMjQyOXhfdXBk
YXRlX2JpdHMoYnEsIEJRMjQyOVhfQ09ORklHLCBCUTI0MjlYX09UR19NQVNLLCB2YWwpOwoJCn0K
CnN0YXRpYyBpbnQgYnEyNDI5eF9zZXRfY2hhcmdlY3VycmVudChzdHJ1Y3QgYnEyNDI5eCAqYnEs
IGVudW0gYnEyNDI5eF9jaGFyZ2VfY3VycmVudCBjdXJyZW50KQp7CgoJZW51bSBicTI0Mjl4X3Zi
dXNfdHlwZSB0eXBlID0gYnEyNDI5eF9nZXRfdmJ1c190eXBlKGJxKTsKCXU4IGljaGc7CgoJc3dp
dGNoICh0eXBlKSB7CgljYXNlIEJRMjQyOVhfVkJVU19VU0JfQ0hBUkdFUjoKCQlpY2hnID0gYnEt
PnVzYl9wYXJhbS5pY2hnID0gY3VycmVudDsKCQlicmVhazsKCWNhc2UgQlEyNDI5WF9WQlVTX1RB
X0NIQVJHRVI6CgkJaWNoZyA9IGJxLT50YV9wYXJhbS5pY2hnID0gY3VycmVudDsKCQlicmVhazsK
CWRlZmF1bHQ6CgkJcmV0dXJuIC1FSU5WQUw7Cgl9CglyZXR1cm4gYnEyNDI5eF91cGRhdGVfYml0
cyhicSwgQlEyNDI5WF9JQ0hHX0NUUkwsCgkJCUJRMjQyOVhfSUNIR19NQVNLLCBpY2hnIDw8IEJR
MjQyOVhfSUNIR19TSElGVCk7Cgp9CgoKc3RhdGljIGludCBicTI0Mjl4X3NldF9jaGFyZ2V2b2x0
YWdlKHN0cnVjdCBicTI0Mjl4ICpicSwgZW51bSBicTI0Mjl4X2NoYXJnZV92b2x0YWdlX2xpbWl0
IHZvbHQpCnsKCgllbnVtIGJxMjQyOXhfdmJ1c190eXBlIHR5cGUgPSBicTI0Mjl4X2dldF92YnVz
X3R5cGUoYnEpOwoJaW50IHJldDsKCXU4IHZyZWc7CgoJc3dpdGNoICh0eXBlKSB7CgljYXNlIEJR
MjQyOVhfVkJVU19VU0JfQ0hBUkdFUjoKCQl2cmVnID0gYnEtPnVzYl9wYXJhbS52cmVnID0gdm9s
dDsKCQlicmVhazsKCWNhc2UgQlEyNDI5WF9WQlVTX1RBX0NIQVJHRVI6CgkJdnJlZyA9IGJxLT50
YV9wYXJhbS52cmVnID0gdm9sdDsKCQlicmVhazsKCWRlZmF1bHQ6CgkJcmV0dXJuIC1FSU5WQUw7
Cgl9CgkKCXJldHVybiBicTI0Mjl4X3VwZGF0ZV9iaXRzKGJxLCBCUTI0MjlYX1ZSRUdfQ1RSTCwK
CQkJQlEyNDI5WF9WUkVHX01BU0ssIHZyZWcgPDwgQlEyNDI5WF9WUkVHX1NISUZUKTsKCQp9CgoK
c3RhdGljIGludCBicTI0Mjl4X3NldF9pbnB1dF92b2x0X2xpbWl0KHN0cnVjdCBicTI0Mjl4ICpi
cSwgZW51bSBicTI0Mjl4X2lucHV0X3ZvbHRhZ2VfbGltaXQgdm9sdCkKewoKCWVudW0gYnEyNDI5
eF92YnVzX3R5cGUgdHlwZSA9IGJxMjQyOXhfZ2V0X3ZidXNfdHlwZShicSk7CglpbnQgcmV0OwoJ
dTggdmxpbTsKCglzd2l0Y2ggKHR5cGUpIHsKCWNhc2UgQlEyNDI5WF9WQlVTX1VTQl9DSEFSR0VS
OgoJCXZsaW0gPSBicS0+dXNiX3BhcmFtLnZsaW0gPSB2b2x0OwoJCWJyZWFrOwoJY2FzZSBCUTI0
MjlYX1ZCVVNfVEFfQ0hBUkdFUjoKCQl2bGltID0gYnEtPnRhX3BhcmFtLnZsaW0gPSB2b2x0OwoJ
CWJyZWFrOwoJZGVmYXVsdDoKCQlyZXR1cm4gLUVJTlZBTDsKCX0KCQoJcmV0dXJuIAlicTI0Mjl4
X3VwZGF0ZV9iaXRzKGJxLCBCUTI0MjlYX0lOUFVUX1NSQ19DVFJMLAoJCQlCUTI0MjlYX1ZJTkRQ
TV9NQVNLLCB2bGltIDw8IEJRMjQyOVhfVklORFBNX1NISUZUKTsKCQp9CgoKc3RhdGljIGludCBi
cTI0Mjl4X3NldF9pbnB1dF9jdXJyZW50X2xpbWl0KHN0cnVjdCBicTI0Mjl4ICpicSwgZW51bSBi
cTI0Mjl4X2lucHV0X2N1cnJlbnRfbGltaXQgY3VycmVudCkKewoKCWVudW0gYnEyNDI5eF92YnVz
X3R5cGUgdHlwZSA9IGJxMjQyOXhfZ2V0X3ZidXNfdHlwZShicSk7CglpbnQgcmV0OwoJdTggaWxp
bTsKCglzd2l0Y2ggKHR5cGUpIHsKCWNhc2UgQlEyNDI5WF9WQlVTX1VTQl9DSEFSR0VSOgoJCWls
aW0gPSBicS0+dXNiX3BhcmFtLmlsaW0gPSBjdXJyZW50OwoJCWJyZWFrOwoJY2FzZSBCUTI0MjlY
X1ZCVVNfVEFfQ0hBUkdFUjoKCQlpbGltID0gYnEtPnRhX3BhcmFtLmlsaW0gPSBjdXJyZW50OwoJ
CWJyZWFrOwoJZGVmYXVsdDoKCQlyZXR1cm4gLUVJTlZBTDsKCX0KCQoJcmV0dXJuIAlicTI0Mjl4
X3VwZGF0ZV9iaXRzKGJxLCBCUTI0MjlYX0lOUFVUX1NSQ19DVFJMLAoJCQlCUTI0MjlYX0lJTkxJ
TV9NQVNLLCBpbGltIDw8IEJRMjQyOVhfSUlOTElNX1NISUZUKTsKCQkJCn0KCgoKCgpzdGF0aWMg
aW50IGJxMjQyOXhfaW5pdF9jaGFyZ2VfcGFyYW1zKHN0cnVjdCBicTI0Mjl4ICpicSwKCQkJCXN0
cnVjdCBicTI0Mjl4X3BsYXRmb3JtX2RhdGEgKnBkYXRhKQp7CgkvKgoJICogVXBkYXRlIGNoYXJn
aW5nIHBhcmFtZXRlcnM6CgkgKiAgIGlmIHRoZSBwbGF0Zm9ybSBkYXRhIGlzIG5vdCBjb25maWd1
cmVkLCB1c2UgdGhlIGRlZmF1bHQgdmFsdWUKCSAqICAgaWYgdGhlIHBsYXRmb3JtIGRhdGEgaGFz
IHNwZWNpZmljIHZhbHVlcywgdXNlIHRoZW0KCSAqLwoJYnEtPnVzYl9wYXJhbS52bGltID0gQlEy
NDI5WF9ERUZBVUxUX1VTQl9WTElNOwoJYnEtPnVzYl9wYXJhbS5pbGltID0gQlEyNDI5WF9ERUZB
VUxUX1VTQl9JTElNOwoJYnEtPnVzYl9wYXJhbS5pY2hnID0gQlEyNDI5WF9ERUZBVUxUX1VTQl9J
Q0hHOwoJYnEtPnVzYl9wYXJhbS52cmVnID0gQlEyNDI5WF9ERUZBVUxUX1VTQl9WUkVHOwoKCWJx
LT50YV9wYXJhbS52bGltID0gQlEyNDI5WF9ERUZBVUxUX1RBX1ZMSU07CglicS0+dGFfcGFyYW0u
aWxpbSA9IEJRMjQyOVhfREVGQVVMVF9UQV9JTElNOwoJYnEtPnRhX3BhcmFtLmljaGcgPSBCUTI0
MjlYX0RFRkFVTFRfVEFfSUNIRzsKCWJxLT50YV9wYXJhbS52cmVnID0gQlEyNDI5WF9ERUZBVUxU
X1RBX1ZSRUc7CgoJaWYgKCFwZGF0YSkKCQlyZXR1cm4gMDsKCglpZiAocGRhdGEtPnVzYl9wYXJh
bSkgewoJCWJxLT51c2JfcGFyYW0udmxpbSA9IHBkYXRhLT51c2JfcGFyYW0tPnZsaW07CgkJYnEt
PnVzYl9wYXJhbS5pbGltID0gcGRhdGEtPnVzYl9wYXJhbS0+aWxpbTsKCQlicS0+dXNiX3BhcmFt
LmljaGcgPSBwZGF0YS0+dXNiX3BhcmFtLT5pY2hnOwoJCWJxLT51c2JfcGFyYW0udnJlZyA9IHBk
YXRhLT51c2JfcGFyYW0tPnZyZWc7Cgl9CgoJaWYgKHBkYXRhLT50YV9wYXJhbSkgewoJCWJxLT50
YV9wYXJhbS52bGltID0gcGRhdGEtPnRhX3BhcmFtLT52bGltOwoJCWJxLT50YV9wYXJhbS5pbGlt
ID0gcGRhdGEtPnRhX3BhcmFtLT5pbGltOwoJCWJxLT50YV9wYXJhbS5pY2hnID0gcGRhdGEtPnRh
X3BhcmFtLT5pY2hnOwoJCWJxLT50YV9wYXJhbS52cmVnID0gcGRhdGEtPnRhX3BhcmFtLT52cmVn
OwoJfQoKCXJldHVybiAwOwp9CgpzdGF0aWMgaW50IGJxMjQyOXhfaW5pdF9kZXZpY2Uoc3RydWN0
IGJxMjQyOXggKmJxLAoJCQlzdHJ1Y3QgYnEyNDI5eF9wbGF0Zm9ybV9kYXRhICpwZGF0YSkKewoJ
aW50IHJldDsKCgkvKgoJICogUHV0IGhlcmUgZm9yIGluaXRpYWxpemF0aW9uIHByb2Nlc3MKCSAq
LwoKCXJldCA9IGJxMjQyOXhfZGlzYWJsZV93YXRjaGRvZ190aW1lcihicSk7CglpZiAocmV0KQoJ
CXJldHVybiByZXQ7CgoJcmV0dXJuIGJxMjQyOXhfaW5pdF9jaGFyZ2VfcGFyYW1zKGJxLCBwZGF0
YSk7Cn0KCnN0YXRpYyBpbnQgYnEyNDI5eF9wc3lfcmVnaXN0ZXIoc3RydWN0IGJxMjQyOXggKmJx
KQp7CglpbnQgcmV0OwoKCWJxLT51c2IubmFtZSA9ICJicTI0Mjl4LXVzYiI7CglicS0+dXNiLnR5
cGUgPSBQT1dFUl9TVVBQTFlfVFlQRV9VU0I7CglicS0+dXNiLnByb3BlcnRpZXMgPSBicTI0Mjl4
X2NoYXJnZXJfcHJvcHM7CglicS0+dXNiLm51bV9wcm9wZXJ0aWVzID0gQVJSQVlfU0laRShicTI0
Mjl4X2NoYXJnZXJfcHJvcHMpOwoJYnEtPnVzYi5nZXRfcHJvcGVydHkgPSBicTI0Mjl4X3VzYl9n
ZXRfcHJvcGVydHk7CglicS0+dXNiLmV4dGVybmFsX3Bvd2VyX2NoYW5nZWQgPSBOVUxMOwoKCXJl
dCA9IHBvd2VyX3N1cHBseV9yZWdpc3RlcihicS0+ZGV2LCAmYnEtPnVzYik7CglpZiAocmV0KSB7
CgkJZGV2X2VycihicS0+ZGV2LCAiZmFpbGVkIHRvIHJlZ2lzdGVyIHVzYjogJWRcbiIsIHJldCk7
CgkJcmV0dXJuIHJldDsKCX0KCglicS0+d2FsbC5uYW1lID0gImJxMjQyOXgtd2FsbCI7CglicS0+
d2FsbC50eXBlID0gUE9XRVJfU1VQUExZX1RZUEVfTUFJTlM7CglicS0+d2FsbC5wcm9wZXJ0aWVz
ID0gYnEyNDI5eF9jaGFyZ2VyX3Byb3BzOwoJYnEtPndhbGwubnVtX3Byb3BlcnRpZXMgPSBBUlJB
WV9TSVpFKGJxMjQyOXhfY2hhcmdlcl9wcm9wcyk7CglicS0+d2FsbC5nZXRfcHJvcGVydHkgPSBi
cTI0Mjl4X3dhbGxfZ2V0X3Byb3BlcnR5OwoJYnEtPndhbGwuZXh0ZXJuYWxfcG93ZXJfY2hhbmdl
ZCA9IE5VTEw7CgoJcmV0ID0gcG93ZXJfc3VwcGx5X3JlZ2lzdGVyKGJxLT5kZXYsICZicS0+d2Fs
bCk7CglpZiAocmV0KSB7CgkJZGV2X2VycihicS0+ZGV2LCAiZmFpbGVkIHRvIHJlZ2lzdGVyIHdh
bGw6ICVkXG4iLCByZXQpOwoJCWdvdG8gZXJyX3BzeV93YWxsOwoJfQoKCXJldHVybiAwOwoKZXJy
X3BzeV93YWxsOgoJcG93ZXJfc3VwcGx5X3VucmVnaXN0ZXIoJmJxLT51c2IpOwoJcmV0dXJuIHJl
dDsKfQoKc3RhdGljIHZvaWQgYnEyNDI5eF9wc3lfdW5yZWdpc3RlcihzdHJ1Y3QgYnEyNDI5eCAq
YnEpCnsKCXBvd2VyX3N1cHBseV91bnJlZ2lzdGVyKCZicS0+d2FsbCk7Cglwb3dlcl9zdXBwbHlf
dW5yZWdpc3RlcigmYnEtPnVzYik7Cn0KCnN0YXRpYyBzc2l6ZV90IGJxMjQyOXhfc2hvd19yZWdp
c3RlcnMoc3RydWN0IGRldmljZSAqZGV2LAoJCQkJc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0
dHIsIGNoYXIgKmJ1ZikKewoJc3RydWN0IGJxMjQyOXggKmJxID0gZGV2X2dldF9kcnZkYXRhKGRl
dik7Cgl1OCBhZGRyOwoJdTggdmFsOwoKCWZvciAoYWRkciA9IDB4MDsgYWRkciA8PSAweDBBOyBh
ZGRyKyspIHsKCQlicTI0Mjl4X3JlYWRfYnl0ZShicSwgJnZhbCwgYWRkcik7CgkJZGV2X2luZm8o
YnEtPmRldiwgIlsweCUuMnhdID0gMHglLjJ4XG4iLCBhZGRyLCB2YWwpOwoJfQoKCXJldHVybiAw
Owp9CgpzdGF0aWMgREVWSUNFX0FUVFIocmVnaXN0ZXJzLCBTX0lSVUdPLCBicTI0Mjl4X3Nob3df
cmVnaXN0ZXJzLCBOVUxMKTsKCnN0YXRpYyBzdHJ1Y3QgYXR0cmlidXRlICpicTI0Mjl4X2F0dHJp
YnV0ZXNbXSA9IHsKCSZkZXZfYXR0cl9yZWdpc3RlcnMuYXR0ciwKCU5VTEwsCn07CgpzdGF0aWMg
Y29uc3Qgc3RydWN0IGF0dHJpYnV0ZV9ncm91cCBicTI0Mjl4X2F0dHJfZ3JvdXAgPSB7CgkuYXR0
cnMgPSBicTI0Mjl4X2F0dHJpYnV0ZXMsCn07CgpzdGF0aWMgaW50IGJxMjQyOXhfY2hhcmdlcl9w
cm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LAoJCQkgICBjb25zdCBzdHJ1Y3QgaTJjX2Rl
dmljZV9pZCAqaWQpCnsKCXN0cnVjdCBicTI0Mjl4ICpicTsKCXN0cnVjdCBicTI0Mjl4X3BsYXRm
b3JtX2RhdGEgKnBkYXRhID0gY2xpZW50LT5kZXYucGxhdGZvcm1fZGF0YTsKCWludCByZXQ7CgoJ
YnEgPSBremFsbG9jKHNpemVvZihzdHJ1Y3QgYnEyNDI5eCksIEdGUF9LRVJORUwpOwoJaWYgKCFi
cSkKCQlyZXR1cm4gLUVOT01FTTsKCglicS0+ZGV2ID0gJmNsaWVudC0+ZGV2OwoJYnEtPmNsaWVu
dCA9IGNsaWVudDsKCWJxLT5pcnEgPSBjbGllbnQtPmlycTsKCglpMmNfc2V0X2NsaWVudGRhdGEo
Y2xpZW50LCBicSk7CgoJcmV0ID0gYnEyNDI5eF9pbml0X2RldmljZShicSwgcGRhdGEpOwoJaWYg
KHJldCkgewoJCWRldl9lcnIoYnEtPmRldiwgImRldmljZSBpbml0IGZhaWx1cmU6ICVkXG4iLCBy
ZXQpOwoJCWdvdG8gZXJyX2RldjsKCX0KCglJTklUX1dPUksoJmJxLT5pcnFfd29yaywgYnEyNDI5
eF9pcnFfd29ya2Z1bmMpOwoKCXJldCA9IGJxMjQyOXhfcHN5X3JlZ2lzdGVyKGJxKTsKCWlmIChy
ZXQpCgkJZ290byBlcnJfZGV2OwoKCXJldCA9IHN5c2ZzX2NyZWF0ZV9ncm91cCgmYnEtPmRldi0+
a29iaiwgJmJxMjQyOXhfYXR0cl9ncm91cCk7CglpZiAocmV0KSB7CgkJZGV2X2VycihicS0+ZGV2
LCAiZmFpbGVkIHRvIHJlZ2lzdGVyIHN5c2ZzLiBlcnI6ICVkXG4iLCByZXQpOwoJCWdvdG8gZXJy
X2RldjsKCX0KCglyZXQgPSByZXF1ZXN0X2lycShicS0+aXJxLCBicTI0Mjl4X2ludGVycnVwdCwK
CQkJSVJRRl9UUklHR0VSX0ZBTExJTkcgfCBJUlFGX09ORVNIT1QsCgkJCSJicTI0Mjl4X2lycSIs
IGJxKTsKCWlmIChyZXQpIHsKCQlkZXZfZXJyKGJxLT5kZXYsICJSZXF1ZXN0IElSUSVkIGVycjog
JWRcbiIsIGJxLT5pcnEsIHJldCk7CgkJZ290byBlcnJfaXJxOwoJfQoKCXJldHVybiAwOwoKZXJy
X2lycToKCWJxMjQyOXhfcHN5X3VucmVnaXN0ZXIoYnEpOwoJY2FuY2VsX3dvcmtfc3luYygmYnEt
PmlycV93b3JrKTsKZXJyX2RldjoKCWtmcmVlKGJxKTsKCXJldHVybiByZXQ7Cn0KCnN0YXRpYyBp
bnQgYnEyNDI5eF9jaGFyZ2VyX3JlbW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQp7Cglz
dHJ1Y3QgYnEyNDI5eCAqYnEgPSBpMmNfZ2V0X2NsaWVudGRhdGEoY2xpZW50KTsKCglmcmVlX2ly
cShicS0+aXJxLCBicSk7CglzeXNmc19yZW1vdmVfZ3JvdXAoJmJxLT5kZXYtPmtvYmosICZicTI0
Mjl4X2F0dHJfZ3JvdXApOwoJYnEyNDI5eF9wc3lfdW5yZWdpc3RlcihicSk7CgljYW5jZWxfd29y
a19zeW5jKCZicS0+aXJxX3dvcmspOwoJa2ZyZWUoYnEpOwoKCXJldHVybiAwOwp9CgpzdGF0aWMg
Y29uc3Qgc3RydWN0IGkyY19kZXZpY2VfaWQgYnEyNDI5eF9pZFtdID0gewoJeyAiYnEyNDI5NiIs
IDAgfSwKCXt9LAp9OwoKTU9EVUxFX0RFVklDRV9UQUJMRShpMmMsIGJxMjQyOXhfaWQpOwoKc3Rh
dGljIHN0cnVjdCBpMmNfZHJpdmVyIGJxMjQyOXhfY2hhcmdlciA9IHsKCS5wcm9iZQkJPSBicTI0
Mjl4X2NoYXJnZXJfcHJvYmUsCgkucmVtb3ZlCQk9IGJxMjQyOXhfY2hhcmdlcl9yZW1vdmUsCgku
aWRfdGFibGUJPSBicTI0Mjl4X2lkLAoJLmRyaXZlcgkJPSB7CgkJLm5hbWUJPSAiYnEyNDI5eCIs
Cgl9LAp9Owptb2R1bGVfaTJjX2RyaXZlcihicTI0Mjl4X2NoYXJnZXIpOwoKTU9EVUxFX0RFU0NS
SVBUSU9OKCJUSSBCUTI0MTl4IENoYXJnZXIgRHJpdmVyIik7Ck1PRFVMRV9MSUNFTlNFKCJHUEwi
KTsKTU9EVUxFX0FVVEhPUigiVGV4YXMgSW5zdHJ1bWVudHMiKTsK
--00000000000012819c05fe8b108a
Content-Type: application/octet-stream; name=Makefile
Content-Disposition: attachment; filename=Makefile
Content-Transfer-Encoding: base64
Content-ID: <f_lj3zu57p3>
X-Attachment-Id: f_lj3zu57p3

b2JqLW0gOj0gYnEyNDI5eF9jaGFyZ2VyLm8KI29iai1tIDo9IGhlbGxvLm8KClNSQyA6PSAkKHNo
ZWxsIHB3ZCkKCmFsbDoKCSQoTUFLRSkgLUMgJChLRVJORUxfU1JDKSBNPSQoU1JDKQoKbW9kdWxl
c19pbnN0YWxsOgoJJChNQUtFKSAtQyAkKEtFUk5FTF9TUkMpIE09JChTUkMpIG1vZHVsZXNfaW5z
dGFsbAoKY2xlYW46CglybSAtZiAqLm8gKn4gY29yZSAuZGVwZW5kIC4qLmNtZCAqLmtvICoubW9k
LmMKCXJtIC1mIE1vZHVsZS5tYXJrZXJzIE1vZHVsZS5zeW12ZXJzIG1vZHVsZXMub3JkZXIKCXJt
IC1yZiAudG1wX3ZlcnNpb25zIE1vZHVsZXMuc3ltdmVycwo=
--00000000000012819c05fe8b108a
Content-Type: text/x-chdr; charset="US-ASCII"; name="bq2429x.h"
Content-Disposition: attachment; filename="bq2429x.h"
Content-Transfer-Encoding: base64
Content-ID: <f_lj3zu56p1>
X-Attachment-Id: f_lj3zu56p1

LyoKICogQ29weXJpZ2h0IChDKSAyMDEzIFRleGFzIEluc3RydW1lbnRzCiAqCiAqIFRoaXMgcHJv
Z3JhbSBpcyBmcmVlIHNvZnR3YXJlOyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3IgbW9k
aWZ5IGl0CiAqIHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vu
c2UgdmVyc2lvbiAyIGFzIHB1Ymxpc2hlZCBieQogKiB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0
aW9uLgogKgogKiBUaGlzIHByb2dyYW0gaXMgZGlzdHJpYnV0ZWQgaW4gdGhlIGhvcGUgdGhhdCBp
dCB3aWxsIGJlIHVzZWZ1bCwgYnV0IFdJVEhPVVQKICogQU5ZIFdBUlJBTlRZOyB3aXRob3V0IGV2
ZW4gdGhlIGltcGxpZWQgd2FycmFudHkgb2YgTUVSQ0hBTlRBQklMSVRZIG9yCiAqIEZJVE5FU1Mg
Rk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGlj
ZW5zZSBmb3IKICogbW9yZSBkZXRhaWxzLgogKgogKiBZb3Ugc2hvdWxkIGhhdmUgcmVjZWl2ZWQg
YSBjb3B5IG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBhbG9uZyB3aXRoCiAqIHRo
aXMgcHJvZ3JhbS4gIElmIG5vdCwgc2VlIDxodHRwOi8vd3d3LmdudS5vcmcvbGljZW5zZXMvPi4K
ICovCgojaWZuZGVmIF9MSU5VWF9CUTI0MjlYX0kyQ19ICiNkZWZpbmUgX0xJTlVYX0JRMjQyOVhf
STJDX0gKCiNpbmNsdWRlIDxsaW51eC9wb3dlcl9zdXBwbHkuaD4KCmVudW0gYnEyNDI5eF9pbnB1
dF92b2x0YWdlX2xpbWl0IHsKCUJRMjQyOVhfVkxJTV8zODgwbVYsCglCUTI0MjlYX1ZMSU1fMzk2
MG1WLAoJQlEyNDI5WF9WTElNXzQwNDBtViwKCUJRMjQyOVhfVkxJTV80MTIwbVYsCglCUTI0MjlY
X1ZMSU1fNDIwMG1WLAoJQlEyNDI5WF9WTElNXzQyODBtViwKCUJRMjQyOVhfVkxJTV80MzYwbVYs
CglCUTI0MjlYX1ZMSU1fNDQ0MG1WLAoJQlEyNDI5WF9WTElNXzQ1MjBtViwKCUJRMjQyOVhfVkxJ
TV80NjAwbVYsCglCUTI0MjlYX1ZMSU1fNDY4MG1WLAoJQlEyNDI5WF9WTElNXzQ3NjBtViwKCUJR
MjQyOVhfVkxJTV80ODQwbVYsCglCUTI0MjlYX1ZMSU1fNDkyMG1WLAoJQlEyNDI5WF9WTElNXzUw
MDBtViwKCUJRMjQyOVhfVkxJTV81MDgwbVYsCn07CgplbnVtIGJxMjQyOXhfaW5wdXRfY3VycmVu
dF9saW1pdCB7CglCUTI0MjlYX0lMSU1fMTAwbUEsCglCUTI0MjlYX0lMSU1fMTUwbUEsCglCUTI0
MjlYX0lMSU1fNTAwbUEsCglCUTI0MjlYX0lMSU1fOTAwbUEsCglCUTI0MjlYX0lMSU1fMTAwMG1B
LAoJQlEyNDI5WF9JTElNXzE1MDBtQSwKCUJRMjQyOVhfSUxJTV8yMDAwbUEsCglCUTI0MjlYX0lM
SU1fMzAwMG1BLAp9OwoKZW51bSBicTI0Mjl4X2NoYXJnZV9jdXJyZW50IHsKCUJRMjQyOVhfSUNI
R181MTJtQSwKCUJRMjQyOVhfSUNIR18xMDI0bUEgPSA4LAoJQlEyNDI5WF9JQ0hHXzIwNDhtQSA9
IDI0LAoJQlEyNDI5WF9JQ0hHXzMwMDhtQSA9IDM5LAovLwlCUTI0MjlYX0lDSEdfNDAzMm1BID0g
NTUsCi8vCUJRMjQyOVhfSUNIR180NTQ0bUEgPSA2MywKfTsKCmVudW0gYnEyNDI5eF9jaGFyZ2Vf
dm9sdGFnZV9saW1pdCB7CglCUTI0MjlYX1ZSRUdfMzUwNG1WLAoJQlEyNDI5WF9WUkVHXzM2MDBt
ViA9IDYsCglCUTI0MjlYX1ZSRUdfMzgwOG1WID0gMTksCglCUTI0MjlYX1ZSRUdfMzkwNG1WID0g
MjUsCglCUTI0MjlYX1ZSRUdfNDAwMG1WID0gMzEsCglCUTI0MjlYX1ZSRUdfNDExMm1WID0gMzgs
CglCUTI0MjlYX1ZSRUdfNDIwOG1WID0gNDQsCglCUTI0MjlYX1ZSRUdfNDMwNG1WID0gNTAsCglC
UTI0MjlYX1ZSRUdfNDM1Mm1WID0gNTMsCglCUTI0MjlYX1ZSRUdfNDQwMG1WID0gNTYsCglCUTI0
MjlYX1ZSRUdfTUFYID0gQlEyNDI5WF9WUkVHXzQ0MDBtViwKfTsKCnN0cnVjdCBicTI0Mjl4X2No
YXJnZV9wYXJhbSB7CgllbnVtIGJxMjQyOXhfaW5wdXRfdm9sdGFnZV9saW1pdCB2bGltOwoJZW51
bSBicTI0Mjl4X2lucHV0X2N1cnJlbnRfbGltaXQgaWxpbTsKCWVudW0gYnEyNDI5eF9jaGFyZ2Vf
Y3VycmVudCBpY2hnOwoJZW51bSBicTI0Mjl4X2NoYXJnZV92b2x0YWdlX2xpbWl0IHZyZWc7Cn07
CgpzdHJ1Y3QgYnEyNDI5eF9wbGF0Zm9ybV9kYXRhIHsKCWNvbnN0IHN0cnVjdCBicTI0Mjl4X2No
YXJnZV9wYXJhbSAqdXNiX3BhcmFtOwoJY29uc3Qgc3RydWN0IGJxMjQyOXhfY2hhcmdlX3BhcmFt
ICp0YV9wYXJhbTsKfTsKCiNlbmRpZiAvKiBfTElOVVhfQlEyNDI5WF9JMkNfSCAqLwo=
--00000000000012819c05fe8b108a
Content-Type: application/octet-stream; name="log.do_compile.322928"
Content-Disposition: attachment; filename="log.do_compile.322928"
Content-Transfer-Encoding: base64
Content-ID: <f_lj3zxa7y4>
X-Attachment-Id: f_lj3zxa7y4

REVCVUc6IEV4ZWN1dGluZyBzaGVsbCBmdW5jdGlvbiBkb19jb21waWxlCk5PVEU6IG1ha2UgLWog
NCBLRVJORUxfU1JDPS9ob21lL21vaGFuL2FtbG9naWMvYnVpbGQvdG1wL3dvcmstc2hhcmVkL21l
c29uczQtbGliMzItYXAyMjIva2VybmVsLXNvdXJjZSBLRVJORUxfUEFUSD0vaG9tZS9tb2hhbi9h
bWxvZ2ljL2J1aWxkL3RtcC93b3JrLXNoYXJlZC9tZXNvbnM0LWxpYjMyLWFwMjIyL2tlcm5lbC1z
b3VyY2UgS0VSTkVMX1ZFUlNJT049NS40LjE4MC1hbWxvZ2ljIENDPWFhcmNoNjQtcG9reS1saW51
eC1nY2MgICAtZnVzZS1sZD1iZmQgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9ob21lL21vaGFuL2FtbG9n
aWMvYnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIzMl9hcDIyMi1wb2t5LWxpbnV4L2JxMjQyOXgt
Y2hhcmdlci8wLjEtcjA9L3Vzci9zcmMvZGVidWcvYnEyNDI5eC1jaGFyZ2VyLzAuMS1yMCAgICAg
ICAgICAgICAgICAgICAgIC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS9tb2hhbi9hbWxvZ2ljL2J1
aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJfYXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJn
ZXIvMC4xLXIwL3JlY2lwZS1zeXNyb290PSAgICAgICAgICAgICAgICAgICAgIC1mZGVidWctcHJl
Zml4LW1hcD0vaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJf
YXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL3JlY2lwZS1zeXNyb290LW5h
dGl2ZT0gICAgICAgICAgICAgICAgICAgICAgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9ob21lL21vaGFu
L2FtbG9naWMvYnVpbGQvdG1wL3dvcmstc2hhcmVkL21lc29uczQtbGliMzItYXAyMjIva2VybmVs
LXNvdXJjZT0vdXNyL3NyYy9rZXJuZWwgTEQ9YWFyY2g2NC1wb2t5LWxpbnV4LWxkLmJmZCAgIEFS
PWFhcmNoNjQtcG9reS1saW51eC1hciAgTz0vaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93
b3JrLXNoYXJlZC9tZXNvbnM0LWxpYjMyLWFwMjIyL2tlcm5lbC1idWlsZC1hcnRpZmFjdHMgS0JV
SUxEX0VYVFJBX1NZTUJPTFM9Cm1ha2UgLUMgL2hvbWUvbW9oYW4vYW1sb2dpYy9idWlsZC90bXAv
d29yay1zaGFyZWQvbWVzb25zNC1saWIzMi1hcDIyMi9rZXJuZWwtc291cmNlIE09L2hvbWUvbW9o
YW4vYW1sb2dpYy9idWlsZC90bXAvd29yay9tZXNvbnM0X2xpYjMyX2FwMjIyLXBva3ktbGludXgv
YnEyNDI5eC1jaGFyZ2VyLzAuMS1yMAptYWtlWzFdOiBFbnRlcmluZyBkaXJlY3RvcnkgJy9ob21l
L21vaGFuL2FtbG9naWMvYW1sLWNvbXAva2VybmVsL2FtbC01LjQnCm1ha2VbMl06IEVudGVyaW5n
IGRpcmVjdG9yeSAnL2hvbWUvbW9oYW4vYW1sb2dpYy9idWlsZC90bXAvd29yay1zaGFyZWQvbWVz
b25zNC1saWIzMi1hcDIyMi9rZXJuZWwtYnVpbGQtYXJ0aWZhY3RzJwogIEFSICAgICAgL2hvbWUv
bW9oYW4vYW1sb2dpYy9idWlsZC90bXAvd29yay9tZXNvbnM0X2xpYjMyX2FwMjIyLXBva3ktbGlu
dXgvYnEyNDI5eC1jaGFyZ2VyLzAuMS1yMC9idWlsdC1pbi5hCiAgQ0MgW01dICAvaG9tZS9tb2hh
bi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJfYXAyMjItcG9reS1saW51eC9i
cTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hhcmdlci5vCi9ob21lL21vaGFuL2FtbG9n
aWMvYnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIzMl9hcDIyMi1wb2t5LWxpbnV4L2JxMjQyOXgt
Y2hhcmdlci8wLjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6Mzc6IGVycm9yOiAiQlEyNDI5WF9PVEdf
RU5BQkxFIiByZWRlZmluZWQgWy1XZXJyb3JdCiAgIDM3IHwgI2RlZmluZSBCUTI0MjlYX09UR19F
TkFCTEUgIDB4MDAKICAgICAgfCAKL2hvbWUvbW9oYW4vYW1sb2dpYy9idWlsZC90bXAvd29yay9t
ZXNvbnM0X2xpYjMyX2FwMjIyLXBva3ktbGludXgvYnEyNDI5eC1jaGFyZ2VyLzAuMS1yMC9icTI0
Mjl4X2NoYXJnZXIuYzozNjogbm90ZTogdGhpcyBpcyB0aGUgbG9jYXRpb24gb2YgdGhlIHByZXZp
b3VzIGRlZmluaXRpb24KICAgMzYgfCAjZGVmaW5lIEJRMjQyOVhfT1RHX0VOQUJMRSAgMHgwMQog
ICAgICB8IAovaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJf
YXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hhcmdlci5j
OiBJbiBmdW5jdGlvbiAnYnEyNDI5eF9kaXNhYmxlX290Zyc6Ci9ob21lL21vaGFuL2FtbG9naWMv
YnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIzMl9hcDIyMi1wb2t5LWxpbnV4L2JxMjQyOXgtY2hh
cmdlci8wLjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6MzE3OjE0OiBlcnJvcjogJ0JRMjQyOVhfT1RH
X0RJU0FCTEUnIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlkIHlv
dSBtZWFuICdCUTI0MjlYX1dEX0RJU0FCTEUnPwogIDMxNyB8ICAgICB1OCB2YWwgPSBCUTI0MjlY
X09UR19ESVNBQkxFIDw8IEJRMjQyOXhfT1RHX1NISUZUOwogICAgICB8ICAgICAgICAgICAgICBe
fn5+fn5+fn5+fn5+fn5+fn5+CiAgICAgIHwgICAgICAgICAgICAgIEJRMjQyOVhfV0RfRElTQUJM
RQovaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJfYXAyMjIt
cG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hhcmdlci5jOjMxNzox
NDogbm90ZTogZWFjaCB1bmRlY2xhcmVkIGlkZW50aWZpZXIgaXMgcmVwb3J0ZWQgb25seSBvbmNl
IGZvciBlYWNoIGZ1bmN0aW9uIGl0IGFwcGVhcnMgaW4KL2hvbWUvbW9oYW4vYW1sb2dpYy9idWls
ZC90bXAvd29yay9tZXNvbnM0X2xpYjMyX2FwMjIyLXBva3ktbGludXgvYnEyNDI5eC1jaGFyZ2Vy
LzAuMS1yMC9icTI0Mjl4X2NoYXJnZXIuYzozMTc6Mzc6IGVycm9yOiAnQlEyNDI5eF9PVEdfU0hJ
RlQnIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFu
ICdCUTI0MjlYX09UR19TSElGVCc/CiAgMzE3IHwgICAgIHU4IHZhbCA9IEJRMjQyOVhfT1RHX0RJ
U0FCTEUgPDwgQlEyNDI5eF9PVEdfU0hJRlQ7CiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn4KICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBCUTI0MjlYX09UR19TSElGVAovaG9tZS9tb2hhbi9hbWxvZ2lj
L2J1aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJfYXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNo
YXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hhcmdlci5jOiBBdCB0b3AgbGV2ZWw6Ci9ob21lL21vaGFu
L2FtbG9naWMvYnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIzMl9hcDIyMi1wb2t5LWxpbnV4L2Jx
MjQyOXgtY2hhcmdlci8wLjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6MzIzOjYzOiBlcnJvcjogZnVu
Y3Rpb24gZGVjbGFyYXRpb24gaXNuJ3QgYSBwcm90b3R5cGUgWy1XZXJyb3I9c3RyaWN0LXByb3Rv
dHlwZXNdCiAgMzIzIHwgc3RhdGljIGludCBicTI0Mjl4X3NldF9jaGFyZ2VjdXJyZW50KHN0cnVj
dCBicTI0Mjl4ICpicSwgZW51bSBicTI0Mjl4X2NoYXJnZV9jdXJyZW50IGN1cnJlbnQpCiAgICAg
IHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+Ci9ob21lL21vaGFuL2FtbG9naWMvYnVpbGQv
dG1wL3dvcmsvbWVzb25zNF9saWIzMl9hcDIyMi1wb2t5LWxpbnV4L2JxMjQyOXgtY2hhcmdlci8w
LjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6IEluIGZ1bmN0aW9uICdicTI0Mjl4X3NldF9jaGFyZ2V2
b2x0YWdlJzoKL2hvbWUvbW9oYW4vYW1sb2dpYy9idWlsZC90bXAvd29yay9tZXNvbnM0X2xpYjMy
X2FwMjIyLXBva3ktbGludXgvYnEyNDI5eC1jaGFyZ2VyLzAuMS1yMC9icTI0Mjl4X2NoYXJnZXIu
YzozNDk6NjogZXJyb3I6IHVudXNlZCB2YXJpYWJsZSAncmV0JyBbLVdlcnJvcj11bnVzZWQtdmFy
aWFibGVdCiAgMzQ5IHwgIGludCByZXQ7CiAgICAgIHwgICAgICBefn4KL2hvbWUvbW9oYW4vYW1s
b2dpYy9idWlsZC90bXAvd29yay9tZXNvbnM0X2xpYjMyX2FwMjIyLXBva3ktbGludXgvYnEyNDI5
eC1jaGFyZ2VyLzAuMS1yMC9icTI0Mjl4X2NoYXJnZXIuYzogSW4gZnVuY3Rpb24gJ2JxMjQyOXhf
c2V0X2lucHV0X3ZvbHRfbGltaXQnOgovaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3Jr
L21lc29uczRfbGliMzJfYXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2Jx
MjQyOXhfY2hhcmdlci5jOjM3Mzo2OiBlcnJvcjogdW51c2VkIHZhcmlhYmxlICdyZXQnIFstV2Vy
cm9yPXVudXNlZC12YXJpYWJsZV0KICAzNzMgfCAgaW50IHJldDsKICAgICAgfCAgICAgIF5+fgov
aG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJfYXAyMjItcG9r
eS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hhcmdlci5jOiBBdCB0b3Ag
bGV2ZWw6Ci9ob21lL21vaGFuL2FtbG9naWMvYnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIzMl9h
cDIyMi1wb2t5LWxpbnV4L2JxMjQyOXgtY2hhcmdlci8wLjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6
MzkzOjY5OiBlcnJvcjogZnVuY3Rpb24gZGVjbGFyYXRpb24gaXNuJ3QgYSBwcm90b3R5cGUgWy1X
ZXJyb3I9c3RyaWN0LXByb3RvdHlwZXNdCiAgMzkzIHwgc3RhdGljIGludCBicTI0Mjl4X3NldF9p
bnB1dF9jdXJyZW50X2xpbWl0KHN0cnVjdCBicTI0Mjl4ICpicSwgZW51bSBicTI0Mjl4X2lucHV0
X2N1cnJlbnRfbGltaXQgY3VycmVudCkKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fgovaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRf
bGliMzJfYXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hh
cmdlci5jOiBJbiBmdW5jdGlvbiAnYnEyNDI5eF9zZXRfaW5wdXRfY3VycmVudF9saW1pdCc6Ci9o
b21lL21vaGFuL2FtbG9naWMvYnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIzMl9hcDIyMi1wb2t5
LWxpbnV4L2JxMjQyOXgtY2hhcmdlci8wLjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6Mzk3OjY6IGVy
cm9yOiB1bnVzZWQgdmFyaWFibGUgJ3JldCcgWy1XZXJyb3I9dW51c2VkLXZhcmlhYmxlXQogIDM5
NyB8ICBpbnQgcmV0OwogICAgICB8ICAgICAgXn5+Ci9ob21lL21vaGFuL2FtbG9naWMvYnVpbGQv
dG1wL3dvcmsvbWVzb25zNF9saWIzMl9hcDIyMi1wb2t5LWxpbnV4L2JxMjQyOXgtY2hhcmdlci8w
LjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6IEluIGZ1bmN0aW9uICdicTI0Mjl4X3BzeV9yZWdpc3Rl
cic6Ci9ob21lL21vaGFuL2FtbG9naWMvYnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIzMl9hcDIy
Mi1wb2t5LWxpbnV4L2JxMjQyOXgtY2hhcmdlci8wLjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6NDc4
Ojk6IGVycm9yOiAnc3RydWN0IHBvd2VyX3N1cHBseScgaGFzIG5vIG1lbWJlciBuYW1lZCAnbmFt
ZScKICA0NzggfCAgYnEtPnVzYi5uYW1lID0gImJxMjQyOXgtdXNiIjsKICAgICAgfCAgICAgICAg
IF4KL2hvbWUvbW9oYW4vYW1sb2dpYy9idWlsZC90bXAvd29yay9tZXNvbnM0X2xpYjMyX2FwMjIy
LXBva3ktbGludXgvYnEyNDI5eC1jaGFyZ2VyLzAuMS1yMC9icTI0Mjl4X2NoYXJnZXIuYzo0Nzk6
OTogZXJyb3I6ICdzdHJ1Y3QgcG93ZXJfc3VwcGx5JyBoYXMgbm8gbWVtYmVyIG5hbWVkICd0eXBl
JwogIDQ3OSB8ICBicS0+dXNiLnR5cGUgPSBQT1dFUl9TVVBQTFlfVFlQRV9VU0I7CiAgICAgIHwg
ICAgICAgICBeCi9ob21lL21vaGFuL2FtbG9naWMvYnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIz
Ml9hcDIyMi1wb2t5LWxpbnV4L2JxMjQyOXgtY2hhcmdlci8wLjEtcjAvYnEyNDI5eF9jaGFyZ2Vy
LmM6NDgwOjk6IGVycm9yOiAnc3RydWN0IHBvd2VyX3N1cHBseScgaGFzIG5vIG1lbWJlciBuYW1l
ZCAncHJvcGVydGllcycKICA0ODAgfCAgYnEtPnVzYi5wcm9wZXJ0aWVzID0gYnEyNDI5eF9jaGFy
Z2VyX3Byb3BzOwogICAgICB8ICAgICAgICAgXgovaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3Rt
cC93b3JrL21lc29uczRfbGliMzJfYXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4x
LXIwL2JxMjQyOXhfY2hhcmdlci5jOjQ4MTo5OiBlcnJvcjogJ3N0cnVjdCBwb3dlcl9zdXBwbHkn
IGhhcyBubyBtZW1iZXIgbmFtZWQgJ251bV9wcm9wZXJ0aWVzJwogIDQ4MSB8ICBicS0+dXNiLm51
bV9wcm9wZXJ0aWVzID0gQVJSQVlfU0laRShicTI0Mjl4X2NoYXJnZXJfcHJvcHMpOwogICAgICB8
ICAgICAgICAgXgovaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGli
MzJfYXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hhcmdl
ci5jOjQ4Mjo5OiBlcnJvcjogJ3N0cnVjdCBwb3dlcl9zdXBwbHknIGhhcyBubyBtZW1iZXIgbmFt
ZWQgJ2dldF9wcm9wZXJ0eScKICA0ODIgfCAgYnEtPnVzYi5nZXRfcHJvcGVydHkgPSBicTI0Mjl4
X3VzYl9nZXRfcHJvcGVydHk7CiAgICAgIHwgICAgICAgICBeCi9ob21lL21vaGFuL2FtbG9naWMv
YnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIzMl9hcDIyMi1wb2t5LWxpbnV4L2JxMjQyOXgtY2hh
cmdlci8wLjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6NDgzOjk6IGVycm9yOiAnc3RydWN0IHBvd2Vy
X3N1cHBseScgaGFzIG5vIG1lbWJlciBuYW1lZCAnZXh0ZXJuYWxfcG93ZXJfY2hhbmdlZCcKICA0
ODMgfCAgYnEtPnVzYi5leHRlcm5hbF9wb3dlcl9jaGFuZ2VkID0gTlVMTDsKICAgICAgfCAgICAg
ICAgIF4KL2hvbWUvbW9oYW4vYW1sb2dpYy9idWlsZC90bXAvd29yay9tZXNvbnM0X2xpYjMyX2Fw
MjIyLXBva3ktbGludXgvYnEyNDI5eC1jaGFyZ2VyLzAuMS1yMC9icTI0Mjl4X2NoYXJnZXIuYzo0
ODU6Mzk6IGVycm9yOiBwYXNzaW5nIGFyZ3VtZW50IDIgb2YgJ3Bvd2VyX3N1cHBseV9yZWdpc3Rl
cicgZnJvbSBpbmNvbXBhdGlibGUgcG9pbnRlciB0eXBlIFstV2Vycm9yPWluY29tcGF0aWJsZS1w
b2ludGVyLXR5cGVzXQogIDQ4NSB8ICByZXQgPSBwb3dlcl9zdXBwbHlfcmVnaXN0ZXIoYnEtPmRl
diwgJmJxLT51c2IpOwogICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXn5+fn5+fn4KICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBw
b3dlcl9zdXBwbHkgKgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gL2hvbWUvbW9oYW4vYW1sb2dpYy9h
bWwtY29tcC9rZXJuZWwvYW1sLTUuNC9pbmNsdWRlL2xpbnV4L2kyYy9icTI0Mjl4Lmg6MjAsCiAg
ICAgICAgICAgICAgICAgZnJvbSAvaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21l
c29uczRfbGliMzJfYXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQy
OXhfY2hhcmdlci5jOjE3OgovaG9tZS9tb2hhbi9hbWxvZ2ljL2FtbC1jb21wL2tlcm5lbC9hbWwt
NS40L2luY2x1ZGUvbGludXgvcG93ZXJfc3VwcGx5Lmg6NDUxOjE6IG5vdGU6IGV4cGVjdGVkICdj
b25zdCBzdHJ1Y3QgcG93ZXJfc3VwcGx5X2Rlc2MgKicgYnV0IGFyZ3VtZW50IGlzIG9mIHR5cGUg
J3N0cnVjdCBwb3dlcl9zdXBwbHkgKicKICA0NTEgfCBwb3dlcl9zdXBwbHlfcmVnaXN0ZXIoc3Ry
dWN0IGRldmljZSAqcGFyZW50LAogICAgICB8IF5+fn5+fn5+fn5+fn5+fn5+fn5+fgovaG9tZS9t
b2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJfYXAyMjItcG9reS1saW51
eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hhcmdlci5jOjQ4NTo4OiBlcnJvcjog
dG9vIGZldyBhcmd1bWVudHMgdG8gZnVuY3Rpb24gJ3Bvd2VyX3N1cHBseV9yZWdpc3RlcicKICA0
ODUgfCAgcmV0ID0gcG93ZXJfc3VwcGx5X3JlZ2lzdGVyKGJxLT5kZXYsICZicS0+dXNiKTsKICAg
ICAgfCAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+CkluIGZpbGUgaW5jbHVkZWQgZnJvbSAv
aG9tZS9tb2hhbi9hbWxvZ2ljL2FtbC1jb21wL2tlcm5lbC9hbWwtNS40L2luY2x1ZGUvbGludXgv
aTJjL2JxMjQyOXguaDoyMCwKICAgICAgICAgICAgICAgICBmcm9tIC9ob21lL21vaGFuL2FtbG9n
aWMvYnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIzMl9hcDIyMi1wb2t5LWxpbnV4L2JxMjQyOXgt
Y2hhcmdlci8wLjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6MTc6Ci9ob21lL21vaGFuL2FtbG9naWMv
YW1sLWNvbXAva2VybmVsL2FtbC01LjQvaW5jbHVkZS9saW51eC9wb3dlcl9zdXBwbHkuaDo0NTE6
MTogbm90ZTogZGVjbGFyZWQgaGVyZQogIDQ1MSB8IHBvd2VyX3N1cHBseV9yZWdpc3RlcihzdHJ1
Y3QgZGV2aWNlICpwYXJlbnQsCiAgICAgIHwgXn5+fn5+fn5+fn5+fn5+fn5+fn5+Ci9ob21lL21v
aGFuL2FtbG9naWMvYnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIzMl9hcDIyMi1wb2t5LWxpbnV4
L2JxMjQyOXgtY2hhcmdlci8wLjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6NDkxOjEwOiBlcnJvcjog
J3N0cnVjdCBwb3dlcl9zdXBwbHknIGhhcyBubyBtZW1iZXIgbmFtZWQgJ25hbWUnCiAgNDkxIHwg
IGJxLT53YWxsLm5hbWUgPSAiYnEyNDI5eC13YWxsIjsKICAgICAgfCAgICAgICAgICBeCi9ob21l
L21vaGFuL2FtbG9naWMvYnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIzMl9hcDIyMi1wb2t5LWxp
bnV4L2JxMjQyOXgtY2hhcmdlci8wLjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6NDkyOjEwOiBlcnJv
cjogJ3N0cnVjdCBwb3dlcl9zdXBwbHknIGhhcyBubyBtZW1iZXIgbmFtZWQgJ3R5cGUnCiAgNDky
IHwgIGJxLT53YWxsLnR5cGUgPSBQT1dFUl9TVVBQTFlfVFlQRV9NQUlOUzsKICAgICAgfCAgICAg
ICAgICBeCi9ob21lL21vaGFuL2FtbG9naWMvYnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIzMl9h
cDIyMi1wb2t5LWxpbnV4L2JxMjQyOXgtY2hhcmdlci8wLjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6
NDkzOjEwOiBlcnJvcjogJ3N0cnVjdCBwb3dlcl9zdXBwbHknIGhhcyBubyBtZW1iZXIgbmFtZWQg
J3Byb3BlcnRpZXMnCiAgNDkzIHwgIGJxLT53YWxsLnByb3BlcnRpZXMgPSBicTI0Mjl4X2NoYXJn
ZXJfcHJvcHM7CiAgICAgIHwgICAgICAgICAgXgovaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3Rt
cC93b3JrL21lc29uczRfbGliMzJfYXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4x
LXIwL2JxMjQyOXhfY2hhcmdlci5jOjQ5NDoxMDogZXJyb3I6ICdzdHJ1Y3QgcG93ZXJfc3VwcGx5
JyBoYXMgbm8gbWVtYmVyIG5hbWVkICdudW1fcHJvcGVydGllcycKICA0OTQgfCAgYnEtPndhbGwu
bnVtX3Byb3BlcnRpZXMgPSBBUlJBWV9TSVpFKGJxMjQyOXhfY2hhcmdlcl9wcm9wcyk7CiAgICAg
IHwgICAgICAgICAgXgovaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRf
bGliMzJfYXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hh
cmdlci5jOjQ5NToxMDogZXJyb3I6ICdzdHJ1Y3QgcG93ZXJfc3VwcGx5JyBoYXMgbm8gbWVtYmVy
IG5hbWVkICdnZXRfcHJvcGVydHknCiAgNDk1IHwgIGJxLT53YWxsLmdldF9wcm9wZXJ0eSA9IGJx
MjQyOXhfd2FsbF9nZXRfcHJvcGVydHk7CiAgICAgIHwgICAgICAgICAgXgovaG9tZS9tb2hhbi9h
bWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJfYXAyMjItcG9reS1saW51eC9icTI0
Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hhcmdlci5jOjQ5NjoxMDogZXJyb3I6ICdzdHJ1
Y3QgcG93ZXJfc3VwcGx5JyBoYXMgbm8gbWVtYmVyIG5hbWVkICdleHRlcm5hbF9wb3dlcl9jaGFu
Z2VkJwogIDQ5NiB8ICBicS0+d2FsbC5leHRlcm5hbF9wb3dlcl9jaGFuZ2VkID0gTlVMTDsKICAg
ICAgfCAgICAgICAgICBeCi9ob21lL21vaGFuL2FtbG9naWMvYnVpbGQvdG1wL3dvcmsvbWVzb25z
NF9saWIzMl9hcDIyMi1wb2t5LWxpbnV4L2JxMjQyOXgtY2hhcmdlci8wLjEtcjAvYnEyNDI5eF9j
aGFyZ2VyLmM6NDk4OjM5OiBlcnJvcjogcGFzc2luZyBhcmd1bWVudCAyIG9mICdwb3dlcl9zdXBw
bHlfcmVnaXN0ZXInIGZyb20gaW5jb21wYXRpYmxlIHBvaW50ZXIgdHlwZSBbLVdlcnJvcj1pbmNv
bXBhdGlibGUtcG9pbnRlci10eXBlc10KICA0OTggfCAgcmV0ID0gcG93ZXJfc3VwcGx5X3JlZ2lz
dGVyKGJxLT5kZXYsICZicS0+d2FsbCk7CiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBefn5+fn5+fn4KICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHN0cnVjdCBwb3dlcl9zdXBwbHkgKgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gL2hvbWUvbW9o
YW4vYW1sb2dpYy9hbWwtY29tcC9rZXJuZWwvYW1sLTUuNC9pbmNsdWRlL2xpbnV4L2kyYy9icTI0
Mjl4Lmg6MjAsCiAgICAgICAgICAgICAgICAgZnJvbSAvaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxk
L3RtcC93b3JrL21lc29uczRfbGliMzJfYXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIv
MC4xLXIwL2JxMjQyOXhfY2hhcmdlci5jOjE3OgovaG9tZS9tb2hhbi9hbWxvZ2ljL2FtbC1jb21w
L2tlcm5lbC9hbWwtNS40L2luY2x1ZGUvbGludXgvcG93ZXJfc3VwcGx5Lmg6NDUxOjE6IG5vdGU6
IGV4cGVjdGVkICdjb25zdCBzdHJ1Y3QgcG93ZXJfc3VwcGx5X2Rlc2MgKicgYnV0IGFyZ3VtZW50
IGlzIG9mIHR5cGUgJ3N0cnVjdCBwb3dlcl9zdXBwbHkgKicKICA0NTEgfCBwb3dlcl9zdXBwbHlf
cmVnaXN0ZXIoc3RydWN0IGRldmljZSAqcGFyZW50LAogICAgICB8IF5+fn5+fn5+fn5+fn5+fn5+
fn5+fgovaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJfYXAy
MjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hhcmdlci5jOjQ5
ODo4OiBlcnJvcjogdG9vIGZldyBhcmd1bWVudHMgdG8gZnVuY3Rpb24gJ3Bvd2VyX3N1cHBseV9y
ZWdpc3RlcicKICA0OTggfCAgcmV0ID0gcG93ZXJfc3VwcGx5X3JlZ2lzdGVyKGJxLT5kZXYsICZi
cS0+d2FsbCk7CiAgICAgIHwgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fgpJbiBmaWxlIGlu
Y2x1ZGVkIGZyb20gL2hvbWUvbW9oYW4vYW1sb2dpYy9hbWwtY29tcC9rZXJuZWwvYW1sLTUuNC9p
bmNsdWRlL2xpbnV4L2kyYy9icTI0Mjl4Lmg6MjAsCiAgICAgICAgICAgICAgICAgZnJvbSAvaG9t
ZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJfYXAyMjItcG9reS1s
aW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hhcmdlci5jOjE3OgovaG9tZS9t
b2hhbi9hbWxvZ2ljL2FtbC1jb21wL2tlcm5lbC9hbWwtNS40L2luY2x1ZGUvbGludXgvcG93ZXJf
c3VwcGx5Lmg6NDUxOjE6IG5vdGU6IGRlY2xhcmVkIGhlcmUKICA0NTEgfCBwb3dlcl9zdXBwbHlf
cmVnaXN0ZXIoc3RydWN0IGRldmljZSAqcGFyZW50LAogICAgICB8IF5+fn5+fn5+fn5+fn5+fn5+
fn5+fgpBdCB0b3AgbGV2ZWw6Ci9ob21lL21vaGFuL2FtbG9naWMvYnVpbGQvdG1wL3dvcmsvbWVz
b25zNF9saWIzMl9hcDIyMi1wb2t5LWxpbnV4L2JxMjQyOXgtY2hhcmdlci8wLjEtcjAvYnEyNDI5
eF9jaGFyZ2VyLmM6MzkzOjEyOiBlcnJvcjogJ2JxMjQyOXhfc2V0X2lucHV0X2N1cnJlbnRfbGlt
aXQnIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1mdW5jdGlvbl0KICAzOTMg
fCBzdGF0aWMgaW50IGJxMjQyOXhfc2V0X2lucHV0X2N1cnJlbnRfbGltaXQoc3RydWN0IGJxMjQy
OXggKmJxLCBlbnVtIGJxMjQyOXhfaW5wdXRfY3VycmVudF9saW1pdCBjdXJyZW50KQogICAgICB8
ICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgovaG9tZS9tb2hhbi9h
bWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJfYXAyMjItcG9reS1saW51eC9icTI0
Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hhcmdlci5jOjM2OToxMjogZXJyb3I6ICdicTI0
Mjl4X3NldF9pbnB1dF92b2x0X2xpbWl0JyBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11
bnVzZWQtZnVuY3Rpb25dCiAgMzY5IHwgc3RhdGljIGludCBicTI0Mjl4X3NldF9pbnB1dF92b2x0
X2xpbWl0KHN0cnVjdCBicTI0Mjl4ICpicSwgZW51bSBicTI0Mjl4X2lucHV0X3ZvbHRhZ2VfbGlt
aXQgdm9sdCkKICAgICAgfCAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4K
L2hvbWUvbW9oYW4vYW1sb2dpYy9idWlsZC90bXAvd29yay9tZXNvbnM0X2xpYjMyX2FwMjIyLXBv
a3ktbGludXgvYnEyNDI5eC1jaGFyZ2VyLzAuMS1yMC9icTI0Mjl4X2NoYXJnZXIuYzozNDU6MTI6
IGVycm9yOiAnYnEyNDI5eF9zZXRfY2hhcmdldm9sdGFnZScgZGVmaW5lZCBidXQgbm90IHVzZWQg
Wy1XZXJyb3I9dW51c2VkLWZ1bmN0aW9uXQogIDM0NSB8IHN0YXRpYyBpbnQgYnEyNDI5eF9zZXRf
Y2hhcmdldm9sdGFnZShzdHJ1Y3QgYnEyNDI5eCAqYnEsIGVudW0gYnEyNDI5eF9jaGFyZ2Vfdm9s
dGFnZV9saW1pdCB2b2x0KQogICAgICB8ICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fgovaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJfYXAy
MjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hhcmdlci5jOjMy
MzoxMjogZXJyb3I6ICdicTI0Mjl4X3NldF9jaGFyZ2VjdXJyZW50JyBkZWZpbmVkIGJ1dCBub3Qg
dXNlZCBbLVdlcnJvcj11bnVzZWQtZnVuY3Rpb25dCiAgMzIzIHwgc3RhdGljIGludCBicTI0Mjl4
X3NldF9jaGFyZ2VjdXJyZW50KHN0cnVjdCBicTI0Mjl4ICpicSwgZW51bSBicTI0Mjl4X2NoYXJn
ZV9jdXJyZW50IGN1cnJlbnQpCiAgICAgIHwgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+Ci9ob21lL21vaGFuL2FtbG9naWMvYnVpbGQvdG1wL3dvcmsvbWVzb25zNF9saWIzMl9h
cDIyMi1wb2t5LWxpbnV4L2JxMjQyOXgtY2hhcmdlci8wLjEtcjAvYnEyNDI5eF9jaGFyZ2VyLmM6
MzE1OjEyOiBlcnJvcjogJ2JxMjQyOXhfZGlzYWJsZV9vdGcnIGRlZmluZWQgYnV0IG5vdCB1c2Vk
IFstV2Vycm9yPXVudXNlZC1mdW5jdGlvbl0KICAzMTUgfCBzdGF0aWMgaW50IGJxMjQyOXhfZGlz
YWJsZV9vdGcoc3RydWN0IGJxMjQyOXggKmJxKQogICAgICB8ICAgICAgICAgICAgXn5+fn5+fn5+
fn5+fn5+fn5+fgovaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGli
MzJfYXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIwL2JxMjQyOXhfY2hhcmdl
ci5jOjMwNjoxMjogZXJyb3I6ICdicTI0Mjl4X2VuYWJsZV9vdGcnIGRlZmluZWQgYnV0IG5vdCB1
c2VkIFstV2Vycm9yPXVudXNlZC1mdW5jdGlvbl0KICAzMDYgfCBzdGF0aWMgaW50IGJxMjQyOXhf
ZW5hYmxlX290ZyhzdHJ1Y3QgYnEyNDI5eCAqYnEpCiAgICAgIHwgICAgICAgICAgICBefn5+fn5+
fn5+fn5+fn5+fn4KY2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKbWFr
ZVszXTogKioqIFsvaG9tZS9tb2hhbi9hbWxvZ2ljL2FtbC1jb21wL2tlcm5lbC9hbWwtNS40L3Nj
cmlwdHMvTWFrZWZpbGUuYnVpbGQ6Mjg0OiAvaG9tZS9tb2hhbi9hbWxvZ2ljL2J1aWxkL3RtcC93
b3JrL21lc29uczRfbGliMzJfYXAyMjItcG9reS1saW51eC9icTI0Mjl4LWNoYXJnZXIvMC4xLXIw
L2JxMjQyOXhfY2hhcmdlci5vXSBFcnJvciAxCkVSUk9SOiBvZV9ydW5tYWtlIGZhaWxlZAptYWtl
WzJdOiAqKiogWy9ob21lL21vaGFuL2FtbG9naWMvYW1sLWNvbXAva2VybmVsL2FtbC01LjQvTWFr
ZWZpbGU6MTg1NzogL2hvbWUvbW9oYW4vYW1sb2dpYy9idWlsZC90bXAvd29yay9tZXNvbnM0X2xp
YjMyX2FwMjIyLXBva3ktbGludXgvYnEyNDI5eC1jaGFyZ2VyLzAuMS1yMF0gRXJyb3IgMgptYWtl
WzJdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvbW9oYW4vYW1sb2dpYy9idWlsZC90bXAvd29y
ay1zaGFyZWQvbWVzb25zNC1saWIzMi1hcDIyMi9rZXJuZWwtYnVpbGQtYXJ0aWZhY3RzJwptYWtl
WzFdOiAqKiogW01ha2VmaWxlOjE3OTogc3ViLW1ha2VdIEVycm9yIDIKbWFrZVsxXTogTGVhdmlu
ZyBkaXJlY3RvcnkgJy9ob21lL21vaGFuL2FtbG9naWMvYW1sLWNvbXAva2VybmVsL2FtbC01LjQn
Cm1ha2U6ICoqKiBbTWFrZWZpbGU6NzogYWxsXSBFcnJvciAyCldBUk5JTkc6IGV4aXQgY29kZSAx
IGZyb20gYSBzaGVsbCBjb21tYW5kLgpFUlJPUjogRXhlY3V0aW9uIG9mICcvaG9tZS9tb2hhbi9h
bWxvZ2ljL2J1aWxkL3RtcC93b3JrL21lc29uczRfbGliMzJfYXAyMjItcG9reS1saW51eC9icTI0
Mjl4LWNoYXJnZXIvMC4xLXIwL3RlbXAvcnVuLmRvX2NvbXBpbGUuMzIyOTI4JyBmYWlsZWQgd2l0
aCBleGl0IGNvZGUgMQo=
--00000000000012819c05fe8b108a--

