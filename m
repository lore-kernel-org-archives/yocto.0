Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52CDAE01443
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 13:14:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7FKEFd6013156
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 15 Aug 2012 13:14:15 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Wed, 15 Aug 2012 13:14:14 -0700
Message-ID: <502C0312.2080905@windriver.com>
Date: Wed, 15 Aug 2012 16:14:10 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <073A7998-3D05-4835-AA03-113960D00553@keylevel.com>
In-Reply-To: <073A7998-3D05-4835-AA03-113960D00553@keylevel.com>
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: yocto-bsp create
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
X-List-Received-Date: Wed, 15 Aug 2012 20:14:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-15 04:06 PM, Chris Tapp wrote:
> I've been looking at using yocto-bsp to create a BSP. Good job! Looks like it's going to be much easier to do it this way :-)

You really want TomZ to answer, but I'll throw in a few comments
here, since I'm currently reviewing a batch of code from Tom.

>
> I've got a few questions/comments:
>
> 1) The documentation (7.0.1) says that the machine branch defaults to standard/default, but that is not an option that gets presented when I created a BSP. Should that be standard/base, standard/default/base, or something else? Master shows this as standard/default/common-pc, but that still isn't one of the listed options (standard/default/common-pc/base ?).

For the 3.2 tree, it is standard/default/base, which is a name that we
quickly determined was not optimal, and in the 3.4 kernel tree it is 
standard/base.
So the answer is, it depends on the kernel you are using, but the tools
know and have the right defaults.

>
> 2) What are these machine branches anyway? As in, how do I decide which one I should choose? For an ALIX 3D3 system I used standard/default/common-pc/base. Is that reasonable?

They are collections of functionality and configuration. So if you are
working on a new machine that is close to something that is already
in tree, you'd start from the existing machine branch. If you want to
do something new, standard/base, if you want the preempt-rt kernel,
standard/preempt-rt/base, etc.

>
> 3) I selected core2 as the tune option and then had to change this in the created meta-data as I needed i586 tuning and this was not given as a tune option. Should all available tunes be offered?
>
> 4) Is there any way to select the kernel CPU (I got MATOM but needed MGEODE_LX - easily changed in the<mybsp>.cfg file)?

AFAIK, no. Since that would imply that all the kernel tunings were parsed
and made available. Adding it to your .cfg is the right thing. If
there is a BSP that already falls into your class, and you inherit
it, you'd get the right tuning by default.

>
> 5) The created BSP refers to various feature/x/y.scc files. Are these documented somewhere so that they can be easily re-used, or am I better off simply producing a complete defconfig? A pointer to the documentation for the whole kernel meta data structure would also be helpful.

Tom and I were working on a way to dump these, I'm not sure if that
ever completed. The meta branch of the kernel repo has all the details,
with short descriptions in the .scc files.

As with anything, documenting a moving source code target is hard, so
I suggest looking at the branch.

Have a look at the 3.4 kernel tree, meta branch, there's a README with
details about the categories, and contents.

Cheers,

Bruce

>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


