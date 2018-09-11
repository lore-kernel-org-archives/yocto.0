Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08664E0090A; Tue, 11 Sep 2018 09:36:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22017E0053F
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 09:36:16 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id v17-v6so26719984wrr.9
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 09:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=nhR/H2yrs6bmZkr7rGd/8FwAWaQfACnYswI8vOR5x6A=;
	b=ji6rd9tg1F324iaig9YAb8XRUqId0lg3r6oznLicF7/NQBOtwd+CusmRhXjrIAWNCf
	5rp1xiEKHLjAhZUTxaN7z4fC4yViKJYY3sNU/byc+hL1SUe4gNzV6xYXxdy3USlxLBay
	F/ZltZiwmIGtFIX+lx2InjVF3eDXtFU7QuZJPNKSqIrlUXh+AUnM3WzWldWJHEdQa9j1
	wToszEv7iJvAv+nvtlIkECZILEn3WPye+ECAgjzQjWY7QXj9HzsIlUn1vnBVwsBmnslf
	JfQZ/gw5RS1tA/NYEby+/wWflMcep37aTj2LbZzNOa7PZ5E/gZZUxTtj+/DTnEsMVO9k
	s0zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=nhR/H2yrs6bmZkr7rGd/8FwAWaQfACnYswI8vOR5x6A=;
	b=XR+ubar1RF21MEBeKNehXGD/+rro995foYGzmYC669jLfGGcttWCZTS5CEAspSjb/z
	s5f4gFQ+i6re+u54uK+pby+kP2Cg/AKGQ++WjUsmsuH/khajXpFGLPSlJKT+cTRdYX/a
	Q/gDQXbcXLxra6uwnzGuf2C88bHcYvXI9zL37/rpRORYicMIamEz4GSXerAMtS9YOQXn
	HI7Aczhyo3IWe8JAwEjcno1OCmfejC4I21s9SGdIPRNHvrWdprPBxf1IeUvBxmiaIlq8
	2cu4GOKUUc60JnbXBHLjPEhBlt0rXiSCiq4q+6duHRPCSnoAoYytnOCvl6HUWZzlGEb0
	JBUQ==
X-Gm-Message-State: APzg51AHDhykWhwkTWeL3sHmBg85f7kiBt2nxn4UlswIQOLSAUBBfDb6
	SICsMHRug6M16KSMGGPuZo8=
X-Google-Smtp-Source: ANB0VdYKT/YsvoBPkL5TdhUIeMHrpune1IAQQPsePo9BjtPqltuV3Nuy+0l20loiAlwM1HnPX6uyaw==
X-Received: by 2002:adf:9101:: with SMTP id j1-v6mr19172251wrj.3.1536683775141;
	Tue, 11 Sep 2018 09:36:15 -0700 (PDT)
Received: from [10.42.8.207] (b2b-78-94-80-58.unitymedia.biz. [78.94.80.58])
	by smtp.gmail.com with ESMTPSA id
	75-v6sm2778966wml.21.2018.09.11.09.36.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 11 Sep 2018 09:36:13 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <5A62526D-403E-4BE9-B7D6-96D61F08A159@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Tue, 11 Sep 2018 18:36:10 +0200
In-Reply-To: <CA+chaQfCMR13hmEgERwX1CKjsb78uxHk=Y2EG4BZ2OkSs6H3LQ@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
References: <0AB7262D-C22A-4543-BB67-15F3A1DB2094@gmail.com>
	<CANNYZj9d8g_q9FD98JzgY-G+yAhVUkYe8JW8x_UuOEZxiOx5Kw@mail.gmail.com>
	<7F360AF5-A5DC-443C-A847-B7A323AF9D94@gmail.com>
	<CA+chaQcy_VHA7yGhhVULW5=jMVfP2tNEJKWi-KSgS_zwNjZUTg@mail.gmail.com>
	<CA+chaQdK_ciN-unOxb5AXkmwqMUm0y4Z5cjL3wDu0bzDYkPb5A@mail.gmail.com>
	<3C4A4AAD-4CD4-408F-A0BF-0DE592E64D0B@gmail.com>
	<CA+chaQeCBa6wUJuJDF7gTGaBXdU4zE1bEQmSA=9z4dokZtM_XQ@mail.gmail.com>
	<852E6AB4-06E1-4D95-BD2F-7AF00D0B3B94@gmail.com>
	<CA+chaQfCMR13hmEgERwX1CKjsb78uxHk=Y2EG4BZ2OkSs6H3LQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Postinstall scriptlets of ['coreutils'] have failed
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
X-List-Received-Date: Tue, 11 Sep 2018 16:36:18 -0000
X-Groupsio-MsgNum: 42432
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C868029D-ACC2-4817-9D0B-C039916BCD76";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_C868029D-ACC2-4817-9D0B-C039916BCD76
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7FA84AA8-D3BB-41D5-8AC3-70DE3CF4FAE6"

