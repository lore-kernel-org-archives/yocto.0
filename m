Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6F3CCD5BA3
	for <webhook@archiver.kernel.org>; Thu,  5 Sep 2024 10:15:46 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web10.5984.1725531343600239087
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Sep 2024 03:15:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LCjxNqFU;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a86a37208b2so92492366b.0
        for <yocto@lists.yoctoproject.org>; Thu, 05 Sep 2024 03:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725531342; x=1726136142; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4/S2LuTXK3hwWpUmjskFB3t722qr8oygXn+vbOy3cgo=;
        b=LCjxNqFU3Q2hy44hgTwosUHAi0Yap30TjnvjRPLMyULjoZdsRTMcr/2/cwQkvkUEF4
         p2+Wliw1CbC6WAXS8y4rONMldj3Lsa+gWckvWjnQi0stUGZ+fdDvv1xMW3EDf0xUQ6MS
         9DapyK5pddblYhQARggby4vd/cjt7OwRmqMNEJIGCDWyqT26l+Q1cFcvE3FoDqZJGHyB
         ZzYoh0wj75P0sgyzeNt5EuozmtZpCn5sgbkO4bhV4F4+YetBSU9lI9hFSK3ofKTfo36r
         5fm0HLAGcoApckCtvZR0p9Enn2LQ/S14GMg3gqQtoOUYuH6rzY0R873k2pwF5wzlfaS+
         eHug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725531342; x=1726136142;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4/S2LuTXK3hwWpUmjskFB3t722qr8oygXn+vbOy3cgo=;
        b=cNuV7lldFAuDlSXtmDYfV01RR6u0/GZ5olljKThWsjGmEUCLwtjXMNAYg5oVoKC/z6
         dspGRVX1GUdpdepGBvOgAQI1+evaqKoocUIKi0kfr+KnMwGoTk5GCYV1zH365TOa4q4w
         qh+zz3/+LjSu8CMY+mt5+eTpwzNw2QJfcZKLB0A+C25ABTW4Igje5E0NmfX5zgpQdB2Y
         juAExxba4hFg9LBirfomI7YJefMTEhGztDCLCY0HF0viNmTGHoKwHEZ/dn9Vw149wMuk
         1YWBT8ZjsJXw6DyxHRjqpJyyX6+l2HnC+SHQDpZTLmhn2+/xBrsoUuaZerVWLLfa5b3m
         CyWQ==
X-Gm-Message-State: AOJu0YzgEUnBy3HDgldmWH99fk3jvkt4N8y/Es02k6hduhuiB1R5Yoyt
	HrkMByh2QM8d/cAVLDxzNQec1pdsMGmeXL4rb1IeuFbj6IVVyZV1+K5Jr7+ZgRsmc77mtnAtD2l
	PV0whmBVMR49hrqyj6jpMdnRYxRs=
X-Google-Smtp-Source: AGHT+IFLrono5CT7V3HdBtMMYezp9awr0ri+xWdAXVZeGeUaKa7HGv/tRGGlDVeXN6bIXMOvgZuFHEVbdn0BaHuun3E=
X-Received: by 2002:a17:907:948f:b0:a72:750d:ab08 with SMTP id
 a640c23a62f3a-a897f77eef9mr1743379666b.14.1725531339507; Thu, 05 Sep 2024
 03:15:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBngRr24GPs1VfLJDQBHn_Gt0Q_S9hxUJevVfWT6V7TBfBg@mail.gmail.com>
 <CAMKF1sqXrUt2WXcxRAjjpsSyqKYiV1jk+nAygfnOiTFDC_tx4Q@mail.gmail.com>
In-Reply-To: <CAMKF1sqXrUt2WXcxRAjjpsSyqKYiV1jk+nAygfnOiTFDC_tx4Q@mail.gmail.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Thu, 5 Sep 2024 15:45:27 +0530
Message-ID: <CAPJWBnhmDHnZC_gKmaw+39F+H=Bkf6CSjCgTT8oTX=rtY7YhMA@mail.gmail.com>
Subject: Re: [yocto] Linking stage error
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008a500a06215c9231"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Sep 2024 10:15:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63785

--0000000000008a500a06215c9231
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I checked, but I have already commented out all the main flags.
Also log.do_compile file

