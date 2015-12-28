Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40A96E00C4E; Mon, 28 Dec 2015 14:00:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAB85E00973
	for <yocto@yoctoproject.org>; Mon, 28 Dec 2015 14:00:29 -0800 (PST)
Received: by mail-pf0-f178.google.com with SMTP id 78so117355186pfw.2
	for <yocto@yoctoproject.org>; Mon, 28 Dec 2015 14:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=yNLPUkEi8sWZ150OE5vvNF9L7JPGL/EXk7wSw7eD+ug=;
	b=RJF/yNS7+EUG1BxrCZ1ZQIrzcEmVU6KvMkbmbPaRotyhiX4TQfrZlvWALfYbk90tYj
	/hvwrO93Z/FnSuus/r87+tSCPAbGvNRs5AOGF/gojs2i8KoY/Dhg98dq5KKDHmyt758U
	80nUHYhHr5OqJmEgB1bX0uuSmsiR0cxHgrFlRbyfQlURUSYPX3noVR9AtoWjjO5T2lKA
	iGBrHdZxNnDJSsYYgDeYJ7yZgi3ay0kIY06EfILkISUmnEl2X5q8VEC6Vlv7f9rcjlOZ
	Irb8stIPTnTDrFh/z4M97HT3QFwI98gb+wXx20BNcvf2G/ZUf4qfSMdZZXCug0sjrc7A
	gBVw==
X-Received: by 10.98.10.148 with SMTP id 20mr50582120pfk.5.1451340029406;
	Mon, 28 Dec 2015 14:00:29 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:3d44:ed6b:1338:64b5?
	([2601:646:8802:5d5c:3d44:ed6b:1338:64b5])
	by smtp.gmail.com with ESMTPSA id
	r83sm16999850pfa.13.2015.12.28.14.00.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 28 Dec 2015 14:00:28 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <568169A6.9050204@posteo.de>
Date: Mon, 28 Dec 2015 14:00:23 -0800
Message-Id: <330A2687-E1E7-4E30-BAB0-AE9395A4A526@gmail.com>
References: <56640B0C.2000107@posteo.de>
	<CAOsp8o_+Tf4n2a7_TzScRK1=b56F6=ikknXgrrwt4T8CEJYUrg@mail.gmail.com>
	<5664714B.1040909@posteo.de> <5665E926.70305@posteo.de>
	<5680F9A5.7040602@posteo.de> <568107D6.5080406@posteo.de>
	<568169A6.9050204@posteo.de>
To: kaffeesurrogat@posteo.de
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: BeagleBone...bitbake -v core-image-sato stops
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
X-List-Received-Date: Mon, 28 Dec 2015 22:00:33 -0000
X-Groupsio-MsgNum: 27821
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C5508F62-7904-4637-A183-48A50EB61543";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_C5508F62-7904-4637-A183-48A50EB61543
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Dec 28, 2015, at 8:56 AM, kaffeesurrogat <kaffeesurrogat@posteo.de> =
wrote:
>=20
> Hello again,
>=20
> well I'm really a noob and guessing what to do. Well I've interrupted =
bitbake cause
> nothing was happing and the log.do_compile of attr-native didn't show =
any error message. I've started it all over again an now I do get an =
error message: yes ;-)
>=20
> it says:
>=20
> gmake[2]: ../-libtool: Command not found
>=20
> This looks a little bit weird to me, especially the "minus" in front =
of the "libtool" .....
>=20
> Where does it come from? A missing or empty variable? Something like =
${MYNAMEIS}-libtool an ${MYNAMEIS} not known?
>=20

what is your build host ?.
I would suggest to setup a clean build system ( may be a VM ) and try it =
out on that

