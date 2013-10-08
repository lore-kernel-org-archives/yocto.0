Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14C12E01620
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2013 22:22:53 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id kx10so8281782pab.13
	for <yocto@yoctoproject.org>; Mon, 07 Oct 2013 22:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=oZ2akKTgQ5OcA+URaZHjCO4Sb1tc68st+gfYeM559oQ=;
	b=rN6107OIbCp7c/kzyTXAuwjm8z3Mo5l3hf3pnf392DwqbnPJau76uktE3dqr1Nz+Kg
	wZY3OKWRqFaa3BpiwVlyjk/+MOeIKTou8NuVeROnLNy1S0rFEYyznkUZlYvb83Z4dQCR
	NbHuZ1kANHdPIZMWrWz6MX3CP7gVMU9lZLALXXCXpEqLsFRlwkjluta94uI+be6HHIgh
	+Mnt/1WOEEHcZ7r7/fLc+mc9LxUlKABAAjjDVwWiC5QoTWNx4HxbsIg8fsni5kJt+5cw
	U3vzrSIngsh4S9W3kGF/Z7b76MI3GRDv1dGpXNE5JmQetDaXrAiXCaunW2KzZSQjwJAJ
	nvUQ==
X-Received: by 10.68.4.197 with SMTP id m5mr34835522pbm.46.1381209773197;
	Mon, 07 Oct 2013 22:22:53 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	iu7sm37250070pbc.45.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 07 Oct 2013 22:22:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CABhkJRf2=Cw4Cs40+uOpLa1dXsjAxrJC=M47DOCDamegiSa6pQ@mail.gmail.com>
Date: Mon, 7 Oct 2013 22:22:50 -0700
Message-Id: <3D72AD46-B6FC-4113-B124-EB93BECFC845@gmail.com>
References: <CABhkJRf2=Cw4Cs40+uOpLa1dXsjAxrJC=M47DOCDamegiSa6pQ@mail.gmail.com>
To: Ashish Dalela <ashish.dalela@gmail.com>
X-Mailer: Apple Mail (2.1510)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to patch sysroots file?
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
X-List-Received-Date: Tue, 08 Oct 2013 05:22:55 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Oct 7, 2013, at 6:53 AM, Ashish Dalela <ashish.dalela@gmail.com> =
wrote:

>=20
> I am trying to build bridge-utils. During compilation, I get the =
error:
>=20
> =
/scratch/adalela/yocto/build/tmp/sysroots/qemux86/usr/include/linux/if_bri=
dge.h:172:20: error: field 'ip6' has incomplete typeIn file included =
from ../libbridge/libbridge.h:24:0


if you are using dylan/1.4 branch or master then we use kernel 3.8 for =
kernel-headers and there was an issue where
include/uapi/linux/if_bridge.h that uses a struct in6_addr but doesn't =
define it, you could fix the headers but
thats not sufficient. At this point I would suggest to patch =
bridge-utils itself to include netinet/in.h to get
the definition before including linux/if_bridge.h in file =
libbridge/libbridge.h that should get you around the issue.


>=20
> But, I don't see matching file paths in git path and sysroots =
locations.
>=20
> In sysroots path:
> .../build/tmp/sysroots/qemux86
> $ find . -name if_bridge.h
> ./usr/include/linux/if_bridge.h
>=20
> In GIT path:
> .../build/tmp/work/qemux86-poky-linux/linux-yocto/3.8.11+git*/linux
> $ find . -name if_bridge.h
> ./include/uapi/linux/if_bridge.h
> ./include/linux/if_bridge.h
>=20
> ./usr/include/linux/if_bridge.h and ./include/uapi/linux/if_bridge.h =
are almost identical, except of #ifdef.
>=20
> I can manually patch the files and the compilation is successful. But =
I don't know how to create the patch file for the sysroots file, because =
the GIT path does not have the same file.=20
>=20
> So my question is: from where is the sysroots file coming? How should =
I generate the patch file for the sysroots =
./usr/include/linux/if_bridge.h?
>=20
> Thanks
> -Ashish
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