DEBUG: Executing shell function do_compile
# No pre-build defined
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/common/sr=
c/sl_assert.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/common/sr=
c/sl_core_mock.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/common/sr=
c/sl_slist.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/common/sr=
c/sl_string.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/c=
li/src/sl_cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/c=
li/src/sl_cli_arguments.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/c=
li/src/sl_cli_command.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/c=
li/src/sl_cli_input.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/c=
li/src/sl_cli_io.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/c=
li/src/sl_cli_threaded_host.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/c=
li/src/sl_cli_tokenize.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/i=
ostream/src/sl_iostream.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/i=
ostream/src/sl_iostream_stdio.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/l=
egacy_common_ash/src/ash-common.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/l=
egacy_hal/src/crc.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/l=
egacy_hal/src/ember-printf-convert.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/l=
egacy_hal/src/micro_host.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/l=
egacy_hal/src/random.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/l=
egacy_hal/src/system-timer.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/l=
egacy_host/src/token.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/s=
ystem/src/sl_system_init.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/s=
ystem/src/sl_system_process_action.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/t=
oken_manager/src/sl_token_def.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/ezsp-host/ash/ash-host-ui.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/ezsp-host/ash/ash-host.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/ezsp-host/ezsp-host-io.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/ezsp-host/ezsp-host-queues.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/ezsp-host/ezsp-host-ui.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/cli/core-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/cli/network-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/cli/option-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/cli/security-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/cli/zcl-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/cli/zdo-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/common/sl_zigbee_system_common.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/common/zigbee_app_framework_host_cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/common/zigbee_app_framework_sleep.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/common/zigbee_app_framework_sleep_cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin-host/ezsp/ezsp-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-c=
b.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin-host/gateway/gateway-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin-host/gateway/gateway-support-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin-host/gateway/gateway-support.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin-host/ncp-configuration/ncp-configuration.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/address-table/address-table-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/address-table/address-table.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/basic/basic-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/basic/basic.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/color-control-server/color-control-server-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/color-control-server/color-control-server.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/concentrator/concentrator-support-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/concentrator/concentrator-support.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/counters/af-counters.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/counters/counters-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/counters/counters-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/counters/counters-ota-host.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/debug-print/sl_zigbee_debug_print.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/device-database/device-database-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/device-database/device-database-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/device-database/device-database.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ezmode-commissioning/ez-mode-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ezmode-commissioning/ez-mode.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/find-and-bind-target/find-and-bind-target-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/find-and-bind-target/find-and-bind-target.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/green-power-client/green-power-client-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/green-power-client/green-power-client.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/green-power-common/green-power-common.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/green-power-server/green-power-security-test-vectors.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/green-power-server/green-power-security.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/green-power-server/green-power-server-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/green-power-server/green-power-server-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/green-power-server/green-power-server-gpd-cmd-maps.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/green-power-server/green-power-server.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/green-power-translation-table/green-power-translation-ta=
ble-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/green-power-translation-table/green-power-translation-ta=
ble-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/green-power-translation-table/green-power-translation-ta=
ble.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/groups-client/groups-client.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/groups-server/groups-server-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/groups-server/groups-server-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/groups-server/groups-server-common.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/groups-server/groups-server.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ias-zone-client/ias-zone-client-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ias-zone-client/ias-zone-client.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/identify-feedback/identify-feedback.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/identify/identify-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/identify/identify-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/identify/identify.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/level-control/level-control-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/level-control/level-control.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/network-creator-security/network-creator-security-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/network-creator-security/network-creator-security.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/network-creator/network-creator-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/network-creator/network-creator-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/network-creator/network-creator.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/network-steering/network-steering-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/network-steering/network-steering-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/network-steering/network-steering-v2.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/network-steering/network-steering.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/on-off/on-off-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/on-off/on-off.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-bootload/ota-bootload-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-bootload/ota-bootload-ncp-uart.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-bootload/ota-bootload-ncp.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-bootload/ota-bootload-xmodem.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-client-policy/ota-client-policy.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-client/ota-client-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-client/ota-client-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-client/ota-client-page-request.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-client/ota-client-signature-verify.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-client/ota-client.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-common/ota-common.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-server-policy/ota-server-policy-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-server-policy/ota-server-policy.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-server/ota-server-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-server/ota-server-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-server/ota-server-dynamic-block-period.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-server/ota-server-page-request.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-server/ota-server.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-storage-common/ota-storage-common-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-storage-common/ota-storage-common.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/poll-control-client/poll-control-client-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/poll-control-client/poll-control-client.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/reporting/reporting-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/reporting/reporting-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/reporting/reporting-default-configuration.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/reporting/reporting.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/scan-dispatch/scan-dispatch.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/scenes-client/scenes-client.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/scenes/scenes-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/scenes/scenes-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/scenes/scenes.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/simple-metering-client/simple-metering-client-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/simple-metering-client/simple-metering-client-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/simple-metering-client/simple-metering-client.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/stack-diagnostics/stack-diagnostics.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/test-harness/read-write-attributes.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/test-harness/test-harness-host.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/test-harness/test-harness.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/time-server/time-server.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-k=
ey-update-broadcast.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-ke=
y-update-periodic.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key=
-update-unicast.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/update-tc-link-key/update-tc-link-key.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/zcl_cli/zigbee-zcl-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/zll-level-control-server/zll-level-control-server.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/security/af-node.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/security/af-security-common.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/security/af-trust-center.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/security/crypto-state.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/service-function/sl_service_function.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/signature-decode/sl_signature_decode.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/af-common.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/af-event.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/af-host.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/attribute-size.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/attribute-storage.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/attribute-table.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/client-api.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/global-callback.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/global-other-callback.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/message.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/multi-network.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/print-formatter.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/print.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/process-cluster-message.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/process-global-message.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/service-discovery-common.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/service-discovery-host.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/time-util.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/util.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/zcl-util.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/util/common/library.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/util/ezsp/ezsp-callbacks.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/util/ezsp/ezsp-enum-decode.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/util/ezsp/ezsp-frame-utilities.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/util/ezsp/ezsp.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/util/ezsp/serial-interface-uart.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/util/security/security-address-cache-host.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/util/serial/linux-serial.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/util/serial/sl_zigbee_command_interpreter.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/util/zigbee-framework/zigbee-device-common.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/util/zigbee-framework/zigbee-device-host.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/st=
ack/config/sl_zigbee_configuration_host_access.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/st=
ack/framework/aes-ecb.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/st=
ack/gp/gp-util.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/st=
ack/security/zigbee-security-manager-host.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/plugin/byte_u=
tilities/byte-utilities.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/silicon_labs/=
silabs_core/event_queue/event-queue.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/third_party/m=
bedtls/library/aes.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/third_party/m=
bedtls/library/constant_time.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/third_party/m=
bedtls/library/platform.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/third_party/m=
bedtls/library/platform_util.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/third_party/m=
bedtls/library/psa_crypto_client.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/third_party/m=
bedtls/library/psa_util.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/third_party/m=
bedtls/library/threading.c
Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/third_party/p=
rintf/printf.c









