Return-Path: <felix@fiskare.de>
Received: from uranus.manitu.net (uranus.manitu.net [217.11.48.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8034E0148E
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 09:13:08 -0700 (PDT)
Received: by uranus.manitu.net (Postfix, from userid 81)
	id C9E04814001; Tue,  7 May 2013 18:13:06 +0200 (CEST)
To: <yocto@yoctoproject.org>
Received: from 91-66-87-58-dynip.superkabel.de ([91.66.87.58])
	by webmail.manitu.de
	with HTTP (HTTP/1.1 POST); Tue, 07 May 2013 18:13:06 +0200
MIME-Version: 1.0
Date: Tue, 07 May 2013 18:13:06 +0200
From: Felix Fischer <felix@fiskare.de>
Message-ID: <23c0c78e3de800ff998f3cc987ca51a1@fiskare.de>
X-Sender: felix@fiskare.de
User-Agent: RoundCube Webmail/0.2-beta
Subject: Re: Antwort: Re: booting with systemd fails with poky 9.0.0 & meta-ivi 4.0 & meta-intel master
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
X-List-Received-Date: Tue, 07 May 2013 16:13:09 -0000
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: 7bit

On Tue, 07 May 2013 09:06:36 +0200, felix <felix@fiskare.de> wrote:
> Hello,
> 
>> What branch of meta-ivi are you using?
> 
> I tried the 3.0 (and poky 1.3), 4.0 branch (and poky 1.4) and 4.0 branch
> (with "git checkout e33e0a0da6fd6f59e5e8244da9f23b590cf066e1" as stated
in
> the genivi wiki), but no success.
> 
>> As you have successfully build and tried qemux86 machine IVI images,
>> did you try to create a pristine (non-IVI) Poky image that uses
>> systemd as init system already? Did that work for a crownbay machine?
> 
> I built a core-image-sato image using MACHINE ?= "crownbay" and DISTRO
?=
> "poky-ivi-systemd", but I had no luck.
> Right now I'm btrying that again with DISTRO ?="poky"


The build is done. It won't boot either.
The Error Message is the same except that
the init and cat lines are gone.

The last two lines I get are

systemd-udev[48]: starting version 199
Waiting for removable media...






> 
> 
> Regards,
> Felix
> 
> 
> 
> 
> 
> 
> 
> What branch of meta-ivi are you using?
> 
> -----Original Message-----
> From: Andrei Gherzan [andrei at gherzan.ro<mailto:andrei at gherzan.ro>]
> Sent: Thursday, May 02, 2013 04:27 AM Pacific Standard Time
> To: Felix01 Fischer
> Cc: yocto at yoctoproject.org; Sarbu, Florin-Ionut (Florin); Behrens,
> Holger
> Subject: Re: [yocto] Antwort: Re: booting with systemd fails with poky
> 9.0.0 & meta-ivi 4.0 & meta-intel master
> 
> 
> On Thu, May 2, 2013 at 10:08 AM, Felix01 Fischer <felix01.fischer at
> iav.de<mailto:felix01.fischer at iav.de>> wrote:
> Hello,
> 
> I've attached a file with the changes I made to local.conf,
bblayers.conf
> & some output from bitbake. I can build working images for qemux86, too
> 
> The build process itself triggers no errors.
> 
> As im building with MACHINE ??= "crownbay" I was able to locate
>
tmp-eglibc-eglibc/work/crownbay-oe-linux/foton-image/4.0.0-r0/rootfs/bin/mount
> which is a symlink to /bin/mount.util-linux. This file exists, too.
> 
> This is the output when trying to boot, beginning with the /init error
> 
> "/init: line 98: mount: not found
> /init: line 98: mount: not found
> /init: line 98: mount: not found
> systemd-udev[44]: starting version 199
> cat: can't open '/proc/cmdline': No such file or directory
> Waiting for removable media..."
> 
> 
> 
> So you are using crownbay. Most probably you miss some systemd configs
in
> kernel. That would be my guess.
> Adding Florin Sarbu and Holger Behrens to CC (meta-ivi maintainer).
> 
> Cheers!
> 
> --
> Andrei Gherzan
> m: +40.744.478.414 |  f: +40.31.816.28.12
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


