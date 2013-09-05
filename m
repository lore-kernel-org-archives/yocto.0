Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4AD2E00747
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 08:42:35 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id db12so689026veb.28
	for <yocto@yoctoproject.org>; Thu, 05 Sep 2013 08:42:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=3Ec5Pq3f76w7xCYsvUBTP8Bwrq7GKvnd8dWVAXouZ5E=;
	b=MGVJxzXj/goLL/9o3ynpAf1Df7uZ32HldCB2yBul/b8jSQvQsGce5YSK6LFY/kiMOd
	2CTpHSY/arqDdrGFAUqqc8n4wTTg+U7/XLOd3B13V/oKHwNw+m7Ajzwz2fo+XBAFjTs9
	EJjC4TkRspwril3x1kqutShilIg23+dKrRvR84iDk1/r2o9uIBTvYvS63XK0ExHqwmDV
	hFIoNYhTzTmV4sQh+WBZRrwrnmhBz9v4oSZ7kpw8cERlGW2QkJKbmx8yEnIx9HHoygvf
	IQmbtZfZjF5o7ziYSgyfAm+W7W5R+Xb7oxeZAjpn5q2QZHhnrem1divgVOvw/vhdenJG
	UtAw==
X-Gm-Message-State: ALoCoQmkv6WLknc5MoshQApuH3j6yb5fxspyr3FsghCs5I1m6BPmbxs2PKltGG4UeAr4T2aEP5dk
MIME-Version: 1.0
X-Received: by 10.58.73.202 with SMTP id n10mr8518503vev.7.1378395754766; Thu,
	05 Sep 2013 08:42:34 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Thu, 5 Sep 2013 08:42:34 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153AF66130B@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153AF66130B@pluto.melinkcorp.local>