*Building
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/third_party/p=
rintf/src/iostream_printf.cLinking
././Z3GatewayGPCombo/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/=
z3gatewayGPCombo/0.1-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/..=
/../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.3.0/ld:
././project/app.o: Relocations in generic ELF (EM:
62)/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/=
0.1-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch=
64-poky-linux/gcc/aarch64-poky-linux/9.3.0/ld:
././project/app.o: Relocations in generic ELF (EM:
62)/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/=
0.1-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch=
64-poky-linux/gcc/aarch64-poky-linux/9.3.0/ld:
././project/app.o: Relocations in generic ELF (EM:
62)/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/=
0.1-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch=
64-poky-linux/gcc/aarch64-poky-linux/9.3.0/ld:
././project/app.o: error adding symbols: file in wrong formatcollect2:
error: ld returned 1 exit statusmake: *** [Makefile:158:
Z3GatewayGPCombo.out] Error 1WARNING: exit code 2 from a shell command.*
*ERROR: Execution of
'/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.=
1-r0/temp/run.do_compile.5763'
failed with exit code 2 *


*Regards,*
*Hassan*

On Wed, Sep 4, 2024 at 8:17=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Sep 4, 2024 at 7:36=E2=80=AFAM MOHAMMED HASSAN via
> lists.yoctoproject.org
> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hi guys,
> > I am trying to run a Makefile and add the binary to my arm64 yocto
> dunfell build. The issue is
> > the linking stage throws generic ELF error. I have commented out
> compiler related info in my Makefile but still face the issue. Please hav=
e
> a look and point me in the right direction.
> >
> > Initialising tasks: 100%
> |########################################################################=
######################################################################|
> Time: 0:00:04
> > Sstate summary: Wanted 5 Found 0 Missed 5 Current 537 (0% match, 99%
> complete)
> > NOTE: Executing Tasks
> > WARNING: QA Issue: PN: z3gatewayGPCombo is upper case, this can result
> in unexpected behavior. [uppercase-pn]
> > WARNING: QA Issue: PN: z3gatewayGPCombo is upper case, this can result
> in unexpected behavior. [uppercase-pn]
> > ERROR: z3gatewayGPCombo-0.1-r0 do_compile: Execution of
> '/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/=
0.1-r0/temp/run.do_compile.137942'
> failed with exit code 2
> > ERROR: Logfile of failure stored in:
> /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0=
.1-r0/temp/log.do_compile.137942
> > Log data follows:
> > | DEBUG: Executing shell function do_compile
> > | # No pre-build defined
> > | Linking ././Z3GatewayGPCombo
> > | aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF
> (EM: 62)
> > | aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF
> (EM: 62)
> > | aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF
> (EM: 62)
> > | aarch64-poky-linux-ld: ././project/app.o: error adding symbols: file
> in wrong format
>
> Here is your hint. Most likely, the Makefile is hardcoding CC/CXX
> values but then not doing same for LD so you end up it ignoring cross
> compiler
> during compile phase but then pick up cross linker during linker
> stage. Maybe you can share log.do_compile as well.
>
> > | make: *** [Makefile:157: Z3GatewayGPCombo.out] Error 1
> > | WARNING: exit code 2 from a shell command.
> > | ERROR: Execution of
> '/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/=
0.1-r0/temp/run.do_compile.137942'
> failed with exit code 2
> > ERROR: Task
> (/home/edula/yocto3.0/meta-blaze/recipes-example/z3gatewayGPCombo/z3gatew=
ayGPCombo_0.1.bb:do_compile)
> failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 1782 tasks of which 1780 didn't need to
> be rerun and 1 failed.
> > NOTE: Writing buildhistory
> > NOTE: Writing buildhistory took: 2 seconds
> >
> >
> > Thanks
> > Hassan
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#63783):
> https://lists.yoctoproject.org/g/yocto/message/63783
> > Mute This Topic: https://lists.yoctoproject.org/mt/108266063/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--0000000000008a500a06215c9231
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I checked, but I have already commented out all the main f=
lags.=C2=A0<div>Also log.do_compile file</div><div><br></div>DEBUG: Executi=
ng shell function do_compile<br># No pre-build defined<br>Building /home/ed=
ula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simp=
licity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/common/src/sl_ass=
ert.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3=
gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/=
platform/common/src/sl_core_mock.c<br>Building /home/edula/yocto3.0/build/t=
mp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Gateway=
GPCombo/../../simplicity_sdk/platform/common/src/sl_slist.c<br>Building /ho=
me/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0=
/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/common/src/s=
l_string.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-lin=
ux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity=
_sdk/platform/service/cli/src/sl_cli.c<br>Building /home/edula/yocto3.0/bui=
ld/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Gat=
ewayGPCombo/../../simplicity_sdk/platform/service/cli/src/sl_cli_arguments.=
c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gate=
wayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/plat=
form/service/cli/src/sl_cli_command.c<br>Building /home/edula/yocto3.0/buil=
d/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Gate=
wayGPCombo/../../simplicity_sdk/platform/service/cli/src/sl_cli_input.c<br>=
Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGP=
Combo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/=
service/cli/src/sl_cli_io.c<br>Building /home/edula/yocto3.0/build/tmp/work=
/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo=
/../../simplicity_sdk/platform/service/cli/src/sl_cli_threaded_host.c<br>Bu=
ilding /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCo=
mbo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/se=
rvice/cli/src/sl_cli_tokenize.c<br>Building /home/edula/yocto3.0/build/tmp/=
work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPC=
ombo/../../simplicity_sdk/platform/service/iostream/src/sl_iostream.c<br>Bu=
ilding /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCo=
mbo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/se=
rvice/iostream/src/sl_iostream_stdio.c<br>Building /home/edula/yocto3.0/bui=
ld/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Gat=
ewayGPCombo/../../simplicity_sdk/platform/service/legacy_common_ash/src/ash=
-common.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linu=
x/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_=
sdk/platform/service/legacy_hal/src/crc.c<br>Building /home/edula/yocto3.0/=
build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3=
GatewayGPCombo/../../simplicity_sdk/platform/service/legacy_hal/src/ember-p=
rintf-convert.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-pok=
y-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simpl=
icity_sdk/platform/service/legacy_hal/src/micro_host.c<br>Building /home/ed=
ula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simp=
licity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/legacy_ha=
l/src/random.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky=
-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simpli=
city_sdk/platform/service/legacy_hal/src/system-timer.c<br>Building /home/e=
dula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/sim=
plicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/legacy_h=
ost/src/token.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-pok=
y-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simpl=
icity_sdk/platform/service/system/src/sl_system_init.c<br>Building /home/ed=
ula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simp=
licity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platform/service/system/sr=
c/sl_system_process_action.c<br>Building /home/edula/yocto3.0/build/tmp/wor=
k/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPComb=
o/../../simplicity_sdk/platform/service/token_manager/src/sl_token_def.c<br=
>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayG=
PCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol=
/zigbee/app/ezsp-host/ash/ash-host-ui.c<br>Building /home/edula/yocto3.0/bu=
ild/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Ga=
tewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/ezsp-host/ash/ash-hos=
t.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3ga=
tewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/pr=
otocol/zigbee/app/ezsp-host/ezsp-host-io.c<br>Building /home/edula/yocto3.0=
/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z=
3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/ezsp-host/ezsp-hos=
t-queues.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-lin=
ux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity=
_sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c<br>Building /home/edula/y=
octo3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicit=
y_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/c=
li/core-cli.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-=
linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplic=
ity_sdk/protocol/zigbee/app/framework/cli/network-cli.c<br>Building /home/e=
dula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/sim=
plicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/frame=
work/cli/option-cli.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch=
64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../..=
/simplicity_sdk/protocol/zigbee/app/framework/cli/security-cli.c<br>Buildin=
g /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0=
.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/=
app/framework/cli/zcl-cli.c<br>Building /home/edula/yocto3.0/build/tmp/work=
/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo=
/../../simplicity_sdk/protocol/zigbee/app/framework/cli/zdo-cli.c<br>Buildi=
ng /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/=
0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee=
/app/framework/common/sl_zigbee_system_common.c<br>Building /home/edula/yoc=
to3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_=
sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/com=
mon/zigbee_app_framework_host_cb.c<br>Building /home/edula/yocto3.0/build/t=
mp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Gateway=
GPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/common/zigbee_ap=
p_framework_sleep.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64=
-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../s=
implicity_sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_sle=
ep_cli.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux=
/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_s=
dk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c<br>Building /ho=
me/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0=
/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/f=
ramework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c=
<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatew=
ayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/proto=
col/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descript=
or-dispatch.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-=
linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplic=
ity_sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c<br>B=
uilding /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPC=
ombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/z=
igbee/app/framework/plugin-host/gateway/gateway-support-cli.c<br>Building /=
home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-=
r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app=
/framework/plugin-host/gateway/gateway-support.c<br>Building /home/edula/yo=
cto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity=
_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/pl=
ugin-host/ncp-configuration/ncp-configuration.c<br>Building /home/edula/yoc=
to3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_=
sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plu=
gin/address-table/address-table-cli.c<br>Building /home/edula/yocto3.0/buil=
d/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Gate=
wayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/addres=
s-table/address-table.c<br>Building /home/edula/yocto3.0/build/tmp/work/aar=
ch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../=
../simplicity_sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.c<br>=
Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGP=
Combo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/=
zigbee/app/framework/plugin/basic/basic.c<br>Building /home/edula/yocto3.0/=
build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3=
GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/co=
lor-control-server/color-control-server-cb.c<br>Building /home/edula/yocto3=
.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk=
/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin=
/color-control-server/color-control-server.c<br>Building /home/edula/yocto3=
.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk=
/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin=
/concentrator/concentrator-support-cli.c<br>Building /home/edula/yocto3.0/b=
uild/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3G=
atewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/con=
centrator/concentrator-support.c<br>Building /home/edula/yocto3.0/build/tmp=
/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGP=
Combo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/counters/af=
-counters.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-li=
nux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicit=
y_sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.c<br>Buildi=
ng /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/=
0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee=
/app/framework/plugin/counters/counters-cli.c<br>Building /home/edula/yocto=
3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sd=
k/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugi=
n/counters/counters-ota-host.c<br>Building /home/edula/yocto3.0/build/tmp/w=
ork/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCo=
mbo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/debug-print/s=
l_zigbee_debug_print.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarc=
h64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../.=
./simplicity_sdk/protocol/zigbee/app/framework/plugin/device-database/devic=
e-database-cb.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-pok=
y-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simpl=
icity_sdk/protocol/zigbee/app/framework/plugin/device-database/device-datab=
ase-cli.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linu=
x/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_=
sdk/protocol/zigbee/app/framework/plugin/device-database/device-database.c<=
br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewa=
yGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoc=
ol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c<br>Buildi=
ng /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/=
0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee=
/app/framework/plugin/ezmode-commissioning/ez-mode.c<br>Building /home/edul=
a/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simpli=
city_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framewor=
k/plugin/ezmode-commissioning/ezmode-commissioning-cb.c<br>Building /home/e=
dula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/sim=
plicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/frame=
work/plugin/find-and-bind-target/find-and-bind-target-cli.c<br>Building /ho=
me/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0=
/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/f=
ramework/plugin/find-and-bind-target/find-and-bind-target.c<br>Building /ho=
me/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0=
/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/f=
ramework/plugin/green-power-client/green-power-client-cli.c<br>Building /ho=
me/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0=
/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/f=
ramework/plugin/green-power-client/green-power-client.c<br>Building /home/e=
dula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/sim=
plicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/frame=
work/plugin/green-power-common/green-power-common.c<br>Building /home/edula=
/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplic=
ity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework=
/plugin/green-power-server/green-power-security-test-vectors.c<br>Building =
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/plugin/green-power-server/green-power-security.c<br>Building /h=
ome/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r=
0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/=
framework/plugin/green-power-server/green-power-server-cb.c<br>Building /ho=
me/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0=
/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/f=
ramework/plugin/green-power-server/green-power-server-cli.c<br>Building /ho=
me/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0=
/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/f=
ramework/plugin/green-power-server/green-power-server-gpd-cmd-maps.c<br>Bui=
lding /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCom=
bo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zig=
bee/app/framework/plugin/green-power-server/green-power-server.c<br>Buildin=
g /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0=
.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/=
app/framework/plugin/green-power-translation-table/green-power-translation-=
table-cb.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-lin=
ux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity=
_sdk/protocol/zigbee/app/framework/plugin/green-power-translation-table/gre=
en-power-translation-table-cli.c<br>Building /home/edula/yocto3.0/build/tmp=
/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGP=
Combo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/green-power=
-translation-table/green-power-translation-table.c<br>Building /home/edula/=
yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplici=
ty_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/=
plugin/groups-client/groups-client.c<br>Building /home/edula/yocto3.0/build=
/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Gatew=
ayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/groups-=
server/groups-server-cb.c<br>Building /home/edula/yocto3.0/build/tmp/work/a=
arch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/.=
./../simplicity_sdk/protocol/zigbee/app/framework/plugin/groups-server/grou=
ps-server-cli.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-pok=
y-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simpl=
icity_sdk/protocol/zigbee/app/framework/plugin/groups-server/groups-server-=
common.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux=
/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_s=
dk/protocol/zigbee/app/framework/plugin/groups-server/groups-server.c<br>Bu=
ilding /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCo=
mbo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zi=
gbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c<br>Building=
 /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.=
