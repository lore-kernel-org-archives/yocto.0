Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C668E01530
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 05:42:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r5PCg8Wm013989
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 25 Jun 2013 05:42:08 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Tue, 25 Jun 2013 05:42:07 -0700
Message-ID: <51C99019.1080506@windriver.com>
Date: Tue, 25 Jun 2013 08:42:01 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5182B@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5182B@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Layer input
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
X-List-Received-Date: Tue, 25 Jun 2013 12:42:12 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-25 08:35 AM, Rifenbark, Scott M wrote:
> Hi,
>
> This next illustration attempting to dive deeper in the YP Development Process takes the remaining left-side input from that figure in the Quick Start (metadata, Machine, and Policy).  Note that when the original figure was created that appears in the QS, the layer stuff had not yet been established.  This figure I am attaching is rough.  I am unsure as to the contents of these layers.  Right now it is detailed but with generic names.  The idea is that individual layers are preferred to do things such as provide software, configure policy, and configure machines.  I am including some notes at the bottom of the figure that would not be part of the figure but might help to get across what I am trying to accomplish here.
>
> Any suggestions and feedback is really appreciated.

I realize you are documenting the Yocto reference builds, so the
explicit reference to linux-yocto*.bbappend makes sense (and I obviously
like it), but a quick tweak might be to just use <name>.bbappend or
<name>.bb (since not all BSP layers must bbappend a kernel, they may
have something very custom) for the kernel recipe reference.

You've already used that notation in the distro layer for the kernel-
headers, so it logically flows.

Cheers,

Bruce

>
> Thanks,
> Scott
>
> Scott Rifenbark
> Intel Corporation
> Yocto Project Documentation
> 503.712.2702
> 503.341.0418 (cell)
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


