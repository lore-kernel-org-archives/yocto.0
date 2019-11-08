Return-Path: <berthold-yocto@xn--hllmanns-n4a.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B1C1E00E02; Fri,  8 Nov 2019 02:34:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [213.133.104.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from www48.your-server.de (www48.your-server.de [213.133.104.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2B8AE0098A
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2019 02:34:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=xn--hllmanns-n4a.de; s=default1910;
	h=Content-Type:MIME-Version:Message-ID:
	In-Reply-To:Date:Reply-To:References:Subject:To:From:Sender:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PVpd6ZsnxnHzBCxPxzAsQ5WmBVYKK/g+W55o9MQVrPQ=;
	b=rkDFARBpF3BnhqUz+NrBCjq38
	Fmko62wBhNSYHiDTlurTsWL35utPbqL0b3K50giLkveny2uQ7kEtsw7CJzzSirbJyN8qwtxeUN5EQ
	wUZ4PEkzjuypbejxKuRwm7DG4LCD9SNdPgZoI7Y/fV/Eh0mKsZE8z0Bzq52UxHS0QNnYKjrzA6lRw
	RLIzf1a4CpelfyuYSAxhSEyBaxW6eF1t1AMj2SYbgbTfbsC6ue2CaNTn9yOg7NLmItYmTedmOW3hj
	/lydVbFdz5TwgX8oWK+y3gvVUvHht3w09DBLf/hNj+FHkIILjBc4Hayuxsfm1nggf7vxQWfHILpuK
	I8e3uEJBQ==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www48.your-server.de with esmtpsa
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89_1)
	(envelope-from <berthold-yocto@xn--hllmanns-n4a.de>)
	id 1iT1al-0004fO-CK
	for yocto@yoctoproject.org; Fri, 08 Nov 2019 11:34:11 +0100
Received: from [77.8.187.24] (helo=pchoel.xn--hllmanns-n4a.de)
	by sslproxy06.your-server.de with esmtpsa
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.89)
	(envelope-from <berthold-yocto@xn--hllmanns-n4a.de>)
	id 1iT1al-000JCV-2h
	for yocto@yoctoproject.org; Fri, 08 Nov 2019 11:34:11 +0100
Received: from pchoel (localhost [127.0.0.1])
	by pchoel.xn--hllmanns-n4a.de (Postfix) with ESMTP id 6CE9D68209
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2019 11:34:10 +0100 (CET)
From: berthold-yocto@xn--hllmanns-n4a.de (Berthold =?utf-8?Q?H=C3=B6llmann?=)
To: yocto@yoctoproject.org
References: <87wocb79tw.fsf@xn--hllmanns-n4a.de>
	<CAPxNcndkjjW_EEnxWuLN1n8q9TskWW-gngTRkcamJtRf=cfppw@mail.gmail.com>
Date: Fri, 08 Nov 2019 11:34:05 +0100
In-Reply-To: <CAPxNcndkjjW_EEnxWuLN1n8q9TskWW-gngTRkcamJtRf=cfppw@mail.gmail.com>
	(Rudolf Streif's message of "Thu, 7 Nov 2019 13:36:08 -0800")
Message-ID: <87imnuirmq.fsf@xn--hllmanns-n4a.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Authenticated-Sender: berthold@xn--hllmanns-n4a.de
X-Virus-Scanned: Clear (ClamAV 0.101.4/25626/Thu Nov  7 10:50:48 2019)
Subject: Re: Yocto newbie: Need help with recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: berthold-yocto@xn--hllmanns-n4a.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 08 Nov 2019 10:34:14 -0000
X-Groupsio-MsgNum: 47182
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rudolf Streif <rudolf.streif@ibeeto.com> writes:

> Hi Berthold,
>
> Welcome to the Yocto Project.

Thank You

>
> This line is the problem with your recipe:
>
> PACKAGES =3D "${PN}"
>
> This tells the build system to only create one package, the default
> package. Because this line FILES_${PN} =3D "${bindir}" tells the build sy=
stem
> to include everything in ${bindir} into that package the package also
> includes the .debug directory which is then flagged by the QA checker. To
> fix this:
>
> PACKAGES =3D "${PN}-dbg ${PN}"
>
> You have to specify the debug package before the default package as the
> variable is processed from left to right and whatever is consumed by a
> package will not be packaged anymore. However, even simpler is to remove
> the PACKAGES line altogether as the default already does it correctly.
>
> Best regards,
> :rjs

OK, the project is building now, but for some reasons the generated
executable is ending up in the wrong package (I renamed executable and
recipes in order to try to fix this):

build@812ee6d53ca8:~/shared/rpi/rpi2-build$ dpkg -c tmp/deploy/ipk/cortexa7=
t2hf-neon-vfpv4/lissajousexplorer_git-r0_cortexa7t2hf-neon-vfpv4.ipk=20
drwxrwxrwx root/root         0 2019-11-08 10:04 ./
build@812ee6d53ca8:~/shared/rpi/rpi2-build$ dpkg -c tmp/deploy/ipk/cortexa7=
t2hf-neon-vfpv4/lissajousexplorer-tools_git-r0_cortexa7t2hf-neon-vfpv4.ipk=
=20
drwxrwxrwx root/root         0 2019-11-08 10:04 ./
drwxr-xr-x root/root         0 2019-11-08 10:03 ./usr/
drwxr-xr-x root/root         0 2019-11-08 10:03 ./usr/bin/
=2Drwxr-xr-x root/root     38392 2019-11-08 10:03 ./usr/bin/lissajousexplor=
er

The executable is ending up in the "lissajousexplorer-tools" package,
instead of the "lissajousexplorer" package, why is that?

Best regards,
Berthold

>
>
>
> On Thu, Nov 7, 2019 at 12:04 PM Berthold H=C3=B6llmann <
> berthold-yocto@h=C3=B6llmanns.de> wrote:
>
>>
>> Hello,
>>
>> I'm trying my way around yocto. I thought I try adding a small project
>> of mine to a Raspberry Pi image as a first try in writing recipes. At
>> least I managed to get the project compiling, but the generation of the
>> packages is failing:
>>
>> $ bitbake  qtlissajous
>> ...
>> ERROR: qtlissajous-git-r0 do_package_qa: QA Issue: non debug package
>> contains .debug directory: qtlissajous path
>> /work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/qtlissajous/git-r0/pack=
ages-split/qtlissajous/usr/bin/.debug/lissajous_explorer
>> [debug-files]
>> ERROR: qtlissajous-git-r0 do_package_qa: QA run found fatal errors. Plea=
se
>> consider fixing them.
>> ERROR: qtlissajous-git-r0 do_package_qa:
>> ERROR: qtlissajous-git-r0 do_package_qa: Function failed: do_package_qa
>> ERROR: Logfile of failure stored in:
>> /home/build/shared/rpi/rpi2-build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-=
linux-gnueabi/qtlissajous/git-r0/temp/log.do_package_qa.4823
>> ERROR: Task
>> (/home/build/shared/rpi/meta-qtlissajous/recipes-qtlissajous/qtlissajous=
/qtlissajous_git.bb:do_package_qa)
>> failed with exit code '1'
>> ...
>>
>> $ (cd
>> /home/build/shared/rpi/rpi2-build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-=
linux-gnueabi/qtlissajous/git-r0/packages-split/;find
>> -type f)
>>
>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/build/moc_doubleslide=
r.cpp
>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/build/moc_phaselabel.=
cpp
>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/doubleslider.cpp
>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/doubleslider.h
>>
>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_explore=
r.cpp
>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_explore=
r.h
>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_grid.cpp
>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/lissajous_grid.h
>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/main.cpp
>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/phaselabel.cpp
>> ./qtlissajous-src/usr/src/debug/qtlissajous/git-r0/git/phaselabel.h
>> ./qtlissajous-tools/usr/bin/lissajous_explorer
>> ./qtlissajous/usr/bin/.debug/lissajous_explorer
>> ./qtlissajous-tools.shlibdeps
>>
>> My qtlissajous_git.gg file is:
>>
>> -------------------------------------------------------
>> DESCRIPTION =3D "Explore Lissajous figures for Raspberry Pi"
>> SECTION =3D "games"
>> DEPENDS +=3D "qtbase"
>>
>> PACKAGES =3D "${PN}"
>>
>> LICENSE =3D "MIT"
>> LIC_FILES_CHKSUM =3D
>> "file://LICENSE;md5=3D7e26fc87b2c255632232dc535ed2700b;sha256=3Dc8ea5a5c=
e0ef734ec1d0be3e214bed71673f1ffc628fe86bbd055d61abd52cc8"
>>
>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>>
>> SRCREV =3D "${AUTOREV}"
>> SRC_URI =3D "git://gitlab.com/bhoel/qlissajousexplorer.git;protocol=3Dht=
tps"
>>
>> S =3D "${WORKDIR}/git"
>>
>> require recipes-qt/qt5/qt5.inc
>>
>> FILES_${PN} =3D "${bindir}"
>> FILES_${PN}-dbg +=3D "${bindir}/.debug"
>>
>> do_install() {
>>       install -d ${D}/usr/bin
>>       install -m 0755 lissajous_explorer ${D}/usr/bin
>> }
>>
>> RDEPENDS_${PN} =3D "qtbase-plugins"
>> -------------------------------------------------------
>>
>> Why is the release executable ending up in the tools tree?
>> Why is the debug executable ending up in the release tree?
>> Is this the right place to ask this kind of questions?
>>
>> Thank you
>> Berthold
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEETnL22cPTRrjJNs5xt04tZQJrm0UFAl3FRJ0ACgkQt04tZQJr
m0XFqQ/9E0ZO7iv3riboD1XAFAxboknJV24WLlQ1LEr94A0OoJfV4uNYYiqjKSVC
zFx98n4V61G/5mF82rF0Y0DXEdnmRNabqXq2oigteAMmc8xofLk2MVKDgDEeLVne
ECMWNyTWO7n7m7w3y0+7/YXYj48LlBV/uL1JsAP80mm2/0JtUsTVc+MflkqdXupd
OD2yRsf7+BGxJwsw5uzo+zsG1jPOF9liwtpI6uyua55jS8c5ttMDto0x7EjttAAg
2S7+YCs8XiShNwSGzecpLaJ8mBTJy04AeyWv+fTmbxbqurSWdIfeQzLQ4pQc/ZF8
OtNwehg7mPUGQBf1eH/GxAZHmLQnNhLE4/+qA1lArY7aT7+Ybi1JXyrb5g5Q78JZ
FfNTxnfJU4I60vv7Atanci+A7+hSkqCaVnFk4zFI3WA7P5WVz72XUamNETCNVH2n
ZDM9flFpqACzTpgPUy9L6nY9OCg0J8HaidwNFquNoyee8cY+n0WwscHULKbXCwKB
MC9yWtgiFqf5eBOIxtDa4nHNA8zrkfoRuURl+M0PEMmsqMWyYLHQaCkuqLpXyJt9
xivYJZ/GViKOXB3FB9cL/kIawV6Jcm9xhzm3+7klXs+0Z1gTQyTCjLr8Pay7wOW8
UM53xUk7b+eSBwDaPled2DNJEnhZatmBzUjbkIHTTY42UJDRF+k=
=GWVl
-----END PGP SIGNATURE-----

--=-=-=--