1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/a=
pp/framework/plugin/ias-zone-client/ias-zone-client.c<br>Building /home/edu=
la/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simpl=
icity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framewo=
rk/plugin/identify-feedback/identify-feedback.c<br>Building /home/edula/yoc=
to3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_=
sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plu=
gin/identify/identify-cb.c<br>Building /home/edula/yocto3.0/build/tmp/work/=
aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/=
../../simplicity_sdk/protocol/zigbee/app/framework/plugin/identify/identify=
-cli.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z=
3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk=
/protocol/zigbee/app/framework/plugin/identify/identify.c<br>Building /home=
/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/s=
implicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/fra=
mework/plugin/level-control/level-control-cb.c<br>Building /home/edula/yoct=
o3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_s=
dk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plug=
in/level-control/level-control.c<br>Building /home/edula/yocto3.0/build/tmp=
/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGP=
Combo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/network-cre=
ator-security/network-creator-security-cli.c<br>Building /home/edula/yocto3=
.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk=
/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin=
/network-creator-security/network-creator-security.c<br>Building /home/edul=
a/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simpli=
city_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framewor=
k/plugin/network-creator/network-creator-cb.c<br>Building /home/edula/yocto=
3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sd=
k/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugi=
n/network-creator/network-creator-cli.c<br>Building /home/edula/yocto3.0/bu=
ild/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Ga=
tewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/netw=
ork-creator/network-creator.c<br>Building /home/edula/yocto3.0/build/tmp/wo=
rk/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCom=
bo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/network-steeri=
ng/network-steering-cb.c<br>Building /home/edula/yocto3.0/build/tmp/work/aa=
rch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/..=
/../simplicity_sdk/protocol/zigbee/app/framework/plugin/network-steering/ne=
twork-steering-cli.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch6=
4-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../=
simplicity_sdk/protocol/zigbee/app/framework/plugin/network-steering/networ=
k-steering-v2.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-pok=
y-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simpl=
icity_sdk/protocol/zigbee/app/framework/plugin/network-steering/network-ste=
ering.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/=
z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sd=
k/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c<br>Building /home=
/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/s=
implicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/fra=
mework/plugin/on-off/on-off.c<br>Building /home/edula/yocto3.0/build/tmp/wo=
rk/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCom=
bo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/ota-bootload/o=
ta-bootload-cli.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-p=
oky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../sim=
plicity_sdk/protocol/zigbee/app/framework/plugin/ota-bootload/ota-bootload-=
ncp-uart.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-lin=
ux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity=
_sdk/protocol/zigbee/app/framework/plugin/ota-bootload/ota-bootload-ncp.c<b=
r>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-bootload/ota-bootload-xmodem.c<br>Buildin=
g /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0=
.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/=
app/framework/plugin/ota-client-policy/ota-client-policy.c<br>Building /hom=
e/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/=
simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/fr=
amework/plugin/ota-client/ota-client-cb.c<br>Building /home/edula/yocto3.0/=
build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3=
GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/ot=
a-client/ota-client-cli.c<br>Building /home/edula/yocto3.0/build/tmp/work/a=
arch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/.=
./../simplicity_sdk/protocol/zigbee/app/framework/plugin/ota-client/ota-cli=
ent-page-request.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-=
poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../si=
mplicity_sdk/protocol/zigbee/app/framework/plugin/ota-client/ota-client-sig=
nature-verify.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-pok=
y-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simpl=
icity_sdk/protocol/zigbee/app/framework/plugin/ota-client/ota-client.c<br>B=
uilding /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPC=
ombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/z=
igbee/app/framework/plugin/ota-common/ota-common.c<br>Building /home/edula/=
yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplici=
ty_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/=
plugin/ota-server-policy/ota-server-policy-cb.c<br>Building /home/edula/yoc=
to3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_=
sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plu=
gin/ota-server-policy/ota-server-policy.c<br>Building /home/edula/yocto3.0/=
build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3=
GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/ot=
a-server/ota-server-cb.c<br>Building /home/edula/yocto3.0/build/tmp/work/aa=
rch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/..=
/../simplicity_sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-serv=
er-cli.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux=
/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_s=
dk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block=
-period.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linu=
x/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_=
sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request=
.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gat=
ewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/pro=
tocol/zigbee/app/framework/plugin/ota-server/ota-server.c<br>Building /home=
/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/s=
implicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/fra=
mework/plugin/ota-storage-common/ota-storage-common-cli.c<br>Building /home=
/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/s=
implicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/fra=
mework/plugin/ota-storage-common/ota-storage-common.c<br>Building /home/edu=
la/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simpl=
icity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framewo=
rk/plugin/ota-storage-posix-filesystem/ota-storage-linux.c<br>Building /hom=
e/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/=
simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/fr=
amework/plugin/poll-control-client/poll-control-client-cli.c<br>Building /h=
ome/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r=
0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/=
framework/plugin/poll-control-client/poll-control-client.c<br>Building /hom=
e/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/=
simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/fr=
amework/plugin/reporting/reporting-cb.c<br>Building /home/edula/yocto3.0/bu=
ild/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Ga=
tewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/repo=
rting/reporting-cli.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch=
64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../..=
/simplicity_sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-de=
fault-configuration.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch=
64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../..=
/simplicity_sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.c<=
br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewa=
yGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoc=
ol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c<br>Building /h=
ome/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r=
0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/=
framework/plugin/scenes-client/scenes-client.c<br>Building /home/edula/yoct=
o3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_s=
dk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plug=
in/scenes/scenes-cb.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch=
64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../..=
/simplicity_sdk/protocol/zigbee/app/framework/plugin/scenes/scenes-cli.c<br=
>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayG=
PCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol=
/zigbee/app/framework/plugin/scenes/scenes.c<br>Building /home/edula/yocto3=
.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk=
/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin=
/simple-metering-client/simple-metering-client-cb.c<br>Building /home/edula=
/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplic=
ity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework=
/plugin/simple-metering-client/simple-metering-client-cli.c<br>Building /ho=
me/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0=
/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/f=
ramework/plugin/simple-metering-client/simple-metering-client.c<br>Building=
 /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.=
