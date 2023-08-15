Return-Path: <rob@teegee.cloud>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEFC5C001B0
	for <webhook@archiver.kernel.org>; Tue, 15 Aug 2023 04:23:37 +0000 (UTC)
Received: from mail.teegee.cloud (mail.teegee.cloud [139.99.90.29])
 by mx.groups.io with SMTP id smtpd.web10.127232.1692073412600740041
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Aug 2023 21:23:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@teegee.cloud header.s=dkim header.b=WCCcxb34;
 spf=pass (domain: teegee.cloud, ip: 139.99.90.29, mailfrom: rob@teegee.cloud)
Received: from mail.teegee.cloud (localhost [127.0.0.1])
	by mail.teegee.cloud (Postfix) with ESMTP id 4RPynD6lYsz3wms
	for <yocto@lists.yoctoproject.org>; Tue, 15 Aug 2023 04:23:28 +0000 (UTC)
Authentication-Results: mail.teegee.cloud (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=teegee.cloud
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=teegee.cloud; h=
	content-transfer-encoding:content-type:in-reply-to:from
	:references:to:content-language:subject:user-agent:mime-version
	:date:message-id; s=dkim; t=1692073407; x=1694665408; bh=9VKNkd5
	U74wga8ym5m/ftkFCxf2NzktP5BF1fLIuPdo=; b=WCCcxb344JvW0KYn94XuLQc
	3j5mrf2zY4dUTXGrTb1N+H+u9QCVL8SAppK00WT1rewoPKGf4/prlZ2lI91PWbDe
	dlGMVLInQP96jjx17LN5foqSMOzhMeCGjjaHzouhwHAr/3m2maXxHdiP+RjYbLt7
	7UazX+bnBiK1bCvqg+4mtpgvrYZbw4OGt1xUPaamSS0QKzzmg9Fb9mrcrdg0gfTb
	zSxwbc1jepD+GigI3hZJ7eLg3NOXUO6P3OK6N0x+22wHB1crd/aHF67+nVq8ENWn
	NFun6jzHXZw7hHiZBoYI3GWZ7tbBNQrE69CNTIE/VyhQiLRXUT2jEUmy57e83uQ=
	=
X-Virus-Scanned: Debian amavisd-new at mail.teegee.cloud
Received: from mail.teegee.cloud ([127.0.0.1])
	by mail.teegee.cloud (mail.teegee.cloud [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 7oiDi5NOGGFe for <yocto@lists.yoctoproject.org>;
	Tue, 15 Aug 2023 04:23:27 +0000 (UTC)
Received: from [192.168.3.4] (unknown [195.133.134.78])
	by mail.teegee.cloud (Postfix) with ESMTPSA id 4RPynC3tkRz3wlC;
	Tue, 15 Aug 2023 04:23:27 +0000 (UTC)
Message-ID: <5f03d563-9358-9cc2-af9e-4920ef26d508@teegee.cloud>
Date: Tue, 15 Aug 2023 12:23:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] libudev-zero recipe issue
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <8A4J.1691735918881680780.WtwR@lists.yoctoproject.org>
 <CANNYZj-9Pey+OO_YmjK77LL_qE7c-vzgYKN3YjiV9qQWD346Zw@mail.gmail.com>
From: Rob Kramer <rob@teegee.cloud>
In-Reply-To: <CANNYZj-9Pey+OO_YmjK77LL_qE7c-vzgYKN3YjiV9qQWD346Zw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Aug 2023 04:23:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60796

I wiped the whole build, and the issue hasn't happened again since.=20
Hopefully it was just bitbake being in a funny state.. If it happens=20
again, I'll create a separate minimal poky build to test.

Thanks!

 =C2=A0=C2=A0=C2=A0 Rob

On 11/8/23 19:54, Alexander Kanavin wrote:
> The recipe looks ok. Can you reproduce it with a plain poky build (no
> extra layers, no custom distros, no weird BSPs :) ?
>
> Alex
>
> On Fri, 11 Aug 2023 at 08:38, Rob Kramer <rob@teegee.cloud> wrote:
>> Hi all,
>>
>> I added a new recipe for libudev-zero, which provides a minimal daemon=
-less udev implementation. The recipe works, but has an issue that pops u=
p regularly where it causes an exception during rootfs:
>>
>> Exception: FileNotFoundError: [Errno 2] No such file or directory: '/s=
sd/opt/oe/yocto/kirkstone/build-weston/tmp-glibc/deploy/ipk/core2-64/libu=
dev1_1.0.2-r1_core2-64.ipk' -> '/ssd/opt/oe/yocto/kirkstone/build-weston/=
tmp-glibc/work/generic64-oe-linux/sollinux-ble-weston/1.0-r0/oe-rootfs-re=
po/core2-64/libudev1_1.0.2-r1_core2-64.ipk'
>>
>> It seems like for some reason the ipk has been removed from deploy/ipk=
. To recover from this, a 'bitbake -c clean libudev-zero' will restore th=
ings the next time the rootfs is run.
>>
>> Does anyone have an idea what could cause this? Appended below is the =
recipe, and the full error message.
>>
>> Cheers,
>>
>>       Rob
>>
>>
>> libudev-zero_1.0.2.bb:
>> DESCRIPTION =3D "Daemon-less libudev replacement"
>> SECTION =3D "base"
>> LICENSE=3D"ISC"
>> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D09eac32a84c5d70c105cbfce173=
a161d"
>>
>> PR =3D "r1"
>> SRCREV =3D "04a727df50fde3f69127aed4bc48e6cff5430175"
>> SRC_URI =3D "git://github.com/illiliti/${BPN};branch=3Dmaster;protocol=
=3Dhttps"
>>
>> SRC_URI[sha256sum] =3D "29dff942cab9519994fb92ba6407f57e08d3dd6e6c0b86=
bb93d7b1d681994ff8"
>>
>> PROVIDES =3D "udev"
>>
>> inherit features_check
>>
>> CONFLICT_DISTRO_FEATURES =3D "systemd"
>>
>> S =3D "${WORKDIR}/git"
>>
>> PACKAGES +=3D "${PN}-netlink"
>> FILES:${PN} =3D "${libdir}"
>> FILES:${PN}-netlink =3D "${bindir}"
>>
>> RPROVIDES:${PN} =3D "hotplug udev"
>>
>> do_configure:prepend() {
>>      sed -i 's;PREFIX =3D /usr/local;PREFIX =3D /usr;' ${S}/Makefile
>> }
>>
>> do_compile:append() {
>>      $CCLD $LDFLAGS -o contrib/netlink-forward contrib/helper.c
>> }
>>
>> do_install() {
>>      oe_runmake install DESTDIR=3D${D}
>>
>>      install -d ${D}${bindir}
>>      install -m 755 contrib/netlink-forward ${D}${bindir}
>> }
>>
>>
>>
>> Error message:
>> ERROR: sollinux-ble-weston-1.0-r0 do_rootfs: Error executing a python =
function in exec_func_python() autogenerated:
>>
>> The stack trace of python calls that resulted in this exception/failur=
e was:
>> File: 'exec_func_python() autogenerated', lineno: 2, function: <module=
>
>>       0001:
>>   *** 0002:do_rootfs(d)
>>       0003:
>> File: '/opt/oe/yocto/kirkstone/oe-core/meta/classes/image.bbclass', li=
neno: 255,
>>   function: do_rootfs
>>       0251:    progress_reporter.next_stage()
>>       0252:
>>       0253:    # generate rootfs
>>       0254:    d.setVarFlag('REPRODUCIBLE_TIMESTAMP_ROOTFS', 'export',=
 '1')
>>   *** 0255:    create_rootfs(d, progress_reporter=3Dprogress_reporter,=
 logcatcher=3Dl
>> ogcatcher)
>>       0256:
>>       0257:    progress_reporter.finish()
>>       0258:}
>>       0259:do_rootfs[dirs] =3D "${TOPDIR}"
>> File: '/opt/oe/yocto/kirkstone/oe-core/meta/lib/oe/rootfs.py', lineno:=
 381, func
>> tion: create_rootfs
>>       0377:
>>       0378:    img_type =3D d.getVar('IMAGE_PKGTYPE')
>>       0379:
>>       0380:    cls =3D get_class_for_type(img_type)
>>   *** 0381:    cls(d, manifest_dir, progress_reporter, logcatcher).cre=
ate()
>>       0382:    os.environ.clear()
>>       0383:    os.environ.update(env_bkp)
>>       0384:
>>       0385:
>> File: '/opt/oe/yocto/kirkstone/oe-core/meta/lib/oe/package_manager/ipk=
/rootfs.py
>> ', lineno: 136, function: __init__
>>       0132:
>>       0133:        self.inc_opkg_image_gen =3D self.d.getVar('INC_IPK_=
IMAGE_GEN') o
>> r ""
>>       0134:        if self._remove_old_rootfs():
>>       0135:            bb.utils.remove(self.image_rootfs, True)
>>   *** 0136:            self.pm =3D OpkgPM(d,
>>       0137:                             self.image_rootfs,
>>       0138:                             self.opkg_conf,
>>       0139:                             self.pkg_archs)
>>       0140:        else:
>> File: '/opt/oe/yocto/kirkstone/oe-core/meta/lib/oe/package_manager/ipk=
/__init__.
>> py', lineno: 175, function: __init__
>>       0171:        self.opkg_args =3D "--volatile-cache -f %s -t %s -o=
 %s " % (self
>> .config_file, self.d.expand('${T}/ipktemp/') ,target_rootfs)
>>       0172:        self.opkg_args +=3D self.d.getVar("OPKG_ARGS")
>>       0173:
>>       0174:        if prepare_index:
>>   *** 0175:            create_packages_dir(self.d, self.deploy_dir, d.=
getVar("DEP
>> LOY_DIR_IPK"), "package_write_ipk", filterbydependencies)
>>       0176:
>>       0177:        self.opkg_dir =3D oe.path.join(target_rootfs, self.=
d.getVar('OPK
>> GLIBDIR'), "opkg")
>>       0178:        bb.utils.mkdirhier(self.opkg_dir)
>>       0179:
>> File: '/opt/oe/yocto/kirkstone/oe-core/meta/lib/oe/package_manager/__i=
nit__.py',
>>   lineno: 525, function: create_packages_dir
>>       0521:                if destdir not in seendirs:
>>       0522:                    bb.utils.mkdirhier(destdir)
>>       0523:                    seendirs.add(destdir)
>>       0524:                try:
>>   *** 0525:                    os.link(l, dest)
>>       0526:                except OSError as err:
>>       0527:                    if err.errno =3D=3D errno.EXDEV:
>>       0528:                        bb.utils.copyfile(l, dest)
>>       0529:                    else:
>> Exception: FileNotFoundError: [Errno 2] No such file or directory: '/s=
sd/opt/oe/yocto/kirkstone/build-weston/tmp-glibc/deploy/ipk/core2-64/libu=
dev1_1.0.2-r1_core2-64.ipk' -> '/ssd/opt/oe/yocto/kirkstone/build-weston/=
tmp-glibc/work/generic64-oe-linux/sollinux-ble-weston/1.0-r0/oe-rootfs-re=
po/core2-64/libudev1_1.0.2-r1_core2-64.ipk'
>>
>>
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#60782): https://lists.yoctoproject.org/g/yocto/mes=
sage/60782
>> Mute This Topic: https://lists.yoctoproject.org/mt/100679184/7790876
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [rob@teegee.=
cloud]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>