--Apple-Mail=_7FA84AA8-D3BB-41D5-8AC3-70DE3CF4FAE6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> Am 10.09.2018 um 21:09 schrieb Martin Jansa <martin.jansa@gmail.com>:
>=20
> pn-buildlist isn't really useful in this case, building both coreutils =
and busybox doesn't imply that both will be actually included in the =
image..
>=20
> If you compare installed-package-names.txt in buildhistory you'll see =
that only the core-image-minimal-dev has coreutils installed.
>=20
> docker-shr qemux86-64@ =
~/build/oe-core/buildhistory/images/qemux86_64/glibc $ grep busybox =
core-image-minimal*/installed-package-names.txt
> core-image-minimal-dev/installed-package-names.txt:busybox
> core-image-minimal-dev/installed-package-names.txt:busybox-dev
> core-image-minimal-dev/installed-package-names.txt:busybox-syslog
> core-image-minimal-dev/installed-package-names.txt:busybox-udhcpc
> core-image-minimal/installed-package-names.txt:busybox
> core-image-minimal/installed-package-names.txt:busybox-syslog
> core-image-minimal/installed-package-names.txt:busybox-udhcpc
> docker-shr qemux86-64@ =
~/build/oe-core/buildhistory/images/qemux86_64/glibc $ grep coreutils =
core-image-minimal*/installed-package-names.txt
> core-image-minimal-dev/installed-package-names.txt:coreutils
> core-image-minimal-dev/installed-package-names.txt:coreutils-dev
>=20
> That's why the issue is shown only in core-image-minimal-dev.

The files "installed-package-names.txt" are not available in my setup =
(IIRC one has to enable that explicitly).

> Do you have custom busybox defconfig which enables nice applet? It's =
not enabled in default config:
> meta/recipes-core/busybox/busybox/defconfig:# CONFIG_NICE is not set

You're right. Ages ago - in April 2015 - I added that to my busybox =
configuration, since I need a
nice for some scripts on target. And since you figured out, coreutils is =
(likely with reason) not
available in general for some images, others might have that, too.

So I created a small patch for corutils ;)

Thanks for figuring that out.

Cheers,
Jens

