Return-Path: <mhubig@imko.de>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61969E0070B
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 06:34:27 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so2400947wgb.11
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 06:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=G21S5ZCUejyxem+1l/WdRskMrK+L7n8TDchsQILiQi8=;
	b=PmXnZm0SA+F41Qe3vLlJqdjjT1h80aQ8VN6EJ2d/0y47yEnOcK4tZfVwqVMYxDMUGz
	sw0+SnioKG82y4DRNfUHwHoi091nY61VfFrKKtIzKUscNbGK7f41NmvTR+1bV8mQphpd
	lO2K1HRUnJfO/PTDaMKbk9gQfO5Q2a3r33LVY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=G21S5ZCUejyxem+1l/WdRskMrK+L7n8TDchsQILiQi8=;
	b=HqDkI7YexoUIFsOTDwaZi7DwJrLW5mkyDeJ+FGlkFHULJZQufayPDVV7XcCgVwK3pY
	RWEt1CKW2wW0JaaQk6krswjnJcCz2aYD1j/YkfQIRdMHKVCTRkLqJ4d9EbSpF4Ony39I
	N3PJTsCeaJSOHcnyz7qrjKeAjchV7oqOrs6Yo3vZ7geNj6vID1c//TBZx+l+6AKCzS7K
	iX3pDAQYn7/Ha/HI3RdfObiyM6onveXF+Op1YSmqH1ji39Hgsd/15rGt9ziISzXOP87v
	nS8YFeSscutI34pEvidjKFqwFg/cksG/7SKbLIYXoWyS3VDjDVZxWStJB0Tkl4jIT5T4
	+zDg==
MIME-Version: 1.0
Received: by 10.180.100.37 with SMTP id ev5mr4977341wib.5.1340976866203; Fri,
	29 Jun 2012 06:34:26 -0700 (PDT)
Received: by 10.180.94.194 with HTTP; Fri, 29 Jun 2012 06:34:26 -0700 (PDT)
In-Reply-To: <4FE9D6CB.1080800@windriver.com>
References: <CAGws1TuNe+=5YzBOMJv30KgY7o+N9_1kqryRPKpB+27Un0=CZQ@mail.gmail.com>
	<4FE9B6EE.4010901@windriver.com>
	<CAGws1TsrdgjaOfi80PXNadBDmYuzV75P7gdGJJQ3tUVokWiRpA@mail.gmail.com>
	<4FE9C097.60400@windriver.com>
	<CAGws1TtBH8wvXAL9KDaA1EAE_hb-Lxv32EkpgPyem1fyP5U2ZA@mail.gmail.com>
	<4FE9D6CB.1080800@windriver.com>
Date: Fri, 29 Jun 2012 15:34:26 +0200
Message-ID: <CAGws1Tt-UuLbVt0gqwV_v9H0oxWhe26tEG73y5w6TY1WE8VRgg@mail.gmail.com>
From: Markus Hubig <mhubig@imko.de>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQk7Mc/4AWbZJgo2EPXsSf6MdIxX3zqUsnMG8aOXOw6ItH2uiYNvTS8b7sTMDBojECAmemiB
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
X-List-Received-Date: Fri, 29 Jun 2012 13:34:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello @all,

now I have a working BSP-Layer, but for now its only a plain copy
(created with yocto-bsp)
of arm-versatile-926ejs. And the only thing it does so far, is
creating a .config-Kernel
configuration file (which is fine by now). To adapt this to my needs
it seems I have to edit the
stamp9g20.cfg and the stamp9g20-non_hardware.cfg files. Am I right?

Since I can create a valid kernel configuration by simply:

$ make ARCH=arm stamp9g20_defconfig

I'm using this file as a reverence, but now I'm having a hard time
figuring out what part of
this config file I have to put inside my BSP cfg files and what to use
from the kernel
meta/cfg/kernel-cache/features stuff via a include statement ...

I try to make an example:

In my reference config file I have this

CONFIG_HIGH_RES_TIMERS=y

This can be found here "meta/cfg/kernel-cache/features/hrt/hrt.cfg" as
a kernel feature.
So I have to add the statement "include features/hrt/hrt.scc" into
"stamp9g20.scc", right?

But wait a minute ...
$ grep -r hrt.scc linux-yocto-3.2-work/meta/cfg/kernel-cache/
   linux-yocto-3.2-work/meta/cfg/kernel-cache/ktypes/standard/standard-nocfg.scc:include
features/hrt/hrt.scc

So its already included from "ktypes/standard" ... ;-(

To get a better overview (and because I'm a famous magician) I made up
a little spell:

# Look for all kernel config parameters if they are defined somewhere inside
# linux-yocto-3.2/meta/cfg/kernel-cache/(arch|cfg|features|ktypes/base|ktypes/standard)
# if found print the matching file, if not print NOT FOUND.
for i in $(grep -v '^#' ~/Development/linux-yocto-3.2-work/.config
|grep -v '^$' | awk -F"=" '{print $1}'); do
    grep -H $i $(find arch/ cfg/ features/ ktypes/base
ktypes/standard/ -name *.cfg) || echo NOT FOUND: $i;
done | sort | uniq > ~/Development/features_all.txt

# Split the features_all.txt file into found and not found
grep -v '^NOT FOUND' features_all.txt > features_found.txt
grep '^NOT FOUND' features_all.txt > features_not_found.txt

# finally get a list of all scc files I need to include.
cat features_found.txt |awk -F':' '{print $1}' |sed \
    "s/.*\/\(.*\)\.cfg$/\1.scc/" |uniq > modules_to_include.txt

(I put all the mentioned files here: https://gist.github.com/3017292)

I guess the config variables inside features_not_found.txt are the one
I need to include into
the stamp9g20.cfg, stamp9g20-non_hardware.cfg files? (Ok except the
ones that get enabled
by some kernel dependency stuff ... but how to figure out this?)

Is there a better way to go? Maybe one where you don't have to have
magical powers? ;-)