> Greetings,
>=20
> Kaffeesurrogat
>=20
>=20
> On 28.12.2015 10:58, kaffeesurrogat wrote:
>> Sorry for sending the same mail twice. I've mixed up my identities.
>>=20
>>=20
>> On 28.12.2015 09:58, kaffeesurrogat@posteo.de wrote:
>>> Sorry guys .....
>>>=20
>>> I thought I was done. Actually I'm not a bit smarter then before ;-)
>>>=20
>>> I'm still trying to build a yocto-image for a beaglebone. I =
believed, that the reason why yocto stopped compiling at =
attr-native-2.4.47-r0 was the missing gcc-multilib support. I've tried =
the same build on a gentoo machine at work, which had a multilib =
environment, and it finished.
>>>=20
>>> I've setup a new gentoo with multilib environment on my laptop but =
...... bitbake stops again at attr-native. So this was not the trick. =
The  log.do_compile in
>>>=20
>>> =
/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/x86_64-linux/attr-nativ=
e/2.4.47-r0/temp
>>>=20
>>> says nothing special, at least for me.  Here is the quote:
>>>=20
>>> =
--------------------------------------------------------------------------=
---------------------------
>>>=20
>>> x86_64-linux-libtool: link: gcc -o .libs/setfattr -Wl,-rpath-link =
-Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/us=
r/lib -Wl,-rpath-link =
-Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/li=
b -Wl,-rpath =
-Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/us=
r/lib -Wl,-rpath =
-Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/li=
b -Wl,-O1 -Wl,-rpath-link =
-Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/us=
r/lib -Wl,-rpath-link =
-Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/li=
b -Wl,-rpath =
-Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/us=
r/lib -Wl,-rpath =
-Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/li=
b -Wl,-O1 -Wl,-rpath-link =
-Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/us=
r/lib -Wl,-rpath-link =
-Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/li=
b -Wl,-rpath =
-Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysroots/x86_64-linux/us=
r/lib -Wl,-rpath =
-Wl,/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/sysrootgmake[2]: =
Leaving directory =
'/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/x86_64-linux/attr-nati=
ve/2.4.47-r0/attr-2.4.47/setfattr'
>>>=20
>>> o fr.mo fr.po
>>>=20
>>> =
--------------------------------------------------------------------------=
-----------------------------
>>=20
>>=20
>> ADD-ON:
>>=20
>> I've had a look in the log.do-compile-file on my machine at work. It
>> says .....
>>=20
>> =
--------------------------------------------------------------------------=
---------------------------------
>>=20
>> o fr.mo fr.po
>> gmake[3]: Nothing to be done for 'default'.
>> gmake[3]: Leaving directory
>> =
'/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/x86_64-linux/attr-nati=
ve/2.4.47-r0/attr-2.4.47/man/man1'
>> /usr/bin/gmake -C man2
>> gmake[2]: o: Command not found
>> ../include/buildrules:66: recipe for target 'fr.mo' failed
>> gmake[2]: [fr.mo] Error 127 (ignored)
>>=20
>> =
--------------------------------------------------------------------------=
---------------------------------
>>=20
>> Well ..... ????????????????
>>=20
>>>=20
>>> It will stay at this point forever.
>>>=20
>>>=20
>>> The last output messages of bitbake:
>>>=20
>>>=20
>>> =
--------------------------------------------------------------------------=
------------------------------
>>>=20
>>> + rm -rf =
/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/beaglebone-poky-linux-g=
nueabi/linux-yocto/3.14.4+gitAUTOINC+183622e809_0143c6ebb4-r0/sstate-build=
-populate_lic/
>>>=20
>>> + ret=3D0
>>> + trap '' 0
>>> + exit 0
>>>=20
>>> [INFO] Pre-processed cfg file beaglebone-standard-config-3.14.4 =
created.
>>> [INFO] processing of raw cfg data completed.
>>>=20
>>>=20
>>> =
**************************************************************************=
******
>>>  Configuration stored in =
/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/beaglebone-poky-linux-g=
nueabi/linux-yocto/3.14.4+gitAUTOINC+183622e809_0143c6ebb4-r0/linux-beagle=
bone-standard-build/.config
>>> =
**************************************************************************=
******
>>>=20
>>>  To build with this kernel configuration, ensure a suitable =
toolchain
>>>  is in your path for arm, note its common command prefix, and do:
>>>=20
>>>   make =
O=3D/home/nico/yocto_bbb_daisy/poky/build_bbb/tmp/work/beaglebone-poky-lin=
ux-gnueabi/linux-yocto/3.14.4+gitAUTOINC+183622e809_0143c6ebb4-r0/linux-be=
aglebone-standard-build ARCH=3Darm \
>>>        CROSS_COMPILE=3D<cross-compile-prefix>
>>>=20
>>>=20
>>> + '[' 0 -ne 0 ']'
>>>=20
>>> + echo '# Global settings from linux recipe'
>>> + echo 'CONFIG_LOCALVERSION=3D"-yocto-standard"'
>>> + ret=3D0
>>> + trap '' 0
>>> + exit 0
>>>=20
>>> Currently 1 running tasks (1040 of 1770):
>>> 0: attr-native-2.4.47-r0 do_compile (pid 1778)
>>>=20
>>> =
--------------------------------------------------------------------------=
-----------------------
>>>=20
>>> To be honest, I'm lost ....
>>>=20
>>> Would be happy about some help,
>>>=20
>>> kaffeesurrogat
>>>=20
>>>=20
>>> On 07.12.2015 21:16, kaffeesurrogat@posteo.de wrote:
>>>> cd =
/home/nico/yocto_bb/poky/build_bbb/tmp/work/cortexa8hf-vfp-neon-poky-linux=
-gnueabi/gcc-cross-initial/4.8.2-r0/gcc-4.8.2/build.i686-linux.arm-poky-li=
nux-gnueabi
>>>=20
>>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_C5508F62-7904-4637-A183-48A50EB61543
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaBsPsACgkQuwUzVZGdMxRxmACfVwxO5Uu7PBemmPNO2ZE09F5d
piAAn0l/xamwj21HWMaAcfZZy+sh8FKk
=Gkpw
-----END PGP SIGNATURE-----

--Apple-Mail=_C5508F62-7904-4637-A183-48A50EB61543--
