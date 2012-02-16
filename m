Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94807E003E2
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 14:11:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q1GMBR4f004700
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 16 Feb 2012 14:11:27 -0800 (PST)
Received: from [147.11.116.187] (147.11.116.187) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 16 Feb 2012 14:11:27 -0800
Message-ID: <4F3D7F0D.3050904@windriver.com>
Date: Thu, 16 Feb 2012 17:11:25 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.26) Gecko/20120131 Thunderbird/3.1.18
MIME-Version: 1.0
To: Hollis Blanchard <hollis_blanchard@mentor.com>
References: <4F3D6431.70505@mentor.com>
In-Reply-To: <4F3D6431.70505@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: trouble using a local kernel repo
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
X-List-Received-Date: Thu, 16 Feb 2012 22:11:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-16 03:16 PM, Hollis Blanchard wrote:
> I'm trying to figure out how to use a cloned/modified copy of the
> linux-yocto-3.0 git repository. Here's what I did:
>
> * cloned linux-yocto-3.0.git and committed to the meta branch
> * specified my new repo:

Very strange. Is this from the yocto master branch ?

>
> --- a/meta/recipes-kernel/linux/linux-yocto_3.0.bb
> +++ b/meta/recipes-kernel/linux/linux-yocto_3.0.bb
> @@ -18,12 +18,12 @@ SRCREV_machine_qemuppc ?=
> "15fd748017f0849138ff4b47d73f6866fa26cfe8"
> SRCREV_machine_qemux86 ?= "8f74a4339b3dc029fafff0ba7d88d6dc950d4b31"
> SRCREV_machine_qemux86-64 ?= "610c5a62daeda033755b0b7bfcb3e2cad5c76f3f"
> SRCREV_machine ?= "5df0b4c2538399aed543133b3855f809adf08ab8"
> -SRCREV_meta ?= "b78a519841bd8b477cad599af8d38df6760445c1"
> +SRCREV_meta ?= "7af8d6f8769335b79c1b76c8bded256b8f909c74"
>
> PR = "r3"
> PV = "${LINUX_VERSION}+git${SRCPV}"
>
> -SRC_URI =
> "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta
>
> +SRC_URI =
> "git:///mnt/linux-yocto-3.0.git;protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machi
>
>
> COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64)"
>
> * bitbake -c clean virtual/kernel&& bitbake virtual/kernel
>
>
> What I get is this:
> ERROR: Function failed: do_validate_branches (see
> /mnt/poky.git/build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-3.0.18+git2+7af8d6f8769335b79c1b76c8bded256b8f909c74_1+368e38c673ffac8b37fc2a2d4c1e4a1e6f8abf19-r3/temp/log.do_validate_branches.5342
> for further information)
>
> There is no more information in that file. It contains only the exact
> message I already got on the console ("ERROR: Function failed ...").

validate branches will always dump out an error message if it finds
a mismatch in the SRCREV and branch(s).

I've seen this myself in the past. It triggers when the kernel tree that
is being used is for some reason missing the branches in question and
the default bitbake behaviour that if any command returns non zero, the
entire function fails.

I have two commits that attempt to detect this, and do a proper warning,
I just haven't sent them out yet due to travel.

That being said. If you go into your src tree. Do you see the meta and
board branch ? Are they local branches ? Is your SRC_URI pointing at a
bare clone, and not a non-bare one ?

Cheers,

Bruce

>
> What am I missing?
> http://www.yoctoproject.org/docs/current/kernel-manual/kernel-manual.html was
> not helpful.
>
> Thanks!
>


