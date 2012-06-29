Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5137DE00723
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 06:47:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5TDlLId023132
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 29 Jun 2012 06:47:21 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 29 Jun 2012 06:47:20 -0700
Message-ID: <4FEDB1DA.1040504@windriver.com>
Date: Fri, 29 Jun 2012 09:47:06 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Markus Hubig <mhubig@imko.de>
References: <CAGws1TuNe+=5YzBOMJv30KgY7o+N9_1kqryRPKpB+27Un0=CZQ@mail.gmail.com>
	<4FE9B6EE.4010901@windriver.com>
	<CAGws1TsrdgjaOfi80PXNadBDmYuzV75P7gdGJJQ3tUVokWiRpA@mail.gmail.com>
	<4FE9C097.60400@windriver.com>
	<CAGws1TtBH8wvXAL9KDaA1EAE_hb-Lxv32EkpgPyem1fyP5U2ZA@mail.gmail.com>
	<4FE9D6CB.1080800@windriver.com>
	<CAGws1Tt-UuLbVt0gqwV_v9H0oxWhe26tEG73y5w6TY1WE8VRgg@mail.gmail.com>
In-Reply-To: <CAGws1Tt-UuLbVt0gqwV_v9H0oxWhe26tEG73y5w6TY1WE8VRgg@mail.gmail.com>
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: BSP for taskit stamp9g20
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
X-List-Received-Date: Fri, 29 Jun 2012 13:47:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-06-29 09:34 AM, Markus Hubig wrote:
> Hello @all,
>
> now I have a working BSP-Layer, but for now its only a plain copy
> (created with yocto-bsp)
> of arm-versatile-926ejs. And the only thing it does so far, is
> creating a .config-Kernel
> configuration file (which is fine by now). To adapt this to my needs
> it seems I have to edit the
> stamp9g20.cfg and the stamp9g20-non_hardware.cfg files. Am I right?
>
> Since I can create a valid kernel configuration by simply:
>
> $ make ARCH=arm stamp9g20_defconfig
>
> I'm using this file as a reverence, but now I'm having a hard time
> figuring out what part of
> this config file I have to put inside my BSP cfg files and what to use
> from the kernel
> meta/cfg/kernel-cache/features stuff via a include statement ...
>
> I try to make an example:
>
> In my reference config file I have this
>
> CONFIG_HIGH_RES_TIMERS=y
>
> This can be found here "meta/cfg/kernel-cache/features/hrt/hrt.cfg" as
> a kernel feature.
> So I have to add the statement "include features/hrt/hrt.scc" into
> "stamp9g20.scc", right?
>
> But wait a minute ...
> $ grep -r hrt.scc linux-yocto-3.2-work/meta/cfg/kernel-cache/
>     linux-yocto-3.2-work/meta/cfg/kernel-cache/ktypes/standard/standard-nocfg.scc:include
> features/hrt/hrt.scc
>
> So its already included from "ktypes/standard" ... ;-(
>
> To get a better overview (and because I'm a famous magician) I made up
> a little spell:
>
> # Look for all kernel config parameters if they are defined somewhere inside
> # linux-yocto-3.2/meta/cfg/kernel-cache/(arch|cfg|features|ktypes/base|ktypes/standard)
> # if found print the matching file, if not print NOT FOUND.
> for i in $(grep -v '^#' ~/Development/linux-yocto-3.2-work/.config
> |grep -v '^$' | awk -F"=" '{print $1}'); do
>      grep -H $i $(find arch/ cfg/ features/ ktypes/base
> ktypes/standard/ -name *.cfg) || echo NOT FOUND: $i;
> done | sort | uniq>  ~/Development/features_all.txt
>
> # Split the features_all.txt file into found and not found
> grep -v '^NOT FOUND' features_all.txt>  features_found.txt
> grep '^NOT FOUND' features_all.txt>  features_not_found.txt
>
> # finally get a list of all scc files I need to include.
> cat features_found.txt |awk -F':' '{print $1}' |sed \
>      "s/.*\/\(.*\)\.cfg$/\1.scc/" |uniq>  modules_to_include.txt
>
> (I put all the mentioned files here: https://gist.github.com/3017292)
>
> I guess the config variables inside features_not_found.txt are the one
> I need to include into
> the stamp9g20.cfg, stamp9g20-non_hardware.cfg files? (Ok except the
> ones that get enabled

I wouldn't say that, was your input .config a minimal defconfig ?
You really don't need to list option in your BSPs configuration that
are not already defined, are not hardware and are the default
selection of the kernel already.

There are also the on-target scripts and techniques for streamling
your configuration that can result in a smaller input .config that you'd
feed to any process for streamlining a board's configuration.

> by some kernel dependency stuff ... but how to figure out this?)
>
> Is there a better way to go? Maybe one where you don't have to have
> magical powers? ;-)

There are few things that can help here:

   - I've just revived a script that takes a defconfig that has been
     fed to the kernel auditing subsystem and breaks it apart into the
     options that you really do or don't need in your BSP config

   - A lot of work on kernel configuration updating and policy has
     happened in the 3.4 kernel, and will be part of yocto 1.3. As part
     of that, the policy options (what you inherit), will be clear, or
     discoverable by script, as will optional and hardware configuration
     items.

   - there is a kernel-features.rc file that is part of the meta branch
     that will be further exposed. It lists all of the configuration
     fragments, with a description and whether or not they can be
     optionally included.

The end goal is that a developer / BSP that wants a quick bootstrap on
top of the existing configuration can just focus on the options that
make their board work and initially not be concerned with those software/
policy option .. until you get into a tuning phase on a BSP. Having
visibility and some scripts around this is part of the implementation
of that goal.

Cheers,

Bruce

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


