Return-Path: <sean.liming@annabooks.com>
Received: from mail16c40.carrierzone.com (mail16c40.carrierzone.com
	[209.235.156.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DAA2E014A4
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2013 16:25:33 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail16c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	r2MNPSNM021283; Fri, 22 Mar 2013 23:25:30 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Paul D. DeRocco'" <pderocco@ix.netcom.com>, <yocto@yoctoproject.org>
References: <C5CDD289A5664B4F8F886AE3556BC91E@PAULD>
In-Reply-To: <C5CDD289A5664B4F8F886AE3556BC91E@PAULD>
Date: Fri, 22 Mar 2013 16:25:18 -0700
Message-ID: <000901ce2754$855db490$90191db0$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQGp+57FduXzhtb2TBpYbZZ08WZkcpj6sQcg
X-CSC: 0
X-CHA: v=2.0 cv=M7T63VMs c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=3liNXRVIyK4A:10 a=_DgR7O7FQkkA:10 a=kj9zAlcOel0A:10 a=IjdlZ_XXAAAA:8
	a=dGV3tEs6UksA:10 a=iGHA9ds3AAAA:8 a=QrVWhbZvAAAA:8
	a=JrDC0LBiO5Jl-myquEIA:9 a=CjuIK1q_8ugA:10 a=XDKM753qmDAA:10
	a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A02020A.514CE86B.0026, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
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
X-List-Received-Date: Fri, 22 Mar 2013 23:25:33 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Paul D. DeRocco
> Sent: Friday, March 22, 2013 4:06 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Perplexed by boot mechanism
> 
> I'm trying to get a core-image-base-cedartrail-nopvr image to boot from an
> eUSB SSD on an Intel Atom mobo. I'm following the instructions in
> 
> <https://www.yoctoproject.org/download/intel-atom-n2600n2800d2550-
> wnm10-chip
> set-cedar-trail>
> 
> which tell me to dd the .hddimg file onto the flash drive. But apparently,
the
> image isn't an image of a regular bootable system drive, but is a "live
image"
> of a smaller system that can either boot the real system from a
virtualized file
> system in RAM whose image is read from a single file in the first level,
or it
> can install the real system to a different drive.
> (Correct me if I'm mistaken about any of this.)
> 
> What's the point of all this? It seems like a completely unnecessary layer
of
> complexity and inefficiency. I have a very vague understanding of the
whole
> concept of running a live image off a virtual file system, and it seems to
make
> sense when you're booting off a readonly medium like a DVD, but this is a
> writable flash drive. Why doesn't the .hddimg file just contain the real
target
> root file system partition in it? Or is that what some of those other
files in the
> build/tmp/deploy/images directory represent? If the latter, is there a way
I
> can just directly create the flash drive the way it will ultimately be
used in the
> final system, without using this "live image" stuff?
> 
> I'd really like to be able to create the flash, mount it under Ubuntu, and
not
> see the five files the implement the live image, but see the full root
file
> system of my target.
> 
> --
> 
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Paul,

I think you want to use the ext3 image not the live image (.hddimg). If you
follow the steps to install the ext 3 image on your boot drive, you will see
all the root files systems on the drive in another distro like Ubuntu .


Regards,

Sean Liming


