Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 970F44C80120
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2011 21:42:50 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p712gme0014695
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 31 Jul 2011 19:42:48 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.141) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sun, 31 Jul 2011 19:42:47 -0700
Message-ID: <4E3612A6.7040602@windriver.com>
Date: Sun, 31 Jul 2011 22:42:46 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: Francis Meyvis <francis.meyvis@gmail.com>
References: <CAHts6WS5OvR47W+o--ZpNJU-C8rVa_5GJh+YczRjaYkfN7pJjQ@mail.gmail.com>
In-Reply-To: <CAHts6WS5OvR47W+o--ZpNJU-C8rVa_5GJh+YczRjaYkfN7pJjQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: kernel panic - not syncing: No init found
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
X-List-Received-Date: Mon, 01 Aug 2011 02:42:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-07-31 3:44 PM, Francis Meyvis wrote:
> Hello,
>
> I probably miss something trivial.
> I cloned the git://git.yoctoproject.org/poky.git
> I build on a 64 bit machine a qemux86-64
> (. ./oe-init-build-env qemux86-64 and changing the conf/local.conf)
> I build the core-image-sato&  core-image-minimal.
> Then I try to run with
> runqemu qemux86-64 core-image-sato ext3
>
> But both sato and minimal give me this message:
> Kernel panic - not syncing: No init found.
>
> As runqemu showed me the full command line I tried to add the --append
> command line option
> init=/sbin/init and /sbin/init.sysvinit
> But that did not help (there's a message saying Failed to execute
> /sbin/init. Attempting defaults...)
> I verified by mounting these ext3 images on a loop device that there's
> really a /sbin/init present.
>
> Can somebody tell what I'm doing wrong?

Can you send a full bootlog, or paste it somewhere accessible ? It's hard
to say what's with the information you've given.

Is this the latest yocto master ?

If you are seeing that message it typically means that the the
device that is being used as the root isn't ready (fixed by
rootwait/rootdelay) or isn't supported (i.e. NFS root without
the right ethernet device). Changing what init is, won't change
the result if either one of those is the case.

Cheers,

Bruce

>
> BTW is there any way to not have to run qemu with root permissions?
> I ran the android emulator and it does not require me to be root.
> Should I configure something on my Ubuntu machine to get qemu to function?
>
> Thanks,
> francis
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