> On Mon, Sep 10, 2018 at 8:15 PM Jens Rehsack <rehsack@gmail.com =
<mailto:rehsack@gmail.com>> wrote:
>=20
>=20
>> Am 09.09.2018 um 20:56 schrieb Martin Jansa <martin.jansa@gmail.com =
<mailto:martin.jansa@gmail.com>>:
>>=20
>> Does core-image-minimal include both busybox and coreutils? Maybe =
only -dev include both.
>=20
> Unfortunately both include coreutils, see attached pn-buildlist (I can =
send you the recipe-depends and the task-depends, either if you need =
them).
>=20
>> I'll send fix for attr soon, waiting for some builds to finish =
testing it.
>=20
> Seems similar to my kind of soon :-)
>=20
>> On Sun, Sep 9, 2018 at 8:47 PM Jens Rehsack <rehsack@gmail.com =
<mailto:rehsack@gmail.com>> wrote:
>> So far, so good.
>>=20
>> They way to fix that seems either to check why busybox uses =
${base_bindir} nowadays in favor of ${bindir} and fix either busybox or =
coreutils or attr.
>>=20
>> What drives me nuts is not only the failure after the busybox update =
- why does core-image-minimal builds successful while =
core-image-minimal-dev fails?
>>=20
>> Cheers,
>> Jens
>>=20
>>> Am 09.09.2018 um 19:27 schrieb Martin Jansa <martin.jansa@gmail.com =
<mailto:martin.jansa@gmail.com>>:
>>>=20
>>> busybox is most likely the one providing it in ${base_bindir}
>>>=20
>>> Recent busybox upgrade probably moved this file.
>>>=20
>>> There is also conflict on /usr/bin/setfattr between busybox and attr =
now.
>>>=20
>>> On Sun, Sep 9, 2018 at 7:22 PM Martin Jansa <martin.jansa@gmail.com =
<mailto:martin.jansa@gmail.com>> wrote:
>>> There are 2 packages using u-a for nice, but one is using {bindir} =
and 2nd one is using {base_bindir}
>>>=20
>>> coreutils is using bindir, find what's using ${base_bindir} and =
change one of them to use the same u-a link as the other one.
>>>=20
>>> On Sun, Sep 9, 2018 at 5:59 PM Jens Rehsack <rehsack@gmail.com =
<mailto:rehsack@gmail.com>> wrote:
>>>=20
>>>=20
>>>> Am 09.09.2018 um 13:15 schrieb Alexander Kanavin =
<alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>:
>>>>=20
>>>> It's right in the message?
>>>>=20
>>>> ERROR: Logfile of failure stored in:
>>>> =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>>>>=20
>>>> Alex
>>>=20
>>>=20
>>> It's not much what stands there:
>>>=20
>>> Downloading =
file:/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky=
-linux/core-image-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.=
25-r0_core2-64.ipk.
>>> Installing coreutils-dev (8.30) on root
>>> [...]
>>> Configuring update-rc.d-deupdate-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/diff to =
/usr/bin/diff.diffutils
>>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp to =
/usr/bin/cmp.diffutils
>>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/umount to =
/bin/umount.util-linux
>>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/[ to =
/usr/bin/lbracket.coreutils
>>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch to =
/usr/bin/arch.coreutils
>>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/basename to =
/usr/bin/basename.coreutils
>>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon to =
/usr/bin/chcon.coreutils
>>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cksum to =
/usr/bin/cksum.coreutils
>>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/comm to =
/usr/bin/comm.coreutils
>>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit to =
/usr/bin/csplit.coreutils
>>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cut to =
/usr/bin/cut.coreutils
>>> [...]
>>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/mkfifo to =
/usr/bin/mkfifo.coreutils
>>> update-alternatives: renaming nice link from /bin/nice to =
/usr/bin/nice
>>> mv: cannot stat '/bin/nice': No such file or directory
>>> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/bash to /bin/bash.bash
>>> [...]
>>> Configuring libgmp10.
>>> Configuring coreutils.
>>> coreutils.postinst returned 1, marking as unpacked only, =
configuration required on target.
>>> Configuring acl.
>>> [...]
>>>=20
>>> The postinst file of coreutils contains only a long list of =
update-alternatives, as many other packages do either.
>>>=20
>>> core-image-minimal contains coreutils as well, but it doesn't fail =
the same way.
>>>=20
>>> Any ideas?
>>>=20
>>>> 2018-09-09 10:58 GMT+02:00 Jens Rehsack <rehsack@gmail.com =
<mailto:rehsack@gmail.com>>:
>>>>> Hi,
>>>>>=20
>>>>> I got following issue when building an image for live-debugging:
>>>>>=20
>>>>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Postinstall =
scriptlets of ['coreutils'] have failed. If the intention is to defer =
them to first boot,
>>>>> then please place them into pkg_postinst_ontarget_${PN} ().
>>>>> Deferring to first boot via 'exit 1' is no longer supported.
>>>>> Details of the failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.
>>>>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Function failed: =
do_rootfs
>>>>> ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358
>>>>> ERROR: Task =
(/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/images/updat=
able-app-dev-image.bb:do_rootfs) failed with exit code '1'
>>>>>=20
>>>>> I can reproduce it using core-image-minimal-dev
>>>>>=20
>>>>> WARNING: core-image-minimal-dev-1.0-r0 do_rootfs: =
coreutils.postinst returned 1, marking as unpacked only, configuration =
required on target.
>>>>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall =
scriptlets of ['coreutils'] have failed. If the intention is to defer =
them to first boot,
>>>>> then please place them into pkg_postinst_ontarget_${PN} ().
>>>>> Deferring to first boot via 'exit 1' is no longer supported.
>>>>> Details of the failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.
>>>>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Function failed: =
do_rootfs
>>>>> ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>>>>> ERROR: Task =
(/home/sno/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-im=
age-minimal-dev.bb:do_rootfs) failed with exit code '1'
>>>>>=20
>>>>> Any idea where to start debugging?
>>>>>=20
>>>>> Best regards
>>>>> --
>>>>> Jens Rehsack - rehsack@gmail.com <mailto:rehsack@gmail.com>
>>>>>=20
>>>>>=20
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>>>>>=20
>>>=20
>>> --
>>> Jens Rehsack - rehsack@gmail.com <mailto:rehsack@gmail.com>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>>=20
>> --
>> Jens Rehsack - rehsack@gmail.com <mailto:rehsack@gmail.com>
>=20
> --
> Jens Rehsack - rehsack@gmail.com <mailto:rehsack@gmail.com>

--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_7FA84AA8-D3BB-41D5-8AC3-70DE3CF4FAE6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">Am 10.09.2018 um 21:09 schrieb Martin Jansa &lt;<a =
href=3D"mailto:martin.jansa@gmail.com" =
class=3D"">martin.jansa@gmail.com</a>&gt;:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div dir=3D"ltr" class=3D""><div dir=3D"ltr" class=3D""><div =
dir=3D"ltr" class=3D"">pn-buildlist isn't really useful in this case, =
building both coreutils and busybox doesn't imply that both will be =
actually included in the image..<div class=3D""><br class=3D""></div><div =
class=3D"">If you compare installed-package-names.txt in buildhistory =
you'll see that only the&nbsp;core-image-minimal-dev has coreutils =
installed.</div><div class=3D""><br class=3D""></div><div class=3D""><div =
class=3D"">docker-shr qemux86-64@ =
~/build/oe-core/buildhistory/images/qemux86_64/glibc $ grep busybox =
core-image-minimal*/installed-package-names.txt</div><div =
class=3D"">core-image-minimal-dev/installed-package-names.txt:busybox</div=
><div =
class=3D"">core-image-minimal-dev/installed-package-names.txt:busybox-dev<=
/div><div =
class=3D"">core-image-minimal-dev/installed-package-names.txt:busybox-sysl=
og</div><div =
class=3D"">core-image-minimal-dev/installed-package-names.txt:busybox-udhc=
pc</div><div =
class=3D"">core-image-minimal/installed-package-names.txt:busybox</div><di=
v =
class=3D"">core-image-minimal/installed-package-names.txt:busybox-syslog</=
div><div =
class=3D"">core-image-minimal/installed-package-names.txt:busybox-udhcpc</=
div><div class=3D"">docker-shr qemux86-64@ =
~/build/oe-core/buildhistory/images/qemux86_64/glibc $ grep coreutils =
core-image-minimal*/installed-package-names.txt</div><div =
class=3D"">core-image-minimal-dev/installed-package-names.txt:coreutils</d=
iv><div =
class=3D"">core-image-minimal-dev/installed-package-names.txt:coreutils-de=
v</div></div><div class=3D""><br class=3D""></div><div class=3D"">That's =
why the issue is shown only in =
core-image-minimal-dev.</div></div></div></div></div></div></blockquote><d=
iv><br class=3D""></div><div>The files "installed-package-names.txt" are =
not available in my setup (IIRC one has to enable that =
explicitly).</div><br class=3D""><blockquote type=3D"cite" class=3D""><div=
 class=3D""><div dir=3D"ltr" class=3D""><div dir=3D"ltr" class=3D""><div =
dir=3D"ltr" class=3D""><div dir=3D"ltr" class=3D""><div class=3D"">Do =
you have custom busybox defconfig which enables nice applet? It's not =
enabled in default config:</div><div =
class=3D"">meta/recipes-core/busybox/busybox/defconfig:# CONFIG_NICE is =
not set</div></div></div></div></div></div></blockquote><div><br =
class=3D""></div>You're right. Ages ago - in April 2015 - I added that =
to my busybox configuration, since I need a</div><div>nice for some =
scripts on target. And since you figured out, coreutils is (likely with =
reason) not</div><div>available in general for some images, others might =
have that, too.</div><div><div><br class=3D""></div><div>So I created a =
small patch for corutils ;)</div><div><br class=3D""></div><div>Thanks =
for figuring that out.</div><div><br =
class=3D""></div><div>Cheers,</div><div>Jens</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"">On Mon, Sep 10, 2018 =
at 8:15 PM Jens Rehsack &lt;<a href=3D"mailto:rehsack@gmail.com" =
class=3D"">rehsack@gmail.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
style=3D"word-wrap:break-word;line-break:after-white-space" class=3D""><br=
 class=3D""><div class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">Am 09.09.2018 um 20:56 schrieb Martin Jansa =
