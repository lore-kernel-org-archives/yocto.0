Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F5A6E0071F
	for <yocto@yoctoproject.org>; Sat, 13 Jul 2013 07:52:10 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r6DEq5W2003139
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 13 Jul 2013 07:52:05 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.129) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Sat, 13 Jul 2013 07:52:05 -0700
Message-ID: <51E16994.5040809@windriver.com>
Date: Sat, 13 Jul 2013 10:52:04 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130620 Thunderbird/17.0.7
MIME-Version: 1.0
To: Paul Barker <paul@paulbarker.me.uk>
References: <CANyK_8f=m4k8AD63z8YT8ebi0Ayz_nJdH5codGWHVkDpW1iw=Q@mail.gmail.com>
In-Reply-To: <CANyK_8f=m4k8AD63z8YT8ebi0Ayz_nJdH5codGWHVkDpW1iw=Q@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-yocto-bsp] [dylan] linux-yocto_3.2 version mismatch
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
X-List-Received-Date: Sat, 13 Jul 2013 14:52:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-07-13 10:27 AM, Paul Barker wrote:
> I'm building from the dylan branch with:
>
> DISTRO = "poky"
> MACHINE = "beagleboard"
> PREFERRED_VERSION_linux-yocto = "3.2%"
>
> BBLAYERS = " \
>    .../poky/meta \
>    .../poky/meta-yocto \
>    .../poky/meta-yocto-bsp \
>    .../meta-openembedded/meta-oe \
>    .../meta-udaq \
>    "
>
> (meta-udaq is my private layer for this device)
>
> I'm getting a file in tmp/deploy/images named
> "uImage--3.2.32+git0+e7f2fdc48f8808887175f0328274a2668084738c_40bde7a43ef3cd85729ab02464a7ecdf71e522a6-r4.1.4-beagleboard-20130712125255.bin":
> note the 3.2.32 version.
>
> When running on the Beagleboard, uname -a reports version 3.2.18.
>
> The commit hash 40bde7a43ef3cd85729ab02464a7ecdf71e522a6 is set in
> .../poky/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.2.bbappend
> and checking the git log for linux-yocto-3.2, this does refer to
> version .18.
>
> So my guess is we should do one of the following:
> a) Modify PV (or LINUX_VERSION) in the bbappend to reflect the correct version?
> b) Bump the git commit hash used for beagleboard to 3.2.32?

(b) is the right solution. Bump the hash to match the PV. The qemu* BSPs
in the branch would likely show .32 and that's the tested version, but
clearly the bb needs an update as well.

Bruce

>
> I know 3.2 is old, but the APIs I'm using for my kernel driver were
> ditched in the 3.3 kernel release and 3.2 has a predicted upstream EOL
> of 2016.
>
> Thanks,
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


