Return-Path: <uol@pengutronix.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 003FDE00D4C; Thu,  2 May 2019 22:59:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [85.220.165.71 listed in list.dnswl.org]
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
	[85.220.165.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2238E00D3A
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 22:59:04 -0700 (PDT)
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
	by metis.ext.pengutronix.de with esmtps
	(TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
	(envelope-from <uol@pengutronix.de>)
	id 1hMRDr-0002DF-4W; Fri, 03 May 2019 07:59:03 +0200
Received: from uol by dude.hi.pengutronix.de with local (Exim 4.92-RC6)
	(envelope-from <uol@pengutronix.de>)
	id 1hMRDq-0004gW-II; Fri, 03 May 2019 07:59:02 +0200
References: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
	<A2A9E37E9C946847B2258F923F7CFE42047B38BE@GOEMAIL-Server2.goerlitz.int>
	<6rh8ceu2rn.fsf@pengutronix.de>
	<CAAx3WaDQKbNg0tXZd07s8i_5PTDVctuOcScDMDbXFMmotjoJpw@mail.gmail.com>
	<CAAx3WaCL2XBSarSVpDN+KdwwYoUDEd3cLT1MfecFWriUB=OT-Q@mail.gmail.com>
	<6rbm0vbl2s.fsf@pengutronix.de>
	<CAAx3WaA+KFX67Pzapkc67PTges-SbhRpooRyUxcvDxtzgqOWvQ@mail.gmail.com>
User-agent: mu4e 1.1.0; emacs 26.1
From: Ulrich =?utf-8?Q?=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
In-reply-to: <CAAx3WaA+KFX67Pzapkc67PTges-SbhRpooRyUxcvDxtzgqOWvQ@mail.gmail.com>
Date: Fri, 03 May 2019 07:59:02 +0200
Message-ID: <6rk1f884ex.fsf@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: uol@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
	SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@yoctoproject.org
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Multiple ubifs partition
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
X-List-Received-Date: Fri, 03 May 2019 05:59:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Gabriele,

On Thu, May 02 2019 at 13:25 +0200, Gabriele Zampieri <gabbla.malist@gmail.=
com> wrote:
> ok, I guess I miss-understand how that class works. I thought that I
> had to add the customization on my own image recipe.
> So the correct way is to write a 'customization recipe' and install
> via IMAGE_INSTALL? Can you provide an example?

use your custom image recipe as before to just produce your root-
filesystem which results in a (compressed) tar-file in ${DEPLOY_DIR_
IMAGE}. It will be referenced from the genimage recipe without any file
extension via GENIMAGE_ROOTFS_IMAGE. Now your UBI-recipe (e.g. 'your-
customized-ubi.bb') could look like

    inherit genimage
    LICENSE =3D "MIT"
    LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/files/common-licenses/MIT=
;md5=3D0835ade698e0bcf8506ecda2f7b4f302"

    SRC_URI +=3D "file://genimage.config"

    # to not confuse the flashable UBI-image ('ubi')
    # with the UBI-filesystems ('ubifs') it contains
    GENIMAGE_IMAGE_SUFFIX =3D "ubi"

    # the name of the root-filesystem genimage should use
    GENIMAGE_ROOTFS_IMAGE =3D "your-customized-rootfs"

with the accompanying 'genimage.config' for example as follows

    #
    # Manufacturer ID: 0x2c, Chip ID: 0xda
    # -> Micron MT29F2G08ABAEAWP
    # 256 MiB, SLC
    #
    flash nand {
    	pebsize =3D 131072
    	lebsize =3D 126976
    	numpebs =3D 2044
    	minimum-io-unit-size =3D 2048
    	sub-page-size =3D 2048
    }

    image @IMAGE@ {
    	flashtype =3D "nand"
    	ubi {
    	}

    	partition rootfs {
    		image =3D rootfs.ubifs
    		size =3D 64MiB
    	}

    	partition opt {
    		image =3D opt.ubifs
    		size =3D 32MiB
    	}

    	partition data {
    		image =3D data.ubifs
    		autoresize =3D true
    	}
    }

    image rootfs.ubifs {
    	flashtype =3D "nand"
    	ubifs {
    		extraargs =3D "-x lzo"
    		max-size =3D 64MiB
    	}
    	mountpoint =3D "/"
    }

    image opt.ubifs {
    	flashtype =3D "nand"
    	ubifs {
    		extraargs =3D "-x lzo"
    		max-size =3D 32MiB
    	}
    	mountpoint =3D "/opt"
    }

    image data.ubifs {
    	flashtype =3D "nand"
    	ubifs {
    		extraargs =3D "-x lzo"
    		max-size =3D 192MiB
    	}
    	mountpoint =3D "/data"
    }

In a UBI-image almost all UBI-volumes need to have a fixed size and only
one is allowed to use the autoresize mechanism which blows it up to use
the remaining space when it is UBI-attached for the first time. Distinct
from that is the UBI-filesystem's max-size parameter which prescribes
the maximum size of an UBI-volume that shall be addressable by this
filesystem. This means that if you would re-use 'data.ubifs' in a volume
that has been autoresized to e.g. 1024MiB the filesystem would not be
able to make use of it.

I neither tested the recipe nor the genimage.config, so please give some
feedback.

Best regards
Ulrich


> Thanks,
> Gabriele
>
> Il giorno mer 24 apr 2019 alle ore 15:15 Ulrich =C3=96lmann <
> u.oelmann@pengutronix.de> ha scritto:
>
>> Hi Gabriele,
>>
>> On Wed, Apr 24 2019 at 14:06 +0200, Gabriele Zampieri <
>> gabbla.malist@gmail.com> wrote:
>> > I'm now testing genimage via meta-ptx in my Yocto workflow, but I foun=
d a
>> > problem: I cannot set a SRC_URI in my custom image recipe (that inherit
>> > from core-image which in turn inherit from image) because do_fetch and
>> > do_unpack tasks have noexec set to 1. If I specify the SRC_URI with my
>> > genimage.config, bitbake exits, complaining about LIC_FILE_CHECKSUM (t=
hat
>> > is correctly specified). If I hack image.bbclass and comment out
>> >
>> > #do_fetch[noexec] =3D "1"
>> >
>> >
>> > #do_unpack[noexec] =3D "1"
>> >
>> > The process start correctly. Is there a way to avoid touching
>> image.bbclass
>> > and install my configuration from the image recipe?
>> >
>> > Thanks,
>> > Gabriele
>>
>> you need one or more recipe(s) that construct(s) your filesystem(s) and
>> a separate one that makes a flashable image out of that (see the
>> introductory documentation in 'genimage.bbclass'). In the former you
>> inherit 'core-image' and only in the latter which inherits 'genimage'
>> you have to set the SRC_URI to point to your 'genimage.config'.
>>
>> Best regards
>> Ulrich
>>
>>
>> > Il giorno mer 13 mar 2019 alle ore 16:14 Gabriele Zampieri <
>> > gabbla.malist@gmail.com> ha scritto:
>> >
>> >> Hi all,
>> >>
>> >> thank you very much for the suggestion, I will check genimage and test
>> it.
>> >>
>> >> Gabriele
>> >>
>> >> Il giorno gio 7 mar 2019 alle ore 16:23 Ulrich =C3=96lmann <
>> >> u.oelmann@pengutronix.de> ha scritto:
>> >>
>> >>> Hi there,
>> >>>
>> >>> On Thu, Mar 07 2019 at 15:11 +0100, Stelling2 Carsten <
>> >>> Carsten.Stelling2@goerlitz.com> wrote:
>> >>> > Have you seen https://github.com/pengutronix/genimage?
>> >>>
>> >>> you can find it included within
>> https://github.com/pengutronix/meta-ptx
>> >>> with an accompanying genimage.bbclass.
>> >>>
>> >>> Best regards
>> >>> Ulrich
>> >>>
>> >>> > Regards,
>> >>> >
>> >>> > Carsten
>> >>> >
>> >>> > Von: yocto-bounces@yoctoproject.org [mailto:
>> >>> yocto-bounces@yoctoproject.org] Im Auftrag von Gabriele Zampieri
>> >>> > Gesendet: Montag, 4. M=C3=A4rz 2019 12:17
>> >>> > An: yocto@yoctoproject.org
>> >>> > Betreff: [yocto] Multiple ubifs partition
>> >>> >
>> >>> > Hi all,
>> >>> >
>> >>> > I'm trying to build a distribution that has multiple partitions. T=
he
>> >>> desiderata is something like:
>> >>> >
>> >>> > - rootfs.ubifs mounted on /
>> >>> > - data.ubifs mounted on /data
>> >>> > - opt.ubifs mounted on /opt
>> >>> >
>> >>> > I was wondering if there is a standard way to achieve the goal. I =
see
>> >>> that there is a tool called wic, but it does not seems to support
>> ubifs. I
>> >>> could post process the tarball image and doing stuff with my scripts,
>> but
>> >>> I'd prefer doing this in a single bitbake run. Can you suggest
>> something?
>> >>> >
>> >>> > Thanks,
>> >>> > Gabriele
>> >>>
>> >>>
>> >>> --
>> >>> Pengutronix e.K.                           | Ulrich =C3=96lmann
>>    |
>> >>> Industrial Linux Solutions                 |
>> http://www.pengutronix.de/
>> >>> |
>> >>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
>>   |
>> >>> Amtsgericht Hildesheim, HRA 2686           | Fax:
>>  +49-5121-206917-5555 |
>> >>>
>> >>
>>
>>
>> --
>> Pengutronix e.K.                           | Ulrich =C3=96lmann         =
      |
>> Industrial Linux Solutions                 | http://www.pengutronix.de/ =
 |
>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0   =
 |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555=
 |
>>


--
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

