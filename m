Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53059E013F7
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 13:16:20 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:34272 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1Szvd3-0000rd-Ri; Fri, 10 Aug 2012 16:16:17 -0400
Date: Fri, 10 Aug 2012 16:16:14 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Jim Rucker <linux.mrjimorg@gmail.com>
In-Reply-To: <CAH6UwN19VfGzj-kig80cCuwk-SWBsnkcOWacFVHpG3kJdyeqVg@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1208101615450.13805@oneiric>
References: <CAH6UwN19VfGzj-kig80cCuwk-SWBsnkcOWacFVHpG3kJdyeqVg@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: do_deploy[sstate-inputdirs]
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
X-List-Received-Date: Fri, 10 Aug 2012 20:16:20 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-943165855-1344629777=:13805"

--8323329-943165855-1344629777=:13805
Content-Type: TEXT/PLAIN; charset=ISO-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Fri, 10 Aug 2012, Jim Rucker wrote:

> I've been trying to figure out why I've had such trouble getting my tmp/d=
eploy/uImage files to
> update after performing a "bitbake -f -c compile virtual/kernel", and I'v=
e come across something I I
> don't understand. In deploy.bbclass, we have:
> do_deploy[sstate-inputdirs] =3D "${DEPLOYDIR}"
>
> However, the only place DEPLOYDIR is ever used is as a=A0install=A0destin=
ation=A0within the
> kernel_do_deploy functions. Therefore, from what I can tell, DEPLOYDIR is=
 never updated and
> therefore do_deploy is never called - even if you run "bitbake -f -c depl=
oy virtual/kernel" (note
> that I'm using the 6.0.2 poky release, not top of tree). From what I unde=
rstand, the best way to fix
> this is to make the following changes:
>
> kernel.bbclass:
> OUTPUTDIR ?=3D "arch/${ARCH}/boot
> KERNEL_OUTPUT ?=3D "${OUTPUTDIR}/${KERNEL_IMAGETYPE}
>
> deploy.bblass
> do_deploy[sstate-inputdirs] =3D "${OUTPUT_DIR}"
> do_deploy[sstate-outputdirs] =3D "${DEPLOYDIR}
>
> Am I barking up the right or wrong tree here?

  i'm sort of sure that what you're after is the "do_uboot_mkimage"
task.

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

--8323329-943165855-1344629777=:13805--
