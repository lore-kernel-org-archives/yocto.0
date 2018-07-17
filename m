Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8E6FE01664; Tue, 17 Jul 2018 01:42:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f67.google.com (mail-lf0-f67.google.com
	[209.85.215.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36961E00D9E
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2018 01:42:13 -0700 (PDT)
Received: by mail-lf0-f67.google.com with SMTP id b22-v6so245761lfa.3
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2018 01:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=3mQUmNd+S+Zwq41z03vXpVBs+QfbOT/dMEBW1bamaL4=;
	b=pTMBUNDWCwZ7tUkFhR/UgPokgazxAHsyz3xOOevCRf7Psx/1GDAQ/5kfrEBauDEmiX
	JHDuYPocwqJws2iNXkxhZ8EA2AKgl/5PPy+YJKzy92nTjzd74X5qZGu3/9OwDhvZNJmo
	Fjgx8wKdI4AVXhr1vHBar+ZwOdNWcrJtSfNpj0VAhNTWNTbBNLIFm1xL2+G/C5a9jIPa
	EVGAapZY61lvi22mzlQ4K29962M2/9YPsZEsDVefhwRhckAvIAyEUdx03kbR8fxzDO+Y
	wUl9GsbldDrpQCj+EH7DKl7n52A1q3cY8AbEuvcrKXFmARun/9zP584WO75d5CU6TMui
	X7Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=3mQUmNd+S+Zwq41z03vXpVBs+QfbOT/dMEBW1bamaL4=;
	b=H3K+ECPDaB7jAZFtkxVjnGOqeTLjdbZ6J5oXjnFAyuoIkvj6QsSvwtVoXrLZTo0/dC
	UHrDNepsNJ6wyW3sWwHn+sEzTwLCJ1q8H6C/kfdh9qJWgdWwjrWhQ5QnUvTYz7mdGIN0
	AFf7wepkKYC93oIHOdPcc4ZaXROIqUEN08l3eMyCCZUu49X+0jBBQe1PgkunpNINaWii
	8m5DsjMhRV12u/cjzXJwCI1MzAzZ20nk83exBn2NIHR6kB6C1uo2ptFBTdZsZ54VqOjI
	hZrnRrhruQ3W9MwDfjgDQcbLYbnIc0xhF64CrXw52MdJDGxrLAc5TFFW2Z8mJlZhKjEo
	3cDQ==
X-Gm-Message-State: AOUpUlGYT3S077sNlMsSmKN5KevpJUL66TkoGrxc+bWk/+zrPX0EWdX/
	cwUXvsCXEWUa8LOtUbrhI1h9QYNLa4U3MYBmbU8=
X-Google-Smtp-Source: AAOMgpdHjWjARSctbvtVtl5/8EsPhKmfqTrWu4ge1SEs7AeBjMdjleuTWecpRKPFROk/VGvdvGZ+91WAnYDmauHAkNw=
X-Received: by 2002:a19:c218:: with SMTP id l24-v6mr629250lfc.55.1531816932796;
	Tue, 17 Jul 2018 01:42:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:7014:0:0:0:0:0 with HTTP; Tue, 17 Jul 2018 01:42:12
	-0700 (PDT)
In-Reply-To: <CAGAf8LxDM0tVdRbW2FC_XLcu3ForF4dNMwd=ak2q83LP15iEhA@mail.gmail.com>
References: <CAGAf8LybGizfPXzhNyqY4BdJ2rxWiMs2n+EDuam_n6n_6XPrdg@mail.gmail.com>
	<CALw8SCU7PcJnQR=yXzdbZ5McghNUWY5+5fB6=e7O3BNunEtj-g@mail.gmail.com>
	<CAGAf8LxDM0tVdRbW2FC_XLcu3ForF4dNMwd=ak2q83LP15iEhA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 17 Jul 2018 10:42:12 +0200
Message-ID: <CAGAf8LxgHKpey+uB2JXhPUZCr76QymhK3TCCrSpp-79LOUFRRg@mail.gmail.com>
To: Mirza Krak <mirza.krak@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: YOCTO kernel PF_CAN feature set and socketCAN layer of the shelf?
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
X-List-Received-Date: Tue, 17 Jul 2018 08:42:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Mirza,

As promised. Here is what I, after some lengthily investigation, found usin=
g
Beaglebone Black and Vbox Virtual machine, which passes through host
(my host is pass-through VT-d capable).

VBox VM and BBB HW are connected via private IP network, NOT
influencing host PC at all.

I created two vcan0 interfaces on both ends, and using user space app
Cannelloni: https://github.com/mguentner/cannelloni as binding
application, I use CAN tunneling via ETH phys.

I, actually use socketCAN-Fd framework from the Linux 4.17.2 LTS
kernel, playing with user space can-utils app.

Here is the condensed Beaglebone Black local.conf for such kind of setup:
CONF_VERSION =3D "1"
PATCHRESOLVE =3D "noop"
SSTATE_DIR ?=3D "${TOPDIR}/sstate-cache"
DL_DIR ?=3D "${TOPDIR}/downloads"
TMPDIR ?=3D "${TOPDIR}/tmp"
PACKAGE_CLASSES ?=3D "package_rpm package_deb"
BBMASK =3D "meta-bbb/recipes-mender"
EXTRA_IMAGE_FEATURES =3D "debug-tweaks"
CORE_IMAGE_EXTRA_INSTALL_append =3D "openssh cmake canutils libsocketcan
nfs-utils rt-tests strace procps packagegroup-core-buildessential "
DISTRO_FEATURES_append =3D " ram"
IMAGE_FSTYPES_append =3D " cpio.xz"
MACHINE ??=3D "beaglebone"
DISTRO ??=3D "poky"
BBMULTICONFIG ?=3D ""

And, the setup (on both sides) is shown here:
https://stackoverflow.com/questions/36568167/can-fd-support-for-virtual-can=
-vcan-on-socketcan/51376306#51376306
(signed as _nobody_, aka me).
_______

It works as a charm. Here is what I did, following your advice.
Please, do note that command are generic, and that there is a
environment preparation I do NOT want to go into!

To set socketCAN framework beneath Linux kernel (I am using 4.17.2),
please, as root:

lsmod | grep can
modprobe can
modprobe can_raw
modprobe can-bcm
modprobe can-dev
modprobe can-gw
modprobe vcan
lsmod | grep can

To set the socketCAN-Fd framework, the following should be done (also as ro=
ot):

ip link add dev vcan0 type vcan
ip link set vcan0 mtu 72
ip link set dev vcan0 up
ifconfig

The can-utils package is required to test the socketCAN-Fd framework.
Also, the following is required:
https://github.com/mguentner/cannelloni

And, everything works like a Swatch! ;-)

On the xmit side: cangen -f vcan0 -v vcan0

2C3##0.25.5A.FF.1E.DC.BD.CB.42.25.5A.FF.1E.DC.BD.CB.42.25.5A.FF.1E.DC.
BD.CB.42.25.5A.FF.1E.DC.BD.CB.42.25.5A.FF.1E.DC.BD.CB.42.25.5A.FF.1E.
DC.BD.CB.42.25.5A.FF.1E.DC.BD.CB.42.25.5A.FF.1E.DC.BD.CB.42

On the receiving side: candump vcan0

vcan0 2C3 [64] 25 5A FF 1E DC BD CB 42 25 5A FF 1E DC BD CB 42 25 5A
FF 1E DC BD CB 42 25 5A FF 1E DC BD CB 42 25 5A FF 1E DC BD CB 42 25
5A FF 1E DC BD CB 42 25 5A FF 1E DC BD CB 42 25 5A FF 1E DC BD CB 42
_______

True socketCAN-Fd framework. :-)

