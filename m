Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1ACFAC4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 18:05:06 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
 by mx.groups.io with SMTP id smtpd.web11.69546.1702663505666339732
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Dec 2023 10:05:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bFghMLhH;
 spf=pass (domain: gmail.com, ip: 209.85.210.49, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6d9e993d94dso770831a34.0
        for <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 10:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702663505; x=1703268305; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=akCgYJ1emOhW9CAdCuc44+FAbJkiTXqBL+pfkg9XpYY=;
        b=bFghMLhHBtIVgc6iAFCOhB747mwQLgoBQwefppr0LpISQ58Z5Iy4FzK+PBZhXR879X
         M27PxWeSjQyKhgStFA4VgZSqkehx6aCVVYGtLBopBzax8TSq6ItBU46rHE7WbZ+WcnGl
         nBfcyU12tzmuyJAfkxPwpY5E40Xoz5q9m0BLQM9yZgveDsX2C3HPU1cL+sM1w/Bm/B1Y
         7TOZa3QxeIeeNwMnkdw98chilIpCYptN6kTP60hC72ukbS04Ku0Ufb4TknVq2100Lkn1
         GqjSXXRsR3gKu0cw8HAbcCBWYXmI8komqcOZEyr6sLXWSMZ5J84zDprMHS4FXo85RuBt
         oWLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702663505; x=1703268305;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=akCgYJ1emOhW9CAdCuc44+FAbJkiTXqBL+pfkg9XpYY=;
        b=wWoFiyvQ/R8gD/F7kxcTvzJvLgQ6bk1UKoUJVHAzu39Xr+uNUAcUAKy/egMDONfAda
         2epQ+tBqsNGpnJODoFvdbm64aaH5f0V3vodRKxq80aqSa8LXoTecjj8PfAXKit4foWLE
         40n2+zRPv35dG8vuPekvkCLM3Q3Fn6r7XfTNsj73smFrc67vVlewVBPTDEYXTfxPM0nx
         zShLkP5xsDhsAStchL3Za1B5fqewWRK1GyzEf5oc0YBYacc/g4DiTh4uBcJhJSXgoXbE
         Zgzqodq/Cd7zog1Swmss0oLhdLlokipHJznzKXQAuhSklk9xBdvgXBJufbTr3breH4C4
         aHYw==
X-Gm-Message-State: AOJu0YzfPTkE6BLrfha2zQ6xW+b6oqYx4sStza7uqHNsmW5zsXC6ZiLk
	ISiarOufcJtN/7o7uQM0my3TlErxuwgXK5+M4Vg/lVOR/jo=
X-Google-Smtp-Source: AGHT+IFVGcuCaQprSrTvRyRXiN6nZrteQ+zDODP/ZcVPJ9TsNqzE04ZTL3AX+srOXeYkynkhrF1FZO/mrYPCS24I+vQ=
X-Received: by 2002:a05:6870:a692:b0:203:466c:f6de with SMTP id
 i18-20020a056870a69200b00203466cf6demr3329773oam.86.1702663504818; Fri, 15
 Dec 2023 10:05:04 -0800 (PST)
MIME-Version: 1.0
References: <53e087bd-6afc-47b7-9810-5307ae91728d@mistywest.com>
 <CAMKF1spgfn9YXR5CZONfiD8gQgsPFaD2uMmh+X=-uSS5Y_Ce0w@mail.gmail.com>
 <0c6d9ef6-daa1-42cf-ba50-ac4ff5465456@mistywest.com> <CAMKF1socA86Z+tfGCh7JJQMQC5pLTXisPW8TTJOi0Wh8g5KqNg@mail.gmail.com>
 <0c451a7e-2960-4116-816b-51d054f181e0@mistywest.com>
In-Reply-To: <0c451a7e-2960-4116-816b-51d054f181e0@mistywest.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Dec 2023 10:04:38 -0800
Message-ID: <CAMKF1so6W8pS_o-kgoK+E5tzp=spvcahtPptb5A08HVgjHKSQw@mail.gmail.com>
Subject: Re: [yocto] how to create symlink in dunfell after compilation of
 library file
To: Ron Eggler <ron.eggler@mistywest.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 18:05:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61916

On Fri, Dec 15, 2023 at 10:01=E2=80=AFAM Ron Eggler <ron.eggler@mistywest.c=
om> wrote:
>
>
> On 2023-12-14 5:25 p.m., Khem Raj wrote:
>
>
>
> On Thu, Dec 14, 2023 at 5:13=E2=80=AFPM Ron Eggler <ron.eggler@mistywest.=
com> wrote:
>>
>>
>> On 2023-12-14 5:00 p.m., Khem Raj wrote:
>>
>> On Thu, Dec 14, 2023 at 4:26=E2=80=AFPM Mistyron <ron.eggler@mistywest.c=
om> wrote:
>>
>> Hi,
>>
>> I'm working with dunfell and want to create a symlink after compilation
>> of the library:
>>
>> I added the following in aziot-keys_%.bbapend:
>>
>> do_install_append() {
>>      install -d ${D}/usr/lib
>>      lnr ${D}/usr/lib64/rust/libaziot_keys.so ${D}/usr/lib/libaziot_keys=
.so
>>
>> try using ln -rs instead of lnr.
>>
>> With ln -rs I get the following error:
>>
>> ERROR: aziot-keys-1.4.7.AUTOINC+91e058880c-r0 do_package: QA Issue: azio=
t-keys: Files/directories were installed but not shipped in any package:   =
                                                                           =
                                                                           =
                                                                           =
                                                     /usr/lib              =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                          /usr/lib/libaziot_keys.so
>
>
> Right so you need to add /usr/lib to FILES variable
>
>
> Right, so I've updated my recipe to:
>
> FILES_${PN} +=3D "/usr/lib" do_install_append() { install -d ${D}/usr/lib=
 cd ${D}/usr/lib lnr ${D}../lib64/rust/libaziot_keys.so libaziot_keys.so }
>
> With this I don't get any errors nor warnings but the symlink does not ge=
t created.
>
> I tried to replace lnr with ln -sr but am getting errors with that:
>
> ERROR: aziot-keys-1.4.7.AUTOINC+91e058880c-r0 do_package_qa: QA Issue: no=
n -dev/-dbg/nativesdk- package aziot-keys contains symlink .so '/usr/lib/li=
baziot_keys.so' [dev-so] ERROR: aziot-keys-1.4.7.AUTOINC+91e058880c-r0 do_p=
ackage_qa: Error executing a python function in exec_func_python() autogene=
rated: The stack trace of python calls that resulted in this exception/fail=
ure was: File: 'exec_func_python() autogenerated', lineno: 2, function: <mo=
dule> ... ... Exception: FileNotFoundError: [Errno 2] No such file or direc=
tory: '/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/aziot-k=
eys/1.4.7.AUTOINC+91e058880c-r0/packages-split/aziot-keys/usr/lib/libaziot_=
keys.so' ERROR: Logfile of failure stored in: /home/yocto/rzv_vlp_v3.0.0/bu=
ild/tmp/work/aarch64-poky-linux/aziot-keys/1.4.7.AUTOINC+91e058880c-r0/temp=
/log.do_package_qa.88151 ERROR: Task (/home/yocto/rzv_vlp_v3.0.0/build/../m=
eta-iotedge/recipes-core/aziot-keys/aziot-keys_1.4.7.bb:do_package_qa) fail=
ed with exit code '1'
>
> But I do wonder if your link should be inside ${libdir} which is /usr/lib=
64 in your case
>
> I don't think so as after boot, I can create the link with:
>
> # ln -s /usr/lib64/rust/libaziot_keys.so /usr/lib/libaziot_keys.so
>>
>>
>> Please set FILES such that these items are packaged. Alternatively if th=
ey are unneeded, avoid installing them or delete them within do_install.
>> aziot-keys: 2 installed and not shipped files. [installed-vs-shipped]
>> ERROR: aziot-keys-1.4.7.AUTOINC+91e058880c-r0 do_package: Fatal QA error=
s found, failing task.
>> ERROR: Logfile of failure stored in: /home/yocto/rzv_vlp_v3.0.0/build/tm=
p/work/aarch64-poky-linux/aziot-keys/1.4.7.AUTOINC+91e058880c-r0/temp/log.d=
o_package.64055
>> ERROR: Task (/home/yocto/rzv_vlp_v3.0.0/build/../meta-iotedge/recipes-co=
re/aziot-keys/aziot-keys_1.4.7.bb:do_package) failed with exit code '1'

Add
INSANE_SKIP:${PN} +=3D "dev-so"

>>
>> I came across a post that read that for dunfell, lnr shoudl be used (rat=
her than ln -r for newer versions)
>>
>> }
>>
>> Yet, after building the image,
>> I do not see the symlink in/usr/lib/
>>
>> I did find the recipe for which I created the bbappend with:
>> oe-pkgdata-util find-path /usr/lib64/rust/libaziot_keys.so
>>
>> What is missing?
>>
>> Thank you,
>> Ron
>>
>> --
>> Mistyron
>>
>>
>> --
>> Mistyron
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#61892): https://lists.yoctoproject.org/g/yocto/messa=
ge/61892
>> Mute This Topic: https://lists.yoctoproject.org/mt/103181952/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmai=
l.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
> --
>
>
> RON EGGLER
> Firmware Engineer, Tech Lead
> (he/him/his)
> www.mistywest.com

