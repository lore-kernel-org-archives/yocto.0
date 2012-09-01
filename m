Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 638F3E002A5
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 18:59:22 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so3043184qcs.35
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 18:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=vgGUnUUoFaU/kjRcTkQosj9xK5cEDN7wRb5S5exlRZI=;
	b=hgl8/ANnr61jcYnTrkqf+f1DPEG30vbUjCnU+Fkrdmza6NgYpulafsrrGClKP3s5lz
	zuT6UKwrnCOIOWgEg7dGhkqmBjcAspV4h+qaRq4ebpoFe8Ha6oKbfYHiXpo7m359p9F/
	0Jh2UsY7+Su66k55hl1qUh8NmumYWuodTg+YFZmuIm1MNuSCqrOPV7wHjyFyByQJZHcf
	fIMoqIrfOjZ2JbvYX5hfS0W/reAKZdowzNHN84vNFDIo+uZ+tFWH5SqbkP88Ey5OjnUv
	MXJ7ERbWp/16DdSiLlalzvrmDwituR7s+0pKGwfY6nJ6CtGjTPemEAy8N5HMQIiVDUO6
	vY5A==
MIME-Version: 1.0
Received: by 10.229.105.100 with SMTP id s36mr6067876qco.88.1346464759613;
	Fri, 31 Aug 2012 18:59:19 -0700 (PDT)
Received: by 10.229.247.198 with HTTP; Fri, 31 Aug 2012 18:59:19 -0700 (PDT)
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C49003322769@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49003322769@ORSMSX103.amr.corp.intel.com>
Date: Fri, 31 Aug 2012 21:59:19 -0400
Message-ID: <CADkTA4PjWtbOrxa1Vc6RymjzJRuFBaXKKpj=2q5Y-NW4z11-pQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: Error when applying kernel patch from BSP: "Uncommited changes detected. Refresh first" error
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
X-List-Received-Date: Sat, 01 Sep 2012 01:59:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Aug 31, 2012 at 7:26 PM, Saxena, Rahul <rahul.saxena@intel.com> wrote:
>
>
> Hi,
>
>
>
> I am trying to apply a kernel patch from the BSP, but getting a error.
>
>
>
> DEBUG: Executing shell function do_patch
>
> Unstaged changes after reset:
>
> M     .gitignore
>
> Deleted branch meta-temp (was 580ac9c).
>
> warning: could not find (or was already included): cfg/x86_64.scc
> (/home/rsaxena/YoctoWork2/rangeley3/tmp/work/rangeley-poky-linux/linux-yocto-3.4.4+git3+dab07bdc3a53b21220da3af91c5d2729b027b5a7_2+19f7e43b54aef08d58135ed2a897d77b624b320a-r3/linux/meta/cfg/kernel-cache/bsp/common-pc-64)
>
> [INFO] validating against known patches  (rangeley-standard-meta)
>
>   [                                                  ] (|)(1 %)
>
>   [#                                                 ] (/)(2 %)
>
>   [#                                                 ] (-)(3 %)
>
>   [##                                                ] (\)(4 %)
>
>   [##                                                ] (|)(5 %)
>
>   [###                                               ] (/)(6 %)
>
>
>
> --
>
> [############################################      ] (/)(89 %)
>
>   [#############################################     ] (-)(90 %)
>
> Uncommited changes detected. Refresh first.
>
> [ERROR] unable to complete push
>
> pending patches are:
>
> links/linux-yocto/msi.patch
>
> ERROR. could not update git tree
>
> ERROR. Could not modify standard/common-pc-64/rangeley
>
> ERROR: Function failed: do_patch (see
> /home/rsaxena/YoctoWork2/rangeley3/tmp/work/rangeley-poky-linux/linux-yocto-3.4.4+git3+dab07bdc3a53b21220da3af91c5d2729b027b5a7_2+19f7e43b54aef08d58135ed2a897d77b624b320a-r3/temp/log.do_patch.39386
> for further information)
>
>
>
> My linux-yocto_3.4.bbappend file has the statements:
>
> SRC_URI +="file://patchlist.scc"
>
> SRC_URI +="file://my_rangeley.cfg"
>
> COMPATIBLE_MACHINE_rangeley = "rangeley"
>
>
>
> KMACHINE_rangeley  = "rangeley"
>
> KBRANCH_rangeley  = "standard/common-pc-64/rangeley"
>
> SRCREV_machine_pn-linux-yocto_rangeley ?=
> "19f7e43b54aef08d58135ed2a897d77b624b320a"
>
> SRCREV_meta_pn-linux-yocto_rangeley ?=
> "dab07bdc3a53b21220da3af91c5d2729b027b5a7"
>
>
>
> cat  linux-yocto/patchlist.scc
>
>
>
> patch msi.patch
>
>
>
> I am using the master branch of poky.
>
>
>
> What is the meaning of the ERROR messages above ?

It means that the patch or some other work happened in the linux source
directory and hence nothing else can be applied (i.e. git stops you).

Head to your kernel source directory and do a 'git status', that'll give
you some info about what has happened.

Bruce

>
> Any suggestions would be greatly appreciated.
>
>
>
> Thanks
>
> Rahul
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

