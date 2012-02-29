Return-Path: <sean_liming@sjjmicro.com>
Received: from mail50c40.carrierzone.com (mail50c40.carrierzone.com
	[209.235.156.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 674CCE00596
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2012 21:58:45 -0800 (PST)
Received: from mail50c40.carrierzone.com (localhost [127.0.0.1])
	by mail50c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	q1T5wgdN013146
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 29 Feb 2012 05:58:42 +0000
Received: (from webmail@localhost)
	by mail50c40.carrierzone.com (8.13.6/8.12.2/Submit) id q1T5weHZ013143; 
	Wed, 29 Feb 2012 00:58:40 -0500
Received: from mf72036d0.tmodns.net (mf72036d0.tmodns.net [208.54.32.247])
	by webmail.sjjmicro.com (Webmail 5.0 V.V.I.) with HTTP for
	<sean_liming.sjjmicro.com@webmail.sjjmicro.com>;
	Wed, 29 Feb 2012 00:58:40 -0500
Message-ID: <20120229005840.83wd2v3tgkowk8so@webmail.sjjmicro.com>
From: sean_liming@sjjmicro.com
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Nicholson, Andrew" <andrew.nicholson@intel.com>
Date: Wed, 29 Feb 2012 00:58:40 -0500
X-Priority: 3
MIME-Version: 1.0
User-Agent: Webmail 6.0
X-CSC: 0
X-CHA: v=1.1 cv=IF4hdgwHcOjhRsj73MvZ+W7eXYz6WfE8GTmoqD1TrHI= c=1 sm=1
	a=Q5QLeeme7KwA:10 a=-n0Y_pgTh64A:10 a=aJh391NtreIA:10 a=IkcTkHD0fZMA:10
	a=/wtbZUUi7wfo2hfrdyZICQ==:17 a=QyXUC8HyAAAA:8 a=iGHA9ds3AAAA:8
	a=EeJBCsLM2Z4e3nxi3ZkA:9 a=KvhckoRHYzcshGWTxEoA:7 a=QEXdDO2ut3YA:10
	a=9oVqRC8nGTsA:10 a=FGejK56k1jwA:10 a=dGJ0OcVc7YAA:10 a=XDKM753qmDAA:10
	a=WkljmVdYkabdwxfqvArNOQ==:117
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A020204.4F4DBE92.0064, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
Subject: Re: current Quick Start manual bug?
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
X-List-Received-Date: Wed, 29 Feb 2012 05:58:45 -0000
Content-Type: text/plain;
	charset=UTF-8;
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable



On Wed, 29 Feb 2012 03:02:35 +0000, "Nicholson, Andrew" 
<andrew.nicholson@intel.com> wrote:
I'm working through the experience for someone new to embedded Linux 
development to use the Yocto Project, and I believe I found a problem 
with the current quick start manual. 
>
> I followed the instructions in the manual for "Building an Image" and 
> the bitbake build failed. I dug into the build logs and found that it 
> appeared all the errors were due to the lack of a perl module. I 
> noticed that the current manual doesn't list getting the 
> "libxml-parser-perl" package, and the "latest" manual does (thank you 
> google). I added that package and now everything works. 
>
> So I presume that the current manual is in error or there is a 
> syncing problem?
>
> I'm running ubuntu 11.10 32 bit and the poky-edison-6.0.tar.bz2 
> tarball as in the commands in the quick start manual. 
>
> Thanks!
>
> p.s. yes I am keeping a lot of notes as I go through this process. :-)
>
> Andrew Nicholson
> SoC SW Product Planner
> Intel Corporation
> ofc: 425-881-4843 mobile: 206-914-0127
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

  I ran into the same problem a few weeks ago on Ubuntu. If you check 
the documents under development, the package was added to the list fo 
Ubuntu. 
  =C2=A0
  -Sean Liming

  =C2=A0



