Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC849E009FD; Thu,  6 Aug 2015 11:50:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EE31E00767
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2015 11:50:01 -0700 (PDT)
Received: by pacrr5 with SMTP id rr5so33524441pac.3
	for <yocto@yoctoproject.org>; Thu, 06 Aug 2015 11:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=k9paV2/UTGBRfCPOZZNeGLSCSgtZ5alyQM+WWVcwB9Y=;
	b=iig/+yy0PHQ8arENLSYcq+c5jtgisdM6sh5t1AL1zjEhYva2SaRTiJ8pU2pZvZJ9HE
	KJIoDPtRH6ssSAp0Y5sLyTWCwvfqee9wb/zA1j3e5cxmNWITzziKpbpw4sth72d+Z9B3
	6o/OWS2u0cuCIH8c1fqyn5GpTiJjep9Um39gxAuZllJRKn9AXCaGHi9+fRvw5KRM/WV9
	X97RnLjmGjh36Yzk46A6+ebi9n4z2eXIhuC2p+g+K+pbflCKnPediduPcQN+VUq/G2Ky
	LrjrewBqNXRhzNRyIO3huwvtypofipE6zqMSFzDsvpYUUXh5DN1hstB+UlR5Cy5vX0Y2
	k2xg==
X-Received: by 10.68.234.167 with SMTP id uf7mr6139943pbc.51.1438887001352;
	Thu, 06 Aug 2015 11:50:01 -0700 (PDT)
Received: from ?IPv6:2601:647:4c02:370d:b173:ce30:9642:a4d7?
	([2601:647:4c02:370d:b173:ce30:9642:a4d7])
	by smtp.gmail.com with ESMTPSA id
	fn8sm7413521pad.15.2015.08.06.11.49.59
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 06 Aug 2015 11:50:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CALH0XhnM-KJm_1T3pai1cQUZq+yMR3kC_SJ7JDqLNe5EFwZQBw@mail.gmail.com>
Date: Thu, 6 Aug 2015 11:49:54 -0700
Message-Id: <7DC4A215-B7F7-4111-BDB6-8B17AA5F90FA@gmail.com>
References: <CALH0Xhn6OnMMcQoH=XZQVzv+nVDjTkw0Ggrfxb93x7TVGKHAeQ@mail.gmail.com>
	<85A21938-F24C-4C7C-A6A0-1429F9860E0C@gmail.com>
	<CALH0XhnM-KJm_1T3pai1cQUZq+yMR3kC_SJ7JDqLNe5EFwZQBw@mail.gmail.com>
To: Dalton Fury <daltonfury42@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: How to flash core-image-sato to a Nvidia Jetson TK1?
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
X-List-Received-Date: Thu, 06 Aug 2015 18:50:05 -0000
X-Groupsio-MsgNum: 25914
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A6D2743F-320D-4D04-8538-866941557CD7";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A6D2743F-320D-4D04-8538-866941557CD7
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_36110120-4B43-45C7-8EA5-FC058DFCB5F9"

--Apple-Mail=_36110120-4B43-45C7-8EA5-FC058DFCB5F9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 6, 2015, at 11:13 AM, Dalton Fury <daltonfury42@gmail.com> =
wrote:
>=20
> I see, but why boot from SD card, which is slower when there is eMMC?

easy to flash and wanted to keep ubuntu around.

>=20
> Anyways, I flashed it successfully. But now I have no clue as to how =
to enable CUDA.
>=20
> I want to do some image processing with OpenCV/CUDA. What I tried is =
to compile opencv with USE_CUDA=3DON flage set in cmake. Then I tested =
to see if I an use the gpu with opencv. But can't, and get 0 when I call =
 gpu::getCudaEnabledDeviceCount(). This clearly indiacates that cuda is =
not installed. So how do I install CUDA?

We use precompiled drivers package from nvidia for this.

Do you have /etc/ld.so.conf on target ?
if not create one with following content

/usr/lib/arm-linux-gnueabihf/tegra/

and ensure that libcuda.so is there on target