&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank" =
class=3D"">martin.jansa@gmail.com</a>&gt;:</div><br =
class=3D"m_7046839808965869988Apple-interchange-newline"><div =
class=3D""><div dir=3D"ltr" class=3D"">Does core-image-minimal include =
both busybox and coreutils? Maybe only -dev include =
both.</div></div></blockquote><div class=3D""><br class=3D""></div><div =
class=3D"">Unfortunately both include coreutils, see attached =
pn-buildlist (I can send you the recipe-depends and the task-depends, =
either if you need them).</div><div class=3D""></div></div></div><div =
style=3D"word-wrap:break-word;line-break:after-white-space" =
class=3D""><div class=3D"m_7046839808965869988AppleOriginalContents"><div =
class=3D"m_7046839808965869988AppleOriginalContents"></div></div></div><di=
v style=3D"word-wrap:break-word;line-break:after-white-space" =
class=3D""><div class=3D""><div class=3D""></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D"">I'll send fix for attr soon, =
waiting for some builds to finish testing =
it.</div></div></div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">Seems similar to my kind of soon =
:-)</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"">On =
Sun, Sep 9, 2018 at 8:47 PM Jens Rehsack &lt;<a =
href=3D"mailto:rehsack@gmail.com" target=3D"_blank" =
class=3D"">rehsack@gmail.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
style=3D"word-wrap:break-word;line-break:after-white-space" class=3D"">So =
far, so good.<div class=3D""><br class=3D""></div><div class=3D"">They =
way to fix that seems either to check why busybox uses ${base_bindir} =
nowadays in favor of ${bindir} and fix either busybox or coreutils or =
attr.</div><div class=3D""><br class=3D""></div><div class=3D"">What =
drives me nuts is not only the failure after the busybox update - why =
does core-image-minimal builds successful while core-image-minimal-dev =
fails?</div><div class=3D""><br class=3D""></div><div =
class=3D"">Cheers,</div><div class=3D"">Jens<br class=3D""><div =
class=3D""><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">Am 09.09.2018 um 19:27 schrieb Martin Jansa &lt;<a =
href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank" =
class=3D"">martin.jansa@gmail.com</a>&gt;:</div><br =
class=3D"m_7046839808965869988m_697569895326130484Apple-interchange-newlin=
e"><div class=3D""><div dir=3D"ltr" class=3D""><div dir=3D"ltr" =
class=3D"">busybox is most likely the one providing it in =
${base_bindir}<div class=3D""><br class=3D""></div><div class=3D"">Recent =
busybox upgrade probably moved this file.</div><div class=3D""><br =
class=3D""></div><div class=3D"">There is also conflict =
on&nbsp;/usr/bin/setfattr between busybox and attr =
now.</div></div></div><br class=3D""><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"">On Sun, Sep 9, 2018 at 7:22 PM Martin Jansa =
&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank" =
class=3D"">martin.jansa@gmail.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr" =
class=3D"">There are 2 packages using u-a for nice, but one is using =
{bindir} and 2nd one is using {base_bindir}<div class=3D""><br =
class=3D""></div><div class=3D"">coreutils is using bindir, find what's =
using ${base_bindir} and change one of them to use the same u-a link as =
the other one.</div></div><br class=3D""><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"">On Sun, Sep 9, 2018 at 5:59 PM Jens Rehsack =
&lt;<a href=3D"mailto:rehsack@gmail.com" target=3D"_blank" =
class=3D"">rehsack@gmail.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
style=3D"word-wrap:break-word;line-break:after-white-space" class=3D""><br=
 class=3D""><div class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">Am 09.09.2018 um 13:15 schrieb Alexander =
Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" =
class=3D"">alex.kanavin@gmail.com</a>&gt;:</div><br =
class=3D"m_7046839808965869988m_697569895326130484m_7760255497084367731m_-=
7610403655000841370Apple-interchange-newline"><div class=3D""><div =
class=3D"">It's right in the message?<br class=3D""><br class=3D"">ERROR: =
Logfile of failure stored in:<br =
class=3D"">/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fische=
r-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709<br =
class=3D""><br class=3D"">Alex<br class=3D""></div></div></blockquote><div=
 class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div=
 class=3D"">It's not much what stands there:</div><div class=3D""><br =
