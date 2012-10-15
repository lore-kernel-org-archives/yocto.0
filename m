Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: from echo.usurf.usu.edu (echo.usurf.usu.edu [129.123.194.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 193A1E00346
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 07:56:15 -0700 (PDT)
Received: from wef.usurf.usu.edu (129.123.194.164) by echo.usurf.usu.edu
	(129.123.194.129) with Microsoft SMTP Server id 14.2.318.4;
	Mon, 15 Oct 2012 08:56:14 -0600
Received: from Mercury.usurf.usu.edu ([172.31.35.10]) by wef.usurf.usu.edu
	with Microsoft SMTPSVC(6.0.3790.4675); Mon, 15 Oct 2012 08:56:12 -0600
Received: from MERCURY.usurf.usu.edu ([172.31.35.10]) by Mercury.usurf.usu.edu
	([172.31.35.10]) with mapi id 14.02.0318.004;
	Mon, 15 Oct 2012 08:56:13 -0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: Joshua Immanuel <josh@hipro.co.in>
Thread-Topic: [yocto] Multiple partitions in drive image
Thread-Index: Ac2ov/cjVA+E4+p/TJCISMabmiKnxgCFPjcAAAQNCEU=
Date: Mon, 15 Oct 2012 14:56:12 +0000
Message-ID: <DDDB9E6645DE24488B8485B41A051F471D95BDF1@Mercury.usurf.usu.edu>
References: <DDDB9E6645DE24488B8485B41A051F471D95AFA5@Mercury.usurf.usu.edu>,
	<1350284380.4115.18.camel@babel.joshhome>
In-Reply-To: <1350284380.4115.18.camel@babel.joshhome>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.31.22.105]
MIME-Version: 1.0
X-OriginalArrivalTime: 15 Oct 2012 14:56:12.0038 (UTC)
	FILETIME=[37955A60:01CDAAE5]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple partitions in drive image
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
X-List-Received-Date: Mon, 15 Oct 2012 14:56:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On Fri, 2012-10-12 at 21:42 +0000, Jonathan Haws wrote:=0A=
> What I am trying to do is have Poky build me an image that I can just=0A=
> 'dd' to a SSD and hook up to the system to boot.  Since that image=0A=
> will also only be only ~250MB or so, I would like to have Poky=0A=
> generate an image containing multiple partitions - a small one=0A=
> containing the boot files, then the rest of the image dedicated to=0A=
> storage.  Is that possible?=0A=
=0A=
Yes. It is possible. I have done the following in order to generate=0A=
image with multiple partitions.=0A=
=0A=
     1. I wrote a custom image_types.bbclass in order to generate=0A=
        multiple partition images (say /, /var etc)=0A=
     2. Wrote a bbappend for base-files recipe to generate custom fstab=0A=
        file with required partition's mount options=0A=
     3. Extended grub-native recipe to generate core.img and boot.img=0A=
        using grub-mkimage for target platform=0A=
     4. Wrote a python task to join all these generated images (boot,=0A=
        core and filesystem images) and embedded the partition table=0A=
        structure into it.=0A=
     5. Added this task to my image recipe after the 'do_rootfs' task=0A=
=0A=
This way we can generate a custom image with the required partitions.=0A=
-------------------------------------------------------=0A=
=0A=
Awesome, I will take a look at this.=0A=
=0A=
Thanks!=