>=20
> On Thu, Aug 6, 2015 at 9:29 AM, Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>> wrote:
>=20
>> On Aug 3, 2015, at 11:15 AM, Dalton Fury <daltonfury42@gmail.com =
<mailto:daltonfury42@gmail.com>> wrote:
>>=20
>> Hi,
>>=20
>> I am a hobbyist, and liked yocto very much since I used in on an old =
Pandaboard ES. Now I got my hands on a Nvidia Jetson TK1, and want to =
get a yocto running on it. I intend to use it for heavy image processing =
and I prefer not to do it with the Ubuntu which comes with it loaded =
with GUI and Unity and all. So I build the image, but could not find any =
information on how to flash it to the eMMC on the board.
>>=20
>> Nvidia provides scripts for doing this. The process is as follows:
>>=20
>> 1) Download the driver package and extract it.
>>=20
>> 2) Download the sample rootfs and extract it to `rootfs` folder in =
where the driver package is extracted.
>>=20
>> 3) Run the apply_binaries.sh script. Upon inspecting the script, I =
found that it copies NVIDIA user space components, Nvidia firmware =
files, BSP test tools, gst test applications, create a lot of symbolic =
links within the rootfs extracted to the 'rootfs' folder. It also places =
the firmwares and kernel modules, and also copies some configuration =
files for the boot loader(U-Boot).
>>=20
>> 4) Run flash.sh.
>>=20
>> What I did is to copy the rootfs that was made with yocto, and =
entirely skip Step 3 assuming that all the necessary software is already =
made with yocto as a result of adding the BSP. This attempt of course, =
failed. Thought the kernel booted, it froze halfway. No error message. =
Just a flack screen with a while "_" on the top left corner.
>>=20
>> This is the bsp I used: https://github.com/kraj/meta-jetson-tk1 =
<https://github.com/kraj/meta-jetson-tk1>
>>=20
>> This is the guide I used as reference: =
http://elinux.org/Tegra/Downstream_SW/Gentoo_From_eMMC =
<http://elinux.org/Tegra/Downstream_SW/Gentoo_From_eMMC>
>>=20
>> If anyone has experience performing this(i bet you do), please help =
me out. Thanks.
>=20
> I have booted Angstrom XFCE-nm-image on it from SD card. Firstly you =
need to flash new kernel and also modify the boot loader arguments so it =
boots from SD card first.
> all instructions to update the boot loader cmdline and kernel are =
documented
>=20
> see =
https://cyclicredundancy.wordpress.com/2014/05/10/flashing-the-rootfs-on-a=
-nvidia-jetson-tk1/ =
<https://cyclicredundancy.wordpress.com/2014/05/10/flashing-the-rootfs-on-=
a-nvidia-jetson-tk1/>
>=20
> you might need
>=20
> sudo ./flash.sh -S 14580MiB jetson-tk1 mmcblk0p1
>=20
>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>=20
>=20


--Apple-Mail=_36110120-4B43-45C7-8EA5-FC058DFCB5F9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Aug 6, 2015, at 11:13 AM, Dalton Fury &lt;<a =
href=3D"mailto:daltonfury42@gmail.com" =
class=3D"">daltonfury42@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">I see, but why boot from SD card, which is slower when there =
is eMMC?&nbsp;</div></div></blockquote><div><br class=3D""></div><div>easy=
 to flash and wanted to keep ubuntu around.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D""><br class=3D""></div><div =
class=3D"">Anyways, I flashed it successfully. But now I have no clue as =
to how to enable CUDA.</div><div class=3D""><br class=3D""></div><div =
class=3D"">I want to do some image processing with OpenCV/CUDA. What I =
tried is to compile opencv with USE_CUDA=3DON flage set in cmake. Then I =
tested to see if I an use the gpu with opencv. But can't, and get 0 when =
I call&nbsp;&nbsp;gpu::getCudaEnabledDeviceCount(). This clearly =
indiacates that cuda is not installed. So how do I install =
CUDA?</div></div></div></blockquote><div><br class=3D""></div><div>We =
use precompiled drivers package from nvidia for this.</div><div><br =
class=3D""></div><div>Do you have /etc/ld.so.conf on target =
?</div><div>if not create one with following content</div><div><br =
class=3D""></div><div>/usr/lib/arm-linux-gnueabihf/tegra/</div><div><br =
class=3D""></div><div>and ensure that&nbsp;libcuda.so is there on =
target</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote">On Thu, Aug 6, 2015 at 9:29 AM, Khem Raj <span =
dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:raj.khem@gmail.com" =
target=3D"_blank" class=3D"">raj.khem@gmail.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
style=3D"word-wrap:break-word" class=3D""><br class=3D""><div =
class=3D""><div class=3D""><div class=3D"h5"><blockquote type=3D"cite" =
class=3D""><div class=3D"">On Aug 3, 2015, at 11:15 AM, Dalton Fury =
&lt;<a href=3D"mailto:daltonfury42@gmail.com" target=3D"_blank" =
class=3D"">daltonfury42@gmail.com</a>&gt; wrote:</div><br class=3D""><div =
class=3D""><div dir=3D"ltr" class=3D"">Hi,<div class=3D""><br =
class=3D""></div><div class=3D"">I am a hobbyist, and liked yocto very =
much since I used in on an old Pandaboard ES. Now I got my hands on a =
Nvidia Jetson TK1, and want to get a yocto running on it. I intend to =
use it for heavy image processing and I prefer not to do it with the =
Ubuntu which comes with it loaded with GUI and Unity and all. So I build =
the image, but could not find any information on how to flash it to the =
eMMC on the board.&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">Nvidia provides scripts for doing this. The process is as =
follows:</div><div class=3D""><br class=3D""></div><div class=3D"">1) =
Download the driver package and extract it.</div><div class=3D""><br =
class=3D""></div><div class=3D"">2) Download the sample rootfs and =
extract it to `rootfs` folder in where the driver package is =
extracted.</div><div class=3D""><br class=3D""></div><div class=3D"">3) =
Run the apply_binaries.sh script. Upon inspecting the script, I found =
that it copies NVIDIA user space components, Nvidia firmware files, BSP =
test tools, gst test applications, create a lot of symbolic links within =
the rootfs extracted to the 'rootfs' folder. It also places =
the&nbsp;firmwares and kernel modules, and also copies some =
configuration files for the boot loader(U-Boot).</div><div class=3D""><br =
class=3D""></div><div class=3D"">4) Run flash.sh.</div><div class=3D""><br=
 class=3D""></div><div class=3D"">What I did is to copy the rootfs that =
