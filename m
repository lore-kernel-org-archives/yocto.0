Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FE80E0149D
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2013 16:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=FKLcHjPnjDFB+Kpo1D5IT+uY/7VTlj2QtaVqVM00CGc=; 
	b=LZYNLnfTkXAoN9Vcqj57TIgh/u6nIhgSdqiHcwjWx3ig9EUXOTsQIyzC9CLIgQ/PTwFDVy33HvgvER5CUnQk+iU8QsI4xs8PqQ8WMY7Up5ARXCQp28qzdwWkbSrxbTLh;
Received: from [109.224.129.17] (port=48002
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1UJBJ7-0018PV-AZ; Fri, 22 Mar 2013 23:23:33 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <C5CDD289A5664B4F8F886AE3556BC91E@PAULD>
Date: Fri, 22 Mar 2013 23:23:32 +0000
Message-Id: <84F21454-46C3-4FFD-A5BB-045C13FFA8C5@keylevel.com>
References: <C5CDD289A5664B4F8F886AE3556BC91E@PAULD>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Cc: yocto@yoctoproject.org
Subject: Re: Perplexed by boot mechanism
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
X-List-Received-Date: Fri, 22 Mar 2013 23:23:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 22 Mar 2013, at 23:05, Paul D. DeRocco wrote:

> I'm trying to get a core-image-base-cedartrail-nopvr image to boot =
from an
> eUSB SSD on an Intel Atom mobo. I'm following the instructions in
>=20
> =
<https://www.yoctoproject.org/download/intel-atom-n2600n2800d2550-wnm10-ch=
ip
> set-cedar-trail>
>=20
> which tell me to dd the .hddimg file onto the flash drive. But =
apparently,
> the image isn't an image of a regular bootable system drive, but is a =
"live
> image" of a smaller system that can either boot the real system from a
> virtualized file system in RAM whose image is read from a single file =
in the
> first level, or it can install the real system to a different drive.
> (Correct me if I'm mistaken about any of this.)
>=20
> What's the point of all this? It seems like a completely unnecessary =
layer
> of complexity and inefficiency. I have a very vague understanding of =
the
> whole concept of running a live image off a virtual file system, and =
it
> seems to make sense when you're booting off a readonly medium like a =
DVD,
> but this is a writable flash drive. Why doesn't the .hddimg file just
> contain the real target root file system partition in it? Or is that =
what
> some of those other files in the build/tmp/deploy/images directory
> represent? If the latter, is there a way I can just directly create =
the
> flash drive the way it will ultimately be used in the final system, =
without
> using this "live image" stuff?
>=20
> I'd really like to be able to create the flash, mount it under Ubuntu, =
and
> not see the five files the implement the live image, but see the full =
root
> file system of my target.


Have a look at meta/recipes-core/initrdscripts/files/init-install.sh. =
This shows how the 'install' boot option of the 'live usb image' gives =
exactly what you want.

It basically:

1) Partitions the eUSB;
2) Copies the root filesystem (one of you five files) to the eUSB (given =
the caveats I mentioned in my last message);
3) Installs and configures grub to boot this.

The live image is a quick way to get a system up and running. It allows =
someone to 'try stuff' and still get back to a working system if they =
make an error. It's 'install' option allows you to install to a target =
in a more conventional way - i.e. with all the files/directories you are =
expecting to see.

I use the live usb image to install my images to target hardware. I've =
modified the script so I can also use it to install to a sequence of =
eUSB drives that I plug into an external adaptor when I need to program =
a load for a production run.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




