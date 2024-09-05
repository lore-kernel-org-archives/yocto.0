Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C225CD6E56
	for <webhook@archiver.kernel.org>; Thu,  5 Sep 2024 16:49:39 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
 by mx.groups.io with SMTP id smtpd.web11.14572.1725554975127261291
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Sep 2024 09:49:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cWWUchr1;
 spf=pass (domain: gmail.com, ip: 209.85.160.45, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-27051f63018so543009fac.3
        for <yocto@lists.yoctoproject.org>; Thu, 05 Sep 2024 09:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725554974; x=1726159774; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eVFKL34or6kJnhsX68OAkQGr+Ce+iVLjoaQd/c3soYg=;
        b=cWWUchr1kRrESExxoLqZyqrOugrQ4ApZblvzj5ngCeZr9u0CB8EQsrlIFLDg13wPAF
         nJP2kBPscC8mHmYwLZGh/5+xk25cSDTIAOgkBQnnr6LT4nmlaVXrqMvJ2sK1jRGBRxmC
         SkSbau4MV6qhLnL5x6dpSjAhzpvExyILeaMuI3vgvWELkpFqlBgGkwUSNFhO3vzMYBmb
         JT2qeYedYLQ4xE0clNd8AnRbPYNTSw/9Z+Vhw//hc36f/xUxGnPhYL9L+dU6x+FSMI5d
         O2vDklBpCqJ8NNMB+ctrh55bESyX1sVCkov5lMl42MflBVaDebxOXJGUPcxvA4z8Muj1
         Znsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725554974; x=1726159774;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eVFKL34or6kJnhsX68OAkQGr+Ce+iVLjoaQd/c3soYg=;
        b=Ux/Lwz/vtlEAwE7NCOHuike3T9eCPxTACJnNIZGcbUX5vjnqTDulXDahelLIOquFTT
         CJTxfeB3zXR/g6mBq3EHABZEnH7AqHPbgY9yB9gaV/yOL0UnEt4kkH5s4VPQ1qWF5APt
         9qwp70k1ZmKjbJYaGzDc+1dodBQhS4Tl3nEuqUY31Cf1giEHr6S4nm0lhuqzk0DYXK6Z
         fdC6YOdcbldrkckbHbtgqDiSsd0MHtCZFOina4tihq27iArq0H0Yb/CihhXRk2Soz4Ok
         +ZJLnDQl4/QEE16KUEfU3m7z0XsEUwHA8+0gPeo2/nm1LYlOdLmhZ4PjqWOxuQNjFpB2
         9Aaw==
X-Gm-Message-State: AOJu0YyE4zyaJBLDDr8secjeDLLEuCsPuviwj3sq1eVUhFfBMkni9hLk
	5aEBQEPW/SI1Rb9xmnt4YvPVWck5uBHD5AbNKrODYWPWqJN6FIMbahhdR4Zl6mijn9stSR4CTDl
	dOfEcE1c/eunhoSxAiBqyHXxqk9Q=
X-Google-Smtp-Source: AGHT+IEilZllPSr4nXCSIkJBwd1o4EbqrgVWNLzluI6n4yJasJUEA/52VXJDyXEkf410Qx65zTa7T/n7yVQx7ph/IkM=
X-Received: by 2002:a05:6870:1b8c:b0:254:994b:5e6b with SMTP id
 586e51a60fabf-277d06c6606mr21646832fac.44.1725554973959; Thu, 05 Sep 2024
 09:49:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBngRr24GPs1VfLJDQBHn_Gt0Q_S9hxUJevVfWT6V7TBfBg@mail.gmail.com>
 <CAMKF1sqXrUt2WXcxRAjjpsSyqKYiV1jk+nAygfnOiTFDC_tx4Q@mail.gmail.com> <CAPJWBnhmDHnZC_gKmaw+39F+H=Bkf6CSjCgTT8oTX=rtY7YhMA@mail.gmail.com>
In-Reply-To: <CAPJWBnhmDHnZC_gKmaw+39F+H=Bkf6CSjCgTT8oTX=rtY7YhMA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 5 Sep 2024 09:49:07 -0700
Message-ID: <CAMKF1soWofQ7dr__AVYiJmCroTmAB0OH7N44nBYXG7sqcjUaPA@mail.gmail.com>
Subject: Re: [yocto] Linking stage error
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Sep 2024 16:49:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63788

a verbose log is helpful, perhaps add V=3D1 to make invocation.

On Thu, Sep 5, 2024 at 3:15=E2=80=AFAM MOHAMMED HASSAN
<hassanchattarki@gmail.com> wrote:
>
> I checked, but I have already commented out all the main flags.
> Also log.do_compile file
>
> DEBUG: Executing shell function do_compile
> # No pre-build defined
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/common/src/sl_assert.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/common/src/sl_core_mock.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/common/src/sl_slist.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/common/src/sl_string.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/cli/src/sl_cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/cli/src/sl_cli_arguments.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/cli/src/sl_cli_command.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/cli/src/sl_cli_input.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/cli/src/sl_cli_io.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/cli/src/sl_cli_threaded_host.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/cli/src/sl_cli_tokenize.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/iostream/src/sl_iostream.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/iostream/src/sl_iostream_stdio.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/legacy_common_ash/src/ash-common.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/legacy_hal/src/crc.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/legacy_hal/src/ember-printf-convert.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/legacy_hal/src/micro_host.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/legacy_hal/src/random.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/legacy_hal/src/system-timer.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/legacy_host/src/token.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/system/src/sl_system_init.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/system/src/sl_system_process_action.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/platfor=
m/service/token_manager/src/sl_token_def.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/ezsp-host/ash/ash-host-ui.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/ezsp-host/ash/ash-host.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/ezsp-host/ezsp-host-io.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/ezsp-host/ezsp-host-queues.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/ezsp-host/ezsp-host-ui.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/cli/core-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/cli/network-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/cli/option-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/cli/security-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/cli/zcl-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/cli/zdo-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/common/sl_zigbee_system_common.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/common/zigbee_app_framework_sleep.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/common/zigbee_app_framework_sleep_cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor=
-dispatch-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor=
-dispatch.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin-host/gateway/gateway-support.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/address-table/address-table-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/address-table/address-table.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/basic/basic-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/basic/basic.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.=
c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/color-control-server/color-control-server.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/concentrator/concentrator-support.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/counters/af-counters.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/counters/counters-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/counters/counters-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/counters/counters-ota-host.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/device-database/device-database-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/device-database/device-database-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/device-database/device-database.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.=
c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target-cli=
.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/find-and-bind-target/find-and-bind-target.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/green-power-client/green-power-client-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/green-power-client/green-power-client.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/green-power-common/green-power-common.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/green-power-server/green-power-security-test-=
vectors.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/green-power-server/green-power-security.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/green-power-server/green-power-server-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/green-power-server/green-power-server-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/green-power-server/green-power-server-gpd-cmd=
-maps.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/green-power-server/green-power-server.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/green-power-translation-table/green-power-tra=
nslation-table-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/green-power-translation-table/green-power-tra=
nslation-table-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/green-power-translation-table/green-power-tra=
nslation-table.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/groups-client/groups-client.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/groups-server/groups-server-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/groups-server/groups-server-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/groups-server/groups-server-common.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/groups-server/groups-server.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/identify/identify-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/identify/identify-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/identify/identify.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/level-control/level-control-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/level-control/level-control.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/network-creator-security/network-creator-secu=
rity-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/network-creator-security/network-creator-secu=
rity.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/network-creator/network-creator.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/network-steering/network-steering.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/on-off/on-off-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/on-off/on-off.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-bootload/ota-bootload-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-bootload/ota-bootload-ncp-uart.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-bootload/ota-bootload-ncp.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-bootload/ota-bootload-xmodem.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-client-policy/ota-client-policy.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-client/ota-client-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-client/ota-client-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-client/ota-client-page-request.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-client/ota-client-signature-verify.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-client/ota-client.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-common/ota-common.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-server/ota-server.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linu=
x.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/reporting/reporting-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/reporting/reporting-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/reporting/reporting.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/scenes-client/scenes-client.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/scenes/scenes-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/scenes/scenes-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/scenes/scenes.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client=
-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client=
-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client=
.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/test-harness/test-harness-host.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/test-harness/test-harness.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/time-server/time-server.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-c=
enter-nwk-key-update-broadcast.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-ce=
nter-nwk-key-update-periodic.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-cen=
ter-nwk-key-update-unicast.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/plugin/zll-level-control-server/zll-level-control-se=
rver.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/security/af-node.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/security/af-security-common.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/security/af-trust-center.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/security/crypto-state.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/service-function/sl_service_function.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/signature-decode/sl_signature_decode.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/af-common.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/af-event.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/af-host.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/attribute-size.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/attribute-storage.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/attribute-table.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/client-api.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/global-callback.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/global-other-callback.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/message.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/multi-network.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/print-formatter.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/print.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/process-cluster-message.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/process-global-message.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/service-discovery-common.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/service-discovery-host.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/time-util.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/util.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/framework/util/zcl-util.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/util/common/library.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/util/ezsp/ezsp-callbacks.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/util/ezsp/ezsp-enum-decode.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/util/ezsp/ezsp-frame-utilities.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/util/ezsp/ezsp.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/util/ezsp/serial-interface-uart.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/util/security/security-address-cache-host.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/util/serial/linux-serial.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/util/zigbee-framework/zigbee-device-common.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/app/util/zigbee-framework/zigbee-device-host.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/stack/config/sl_zigbee_configuration_host_access.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/stack/framework/aes-ecb.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/stack/gp/gp-util.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/protoco=
l/zigbee/stack/security/zigbee-security-manager-host.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/pl=
ugin/byte_utilities/byte-utilities.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/si=
licon_labs/silabs_core/event_queue/event-queue.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/th=
ird_party/mbedtls/library/aes.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/th=
ird_party/mbedtls/library/constant_time.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/th=
ird_party/mbedtls/library/platform.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/th=
ird_party/mbedtls/library/platform_util.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/th=
ird_party/mbedtls/library/psa_crypto_client.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/th=
ird_party/mbedtls/library/psa_util.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/th=
ird_party/mbedtls/library/threading.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/th=
ird_party/printf/printf.c
> Building /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gateway=
GPCombo/0.1-r0/simplicity_sdk/Z3GatewayGPCombo/../../simplicity_sdk/util/th=
ird_party/printf/src/iostream_printf.c
> Linking ././Z3GatewayGPCombo
> /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0=
.1-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch6=
4-poky-linux/gcc/aarch64-poky-linux/9.3.0/ld: ././project/app.o: Relocation=
s in generic ELF (EM: 62)
> /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0=
.1-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch6=
4-poky-linux/gcc/aarch64-poky-linux/9.3.0/ld: ././project/app.o: Relocation=
s in generic ELF (EM: 62)
> /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0=
.1-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch6=
4-poky-linux/gcc/aarch64-poky-linux/9.3.0/ld: ././project/app.o: Relocation=
s in generic ELF (EM: 62)
> /home/edula/yocto3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0=
.1-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch6=
4-poky-linux/gcc/aarch64-poky-linux/9.3.0/ld: ././project/app.o: error addi=
ng symbols: file in wrong format
> collect2: error: ld returned 1 exit status
> make: *** [Makefile:158: Z3GatewayGPCombo.out] Error 1
> WARNING: exit code 2 from a shell command.
> ERROR: Execution of '/home/edula/yocto3.0/build/tmp/work/aarch64-poky-lin=
ux/z3gatewayGPCombo/0.1-r0/temp/run.do_compile.5763' failed with exit code =
2
>
>
> Regards,
> Hassan
>
> On Wed, Sep 4, 2024 at 8:17=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrot=
e:
>>
>> On Wed, Sep 4, 2024 at 7:36=E2=80=AFAM MOHAMMED HASSAN via
>> lists.yoctoproject.org
>> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >
>> > Hi guys,
>> > I am trying to run a Makefile and add the binary to my arm64 yocto dun=
fell build. The issue is
>> > the linking stage throws generic ELF error. I have commented out compi=
ler related info in my Makefile but still face the issue. Please have a loo=
k and point me in the right direction.
>> >
>> > Initialising tasks: 100% |############################################=
###########################################################################=
#######################| Time: 0:00:04
>> > Sstate summary: Wanted 5 Found 0 Missed 5 Current 537 (0% match, 99% c=
omplete)
>> > NOTE: Executing Tasks
>> > WARNING: QA Issue: PN: z3gatewayGPCombo is upper case, this can result=
 in unexpected behavior. [uppercase-pn]
>> > WARNING: QA Issue: PN: z3gatewayGPCombo is upper case, this can result=
 in unexpected behavior. [uppercase-pn]
>> > ERROR: z3gatewayGPCombo-0.1-r0 do_compile: Execution of '/home/edula/y=
octo3.0/build/tmp/work/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/temp/run.=
do_compile.137942' failed with exit code 2
>> > ERROR: Logfile of failure stored in: /home/edula/yocto3.0/build/tmp/wo=
rk/aarch64-poky-linux/z3gatewayGPCombo/0.1-r0/temp/log.do_compile.137942
>> > Log data follows:
>> > | DEBUG: Executing shell function do_compile
>> > | # No pre-build defined
>> > | Linking ././Z3GatewayGPCombo
>> > | aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF=
 (EM: 62)
>> > | aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF=
 (EM: 62)
>> > | aarch64-poky-linux-ld: ././project/app.o: Relocations in generic ELF=
 (EM: 62)
>> > | aarch64-poky-linux-ld: ././project/app.o: error adding symbols: file=
 in wrong format
>>
>> Here is your hint. Most likely, the Makefile is hardcoding CC/CXX
>> values but then not doing same for LD so you end up it ignoring cross
>> compiler
>> during compile phase but then pick up cross linker during linker
>> stage. Maybe you can share log.do_compile as well.
>>
>> > | make: *** [Makefile:157: Z3GatewayGPCombo.out] Error 1
>> > | WARNING: exit code 2 from a shell command.
>> > | ERROR: Execution of '/home/edula/yocto3.0/build/tmp/work/aarch64-pok=
y-linux/z3gatewayGPCombo/0.1-r0/temp/run.do_compile.137942' failed with exi=
t code 2
>> > ERROR: Task (/home/edula/yocto3.0/meta-blaze/recipes-example/z3gateway=
GPCombo/z3gatewayGPCombo_0.1.bb:do_compile) failed with exit code '1'
>> > NOTE: Tasks Summary: Attempted 1782 tasks of which 1780 didn't need to=
 be rerun and 1 failed.
>> > NOTE: Writing buildhistory
>> > NOTE: Writing buildhistory took: 2 seconds
>> >
>> >
>> > Thanks
>> > Hassan
>> >
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > Links: You receive all messages sent to this group.
>> > You automatically follow any topics you start or reply to.
>> > View/Reply Online (#63783): https://lists.yoctoproject.org/g/yocto/mes=
sage/63783
>> > Mute This Topic: https://lists.yoctoproject.org/mt/108266063/1997914
>> > Group Owner: yocto+owner@lists.yoctoproject.org
>> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gm=
ail.com]
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >

