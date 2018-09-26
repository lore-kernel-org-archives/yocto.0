Return-Path: <tokes_atti@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4765E00A16; Wed, 26 Sep 2018 13:50:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tokes_atti[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.129.82 listed in list.dnswl.org]
Received: from sonic317-27.consmr.mail.bf2.yahoo.com
	(sonic317-27.consmr.mail.bf2.yahoo.com [74.6.129.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9868DE00953
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2018 13:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1537995057; bh=bDTOXHjGNzckWLkrT7cV8cTpJRWhaMgGCB0acy+a9U8=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=feKkSBdPFWS6agN2QMvJ86FPQkmYdpg9kdURb+cb6BZ8RA4aHGyrFtp7Fiv27mdy/X2SNb2UNqfEGEHqXVhE/L7LRLmKVH05t5mZDoL/QH1Y1xG9BYW++JIfYMAWVspBIyDMQ7lE3ywOiDzDy7oci86D6x3NHejh4cHV7exmWh+yPAvIwk4EdxjCPy/0I341+AqLenBoLchzcxCT2Q4sp1kKm7bloUcvDU/GJr/eQOa2IkJytTCOTvZ2VDZcVNcRymP8OL7wT9W/FOg+zA8mfKZBNtymQmmFSK3KYoQkS6rVnuL+Mx3nwgBSBQp/WLjDO9SfJYhR55nfvllhrap9tg==
X-YMail-OSG: 5jAY4BYVM1lL7AfyIoJ822F1WUuj48vj6Y1hQGXvrG4ZUOPjU3mAo4GD5BR_PgH
	t0HB9MA.aGM1A.kY5uYXmH4G.8sv028vbaXLW7dklSnjPBjy3JuF9WhJATMlxrxPbyF75q.eJING
	Nc3QipNXV.yF.vQvd4uIvql1xeppM6in50kIQWPCHpTWfoIkAecelSNG7dzTmEPdKHpgdR006DH1
	cK7nma1Ic1ySpvJeAhaaTmXmLTu_5im3byhNQLvvMTE9cchjPxZUYneu0_Yx3VF8E4GdM_0NaC0_
	hVEYGg1aenAXgMiCd1oV0cOSt7ukaGpn_nbzjpqfTs.XLrWvyH6jB7McHmao4RRqQid3_G68JE.5
	Vu.WqDcE4rLO.VzNZP4hLr5LadnlT6DdJ89oODQFXM_sGBs2_zPotptNwApOlzNEPp.Qz36lZRj8
	CQhIr5OVHxhjwC90GlMtVOshfuMSI0tQr0iquPpZA5J_cxaDN9o3Dz8EW6zot2YrljW5vunhgiC0
	9.P.LtebLSTkUXphbnjaLFDMZl6e.eoOJC8uxS4fY1bMj5LKpWWu8e_nX0_UCmfWBpe7hBkisUxC
	QLgTOqZFgSZH4I4ngenLQjcXyqO30vfsIuUChXGNgaIy1zcZW9YXok9tmDBy_026RdKANt71ZhuA
	bCx.tLP5HaDTANHuznGWVVQt2ld3C5v5L9iCBfPwRYGWXzNPzIzbT9Sm.Cp4fBF2MHE6HFmjgnwp
	s9m5zneNa7FmfL_5nHRkPFwVJ7s99lV_qXupyY5X5uPa3Ham63gF.SxUAWBe2klpu_osYiiS.1TU
	exJZe_yqB2ZofRyNFa_tKjgdPQM6J4U9aKLYvd3iwcuqr14cDPYGH.HqV5d7x4z1kqKConBV8YY7
	yabqCzC42U3_67Cv1LkqI.Senyj6Goz9GAHWzNleUelUJCNWGJ1jNBMsbhnX5cHHNHmzrMEqGW3W
	eWFHUoqfvkbhS1wTB8JWMmTqrvw8EqnwkcrVNepfWwPwFJQzwXw5reZZNXLY.K4oVi4oMd7UX7dL
	D2ntFOy2YbzTx96NIf.tFQO_uvRpdq03ZlA--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic317.consmr.mail.bf2.yahoo.com with HTTP;
	Wed, 26 Sep 2018 20:50:57 +0000
Date: Wed, 26 Sep 2018 20:50:54 +0000 (UTC)
From: =?UTF-8?Q?T=C5=91k=C3=A9s_Attila?= <tokes_atti@yahoo.com>
To: Yocto Mail List <yocto@yoctoproject.org>
Message-ID: <1964648708.3138789.1537995054327@mail.yahoo.com>
In-Reply-To: <582483277.2725642.1537947920034@mail.yahoo.com>
References: <582483277.2725642.1537947920034.ref@mail.yahoo.com>
	<582483277.2725642.1537947920034@mail.yahoo.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.12487 YMailNorrin Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)
	Chrome/69.0.3497.100 Safari/537.36
Subject: Re: PetaLinux build fails because of locale errors logged by do_rootfs (Ubuntu 18.04 LST)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: =?UTF-8?Q?T=C5=91k=C3=A9s_Attila?= <tokes_atti@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 26 Sep 2018 20:50:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Got some more details on this...

Apparently, the errors are generated because of the use of Python 3.5.3 inc=
luded in Yocto / PetaLinux.

The "Failed to set locale, defaulting to C" message seems to be logged from=
 dnf, i18n.py/setup_locale():

def setup_locale():
=C2=A0 =C2=A0 try:
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dnf.pycomp.setlocale(locale.LC_ALL, '')
=C2=A0 =C2=A0 except locale.Error as e:
=C2=A0 =C2=A0 =C2=A0 =C2=A0 # default to C locale if we get a failure.
=C2=A0 =C2=A0 =C2=A0 =C2=A0 print('Failed to set locale, defaulting to C', =
file=3Dsys.stderr)
=C2=A0 =C2=A0 =C2=A0 =C2=A0 os.environ['LC_ALL'] =3D 'C'
=C2=A0 =C2=A0 =C2=A0 =C2=A0 dnf.pycomp.setlocale(locale.LC_ALL, 'C')
(https://github.com/rpm-software-management/dnf/blob/master/dnf/i18n.py#L80=
)

The call that fails is dnf.pycomp.locale.setlocale(locale.LC_ALL, ''), whic=
h calls locale.setlocale(locale.LC_ALL, '') under the hood.

During petalinux-build, I observed a couple of bitbake processes running wi=
th a Python 3.5.3 included in Yocto. Ex:

21093 /media/bluetiger/Data/Xilinx/PetaLinux/components/yocto/source/aarch6=
4/buildtools/sysroots/x86_64-petalinux-linux/usr/bin/python3.5 /media/bluet=
iger/Data/Xilinx/PetaLinux/components/yocto/source/aarch64/layers/core/bitb=
ake/bin/bitbake-worker decafbad

A quick tests shows that with the Python 3.5.3 included in the Yocto/PetaLi=
nux package the locale.setlocale(locale.LC_ALL, '') call fails, while the P=
ython 3.6.6 installed on Ubuntu 18.04.1 LTS works as expected.

Python 3.5.3 included in Yocto (PetaLinux):

bluetiger@Attila-Laptop:x86_64-petalinux-linux$ pwd
/media/bluetiger/Data/Xilinx/PetaLinux/components/yocto/source/aarch64/buil=
dtools/sysroots/x86_64-petalinux-linux
bluetiger@Attila-Laptop:x86_64-petalinux-linux$ ./usr/bin/python3.5
Python 3.5.3 (default, Jun=C2=A0 7 2018, 20:28:47)=C2=A0
[GCC 7.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import locale
>>> locale.setlocale(locale.LC_ALL, '')
Traceback (most recent call last):
File "<stdin>", line 1, in <module>
File "/media/bluetiger/Data/Xilinx/PetaLinux/components/yocto/source/aarch6=
4/buildtools/sysroots/x86_64-petalinux-linux/usr/lib/python3.5/locale.py", =
line 594, in setlocale
return _setlocale(category, locale)
locale.Error: unsupported locale setting
>>>=C2=A0

Python 3.6.6 installed on Ubuntu 18.04.1 LTS:

bluetiger@Attila-Laptop:~$ python3
Python 3.6.6 (default, Sep 12 2018, 18:26:19)=C2=A0
[GCC 8.0.1 20180414 (experimental) [trunk revision 259383]] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import locale
>>> locale.setlocale(locale.LC_ALL, '')
'en_US.UTF-8'
>>>=C2=A0

My initial idea was to comment out the print() command from the i18n.py/set=
up_locale(), but I not sure where the file is located. Any idea where the f=
ile is located?

An another solution would be to somehow force bitbake to use the Python 3.6=
.6 installed on the system.

Or do you have other suggestions on how to fix this?

Thanks,
Attila


On Wednesday, September 26, 2018, 10:45:20 AM GMT+3, T=C5=91k=C3=A9s Attila=
 <tokes_atti@yahoo.com> wrote:
>Hi Yocto Team,
>
>First of all sorry for spamming your mailing list, but I'm kind of out ide=
as with this...
>
>I'm trying to build PetaLinux on Ubuntu 18.04 LTS, but the build is failin=
g because of some (probably harmless) locale related errors the do_rootfs s=
ubtask logs:
>
>bluetiger@Attila-Laptop:xilinx-ultra96-reva-2018.2$ petalinux-build[INFO] =
building project
>[INFO] sourcing bitbake
>INFO: bitbake petalinux-user-image
>WARNING: Host distribution "ubuntu-18.04" has not been validated with this=
 version of the build system; you may possibly experience unexpected failur=
es. It is recommended that you use a tested distribution.
>...
>WARNING: petalinux-user-image-1.0-r0 do_rootfs: [log_check] petalinux-user=
-image: found 1 warning message in the logfile:
>[log_check] warning: %post(sysvinit-inittab-2.88dsf-r10.ultra96_zynqmp) sc=
riptlet failed, exit status 1
>
>ERROR: petalinux-user-image-1.0-r0 do_rootfs: [log_check] petalinux-user-i=
mage: found 4 error messages in the logfile:
>[log_check] Failed to set locale, defaulting to C
>[log_check] Failed to set locale, defaulting to C
>[log_check] Failed to set locale, defaulting to C
>[log_check] Failed to set locale, defaulting to C
>
>
>ERROR: petalinux-user-image-1.0-r0 do_rootfs: Function failed: do_rootfs
>ERROR: Logfile of failure stored in: /media/bluetiger/Data/PetaLinux-Ultra=
96/xilinx-ultra96-reva-2018.2/build/tmp/work/ultra96_zynqmp-xilinx-linux/pe=
talinux-user-image/1.0-r0/temp/log.do_rootfs.5592
>ERROR: Task (/media/bluetiger/Data/PetaLinux-Ultra96/xilinx-ultra96-reva-2=
018.2/project-spec/meta-plnx-generated/recipes-core/images/petalinux-user-i=
mage.bb:do_rootfs) failed with exit code '1'
>NOTE: Tasks Summary: Attempted 10052 tasks of which 10051 didn't need to b=
e rerun and 1 failed.
>
>Summary: 1 task failed:
>/media/bluetiger/Data/PetaLinux-Ultra96/xilinx-ultra96-reva-2018.2/project=
-spec/meta-plnx-generated/recipes-core/images/petalinux-user-image.bb:do_ro=
otfs
>Summary: There were 2 WARNING messages shown.
>
>Summary: There were 2 ERROR messages shown, returning a non-zero exit code=
.
>The locales seems to be just fine on the machine:
>
>bluetiger@Attila-Laptop:~$ localeLANG=3Den_US.UTF-8
>LANGUAGE=3Den_US.UTF-8
>LC_CTYPE=3D"en_US.UTF-8"
>LC_NUMERIC=3D"en_US.UTF-8"
>LC_TIME=3D"en_US.UTF-8"
>LC_COLLATE=3D"en_US.UTF-8"
>LC_MONETARY=3D"en_US.UTF-8"
>LC_MESSAGES=3D"en_US.UTF-8"
>LC_PAPER=3D"en_US.UTF-8"
>LC_NAME=3D"en_US.UTF-8"
>LC_ADDRESS=3D"en_US.UTF-8"
>LC_TELEPHONE=3D"en_US.UTF-8"
>LC_MEASUREMENT=3D"en_US.UTF-8"
>LC_IDENTIFICATION=3D"en_US.UTF-8"
>LC_ALL=3Den_US.UTF-8
>
>
>Does anyone know what causes the problem? Is there a way to fix / workarou=
nd it?
>Yesterday, I had a similar problem with bitbake's sanity checks, but I sol=
ved that by commenting out some code in sanity_check_locale() from sanity.b=
bclass.
>
>Is this something Ubuntu 18.04 related? If I understood correctly Ubuntu 1=
8.04 is not officially supported. But maybe it would worth checking what ca=
uses this error.
>
>I would really appreciate any help on this...
>
>Thanks,
>Attila

