Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB525E0054C
	for <yocto@yoctoproject.org>; Sat, 29 Oct 2011 09:47:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p9TGl7Ll020536
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 29 Oct 2011 09:47:07 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.16) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sat, 29 Oct 2011 09:47:07 -0700
Message-ID: <4EAC2E09.8080204@windriver.com>
Date: Sat, 29 Oct 2011 12:47:05 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.23) Gecko/20110920 Thunderbird/3.1.15
MIME-Version: 1.0
To: Brian Park <bsp2020@gmail.com>
References: <CAFNE1kTTFYhhqK_nopj4MG7VNzWKriZTbGJYAZt-shTinw_ROA@mail.gmail.com>	<4EAA34EB.5060205@windriver.com>
	<CAFNE1kT5F9DXDBVsYwduvCRJ8GxOxc8u9h_FVjuTpO9+4y8VKg@mail.gmail.com>
In-Reply-To: <CAFNE1kT5F9DXDBVsYwduvCRJ8GxOxc8u9h_FVjuTpO9+4y8VKg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Building for pandaboard
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
X-List-Received-Date: Sat, 29 Oct 2011 16:47:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-10-28 1:06 PM, Brian Park wrote:
> Thanks for the info.
> As I'm very new to Yocto, I'd not know how to create local.conf to build
> for panda, even knowing that the kernel will support pandaboard. How
> would I go about configuring Yocto to build for panda? If you can point
> me to some documentation showing how to do it, I'd appreciate it.
>
> I'm just learning yocto, in my spare time, and just went through the
> quick start guide to build for x86qemu image and skimmed through the
> development manual. But I'm not too sure how to go about configuring for
> pandaboard. I figured, I can build for beagle board and then modify
> config to make it work for panda. However, I'm having build issue when
> trying to build for beagle board.

That would likely work for userspace (minus the build error you
mentioned) with the appropriate config changes. But for the kernel,
there is a different set of patches for board support, so you do
need to pick the right layer and preferred kernel.

>
> If there is already an existing pandaboard config, I'd like to try it.

There is one floating around, I'll locate the latest tgz and you
can try it out in the yocto context (I say yocto, since as I've
mentioned there are other oe based configs and layers that can be
used for panda support as well).

Cheers,

Bruce

>
> Thank you.
>
> Brian
>
> On Thu, Oct 27, 2011 at 9:51 PM, Bruce Ashfield
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
>
>     On 11-10-27 8:45 PM, Brian Park wrote:
>
>         Hi,
>         I'm interested in using Yocto to build linux for PandaBoard. It
>         seems
>         there are already patches some where that I can use to build for
>         panda,
>         as I found some discussions mentioning PandaBoard patch in the
>         archive.
>         But I could not apply it. I'd appreciate some pointers on how to
>         find
>         and apply the right patch.
>
>         Just trying to apply
>         http://article.gmane.org/__gmane.linux.embedded.yocto.__general/2037/match=pandaboard
>         <http://article.gmane.org/gmane.linux.embedded.yocto.general/2037/match=pandaboard>
>         as a patch using "git am" command gave the following error. I'm
>         using
>         release 1.1 Edison.
>
>         briansp@LinuxMint11 ~/poky $ git am < ~/Documents/pandaboard.patch
>         previous rebase directory /home/briansp/poky/.git/__rebase-apply
>         still
>         exists but mbox given.
>
>         I'm new to developing for linux and yocto. So, any help would be
>         appreciated.
>
>
>     Those same patches are merged into the 2.6.37 kernel tree here:
>
>     http://git.yoctoproject.org/__cgit/cgit.cgi/linux-yocto-2.6.__37/log/?h=yocto/standard/__pandaboard
>     <http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37/log/?h=yocto/standard/pandaboard>
>
>     So if you do want to use the linux-yocto kernel, you could set
>     your preferred kernel version to 2.6.37 and you'd get that
>     kernel and branch for the board.
>
>     But like anything, nothing is completely simple, the support in
>     the 2.6.37 tree was contributed in an effort to add some more board
>     support to a yocto tested/standardized kernel. There are multiple
>     sources for pandaboard support, with different functionality (i.e.
>     deeper, different kernel version, etc), different integration and
>     different goals. i.e. angstrom and meta-texasinstruments.
>
>     To use the 2.6.37 support you'd need a configuration of the machine and
>     a meta layer defining the userspace. There was a prototype one that
>     floated around, but it was being re-worked to use layer tooling and not
>     duplicate effort that is in other layers already.
>
>     If you like, I can locate that layer and send it along, or you can
>     try out the other references I mentioned (others may have better /
>     more detailed information).
>
>     Cheers,
>
>     Bruce
>
>
>         Thank you
>
>         Brian
>
>
>
>         _________________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         https://lists.yoctoproject.__org/listinfo/yocto
>         <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>