1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/a=
pp/framework/plugin/stack-diagnostics/stack-diagnostics.c<br>Building /home=
/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/s=
implicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/fra=
mework/plugin/test-harness/read-write-attributes.c<br>Building /home/edula/=
yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplici=
ty_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/=
plugin/test-harness/test-harness-host.c<br>Building /home/edula/yocto3.0/bu=
ild/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Ga=
tewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/test=
-harness/test-harness.c<br>Building /home/edula/yocto3.0/build/tmp/work/aar=
ch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../=
../simplicity_sdk/protocol/zigbee/app/framework/plugin/time-server/time-ser=
ver.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3=
gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/=
protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/=
trust-center-nwk-key-update-broadcast.c<br>Building /home/edula/yocto3.0/bu=
ild/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Ga=
tewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/plugin/trus=
t-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c<br>=
Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGP=
Combo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/=
zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-cente=
r-nwk-key-update-unicast.c<br>Building /home/edula/yocto3.0/build/tmp/work/=
aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/=
../../simplicity_sdk/protocol/zigbee/app/framework/plugin/update-tc-link-ke=
y/update-tc-link-key-cb.c<br>Building /home/edula/yocto3.0/build/tmp/work/a=
arch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/.=
./../simplicity_sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key=
/update-tc-link-key-cli.c<br>Building /home/edula/yocto3.0/build/tmp/work/a=
arch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/.=
./../simplicity_sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key=
/update-tc-link-key.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch=
64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../..=
/simplicity_sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl=
-framework-core-cb.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch6=
4-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../=
simplicity_sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.=
c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gate=
wayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/prot=
ocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c<br=
>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayG=
PCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol=
/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c<br>Building /h=
ome/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r=
0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/=
framework/plugin/zll-level-control-server/zll-level-control-server.c<br>Bui=
lding /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCom=
bo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zig=
bee/app/framework/security/af-node.c<br>Building /home/edula/yocto3.0/build=
/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Gatew=
ayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/security/af-se=
curity-common.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-pok=
y-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simpl=
icity_sdk/protocol/zigbee/app/framework/security/af-trust-center.c<br>Build=
ing /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo=
/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbe=
e/app/framework/security/crypto-state.c<br>Building /home/edula/yocto3.0/bu=
ild/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Ga=
tewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/service-fun=
ction/sl_service_function.c<br>Building /home/edula/yocto3.0/build/tmp/work=
/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo=
/../../simplicity_sdk/protocol/zigbee/app/framework/signature-decode/sl_sig=
nature_decode.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-pok=
y-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simpl=
icity_sdk/protocol/zigbee/app/framework/util/af-common.c<br>Building /home/=
edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/si=
mplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/fram=
ework/util/af-event.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch=
64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../..=
/simplicity_sdk/protocol/zigbee/app/framework/util/af-host.c<br>Building /h=
ome/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r=
0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/=
framework/util/attribute-size.c<br>Building /home/edula/yocto3.0/build/tmp/=
work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPC=
ombo/../../simplicity_sdk/protocol/zigbee/app/framework/util/attribute-stor=
age.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3=
gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/=
protocol/zigbee/app/framework/util/attribute-table.c<br>Building /home/edul=
a/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simpli=
city_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framewor=
k/util/client-api.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64=
-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../s=
implicity_sdk/protocol/zigbee/app/framework/util/global-callback.c<br>Build=
ing /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo=
/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbe=
e/app/framework/util/global-other-callback.c<br>Building /home/edula/yocto3=
.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk=
/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/util/m=
essage.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux=
/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_s=
dk/protocol/zigbee/app/framework/util/multi-network.c<br>Building /home/edu=
la/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simpl=
icity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framewo=
rk/util/print-formatter.c<br>Building /home/edula/yocto3.0/build/tmp/work/a=
arch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/.=
./../simplicity_sdk/protocol/zigbee/app/framework/util/print.c<br>Building =
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/ap=
p/framework/util/process-cluster-message.c<br>Building /home/edula/yocto3.0=
/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z=
3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/framework/util/pro=
cess-global-message.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch=
64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../..=
/simplicity_sdk/protocol/zigbee/app/framework/util/service-discovery-common=
.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gat=
ewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/pro=
tocol/zigbee/app/framework/util/service-discovery-host.c<br>Building /home/=
edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/si=
mplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/fram=
ework/util/time-util.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarc=
h64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../.=
./simplicity_sdk/protocol/zigbee/app/framework/util/util.c<br>Building /hom=
e/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/=
simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/fr=
amework/util/zcl-util.c<br>Building /home/edula/yocto3.0/build/tmp/work/aar=
ch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../=
../simplicity_sdk/protocol/zigbee/app/util/common/library.c<br>Building /ho=
me/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0=
/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/u=
til/ezsp/ezsp-callbacks.c<br>Building /home/edula/yocto3.0/build/tmp/work/a=
arch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/.=
./../simplicity_sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c<br>Bui=
lding /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCom=
bo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zig=
bee/app/util/ezsp/ezsp-frame-utilities.c<br>Building /home/edula/yocto3.0/b=
uild/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3G=
atewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/util/ezsp/ezsp.c<br>=
Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGP=
Combo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/=
zigbee/app/util/ezsp/serial-interface-uart.c<br>Building /home/edula/yocto3=
.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk=
/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/util/security/se=
curity-address-cache-host.c<br>Building /home/edula/yocto3.0/build/tmp/work=
/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo=
/../../simplicity_sdk/protocol/zigbee/app/util/serial/linux-serial.c<br>Bui=
lding /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCom=
bo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zig=
bee/app/util/serial/sl_zigbee_command_interpreter.c<br>Building /home/edula=
/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplic=
ity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zigbee/app/util/zigb=
ee-framework/zigbee-device-common.c<br>Building /home/edula/yocto3.0/build/=
tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Gatewa=
yGPCombo/../../simplicity_sdk/protocol/zigbee/app/util/zigbee-framework/zig=
bee-device-host.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-p=
oky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../sim=
plicity_sdk/protocol/zigbee/stack/config/sl_zigbee_configuration_host_acces=
s.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3ga=
tewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/pr=
otocol/zigbee/stack/framework/aes-ecb.c<br>Building /home/edula/yocto3.0/bu=
ild/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3Ga=
tewayGPCombo/../../simplicity_sdk/protocol/zigbee/stack/gp/gp-util.c<br>Bui=
lding /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCom=
bo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protocol/zig=
bee/stack/security/zigbee-security-manager-host.c<br>Building /home/edula/y=
octo3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicit=
y_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/plugin/byte_utilities/byte=
-utilities.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-l=
inux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplici=
ty_sdk/util/silicon_labs/silabs_core/event_queue/event-queue.c<br>Building =
/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1=
-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/third_party/m=
bedtls/library/aes.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch6=
4-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../=
simplicity_sdk/util/third_party/mbedtls/library/constant_time.c<br>Building=
 /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.=
