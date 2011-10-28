Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 888D4E006F9
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2011 21:52:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p9S4pwk5026342
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 27 Oct 2011 21:51:58 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.18.120) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 27 Oct 2011 21:51:57 -0700
Message-ID: <4EAA34EB.5060205@windriver.com>
Date: Fri, 28 Oct 2011 00:51:55 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.23) Gecko/20110920 Thunderbird/3.1.15
MIME-Version: 1.0
To: Brian Park <bsp2020@gmail.com>
References: <CAFNE1kTTFYhhqK_nopj4MG7VNzWKriZTbGJYAZt-shTinw_ROA@mail.gmail.com>
In-Reply-To: <CAFNE1kTTFYhhqK_nopj4MG7VNzWKriZTbGJYAZt-shTinw_ROA@mail.gmail.com>
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
X-List-Received-Date: Fri, 28 Oct 2011 04:52:01 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-10-27 8:45 PM, Brian Park wrote:
> Hi,
> I'm interested in using Yocto to build linux for PandaBoard. It seems
> there are already patches some where that I can use to build for panda,
> as I found some discussions mentioning PandaBoard patch in the archive.
> But I could not apply it. I'd appreciate some pointers on how to find
> and apply the right patch.
>
> Just trying to apply
> http://article.gmane.org/gmane.linux.embedded.yocto.general/2037/match=pandaboard
> as a patch using "git am" command gave the following error. I'm using
> release 1.1 Edison.
>
> briansp@LinuxMint11 ~/poky $ git am < ~/Documents/pandaboard.patch
> previous rebase directory /home/briansp/poky/.git/rebase-apply still
> exists but mbox given.
>
> I'm new to developing for linux and yocto. So, any help would be
> appreciated.

Those same patches are merged into the 2.6.37 kernel tree here:

http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37/log/?h=yocto/standard/pandaboard

So if you do want to use the linux-yocto kernel, you could set
your preferred kernel version to 2.6.37 and you'd get that
kernel and branch for the board.

But like anything, nothing is completely simple, the support in
the 2.6.37 tree was contributed in an effort to add some more board
support to a yocto tested/standardized kernel. There are multiple
sources for pandaboard support, with different functionality (i.e. 
deeper, different kernel version, etc), different integration and
different goals. i.e. angstrom and meta-texasinstruments.

To use the 2.6.37 support you'd need a configuration of the machine and
a meta layer defining the userspace. There was a prototype one that
floated around, but it was being re-worked to use layer tooling and not
duplicate effort that is in other layers already.

If you like, I can locate that layer and send it along, or you can
try out the other references I mentioned (others may have better /
more detailed information).

Cheers,

Bruce

>
> Thank you
>
> Brian
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