class=3D""></div><div class=3D""><div class=3D"">Downloading =
file:/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky=
-linux/core-image-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.=
25-r0_core2-64.ipk.</div><div class=3D"">Installing coreutils-dev (8.30) =
on root</div><div class=3D"">[...]</div><div class=3D""><div =
class=3D"">Configuring update-rc.d-deupdate-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/diff to =
/usr/bin/diff.diffutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp to =
/usr/bin/cmp.diffutils</div><div class=3D"">update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/umount to =
/bin/umount.util-linux</div><div class=3D"">update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/[ to =
/usr/bin/lbracket.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch to =
/usr/bin/arch.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/basename to =
/usr/bin/basename.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon to =
/usr/bin/chcon.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cksum to =
/usr/bin/cksum.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/comm to =
/usr/bin/comm.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit to =
/usr/bin/csplit.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cut to =
/usr/bin/cut.coreutils</div><div class=3D"">[...]</div></div></div><div =
class=3D""><div class=3D"">update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/mkfifo to =
/usr/bin/mkfifo.coreutils</div><div class=3D"">update-alternatives: =
renaming nice link from /bin/nice to /usr/bin/nice</div><div =
class=3D"">mv: cannot stat '/bin/nice': No such file or =
directory</div><div class=3D"">update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/bash to =
/bin/bash.bash</div><div class=3D"">[...]</div></div><div class=3D""><div =
class=3D"">Configuring libgmp10.</div><div class=3D"">Configuring =
coreutils.</div><div class=3D"">coreutils.postinst returned 1, marking =
as unpacked only, configuration required on target.</div><div =
class=3D"">Configuring acl.</div><div class=3D"">[...]</div><div =
class=3D""><br class=3D""></div><div class=3D"">The postinst file of =
coreutils contains only a long list of update-alternatives, as many =
other packages do either.</div><div class=3D""><br class=3D""></div><div =
class=3D"">core-image-minimal contains coreutils as well, but it doesn't =
fail the same way.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Any ideas?</div></div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><div class=3D"">2018-09-09 10:58 GMT+02:00 =
Jens Rehsack &lt;<a href=3D"mailto:rehsack@gmail.com" target=3D"_blank" =
class=3D"">rehsack@gmail.com</a>&gt;:<br class=3D""><blockquote =
type=3D"cite" class=3D"">Hi,<br class=3D""><br class=3D"">I got =
following issue when building an image for live-debugging:<br =
class=3D""><br class=3D"">ERROR: updatable-app-dev-image-1.0-r0 =
do_rootfs: Postinstall scriptlets of ['coreutils'] have failed. If the =
intention is to defer them to first boot,<br class=3D"">then please =
place them into pkg_postinst_ontarget_${PN} ().<br class=3D"">Deferring =
to first boot via 'exit 1' is no longer supported.<br class=3D"">Details =
of the failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.<br class=3D"">ERROR: =
updatable-app-dev-image-1.0-r0 do_rootfs: Function failed: do_rootfs<br =
class=3D"">ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358<br =
class=3D"">ERROR: Task =
(/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/images/updat=
able-app-dev-image.bb:do_rootfs) failed with exit code '1'<br =
class=3D""><br class=3D"">I can reproduce it using =
core-image-minimal-dev<br class=3D""><br class=3D"">WARNING: =
core-image-minimal-dev-1.0-r0 do_rootfs: coreutils.postinst returned 1, =
marking as unpacked only, configuration required on target.<br =
class=3D"">ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall =
scriptlets of ['coreutils'] have failed. If the intention is to defer =
them to first boot,<br class=3D"">then please place them into =
pkg_postinst_ontarget_${PN} ().<br class=3D"">Deferring to first boot =
via 'exit 1' is no longer supported.<br class=3D"">Details of the =
failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.<br class=3D"">ERROR: =
core-image-minimal-dev-1.0-r0 do_rootfs: Function failed: do_rootfs<br =
class=3D"">ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709<br =
class=3D"">ERROR: Task =
(/home/sno/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-im=
age-minimal-dev.bb:do_rootfs) failed with exit code '1'<br class=3D""><br =
class=3D"">Any idea where to start debugging?<br class=3D""><br =
class=3D"">Best regards<br class=3D"">--<br class=3D"">Jens Rehsack - <a =
href=3D"mailto:rehsack@gmail.com" target=3D"_blank" =
class=3D"">rehsack@gmail.com</a><br class=3D""><br class=3D""><br =
class=3D"">--<br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><br =
class=3D""><br class=3D""></blockquote></div></div></blockquote></div><br =
class=3D""><div class=3D"">
<div =
style=3D"letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;word-wrap:break-word" =
class=3D""><div =
style=3D"letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;word-wrap:break-word" =
class=3D""><div class=3D"">--&nbsp;</div><div class=3D"">Jens Rehsack - =
<a href=3D"mailto:rehsack@gmail.com" target=3D"_blank" =
class=3D"">rehsack@gmail.com</a></div></div></div>
</div>
<br class=3D""></div>-- <br class=3D"">
_______________________________________________<br class=3D"">
yocto mailing list<br class=3D"">
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><br =
class=3D"">
</blockquote></div>
</blockquote></div>
</div></blockquote></div><br class=3D""><div class=3D"">
<div =
style=3D"letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;word-wrap:break-word" =
class=3D""><div =
style=3D"letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;word-wrap:break-word" =
class=3D""><div class=3D"">--&nbsp;</div><div class=3D"">Jens Rehsack - =
<a href=3D"mailto:rehsack@gmail.com" target=3D"_blank" =
class=3D"">rehsack@gmail.com</a></div></div></div>
</div>
<br class=3D""></div></div></blockquote></div>
</div></blockquote></div><br class=3D""><div class=3D"">
<div style=3D"letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; =
word-wrap: break-word;" class=3D""><div style=3D"letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; word-wrap: break-word;" class=3D""><div =
class=3D"">--&nbsp;</div><div class=3D"">Jens Rehsack - <a =
href=3D"mailto:rehsack@gmail.com" target=3D"_blank" =
class=3D"">rehsack@gmail.com</a></div></div></div>
</div>
<br class=3D""></div></blockquote></div>
</div></blockquote></div><br class=3D""><div class=3D"">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div class=3D"">--&nbsp;</div><div class=3D"">Jens Rehsack - =
<a href=3D"mailto:rehsack@gmail.com" =
class=3D"">rehsack@gmail.com</a></div></div></div>
</div>
<br class=3D""></body></html>=

--Apple-Mail=_7FA84AA8-D3BB-41D5-8AC3-70DE3CF4FAE6--

--Apple-Mail=_C868029D-ACC2-4817-9D0B-C039916BCD76
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEGutaqWUYV+tvC/mCRJmWrtzlCp0FAluX7voACgkQRJmWrtzl
Cp3jng//XFJFLz9bI8rGjcEbvjEWqxVvxOsPbKLa3o16l5gclWry2QrgwKa9iNno
k6u3/HUvf6aJU/T9FHE49Ofwi6dE6w/6JaxmOETWiFYScWtOA5miRjOUwmpfC81z
hUaR+9JMQ2zjDQLJyWB5RZuv7psrbMwoqNIwzmzCvzsUEMsjcG8mhEg/xmsht5P2
PS/CPpmRd8FayYXtI5gJxVkN2JMfVNMPesH+laedLvv3aVB839tBTE5IAnSf+CV2
vm4mtJKaFiZpFpZ+0hj32WnwmNaMsMQSlnpaMtilSn2umdVLSUTG1Yflk1U86qWy
zYzfOO6Y15SReaLPHcplsqe+1jdf/gEw7MpYkQoy36zPzp9PO1q2mHATTA9moBjT
pURBtGn7jKBY+sXnhZUE8HMHyaqus/uHHLxXgGrn2/oJ2e4eWyCA1ctqDCqz1DGW
1+gGAsJf5cihMFfVzKWoGzbpUqwA/g1etU9GM9h5VH39UpqnTpVn4rcYVinmjsU2
7BPwkPxVJVqyM8coE/4jDJVExOD9OQfHB9JVWufBiS2WFKcV4C5divw9crdg04Lh
Qje9M2lNdUuOtS+GaW1RkwLzUtqvBFY4WZ/FmxamOoRUjDPABwYAov0Zia2gkgaV
Hp8QFxXmJRZODBdEHqXV1+ozVSHj3TQD2kHaCVjro/wlpG13ftg=
=N42R
-----END PGP SIGNATURE-----

--Apple-Mail=_C868029D-ACC2-4817-9D0B-C039916BCD76--