Date: Thu, 5 Sep 2013 08:42:34 -0700
Message-ID: <CAPhnLPDn+4uqhhv-4-BVKqGOMtmQJSzHOEshhZnVzuCn9+9xVQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto-autobuilder: Questions on autobuilder setup
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
X-List-Received-Date: Thu, 05 Sep 2013 15:42:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 5, 2013 at 6:53 AM, Bryan Evenson <bevenson@melinkcorp.com> wro=
te:
> I am working on getting the Yocto Autobuilder setup on a machine to do ni=
ghtly builds of my image (I'm using yocto-autobuilder/dylan).  However, I'm=
 running into a few problems and I'm looking for some help.
>
> First, here is the configuration that I have setup so far for my nightly =
build.  I would like to build core-image-minimal for qemuarm and for the at=
91sam9x5ek machine that is provided by the meta-atmel layer.
>
> [nightly-atmel]
> builders: 'builder1'
> repos: [{'poky':
>             {'repourl':'git://git.yoctoproject.org/poky',
>                  'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bs=
p'},
>              'branch':'dylan'}},
>         {'meta-atmel':
>             {'repourl':'git://github.com/evensonbryan/meta-atmel',
>              'branch':'master'}},
>         {'meta-openembedded':
>             {'repourl':'git://git.openembedded.org/meta-openembedded',
>              'branch':'dylan'}}]
> steps: [{'SetDest':{}},
>         {'CheckOutLayers': {}},
>         {'RunPreamble': {}},
>         {'GetDistroVersion' : {'distro': 'poky'}},
>         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : 'i686', =
'distro': 'poky', 'buildhistory' : True}},
>         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>         {'SyncPersistDB' : {'distro' : 'poky'}},
>         {'BuildImages': {'images': 'core-image-minimal'}},
>         {'RunSanityTests': {'images': 'core-image-minimal'}},
>         {'CreateAutoConf': {'machine': 'at91sam9x5ek', 'SDKMACHINE' : 'i6=
86', 'distro': 'poky'}},
>         {'BuildImages': {'images': 'core-image-minimal'}},
>         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
>         {'PublishLayerTarballs':{}},
>         {'PublishArtifacts': {'artifacts': ['qemuarm', 'at91sam9x5ek', 'i=
pk']}}]
>
> I modified yoctoAB.conf to only include this build in its build sets.  Ot=
her than I have not modified any other configuration.
>
> 1. Besides the README files that comes with Autobuilder, is there any mor=
e documentation somewhere that details how to setup Autobuilder?

There isn't much documentation other than reading lib/autobuilder/*.
It's something I'm working on fixing over the next few weeks.

One thing to not though. This looks like old autobuilder config. You
should update the ab to current master.

> Most of the details I've seen on the Yocto Project website discuss the ou=
tput from the Yocto Project's own Autobuilder instance, but not much for de=
tails on what the different variables in the .conf files mean and what the =
> options are (and a place to contribute answers to the following questions=
).

Right here. I more than welcome patches.

>
> 2. The resulting local.conf for the nightly-atmel build has MACHINE set t=
o "qemux86" (MACHINE ??=3D "qemux86" is the only MACHINE definition in loca=
l.conf).  I thought the CreateAutoConf settings should have been
setting this variable to something else. What did I miss?

We don't care about local.conf in autobuilder land. We use auto.conf.
The difference? None really, just parse order.

>
> 3. The resulting bblayer.conf for this build only includes meta, meta-yoc=
to and meta-yocto-bsp.  I want to add the layers meta-atmel, meta-openembed=
ded/meta-oe and meta-openembedded/meta-networking.  How do I get these laye=
rs added to bblayers.conf, and how do I set the order?


{'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs':
['meta-atmel', 'meta-openembedded/meta-oe',
'meta-openembedded/meta-networking']}},


>
> 4. I am using poky/dylan-9.0.1 as a base, but I have a few patches that I=
 applied myself.  Namely, there is a 10 patch series applied to poky/master=
 by Chen Qi that I am using to remove tinylogin and use Busybox for passwor=
d management.  How do I tell Autobuilder to apply these patches on top of p=
oky/dylan-9.0.1?

I assume you have a git repo with 9.0.1 and these 10 patches? If so,
do it in the repo definition for poky

>
> 5. I am getting the following errors when the autobuilder attempts to bui=
ld qemu-native:
> In file included from /media/sda3/yocto-autobuilder/yocto-slave/nightly-a=
tmel/build/build/tmp/work/i686-linux/qemu-native/1.4.0-r0/qemu-1.4.0/linux-=
user/syscall.c:3705:0:
> /media/sda3/yocto-autobuilder/yocto-slave/nightly-atmel/build/build/tmp/w=
ork/i686-linux/qemu-native/1.4.0-r0/qemu-1.4.0/linux-user/ioctls.h:189:1: e=
rror: 'SNDCTL_DSP_MAPINBUF' undeclared here (not in a function)
> /media/sda3/yocto-autobuilder/yocto-slave/nightly-atmel/build/build/tmp/w=
ork/i686-linux/qemu-native/1.4.0-r0/qemu-1.4.0/linux-user/ioctls.h:190:1: e=
rror: 'SNDCTL_DSP_MAPOUTBUF' undeclared here (not in a function)
> /media/sda3/yocto-autobuilder/yocto-slave/nightly-atmel/build/build/tmp/w=
ork/i686-linux/qemu-native/1.4.0-r0/qemu-1.4.0/linux-user/ioctls.h:245:1: e=
rror: 'SOUND_MIXER_ACCESS' undeclared here (not in a function)
>
> I remember having similar issues when trying to setup Yocto ADT for my sy=
stem and that I had to do "bitbake -c populate_sdk core-image-minimal" firs=
t.  Do I need to do something similar before building for qemuarm?

You shouldn't. This sounds like you're not using the toolchain you
built out maybe?

> If so, how do I tell the Autobuilder to do it?

You'll need to source the env setup for the toolchain in your bashrc

>
> 6. I have not included it yet, but I have my own layer for a few of my ow=
n applications.  We are using Subversion for our version control system, so=
 my layer is stored in a Subversion repository.  After looking at yocto-aut=
obuilder/lib/python-2.7/site-packages/autobuilder/buildsteps/CheckOutLayers=
.py, it looks like the Autobuilder requires all layers to be in a Git repos=
itory.  What would it take to add compatiblity for a layer residing in a Su=
bversion repository?

Hrmmm.... CheckOutLayers is a bit special and only supports git right
now. Let me think about the best way to do this. It will take a little
bit of work to do it right. Could you open a bug on this?

-b

--=20
Elizabeth Flanagan
Yocto Project
Build and Release

