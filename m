Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD7A6E00294
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 12:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=lrY6Lx2UYQ1gYVcyz09spMLTf9Sec/N9PQ4KO41aOVQ=; 
	b=VThhDfKDMkID7lst5BVboQK2VR8fDoiot4cFt9EEQNRnEvkPw5ImxxIyrfPJuHfLHuuqQIoVq/5n7SGFg1WgwXpLfsqdjVJ+3SZH0hNItTI5WNay0U39BETDX9RLgSb8;
Received: from [109.224.129.17] (port=46119
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>)
	id 1TQkKV-0004HR-HE; Tue, 23 Oct 2012 20:39:59 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <D8FE0C54-F09B-40E0-BDDA-5C2AA31DC4C3@gmail.com>
Date: Tue, 23 Oct 2012 20:39:59 +0100
Message-Id: <CB0328DE-EE56-4CBA-A27B-43048135AE0F@keylevel.com>
References: <D8FE0C54-F09B-40E0-BDDA-5C2AA31DC4C3@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Performance improvements and machine build configuration
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
X-List-Received-Date: Tue, 23 Oct 2012 19:40:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 23 Oct 2012, at 19:45, Elvis Dowson wrote:

> Hi,
>      I noticed that between commits=20
>=20
> =
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D0260bb5c697883=
9c068007fcff2f704937805faf
>=20
> and=20
>=20
> =
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Da3d5e9e6b77293=
19c518dcaf25bbe0643bfb25db
>=20
> the build time has improved by around 7 minutes for my machine =
configuration, for building a core-image-minimal rootfs for the Xilinx =
ZC-702 FPGA with dual ARM Cortex A-9 CPUs.
>=20
> commit id 0260bb5c6978839c068007fcff2f704937805faf        took 29 =
minutes
> commit id a3d5e9e6b7729319c518dcaf25bbe0643bfb25db  took 22 minutes
>=20
> The machine configuration is an Intel i7 3770K over-clocked to 4.2GHz, =
with 16GB RAM at 1600Mhz, two 120GB SSDs configured into a striped disk =
array (Intel 330 series SSDs) with a write performance of 838MB/s and =
read performance of around 600MB/s, in RAID0 configuration, with a =
Corsair HT100 liquid CPU cooler keeping the CPU cool at around 52 degree =
centigrade during the build process. The motherboard is a gigabyte =
GA-Z77X-UP5TH
>=20
> http://www.gigabyte.com/products/product-page.aspx?pid=3D4279#ov
>=20
> This motherboard has a thunderbolt display port, so I can re-use my =
existing Apple Thunderbolt display. I've run Ubuntu 12.04.1 LTS and =
Ubuntu 12.10, and it appears to work after a few tweaks.
>=20
> The only curious thing that I've noticed is that I don't see a large =
performance improvement using a standard 3TB Seagate Barracuda 7200 RPM =
HDD, and the two Intel Series 330 SSDs in a striped RAID0 configuration. =
The read (600MB/s) / write (838MB/s) figures are impressive, although I =
expected the read performance to be higher than write performance, as is =
normally with a single SSD. I'm using the motherboard's hardware RAID =
support on a 6GB/s SATA 3 port.
>=20
> The 3TB HDD took the approximately 2 or 3 minutes longer than the =
120GB x 2 RAID0 SSD configuration for commit id =
0260bb5c6978839c068007fcff2f704937805faf (31 minutes vs. 29 minutes).
>=20
> My local.conf parallelism settings were set to 6 threads for bitbake =
and make, for the quad-core (virtual 8 cpu cores)system.
>=20
> Has anyone tried yocto builds with a 6-core, 8-core or 10-core Xeon =
processor system? How do those figures fare? I'm thinking my current =
bottleneck might be the CPU and not the HDD (?!), for the yocto build =
workloads, which I find curious and would like to confirm.=20


I did quite a bit of experimenting with this a while back (similar spec, =
but with nearly 1000MB/s read/write SDD array). CPU was quad core with =
hyper-threading, so 8 virtual cores. I generally run with 16 threads, 16 =
parallel make as I find that the main performance hit is running out of =
stuff to keep all the cores busy.

Most of the time all 8 cores are maxed out, but around when the kernel =
gets built (and cross tools needed for it) I see the total CPU use drop =
to about 25%. This isn't because the system is I/O bound; it simply =
doesn't have enough tasks ready to run at that point in time.

I estimate that my 55 min build times would come down by 10 to 15 =
minutes if I could keep the CPUs busy (still, much better than the 10 =
hour build times on my previous system!).

I tried 'tinkering' with the run queue priority order, but all I proved =
was that inverting it (i.e. make the things that were previous given =
high-priority have low-priority) made no measurable difference to my =
build times! I'm trying not to think too much about that one ;-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