was made with yocto, and entirely skip Step 3 assuming that all the =
necessary software is already made with yocto as a result of adding the =
BSP. This attempt of course, failed. Thought the kernel booted, it froze =
halfway. No error message. Just a flack screen with a while "_" on the =
top left corner.</div><div class=3D""><br class=3D""></div><div =
class=3D"">This is the bsp I used:&nbsp;<a =
href=3D"https://github.com/kraj/meta-jetson-tk1" target=3D"_blank" =
class=3D"">https://github.com/kraj/meta-jetson-tk1</a></div><div =
class=3D""><br class=3D""></div><div class=3D"">This is the guide I used =
as reference:&nbsp;<a =
href=3D"http://elinux.org/Tegra/Downstream_SW/Gentoo_From_eMMC" =
target=3D"_blank" =
class=3D"">http://elinux.org/Tegra/Downstream_SW/Gentoo_From_eMMC</a></div=
><div class=3D""><br class=3D""></div><div class=3D"">If anyone has =
experience performing this(i bet you do), please help me out. =
Thanks.&nbsp;</div></div></div></blockquote><div class=3D""><br =
class=3D""></div></div></div><div class=3D"">I have booted Angstrom =
XFCE-nm-image on it from SD card. Firstly you need to flash new kernel =
and also modify the boot loader arguments so it boots from SD card =
first.</div><div class=3D"">all instructions to update the boot loader =
cmdline and kernel are documented</div><div class=3D""><br =
class=3D""></div><div class=3D"">see&nbsp;<a =
href=3D"https://cyclicredundancy.wordpress.com/2014/05/10/flashing-the-roo=
tfs-on-a-nvidia-jetson-tk1/" target=3D"_blank" =
class=3D"">https://cyclicredundancy.wordpress.com/2014/05/10/flashing-the-=
rootfs-on-a-nvidia-jetson-tk1/</a></div><div class=3D""><br =
class=3D""></div><div class=3D"">you might need&nbsp;</div><div =
class=3D""><br class=3D""></div><div class=3D"">sudo ./flash.sh&nbsp;-S =
14580MiB&nbsp;jetson-tk1 mmcblk0p1</div><span class=3D"HOEnZb"><font =
color=3D"#888888" class=3D""><div class=3D""><br class=3D""></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><br =
class=3D""></div></blockquote></font></span></div><br =
class=3D""></div></blockquote></div><br class=3D""></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_36110120-4B43-45C7-8EA5-FC058DFCB5F9--

--Apple-Mail=_A6D2743F-320D-4D04-8538-866941557CD7
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXDrFYACgkQuwUzVZGdMxQBwwCeO1Vl8ikRquHw8p836yp+QWe6
eLoAn0IG5T4YhxHXXRdOvLJJEWBqoVRO
=vI+T
-----END PGP SIGNATURE-----

--Apple-Mail=_A6D2743F-320D-4D04-8538-866941557CD7--
