Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 735AE4C80053
	for <yocto@yoctoproject.org>; Sat, 12 Feb 2011 13:08:14 -0600 (CST)
Received: by wwb31 with SMTP id 31so3748758wwb.11
	for <yocto@yoctoproject.org>; Sat, 12 Feb 2011 11:08:13 -0800 (PST)
Received: by 10.227.151.148 with SMTP id c20mr1124724wbw.207.1297537692751;
	Sat, 12 Feb 2011 11:08:12 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id x1sm542292wbh.2.2011.02.12.11.08.11
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 12 Feb 2011 11:08:11 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D56CCCD.6040106@windriver.com>
Date: Sat, 12 Feb 2011 20:08:10 +0100
Message-Id: <C7D623A5-69C2-4318-8C2F-5792C66391BD@dominion.thruhere.net>
References: <789F9655DD1B8F43B48D77C5D30659733294D0BE@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597332C18774@shsmsx501.ccr.corp.intel.com>
	<1865303E0DED764181A9D882DEF65FB68629835F3E@shsmsx502.ccr.corp.intel.com>
	<4D56CCCD.6040106@windriver.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Mailer: Apple Mail (2.1082)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Master build error caused a small typo by commit today : fetch2: unpack revision
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 12 Feb 2011 19:08:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 12 feb 2011, om 19:09 heeft Mark Hatle het volgende geschreven:

> On 2/12/11 3:30 AM, Cui, Dexuan wrote:
>> Hi Mark,
>> As Liping said, the following change breaks building =
xorg-minimal-fonts as destdir is not correct.
>> Can you please explain the actual different between cp and tar here? =
I think "cp -p" is similar to "tar -x -p" here?
>>=20
>=20
> We can revert the change.  But the reason for it is tar preserves hard =
links,
> while cp does not.

The problem is that people can hit things like this:

| NOTE: Unpacking =
/OE/tentacle/sources/angstrom-layers/BSP/TI/recipes-bsp/linux/linux-omap-p=
sp-2.6.32/beagleboard/defconfig to =
/OE/tentacle/build/tmp-angstrom_2010_x/work/beagleboard-angstrom-linux-gnu=
eabi/linux-omap-psp-2.6.32-r99+gitr5fc29e7b2a76a64a739f857858ef0b98294aa15=
5/
| ERROR: Error executing a python function in =
/OE/tentacle/sources/angstrom-layers/BSP/TI/recipes-bsp/linux/linux-omap-p=
sp_2.6.32.bb:
| TypeError: %d format: a number is required, not str
|
| ERROR: The stack trace of python calls that resulted in this =
exception/failure was:
| ERROR:   File "base_do_unpack", line 19, in <module>
| ERROR:
| ERROR:   File "base_do_unpack", line 14, in base_do_unpack
| ERROR:
| ERROR:   File =
"/OE/tentacle/sources/bitbake/lib/bb/fetch2/__init__.py", line 1015, in =
unpack
| ERROR:     ud.method.unpack(ud, root, self.d)
| ERROR:
| ERROR:   File =
"/OE/tentacle/sources/bitbake/lib/bb/fetch2/__init__.py", line 724, in =
unpack
| ERROR:     cmd =3D 'tar -cf - -C "%d" -ps . | tar -xf - -C "%s/%s/"' % =
(file, rootdir, destdir)
| ERROR:
| ERROR: The code that was being executed was:
| ERROR:      0015:        except bb.fetch2.BBFetchException, e:
| ERROR:      0016:            raise bb.build.FuncFailed(e)
| ERROR:      0017:
| ERROR:      0018:
| ERROR:  *** 0019:base_do_unpack(d)
| ERROR:      0020:
| ERROR: (file: 'base_do_unpack', lineno: 19, function: <module>)
| ERROR:      0010:     rootdir =3D bb.data.getVar('WORKDIR', localdata, =
True)
| ERROR:      0011:
| ERROR:      0012:        try:
| ERROR:      0013:            fetcher =3D bb.fetch2.Fetch(src_uri, =
localdata)
| ERROR:  *** 0014:            fetcher.unpack(rootdir)
| ERROR:      0015:        except bb.fetch2.BBFetchException, e:
| ERROR:      0016:            raise bb.build.FuncFailed(e)
| ERROR:      0017:
| ERROR:      0018:
| ERROR: (file: 'base_do_unpack', lineno: 14, function: base_do_unpack)
| ERROR: Function 'base_do_unpack' failed

Not sure what triggers it, but it breaks my build. It could be entirely =
my own fault for having buggy recipes in a BSP :)

regards,

Koen=

