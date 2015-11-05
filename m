Return-Path: <toby.gomersall@smartacoustics.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FA49E00B37; Thu,  5 Nov 2015 03:17:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [80.241.60.212 listed in list.dnswl.org]
Received: from mx1.mailbox.org (mx1.mailbox.org [80.241.60.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40BD1E00B2E
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 03:17:03 -0800 (PST)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.mailbox.org (Postfix) with ESMTPS id 4569C43A4F;
	Thu,  5 Nov 2015 12:17:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
	(amavisd-new, port 10030)
	with ESMTP id rBLMAeypOA_J; Thu,  5 Nov 2015 12:17:00 +0100 (CET)
To: Nathan Rossi <nathan@nathanrossi.com>
References: <563A09A3.4050706@smartacoustics.co.uk>
	<1B92730CF2B23F4DB7A48AAE6E3CAA361461CA0B@DEPOIY0MX08MB03.msg.avnet.eu>
	<563A1438.80309@smartacoustics.co.uk>
	<CA+aJhH3wtc=H2_0gn44fLxrspO5XEFUVxgjGwjDFBzQCtD7amg@mail.gmail.com>
From: Toby Gomersall <toby.gomersall@smartacoustics.co.uk>
Message-ID: <563B3AA5.7070902@smartacoustics.co.uk>
Date: Thu, 5 Nov 2015 11:16:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CA+aJhH3wtc=H2_0gn44fLxrspO5XEFUVxgjGwjDFBzQCtD7amg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hecht,
	Martin \(Silica\)" <Martin.Hecht@avnet.eu>
Subject: Re: yocto on zynq, How to configure kernel to include drivers
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
X-List-Received-Date: Thu, 05 Nov 2015 11:17:08 -0000
X-Groupsio-MsgNum: 27182
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="LgrqKhddiVpMpKDRDMb5WR0VT6uGxgagC"

--LgrqKhddiVpMpKDRDMb5WR0VT6uGxgagC
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 04/11/15 15:08, Nathan Rossi wrote:
> On Thu, Nov 5, 2015 at 12:20 AM, Toby Gomersall
> <toby.gomersall@smartacoustics.co.uk> wrote:
>> Hi,
>>
>> We've tried building the linux-xlnx tree standalone and we have the DM=
A
>> drivers available to add in menuconfig but not when I build
>> core-image-minimal. I thought the full build would pick up the
>> linux-xlnx kernel and make the same options available. Is there
>> something I need to do to make them available?
>=20
> By default the linux-xlnx configs within meta-xilinx are close as
> possible to mainline configuration. In this case the only Xilinx DMA
> driver enabled by default is the VDMA driver as it is available both
> in linux-xlnx and in mainline/linux-yocto. It has been done this way
> to ensure users understanding that they are using a driver that may
> disappear in future linux-xlnx versions or be changed for upstream
> submission.
>=20
> To configure these linux-xlnx only drivers, you can use the "-c
> menuconfig" and have your changes made temporarily (The drivers are
> under 'Device Drivers / DMA Engine support / Xilinx DMA Engines').
>=20
> Or you can use the config fragment available in meta-xilinx by setting
> KERNEL_FEATURES up with the fragment (the fragment enables a few of
> linux-xlnx only drivers). Adding the following line to your machine's,
> distro's your local .conf depending on your requirements:
>=20
> KERNEL_FEATURES +=3D "bsp/xilinx/xilinx-drivers-linux-xlnx.scc"
>=20
> Just on a side note, there was a bug in the .scc file, I have just
> fixed it in master (and fido). So you will need to pull to use this or
> it will give you an error.
>=20
> Regards,
> Nathan

Hi Nathan,

Thank you, your bug fix and the extra line in local.conf solved the
problem. Is there any documentation on using the DMA drivers?

I can control the egpio in the shell, is it possible to do something
similar with the AXI bus?

Kind regards,
Toby

>=20
>>
>> Regards,
>> Toby
>>
>> On 04/11/15 13:47, Hecht, Martin (Silica) wrote:
>>> Hi Toby,
>>>
>>> Please compare with http://www.wiki.xilinx.com/Linux+Drivers. Most of=
 the DMA drivers aren't mainlined by now. You need to add them by yoursel=
f currently.
>>>
>>> Regards,
>>> Martin
>>>
>>>
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproje=
ct.org] On Behalf Of Toby Gomersall
>>> Sent: Mittwoch, 4. November 2015 14:44
>>> To: yocto@yoctoproject.org
>>> Subject: [yocto] yocto on zynq, How to configure kernel to include dr=
ivers
>>>
>>> I'm quite new to yocto so still have a lot to learn. I'm trying to in=
clude the DMA drivers in my yocto build for a Zynq based on the meta-xili=
nx layer (http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/).
>>>
>>> I thought I'd be able to add them in the kernel configuration
>>> (menuconfig) by running (from within the build directory):
>>>
>>> bitbake linux-xlnx -c kernel_configme -f bitbake linux-xlnx -c menuco=
nfig
>>>
>>> I can't see the DMA drivers in menuconfig. However if I run menuconfi=
g within the linux-xlnx tree (which is referenced by the SRCURI) I can se=
e the DMA drivers. Is there some reason they're hidden in the build menuc=
onfig?
>>>
>>> Thanks,
>>> Toby
>>>
>>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>


--LgrqKhddiVpMpKDRDMb5WR0VT6uGxgagC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWOzqrAAoJEJFfznYik92Wq7kQAKrB04VISnSk2Scte3kj29nL
8Cb6b2aAwr1sLjcC1UeCgBiqt5GGr8C9jQh/WJS8sJzs75DMzWIHEBeLDqt9FBjn
dF4RXVX3wwShGxNeKPuz92BBwsZoGrzw8dMEp5/j85H18lLQRKZBR9q9gOyePO6V
7a4O6KEmDo6xnY4dyqMqEpgA9mjo6JYec9+sSvOzJoX8qM8EF0yPJzEfM6ZST1GT
IFtnezW4FLpHmp7TKXaubI56udnX+JhoZ9zA8SuoCM4BEv8KQcpsmpuXU4w2xfp3
PeydQk4GIVB7InxX35yw1U6i+kKRcU4iOOEVCARP/8781QAyBVSpwYrrUlOYMJwc
6TPlNeLQrFbl+JT4LdxwmUWBRhviSyWBPUrGjX5zJMCSzhJ3PLCUSM3BlLOoQl7K
BGIO2/q6UYn+YsHxq02HK/YtJ86F3YcDdvcmdNGalUAOLaRhP6/Mmbeyf7+T1XvW
FPwSc7ZsAxbb/Xd6Mmdq0eM6njF3+7jyw5yHiInR+ayxpnxMfeNHp1bxdlVrWUFR
9fI83vrMGyLm04jTJr4qPp63OzER6ozKvxHlwYIm++J0KHJfaeQq2mY67y1xfXCG
UnaFso2n6xzbCsunL1D2CzXfEyuRDN3sEaWc7/yZ3Z8kFcAJ3K0lW42cmSfMn7g6
SuzlLj6vHIBWVClJP6xM
=8FTA
-----END PGP SIGNATURE-----

--LgrqKhddiVpMpKDRDMb5WR0VT6uGxgagC--