1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/third_party/=
mbedtls/library/platform.c<br>Building /home/edula/yocto3.0/build/tmp/work/=
aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/=
../../simplicity_sdk/util/third_party/mbedtls/library/platform_util.c<br>Bu=
ilding /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCo=
mbo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/third_=
party/mbedtls/library/psa_crypto_client.c<br>Building /home/edula/yocto3.0/=
build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/Z3=
GatewayGPCombo/../../simplicity_sdk/util/third_party/mbedtls/library/psa_ut=
il.c<br>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3g=
atewayGPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/u=
til/third_party/mbedtls/library/threading.c<br>Building /home/edula/yocto3.=
0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/simplicity_sdk/=
Z3GatewayGPCombo/../../simplicity_sdk/util/third_party/printf/printf.c<br><=
b>Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/th=
ird_party/printf/src/iostream_printf.c<br>Linking ././Z3GatewayGPCombo<br>/=
home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-=
r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-p=
oky-linux/gcc/aarch64-poky-linux/9.3.0/ld: ././project/app.o: Relocations i=
n generic ELF (EM: 62)<br>/home/edula/yocto3.0/build/tmp/work/aarch64-poky-=
linux/z3gatewayGPCombo/0.1-r0/recipe-sysroot-native/usr/bin/aarch64-poky-li=
nux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.3.0/ld: ././p=
roject/app.o: Relocations in generic ELF (EM: 62)<br>/home/edula/yocto3.0/b=
uild/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/recipe-sysroot-nat=
ive/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64=
-poky-linux/9.3.0/ld: ././project/app.o: Relocations in generic ELF (EM: 62=
)<br>/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPComb=
o/0.1-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aar=
ch64-poky-linux/gcc/aarch64-poky-linux/9.3.0/ld: ././project/app.o: error a=
dding symbols: file in wrong format<br>collect2: error: ld returned 1 exit =
status<br>make: *** [Makefile:158: Z3GatewayGPCombo.out] Error 1<br>WARNING=
: exit code 2 from a shell command.<br></b><div><b>ERROR: Execution of &#39=
;/home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.=
1-r0/temp/run.do_compile.5763&#39; failed with exit code 2=C2=A0</b></div><=
div><b><br></b></div><div><b><br></b></div><div><b>Regards,</b></div><div><=
b>Hassan</b></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, Sep 4, 2024 at 8:17=E2=80=AFPM Khem Raj &lt;<a hr=
ef=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, Sep 4, 2024 at 7=
:36=E2=80=AFAM MOHAMMED HASSAN via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a><br>
&lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" t=
arget=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi guys,<br>
&gt; I am trying to run a Makefile and add the binary to my arm64 yocto dun=
fell build. The issue is<br>
&gt; the linking stage throws generic ELF error. I have commented out compi=
ler related info in my Makefile but still face the issue. Please have a loo=
k and point me in the right direction.<br>
&gt;<br>
&gt; Initialising tasks: 100% |############################################=
###########################################################################=
#######################| Time: 0:00:04<br>
&gt; Sstate summary: Wanted 5 Found 0 Missed 5 Current 537 (0% match, 99% c=
omplete)<br>
&gt; NOTE: Executing Tasks<br>
&gt; WARNING: QA Issue: PN: z3gatewayGPCombo is upper case, this can result=
 in unexpected behavior. [uppercase-pn]<br>
