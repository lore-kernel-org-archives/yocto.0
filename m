Return-Path: <juergen.messerer@bbv.ch>
Received: from owa.outnet.ch (owa.outnet.ch [80.67.146.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 151A9E006D9
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 09:21:44 -0700 (PDT)
Received: from TKSSREX01.outnet.ch ([10.10.10.1]) by tkssrexhcu01.outnet.ch
	([172.17.220.45]) with mapi; Wed, 13 Jun 2012 18:21:43 +0200
From: =?iso-8859-1?Q?J=FCrgen_Messerer?= <juergen.messerer@bbv.ch>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 13 Jun 2012 18:21:42 +0200
Thread-Topic: [yocto] Grub installation
Thread-Index: Ac1JfexVQJ9smPcCQiCNIYc8t7CeNgAAm2HA
Message-ID: <A7B59F6D52627C44813C136D437B0832068BC78CAFDE@TKSSREX01.outnet.ch>
References: <A7B59F6D52627C44813C136D437B0832068BC78CAB6C@TKSSREX01.outnet.ch>
	<4FD5FF3E.4060303@linux.intel.com>
	<A7B59F6D52627C44813C136D437B0832068BC78CAB91@TKSSREX01.outnet.ch>
	<4FD8B93F.4000306@linux.intel.com>
In-Reply-To: <4FD8B93F.4000306@linux.intel.com>
Accept-Language: en-US, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, de-CH
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Grub installation
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
X-List-Received-Date: Wed, 13 Jun 2012 16:21:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks for the tips.

As far as I know is at the moment the new grub default.
How can I configure back to the old version 0.97?

Best regards

Juergen


-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Mittwoch, 13. Juni 2012 18:01
To: J=FCrgen Messerer
Cc: Mihai Lindner; yocto@yoctoproject.org
Subject: Re: [yocto] Grub installation



On 06/11/2012 07:54 AM, J=FCrgen Messerer wrote:
> Dear Mihai,
>=20
> I would expect that grub should be installed in=20
> core-image-minimal-qemux86.ext3 Grub couldn't be found when running the i=
mage with runqemu.
>=20
>Any other ideas?

This depends entirely on the image type. We do not install grub on the file=
system images as that won't result in a working system. GRUB must be instal=
led to the MBR or the VBR of a disk or partition.

The way this currently works is you build a live image (.hddimg) which uses=
 syslinux and provides an installer. The installer runs a script which inst=
alls grub to the physical boot media.

Improving this process is part of a larger discussion on image types and im=
age creation tooling.

If the installer method does not work for you, please articulate the reason=
s why and what would be a better solution for your use case.

Thanks,

Darren

>=20
>=20
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org=20
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Mihai Lindner
> Sent: Montag, 11. Juni 2012 16:23
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Grub installation
>=20
> On 6/11/2012 5:12 PM, J=FCrgen Messerer wrote:
>> Hi
>>
>> =20
>>
>> I have the following problem. I have created with yocto a core-image-min=
imal for x86 which I could test with qemu.
>>
>> =20
>>
>> later I added the following lines to conf/local.conf at the end accordin=
g to the manual chapter 4.2.4:
>>
>> IMAGE_INSTALL_append =3D " bash"
>>
>> IMAGE_INSTALL_append =3D " strace"
>>
>> IMAGE_INSTALL_append =3D " grub"
>>
>> =20
>>
>> Bash and strace were installed correctly.
>>
>> In the case of grub I couldn't find the directory /boot/grub.
>>
>> =20
>>
>> /etc/grub.d is installed also the folder /usr/lib/grub
>>
>> =20
>>
>> Question 1:
>>
>> Which grub recipe does yocto install from =20
>> poky-denzil-7.0/meta/recipes-bsp/grub/
>>
>> I would prefer version 1.99.
>>
>> =20
>>
>> Questin 2:
>>
>> Will yocto not install a /boot/grub directory?
>>
>> =20
>>
>> I would appreciate any tips and tricks to install grub correctly in=20
>> the core-image-minimal
>>
>> =20
>>
>> =20
>>
>> Thanks a lot
>>
>> =20
>>
>> Best regards
>>
>> =20
>>
>> Juergen
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>=20
> Hello,
>=20
> Look for /boot/grub/ in /dev/sda1
> It should be there.
>=20

--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



