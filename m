Return-Path: <b-sathishkumar@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23280E006F7; Fri,  4 Jul 2014 01:42:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from GWS08.hcl.com (gws08.hcl.com [192.8.186.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A68A0E006F3
	for <yocto@yoctoproject.org>; Fri,  4 Jul 2014 01:42:26 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,599,1400005800"; d="scan'208";a="23723029"
Received: from unknown (HELO CHN-CORP-HT02.CORP.HCL.IN) ([10.249.2.34])
	by GWS08.hcl.com with ESMTP/TLS/AES128-SHA; 04 Jul 2014 14:01:51 +0530
Received: from CHN-HCLT-CSHT03.HCLT.CORP.HCL.IN (10.150.12.28) by
	CHN-CORP-HT02.CORP.HCL.IN (10.249.2.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 4 Jul 2014 14:12:24 +0530
Received: from CHN-HCLT-MBS08.HCLT.CORP.HCL.IN ([10.150.12.23]) by
	CHN-HCLT-CSHT03.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0123.003;
	Fri, 4 Jul 2014 14:12:24 +0530
From: "Sathish Kumar Balasubramaniam -ERS, HCL Tech" <b-sathishkumar@hcl.com>
To: Robert Yang <liezhi.yang@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Adding a shared object file to rootfs
Thread-Index: Ac+W1zAzyf0BaDlPSBO4gCtNG27HnQACijigAAQp1IAAGxiBMA==
Date: Fri, 4 Jul 2014 08:42:23 +0000
Message-ID: <5D833673AB94D9489A7F7F73E9E611C814ADC5DF@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
References: <5D833673AB94D9489A7F7F73E9E611C814ADC4C8@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
	<53B5F73B.8040800@windriver.com>
In-Reply-To: <53B5F73B.8040800@windriver.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.150.5.114]
MIME-Version: 1.0
Subject: Re: Adding a shared object file to rootfs
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
X-List-Received-Date: Fri, 04 Jul 2014 08:42:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks, Robert Yang.

Method using abc.bb:
~~~~~~~~~~~~~~~~

Before I tried using abc.bb, but I faced an error that says unknown package=
 abc and something like opkg_install_cmd: cannot install .....
Hence I thought of trying linux-kernel_3.4.bbappend.

But now I added like the following to the abc.bb file (before I didn't give=
 the -dbg line)

FILES_${PN} +=3D "${base_libdir}"
FILES_${PN}-dbg +=3D "${base_libdir}/.debug"
FILES_SOLIBSDEV =3D ""

Now it's working :)   --------> This is fine for me and as you said, this i=
s the recommended way too.

Method using linux-kernel_3.4.bb just for analysis :
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

I tried to add FILES_kernel-vmlinux like the following

do_install_append () {
        install -d ${D}${base_libdir}
        install -m 0644 ${WORKDIR}/abc.so ${D}${base_libdir}
}

FILES_kernel-vmlinux +=3D "${base_libdir}"
FILES_kernel-vmlinux-dbg +=3D "${base_libdir}/.debug"

I am getting the following error

ERROR: QA Issue: non debug package contains .debug directory: kernel-vmlinu=
x path /work/<machine>-poky-linux-gnueabi/linux-yocto/3.4+<version>/package=
s-split/kernel-vmlinux/lib/.debug/abc.so


Regards,
Sathish

-----Original Message-----
From: Robert Yang [mailto:liezhi.yang@windriver.com]=20
Sent: Friday, July 04, 2014 6:07 AM
To: Sathish Kumar Balasubramaniam -ERS, HCL Tech; yocto@yoctoproject.org
Subject: Re: [yocto] Adding a shared object file to rootfs


Hello,

I think that there are two problems:

1) You can use a abc.bb to add the abc.so rather than .bbappend, then you c=
an
    add something like:
    IMAGE_INSTALL_append =3D "abc"

    to conf/local.conf.

2) Please see my comments inline.

On 07/04/2014 01:11 AM, Sathish Kumar Balasubramaniam -ERS, HCL Tech wrote:
> I tried to add the abc.so using a linux-yocto_3.4.bbappend like the follo=
wing
>
> SRC_URI +=3D "file://abc.so"
>
> do_install_append() {
>
>                  install -d ${D}${base_libdir}
>
>                  install -m 0644 ${WORKDIR}/abc.so ${D}${base_libdir}/
>
> }
>
> FILES_${PN} +=3D "${base_libdir}/*.so"

The linux-yocto_3.4.bb doesn't generate a linux-yocto.rpm since linux-yocto
(the ${PN}) doesn't in PACKAGES, you can use bitbake -e linux-yocto to
see this, and if you really want to use linux-yocto_3.4.bbappend,
you can use (WARN: this is highly suggested NOT)

FILES_kernel-vmlinux +=3D "${base_libdir}/abc.so"

Then maybe you would get the warning about unshipped  /lib/.debug
and /lib/.debug/abc.so, you need add them to kernel-vmlinux-dgb. Again,
this is highly suggested not, The suggested way is abc.bb.

// Robert

>
> FILES_SOLIBSDEV =3D ""
>
> However still I am getting the following error
>
> ERROR: QA Issue: linux-yocto: Files/directories were installed but not sh=
ipped
>
>    /lib/abc.so
>
>    /lib/.debug
>
>    /lib/.debug/abc.so
>
> ERROR: QA run found fatal errors. Please consider fixing them.
>
> ERROR: Function failed: do_package_qa
>
> Thanks,
>
> Sathish
>
> *From:*Sathish Kumar Balasubramaniam -ERS, HCL Tech
> *Sent:* Thursday, July 03, 2014 9:29 PM
> *To:* yocto@yoctoproject.org
> *Subject:* Adding a shared object file to rootfs
> *Importance:* High
>
> Hi,
>
> I have a file abc.so
>
> How can I add just this abc.so to /lib in rootfs using a recipe ?
>
> Regards,
>
> Sathish
>
>
>
> ::DISCLAIMER::
> -------------------------------------------------------------------------=
---------------------------------------------------------------------------
>
> The contents of this e-mail and any attachment(s) are confidential and in=
tended
> for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as infor=
mation
> could be intercepted, corrupted,
> lost, destroyed, arrive late or incomplete, or may contain viruses in
> transmission. The e mail and its contents
> (with or without referred errors) shall therefore not attach any liabilit=
y on
> the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of th=
e
> author and may not necessarily reflect the
> views or opinions of HCL or its affiliates. Any form of reproduction,
> dissemination, copying, disclosure, modification,
> distribution and / or publication of this message without the prior writt=
en
> consent of authorized representative of
> HCL is strictly prohibited. If you have received this email in error plea=
se
> delete it and notify the sender immediately.
> Before opening any email and/or attachments, please check them for viruse=
s and
> other defects.
>
> -------------------------------------------------------------------------=
---------------------------------------------------------------------------
>
>
>