&gt; WARNING: QA Issue: PN: z3gatewayGPCombo is upper case, this can result=
 in unexpected behavior. [uppercase-pn]<br>
&gt; ERROR: z3gatewayGPCombo-0.1-r0 do_compile: Execution of &#39;/home/edu=
la/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/temp/=
run.do_compile.137942&#39; failed with exit code 2<br>
&gt; ERROR: Logfile of failure stored in: /home/edula/yocto3.0/build/tmp/wo=
rk/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/temp/log.do_compile.137942<br=
>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | # No pre-build defined<br>
&gt; | Linking ././Z3GatewayGPCombo<br>
&gt; | aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF=
 (EM: 62)<br>
&gt; | aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF=
 (EM: 62)<br>
&gt; | aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF=
 (EM: 62)<br>
&gt; | aarch64-poky-linux-ld: ././project/app.o: error adding symbols: file=
 in wrong format<br>
<br>
Here is your hint. Most likely, the Makefile is hardcoding CC/CXX<br>
values but then not doing same for LD so you end up it ignoring cross<br>
compiler<br>
during compile phase but then pick up cross linker during linker<br>
stage. Maybe you can share log.do_compile as well.<br>
<br>
&gt; | make: *** [Makefile:157: Z3GatewayGPCombo.out] Error 1<br>
&gt; | WARNING: exit code 2 from a shell command.<br>
&gt; | ERROR: Execution of &#39;/home/edula/yocto3.0/build/tmp/work/aarch64=
-poky-linux/z3gatewayGPCombo/0.1-r0/temp/run.do_compile.137942&#39; failed =
with exit code 2<br>
&gt; ERROR: Task (/home/edula/yocto3.0/meta-blaze/recipes-example/z3gateway=
GPCombo/z3gatewayGPCombo_0.1.bb:do_compile) failed with exit code &#39;1&#3=
9;<br>
&gt; NOTE: Tasks Summary: Attempted 1782 tasks of which 1780 didn&#39;t nee=
d to be rerun and 1 failed.<br>
&gt; NOTE: Writing buildhistory<br>
&gt; NOTE: Writing buildhistory took: 2 seconds<br>
&gt;<br>
&gt;<br>
&gt; Thanks<br>
&gt; Hassan<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#63783): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/63783" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/63783</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10826606=
3/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/108266063/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--0000000000008a500a06215c9231--