Zoran Stojsavljevic
_______

On Tue, Jun 12, 2018 at 11:12 AM, Mirza Krak <mirza.krak@gmail.com> wrote:
> On 6 June 2018 at 11:35, Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
>> Hello to YOCTO community,
>>
>> I am looking into the new CAN FD (CAN Flexible Data rate) protocol. It
>> is very similar to classical CAN.
>>
>> I am wondering the following (I'll ask very basic questions, just to
>> see if I am on the right tracks):
>> [1] Do YOCTO kernels have CAN drivers left as mandatory drivers in the
>> drivers/ tree (CAN drivers exist on kernel.org kernels)?
>> [2] If YES, are these drivers enabled by default, or I need to enable
>> them? Anybody to quickly refresh me how to manipulate make menuconfig
>> in YOCTO tree?
>
> SocketCAN is very hardware specific and you do not mention which
> hardware you are using.
>
>>
>> I also need the feature called: SocketCAN. The following questions arise=
:
>> [3] Do we have in the socket I/Fs added PF_CAN protocol family handling?
>>      https://en.wikipedia.org/wiki/SocketCAN
>> [4] Does added SocketCAN layer exist, which covers this topic? It'll
>> be layer on the top of the YOCTO-BSP layer, my best guess. Any
>> examples, using such a layer? Or any Open Source example(s) of such a
>> layer?
>
> I am not aware of any layers and I do not believe that there is any.
> SocketCAN is a Linux kernel feature and there are a set of utils to
> use SocketCAN [1] and there seems to be a recipe for can-utils in
> meta-oe [2] which should be enough to get you started.
>
> [1]. https://github.com/linux-can/can-utils
> [2]. http://layers.openembedded.org/layerindex/recipe/24252/
>
> --
> Med V=C3=A4nliga H=C3=A4lsningar / Best Regards
>
> Mirza Krak

