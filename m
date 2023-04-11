Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0EE5C7619A
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 05:45:49 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
 by mx.groups.io with SMTP id smtpd.web11.7134.1681191943387910969
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Apr 2023 22:45:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FMwKzjys;
 spf=pass (domain: gmail.com, ip: 209.85.160.49, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-184549428acso4428468fac.8
        for <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 22:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681191942;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LIMkbzU95ctaN2WQb+tBtGuxmftmh6ghwTXLlC7rro0=;
        b=FMwKzjysuxetrPQMh3HgfJzfuVUkgpouV5ul1IjWusmtsjTitFjnBeVAJm0oHF40el
         kmTBx06rWmOmaE9Sy3tmJL4+Z3sT+/LHz0c2w6kDAM2DdFHnbrbB84L56puXjXGdUlhV
         KQwX5ZwFPc+F3ej0yh/FoB+gIJMK86QdSj/CnLw3HR46G258SGOIn7te6QbbVopYOFeP
         SD2knCsgW+djMtY7HBUR/zQgTUN3+OlH1GZYB2HlUkVKeQAPo9ybm0bymkzWpcY9dbn2
         PWRiMYCKqG1EQNaxB0XNT+z+pnQkTfVwpolSjk2Q1/I8WT7XS+ZU/vf29xLt/xEIPznI
         a6nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681191942;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LIMkbzU95ctaN2WQb+tBtGuxmftmh6ghwTXLlC7rro0=;
        b=IvFaVNfO/5gMkY5JjCYO6asFfjpG9LjySKlbAkdF18IwJsWk1kgG/WUCs+/2r7CFUH
         6IyMeQv9v2w/4nTdcG9Rk0C66P7g1OnKt/QJI7RlbhOuii+YRhmBV4mqUVUGdo41PxI1
         wnShyJI5wTOotGPD+j2RjuBtofXIJsj6zIWM8Nzd9L7dhdD81RRIz9swwHnBVRYJy59B
         o3L2g+zamRSBdJyxZTdESlpqlMmhg/y9whveg5vcsL5rb+jb9AabUmGYPFC0W0fdgV3V
         N3358j8qJ6ORCIamKo26+RIi4YJcGKC9dorR/uV2XohyXkQb3yN0T7GaJPlKhyntxFWA
         Disw==
X-Gm-Message-State: AAQBX9cDyNZm2k3fSd8XLXtXKfyuUOcCWULeaHTcARn42wRh7wMD3w6h
	sFQn1i5zP7i2HB0F+G0u9E57cC8y5RxCGuhXQow=
X-Google-Smtp-Source: AKy350ZDYifrMAJdbaz3cDG5jAlM4HY6S8IVEGIK7KvphR1F3H+bH2apQcchXnccflfQaQs7J9Mo4pwc3Ub2BTsdbrw=
X-Received: by 2002:a05:6870:24a2:b0:177:ca1c:2cd5 with SMTP id
 s34-20020a05687024a200b00177ca1c2cd5mr4437017oaq.4.1681191942551; Mon, 10 Apr
 2023 22:45:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sp+Y8ka1afMoBf-pfN1ZJMjMAo=MUetRasfV_ojd-WfdQ@mail.gmail.com>
 <10320.1681191588371382114@lists.yoctoproject.org>
In-Reply-To: <10320.1681191588371382114@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 10 Apr 2023 22:45:16 -0700
Message-ID: <CAMKF1sr=+-0UOVSm+xgXKEbJgUS6HGF-yTB0YbExjThQ0nNAKg@mail.gmail.com>
Subject: Re: [yocto] Missing .o files.
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 05:45:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59669

you need to add

DEPENDS +=3D "readline ncurses"

to your recipe.

On Mon, Apr 10, 2023 at 10:39=E2=80=AFPM MOHAMMED HASSAN
<hassanchattarki@gmail.com> wrote:
>
> Hi Khem,
> Thanks for your reply.
> I tried the changes you wanted me to make and this is the error I got.
>
> ERROR: zigbee-0.1-r0 do_compile: oe_runmake failed
> ERROR: zigbee-0.1-r0 do_compile: Execution of '/home/mohan/amlogic/build/=
tmp/work/aarch64-poky-linux/zigbee/0.1-r0/temp/run.do_compile.171358' faile=
d with exit code 1
> ERROR: Logfile of failure stored in: /home/mohan/amlogic/build/tmp/work/a=
arch64-poky-linux/zigbee/0.1-r0/temp/log.do_compile.171358
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4 CC=3Daarch64-poky-linux-gcc  -march=3Darmv8-a+crc -fsta=
ck-protector-strong  -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werr=
or=3Dformat-security --sysroot=3D/home/mohan/amlogic/build/tmp/work/aarch64=
-poky-linux/zigbee/0.1-r0/recipe-sysroot RANLIB=3Daarch64-poky-linux-gcc-ra=
nlib AR=3Daarch64-poky-linux-gcc-ar CFLAGS=3D -O2 -pipe -g -feliminate-unus=
ed-debug-types -fdebug-prefix-map=3D/home/mohan/amlogic/build/tmp/work/aarc=
h64-poky-linux/zigbee/0.1-r0=3D/usr/src/debug/zigbee/0.1-r0                =
     -fdebug-prefix-map=3D/home/mohan/amlogic/build/tmp/work/aarch64-poky-l=
inux/zigbee/0.1-r0/recipe-sysroot=3D                     -fdebug-prefix-map=
=3D/home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/reci=
pe-sysroot-native=3D                      -I/home/mohan/amlogic/build/tmp/w=
ork/aarch64-poky-linux/zigbee/0.1-r0 BUILDDIR=3D/home/mohan/amlogic/build/t=
mp/work/aarch64-poky-linux/zigbee/0.1-r0 all
> | aarch64-poky-linux-gcc  -march=3Darmv8-a+crc -fstack-protector-strong  =
-D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werror=3Dformat-security =
--sysroot=3D/home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.=
1-r0/recipe-sysroot build/znet-bookkeeping.o build/call-command-handler.o b=
uild/callback-stub.o build/stack-handler-stub.o build/znet-cli.o build/host=
forEdge3_callbacks.o build/library.o build/command-interpreter2.o build/zig=
bee-device-common.o build/zigbee-device-host.o build/event-control.o build/=
led-stub.o build/mem-util.o build/antenna-stub.o build/buzzer-stub.o build/=
address-table.o build/address-table-cli.o build/basic.o build/color-control=
-server.o build/concentrator-support.o build/concentrator-support-cli.o bui=
ld/counters-cli.o build/counters-ota-host.o build/counters-host.o build/ez-=
mode.o build/ez-mode-cli.o build/ezsp-callbacks.o build/ezsp-enum-decode.o =
build/ezsp-frame-utilities.o build/ezsp.o build/ezsp-host-io.o build/ezsp-h=
ost-queues.o build/ezsp-host-ui.o build/serial-interface-uart.o build/ash-h=
ost-ui.o build/ash-host.o build/ash-common.o build/file-descriptor-dispatch=
.o build/gateway-support.o build/backchannel-support.o build/gateway-suppor=
t-cli.o build/green-power-client.o build/green-power-client-cli.o build/gre=
en-power-common.o build/gp-util.o build/heartbeat.o build/ias-zone-client.o=
 build/ias-zone-client-cli.o build/identify.o build/identify-cli.o build/id=
entify-feedback.o build/level-control.o build/linked-list.o build/aes.o bui=
ld/asn1parse.o build/asn1write.o build/base64.o build/bignum.o build/ccm.o =
build/chacha20.o build/chachapoly.o build/cipher.o build/cipher_wrap.o buil=
d/cmac.o build/ctr_drbg.o build/des.o build/ecdh.o build/ecdsa.o build/ecjp=
ake.o build/ecp.o build/ecp_curves.o build/entropy.o build/error.o build/gc=
m.o build/md.o build/md5.o build/oid.o build/pem.o build/pk.o build/pk_wrap=
.o build/pkparse.o build/platform_util.o build/poly1305.o build/psa_crypto.=
o build/psa_crypto_cipher.o build/psa_crypto_client.o build/psa_crypto_driv=
er_wrappers.o build/psa_crypto_ecp.o build/psa_crypto_hash.o build/psa_cryp=
to_mac.o build/psa_crypto_slot_management.o build/psa_crypto_storage.o buil=
d/rsa.o build/rsa_internal.o build/sha1.o build/sha256.o build/sha512.o bui=
ld/ssl_cache.o build/ssl_ciphersuites.o build/ssl_cli.o build/ssl_cookie.o =
build/ssl_msg.o build/ssl_srv.o build/ssl_ticket.o build/ssl_tls.o build/th=
reading.o build/x509.o build/x509_create.o build/x509_crl.o build/x509_crt.=
o build/x509_csr.o build/x509write_crt.o build/x509write_csr.o build/ncp-co=
nfiguration.o build/network-creator.o build/network-creator-cli.o build/net=
work-creator-security.o build/network-creator-security-cli.o build/network-=
steering.o build/network-steering-cli.o build/network-steering-v2.o build/n=
etwork-steering-host.o build/on-off.o build/ota-common.o build/ota-server.o=
 build/ota-server-page-request.o build/ota-server-cli.o build/ota-server-dy=
namic-block-period.o build/ota-server-policy.o build/ota-storage-common.o b=
uild/ota-storage-common-cli.o build/ota-storage-linux.o build/poll-control-=
client.o build/poll-control-client-cli.o build/reporting.o build/reporting-=
cli.o build/reporting-default-configuration.o build/scan-dispatch.o build/s=
ecure-ezsp-stub.o build/simple-main.o build/simple-metering-client.o build/=
simple-metering-client-cli.o build/stack-diagnostics.o build/test-harness.o=
 build/read-write-attributes.o build/test-harness-host.o build/time-server.=
o build/trust-center-nwk-key-update-broadcast.o build/trust-center-nwk-key-=
update-periodic.o build/trust-center-nwk-key-update-unicast.o build/crc.o b=
uild/endian.o build/random.o build/system-timer.o build/micro.o build/token=
-def-unix.o build/token.o build/ember-printf-convert.o build/linux-serial.o=
 build/update-tc-link-key.o build/update-tc-link-key-cli.o build/core-cli.o=
 build/network-cli.o build/option-cli.o build/plugin-cli.o build/security-c=
li.o build/zcl-cli.o build/zdo-cli.o build/af-node.o build/af-security-comm=
on.o build/af-trust-center.o build/crypto-state.o build/af-event.o build/af=
-main-common.o build/attribute-size.o build/attribute-storage.o build/attri=
bute-table.o build/client-api.o build/message.o build/multi-network.o build=
/print.o build/print-formatter.o build/process-cluster-message.o build/proc=
ess-global-message.o build/service-discovery-common.o build/time-util.o bui=
ld/util.o build/af-main-host.o build/service-discovery-host.o  -lreadline -=
lncurses  -lm -lpthread -o ./build/exe/hostforEdge3
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find -lreadline
> | /home/mohan/amlogic/build/tmp/work/aarch64-poky-linux/zigbee/0.1-r0/rec=
ipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-li=
nux/gcc/aarch64-poky-linux/9.3.0/ld: cannot find -lncurses
> | collect2: error: ld returned 1 exit status
> | make: *** [Makefile:413: build/exe/hostforEdge3] Error 1
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
>
> Please support
> Thanks
> Hassan
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59667): https://lists.yoctoproject.org/g/yocto/messag=
e/59667
> Unfollow This Topic: https://lists.yoctoproject.org/unft/98191767/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

