Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6551BE0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 08:17:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5RFHLIV015794
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 Jun 2012 08:17:21 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 27 Jun 2012 08:17:21 -0700
Message-ID: <4FEB23F3.6070408@windriver.com>
Date: Wed, 27 Jun 2012 11:17:07 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Dennis.Yxun" <dennis.yxun@gmail.com>
References: <CAF1ZMEcMxTQUhyHdmMWV_PA6TY=RTz9rq-EahKU0p=DFFPw+Ew@mail.gmail.com>
In-Reply-To: <CAF1ZMEcMxTQUhyHdmMWV_PA6TY=RTz9rq-EahKU0p=DFFPw+Ew@mail.gmail.com>
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: bring mipsel support (little endian mode)
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
X-List-Received-Date: Wed, 27 Jun 2012 15:17:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-06-27 02:25 AM, Dennis.Yxun wrote:
> HI ALL:
>     Sorry for crossing post, but I'm quite new here, so if I did
> something wrong, please point me the right direction. thanks
>     I'm using oe-core, and notice that mipsel support(o32, little
> endian mode) is missing (current available choose is: qemumips,
> qemumips64, qemumips64el).
>     So, here I'm trying to bring up qemumipsel support . My first
> attempt would just make qemumipsel work,
> further would make it running on real board, thus maybe mips4kec,
> mips24k, mips74k chips.
>     What I achieved here current:
>    1) toolchain/basic libs, utilities should works ,only one changes,
> see my patch [a]
>     for mipsel we also have to filter out -march=mips32, previously we
> only handle mips (the big endian?)
>     don't have the error message now, but if you request, I can provide.
>    2) attempt to  compile kernel to support qemumipsel, unfortunately it fail.
> The point here is linux-yocto doesn't support qemumipsel, but merely
> support those other three mips arches,
> So here is my attempt patch [b], and the fail log [c], complied out
> binary still big endian.

Since it was easy enough to do, and doesn't imply any sort of full
support (since I can't declare that), I did the tweak to the mips
board descriptions and qemumipsel works without any machine mapping
in the linux-yocto recipes.

I pushed the change to the linux-yocto-3.4 meta branch, and staged a
commit for it locally.

You can see that commit here:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=zedd/mipsel

  .. stacked on top of my other pending 3.4 commits.

Note: I didn't update machine compatibility in that commit on purpose,
and I wasn't able to complete a full core-image-minimal build due to
QA issues. I'm probably just not building with a complete machine.conf ..
since I grabbed one quickly this morning to check the kernel parts.

Cheers,

Bruce

>
>     Could my patch [a] be accepted? or should I send with another mail
> for better review?
>     Is it better to request a ticket in yocto's bugzilla? or just
> report here, I'm not quite sure.
>
> Dennis
>
> [a] 0001-eglibc-support-mipsel-little-endian-filter-out-march.patch
> [b] 0002-qemu-attempt-to-add-mipsel-little-endian-support-but.patch
> [c] build_log.txt
> [d] log.do_package


