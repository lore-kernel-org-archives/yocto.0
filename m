Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D13E8E012F3; Thu, 14 Jun 2018 14:02:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.155 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout2.han.skanova.net (v-smtpout2.han.skanova.net
	[81.236.60.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5511DE01236
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 14:02:56 -0700 (PDT)
Received: from [192.168.1.22] ([89.160.66.251]) by cmsmtp with ESMTPA
	id TZOQfCQiI8gExTZOQfm6EA; Thu, 14 Jun 2018 23:02:54 +0200
Mime-Version: 1.0 (1.0)
From: Ulf Samuelsson <yocto@emagii.com>
X-Mailer: iPad Mail (15B202)
In-Reply-To: <CAJ86T=XtAdK7=Xbhg9ndKmimiRqstHHtLhvPyNP6AM+q+qr6eQ@mail.gmail.com>
Date: Thu, 14 Jun 2018 23:02:54 +0200
Message-Id: <2EA39EC2-A3D4-48E5-9021-43735023C56D@emagii.com>
References: <3cf3fb0e-02c4-8867-7650-8764bfb67a3b@emagii.com>
	<b02028a72c604aa1bce0e40bc0089f43@XBOX02.axis.com>
	<9EEEF203-2371-4CCE-8E70-947330CDB462@emagii.com>
	<20180613132009.GA11193@ad.chargestorm.se>
	<D6C2C352-896F-4D2B-A499-4526393B9418@emagii.com>
	<CAJ86T=XtAdK7=Xbhg9ndKmimiRqstHHtLhvPyNP6AM+q+qr6eQ@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
X-CMAE-Envelope: MS4wfGN1yoJdOvOTKAHxBu/vzz23WCJ+dvZRscO9RFDqSU4CyEbjYG2qB8oBqsWz7e8TKUa2wwArWQ4Xc5zqyWaOaqchjIJH+YAJKaYa7c1zlPinHVoc2hyv
	H3AkpBo33a4Iqm5cjE61SgI2GAQzpHWjNdVatPpyde3ibYsLBahcbZjkKEu3jY/tOQUD/8UTEsj/G7+DzLbXKuOcBZ28OQNqKXhkJN5N8ITOpPhrzGEAoMyD
Cc: Anders Darander <anders@chargestorm.se>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How handle files needing updates in read-only filesystem
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
X-List-Received-Date: Thu, 14 Jun 2018 21:02:58 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I looked at the populate-volatile.sh, and this seemed to almost do the job,
if I solve the problem using symlinks.
What it needs is a copy file function.
As a temporary solution, I  created a derivative: populate-settings.sh
which will check /etc/default/settings in the same way populate-volatile.sh
checks /etc/default/volatiles.

It also support copying a file, if the copy target does not exist.

What I have right now is a =E2=80=9Dwriteable.bbclass=E2=80=9D
To make a file located in a read-only location, I just inherit writeable and=
 declare it writeable in a bbappend.

inherit writeable
WRITEABLE =3D =E2=80=9D/etc/localtime=E2=80=9D

At build time, the =E2=80=9D/etc/localtime=E2=80=9D is moved to =E2=80=9D/et=
c/update/localtime=E2=80=9D, and =E2=80=9D/etc/localtime=E2=80=9D becomes a s=
ymlink to =E2=80=9D/persistent/localtime=E2=80=9D
(a leading =E2=80=9D/etc=E2=80=9D is shaved off)
An entry to copy =E2=80=9D/etc/update/localtime=E2=80=9D to =E2=80=9C/persis=
tent/localtime=E2=80=9D is created in=20
=E2=80=9C/etc/default/settings/99_tzdata=E2=80=9D=20
When =E2=80=9C/etc/init.d/populate-settings.sh=E2=80=9D is run,  =E2=80=9C/p=
ersistent/localtime=E2=80=9D is created.

This works.

Efficiency is on several levels.
I am looking for a solution, where I, like above, only need to declare the n=
ame of the file. I want to avoid solutions, where I manually have to add sym=
links etc.

Once the symlink/bind mount is accessed, it should not eat up the CPU cycles=
,
Kno
Best Regards,
Ulf Samuelsson


> 14 juni 2018 kl. 01:02 skrev Andre McCurdy <armccurdy@gmail.com>:
>=20
>> On Wed, Jun 13, 2018 at 9:28 AM, Ulf Samuelsson <yocto@emagii.com> wrote:=

>> Thanks, is it more efficient than symlinking?
>=20
> Efficient in what way?
>=20
> Have you looked at the volatile-binds recipe in oe-core? Its job is to
> setup enough bind mounts to enable systemd to run from a readonly
> rootfs. Although it's currently systemd specific (it only provides a
> systemd service file, no init script) it might give you some clues
> about how to setup bind mounts at boot time.
>=20
>> Best Regards,
>> Ulf Samuelsson
>>=20
>>> 13 juni 2018 kl. 15:20 skrev Anders Darander <anders@chargestorm.se>:
>>>=20
>>> * Ulf Samuelsson <yocto@emagii.com> [180612 22:01]:
>>>=20
>>>> We want most of /etc to be read-only for security reasons,
>>>> and the overlayfs will make the whole of /etc writeable.
>>>=20
>>>> I tried mount =E2=80=94bind /etc/timezone /persistent/etc/timezone, and=
 it
>>>> complained that they were not directories. Bind mounting /etc again
>>>> will make all of /etc writeable.
>>>=20
>>> Try to use: mount =E2=80=94o bind /etc/timezone /persistent/etc/timezone=

>>>=20
>>> I'm using that heavily, either manually or by the volatile-binds recipe.=

>>> It works perfectly fine with files.
>>>=20
>>>> Symlinking to /persistent is fine, so the question is what an
>>>> acceptable method is to have a simple way of ensuring that a certain
>>>> file is converted to that symlink.
>>>=20
>>> This is normally done by a manual inspection / addition of bbappend
>>> file.
>>>=20
>>> Cheers,
>>> Anders
>>> --
>>> Anders Darander, Senior System Architect
>>> ChargeStorm AB / eStorm AB
>>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


