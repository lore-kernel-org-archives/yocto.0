Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1D38E01420
	for <yocto@yoctoproject.org>; Fri,  6 Sep 2013 06:46:12 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Fri, 6 Sep 2013 09:46:11 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Fri, 6 Sep 2013 09:46:10 -0400
Thread-Topic: [yocto] yocto-autobuilder: Questions on autobuilder setup
Thread-Index: Ac6qTowrhVNA7CvgTv6B0xed7EGG1gArMz/Q
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153AF66168B@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153AF66130B@pluto.melinkcorp.local>
	<CAPhnLPDn+4uqhhv-4-BVKqGOMtmQJSzHOEshhZnVzuCn9+9xVQ@mail.gmail.com>
In-Reply-To: <CAPhnLPDn+4uqhhv-4-BVKqGOMtmQJSzHOEshhZnVzuCn9+9xVQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 02E5025F0052E602E503AC
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Fri, 06 Sep 2013 13:46:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Elizabeth,

> -----Original Message-----
> From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]
> Sent: Thursday, September 05, 2013 11:43 AM
> To: Bryan Evenson
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] yocto-autobuilder: Questions on autobuilder setup
>=20
> On Thu, Sep 5, 2013 at 6:53 AM, Bryan Evenson <bevenson@melinkcorp.com>
> wrote:
> > I am working on getting the Yocto Autobuilder setup on a machine to
> do nightly builds of my image (I'm using yocto-autobuilder/dylan).
> However, I'm running into a few problems and I'm looking for some help.
> >
> > First, here is the configuration that I have setup so far for my
> nightly build.  I would like to build core-image-minimal for qemuarm
> and for the at91sam9x5ek machine that is provided by the meta-atmel
> layer.
> >
> > [nightly-atmel]
> > builders: 'builder1'
> > repos: [{'poky':
> >             {'repourl':'git://git.yoctoproject.org/poky',
> >                  'layerversion':{'core':'meta', 'yoctobsp':'meta-
> yocto-bsp'},
> >              'branch':'dylan'}},
> >         {'meta-atmel':
> >             {'repourl':'git://github.com/evensonbryan/meta-atmel',
> >              'branch':'master'}},
> >         {'meta-openembedded':
> >             {'repourl':'git://git.openembedded.org/meta-
> openembedded',
> >              'branch':'dylan'}}]
> > steps: [{'SetDest':{}},
> >         {'CheckOutLayers': {}},
> >         {'RunPreamble': {}},
> >         {'GetDistroVersion' : {'distro': 'poky'}},
> >         {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' :
> 'i686', 'distro': 'poky', 'buildhistory' : True}},
> >         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
> >         {'SyncPersistDB' : {'distro' : 'poky'}},
> >         {'BuildImages': {'images': 'core-image-minimal'}},
> >         {'RunSanityTests': {'images': 'core-image-minimal'}},
> >         {'CreateAutoConf': {'machine': 'at91sam9x5ek', 'SDKMACHINE' :
> 'i686', 'distro': 'poky'}},
> >         {'BuildImages': {'images': 'core-image-minimal'}},
> >         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
> >         {'PublishLayerTarballs':{}},
> >         {'PublishArtifacts': {'artifacts': ['qemuarm',
> 'at91sam9x5ek',
> > 'ipk']}}]
> >
> > I modified yoctoAB.conf to only include this build in its build sets.
> Other than I have not modified any other configuration.
> >
> > 1. Besides the README files that comes with Autobuilder, is there any
> more documentation somewhere that details how to setup Autobuilder?
>=20
> There isn't much documentation other than reading lib/autobuilder/*.
> It's something I'm working on fixing over the next few weeks.
>=20
> One thing to not though. This looks like old autobuilder config. You
> should update the ab to current master.

I checked my Autobuilder status, and it looks like I did checkout the
master branch instead of dylan.  The config I used as an example was
nightly-arm.conf.  Is there a better one to use as a starting point?

>=20
> > Most of the details I've seen on the Yocto Project website discuss
> the output from the Yocto Project's own Autobuilder instance, but not
> much for details on what the different variables in the .conf files
> mean and what the > options are (and a place to contribute answers to
> the following questions).
>=20
> Right here. I more than welcome patches.

Good to know.  Once I get my build working, I'll submit a patch with
updates to the README files once I figure out what I did wrong.
>=20
> >
> > 2. The resulting local.conf for the nightly-atmel build has MACHINE
> > set to "qemux86" (MACHINE ??=3D "qemux86" is the only MACHINE
> definition
> > in local.conf).  I thought the CreateAutoConf settings should have
> > been
> setting this variable to something else. What did I miss?
>=20
> We don't care about local.conf in autobuilder land. We use auto.conf.
> The difference? None really, just parse order.
>=20
Ah, there it is.  I see the auto.conf and it has the settings I expected.

> >
> > 3. The resulting bblayer.conf for this build only includes meta,
> meta-yocto and meta-yocto-bsp.  I want to add the layers meta-atmel,
> meta-openembedded/meta-oe and meta-openembedded/meta-networking.  How
> do I get these layers added to bblayers.conf, and how do I set the
> order?
>=20
>=20
> {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs':
> ['meta-atmel', 'meta-openembedded/meta-oe', 'meta-openembedded/meta-
> networking']}},
>=20
>=20

I changed the line as suggested, restarted Autobuilder and forced a
rebuild.  However, the new layers were not added to the bblayers.conf
file.  Is there some other step I need to do to have these settings
take affect?

> >
> > 4. I am using poky/dylan-9.0.1 as a base, but I have a few patches
> that I applied myself.  Namely, there is a 10 patch series applied to
> poky/master by Chen Qi that I am using to remove tinylogin and use
> Busybox for password management.  How do I tell Autobuilder to apply
> these patches on top of poky/dylan-9.0.1?
>=20
> I assume you have a git repo with 9.0.1 and these 10 patches? If so, do
> it in the repo definition for poky
>=20

On my development machine I did a clone of poky, switched to the
dylan-9.0.1 tag and then applied the 10 patches.  I wasn't sure if this
patch set was planned to be applied to dylan, so I've held off on doing
anything else.

So probably the best move would be for me to find a good place to have
a local git server for our development, clone poky and point to
git.yoctoproject.org as the upstream source, locally apply the patches
I want on the dylan branch and then tell Autobuilder to use our local
git for poky.  Does that sound about right?

> >
> > 5. I am getting the following errors when the autobuilder attempts to
> build qemu-native:
> > In file included from /media/sda3/yocto-autobuilder/yocto-
> slave/nightly-atmel/build/build/tmp/work/i686-linux/qemu-native/1.4.0-
> r0/qemu-1.4.0/linux-user/syscall.c:3705:0:
> > /media/sda3/yocto-autobuilder/yocto-slave/nightly-
> atmel/build/build/tm
> > p/work/i686-linux/qemu-native/1.4.0-r0/qemu-1.4.0/linux-
> user/ioctls.h:
> > 189:1: error: 'SNDCTL_DSP_MAPINBUF' undeclared here (not in a
> > function)
> > /media/sda3/yocto-autobuilder/yocto-slave/nightly-
> atmel/build/build/tm
> > p/work/i686-linux/qemu-native/1.4.0-r0/qemu-1.4.0/linux-
> user/ioctls.h:
> > 190:1: error: 'SNDCTL_DSP_MAPOUTBUF' undeclared here (not in a
> > function)
> > /media/sda3/yocto-autobuilder/yocto-slave/nightly-
> atmel/build/build/tm
> > p/work/i686-linux/qemu-native/1.4.0-r0/qemu-1.4.0/linux-
> user/ioctls.h:
> > 245:1: error: 'SOUND_MIXER_ACCESS' undeclared here (not in a
> function)
> >
> > I remember having similar issues when trying to setup Yocto ADT for
> my system and that I had to do "bitbake -c populate_sdk core-image-
> minimal" first.  Do I need to do something similar before building for
> qemuarm?
>=20
> You shouldn't. This sounds like you're not using the toolchain you
> built out maybe?

I'm setting up Autobuilder on a new machine that has no other toolchains
In place.  I'm attempting to do the bare minimum steps per the
instructions to get the Autobuilder to work for our setup.  So I'm
assuming that if I want to use qemu, I need get an SDK and tell
Autobuilder where the toolchain resides?  How do I tell Autobuilder
where the toolchain is?  I haven't seen that configuration item.

Speaking of qemu, I see in the instructions that it says if I want to
run sanity tests I need to get tight-vnc.  I don't see tight-vnc in my
host system's package options (Ubuntu host) but I do see several other
vnc options (x11vnc is one of them).  Does it have to be tight-vnc or
would another vnc server work?

>=20
> > If so, how do I tell the Autobuilder to do it?
>=20
> You'll need to source the env setup for the toolchain in your bashrc
>=20
> >
> > 6. I have not included it yet, but I have my own layer for a few of
> my own applications.  We are using Subversion for our version control
> system, so my layer is stored in a Subversion repository.  After
> looking at yocto-autobuilder/lib/python-2.7/site-
> packages/autobuilder/buildsteps/CheckOutLayers.py, it looks like the
> Autobuilder requires all layers to be in a Git repository.  What would
> it take to add compatiblity for a layer residing in a Subversion
> repository?
>=20
> Hrmmm.... CheckOutLayers is a bit special and only supports git right
> now. Let me think about the best way to do this. It will take a little
> bit of work to do it right. Could you open a bug on this?
>=20

If I understand what would be best to do for 4., I probably should setup
A git server for internal development anyway.  In that case, moving our
layer to our git server would be the best move.  But, I'll open up an
issue anyway, and you can decide if there's much call for expansion
of CheckOutLayers to other version control systems.

> -b
>=20
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release

Thanks,
Bryan

