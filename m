Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36992E0122C
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 06:55:18 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Thu, 5 Sep 2013 09:55:17 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 5 Sep 2013 09:53:06 -0400
Thread-Topic: yocto-autobuilder:  Questions on autobuilder setup
Thread-Index: Ac6qPz+ueoGeMqRyTRCq+8cfULNOwQ==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153AF66130B@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: yocto-autobuilder: Questions on autobuilder setup
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
X-List-Received-Date: Thu, 05 Sep 2013 13:55:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am working on getting the Yocto Autobuilder setup on a machine to do nigh=
tly builds of my image (I'm using yocto-autobuilder/dylan).  However, I'm r=
unning into a few problems and I'm looking for some help.

First, here is the configuration that I have setup so far for my nightly bu=
ild.  I would like to build core-image-minimal for qemuarm and for the at91=
sam9x5ek machine that is provided by the meta-atmel layer.

[nightly-atmel]
builders: 'builder1'
repos: [{'poky':=20
            {'repourl':'git://git.yoctoproject.org/poky',=20
	         'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp'},=20
             'branch':'dylan'}},=20
        {'meta-atmel':=20
            {'repourl':'git://github.com/evensonbryan/meta-atmel',=20
             'branch':'master'}},
        {'meta-openembedded':=20
            {'repourl':'git://git.openembedded.org/meta-openembedded',=20
             'branch':'dylan'}}]=20
steps: [{'SetDest':{}},=20
        {'CheckOutLayers': {}},=20
        {'RunPreamble': {}},=20
        {'GetDistroVersion' : {'distro': 'poky'}},
        {'CreateAutoConf': {'machine': 'qemuarm', 'SDKMACHINE' : 'i686', 'd=
istro': 'poky', 'buildhistory' : True}},
        {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
        {'SyncPersistDB' : {'distro' : 'poky'}},
        {'BuildImages': {'images': 'core-image-minimal'}},
        {'RunSanityTests': {'images': 'core-image-minimal'}},
        {'CreateAutoConf': {'machine': 'at91sam9x5ek', 'SDKMACHINE' : 'i686=
', 'distro': 'poky'}},
        {'BuildImages': {'images': 'core-image-minimal'}},
        {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}},
        {'PublishLayerTarballs':{}},
        {'PublishArtifacts': {'artifacts': ['qemuarm', 'at91sam9x5ek', 'ipk=
']}}]

I modified yoctoAB.conf to only include this build in its build sets.  Othe=
r than I have not modified any other configuration.

1. Besides the README files that comes with Autobuilder, is there any more =
documentation somewhere that details how to setup Autobuilder?  Most of the=
 details I've seen on the Yocto Project website discuss the output from the=
 Yocto Project's own Autobuilder instance, but not much for details on what=
 the different variables in the .conf files mean and what the options are (=
and a place to contribute answers to the following questions).

2. The resulting local.conf for the nightly-atmel build has MACHINE set to =
"qemux86" (MACHINE ??=3D "qemux86" is the only MACHINE definition in local.=
conf).  I thought the CreateAutoConf settings should have been setting this=
 variable to something else. What did I miss?

3. The resulting bblayer.conf for this build only includes meta, meta-yocto=
 and meta-yocto-bsp.  I want to add the layers meta-atmel, meta-openembedde=
d/meta-oe and meta-openembedded/meta-networking.  How do I get these layers=
 added to bblayers.conf, and how do I set the order?

4. I am using poky/dylan-9.0.1 as a base, but I have a few patches that I a=
pplied myself.  Namely, there is a 10 patch series applied to poky/master b=
y Chen Qi that I am using to remove tinylogin and use Busybox for password =
management.  How do I tell Autobuilder to apply these patches on top of pok=
y/dylan-9.0.1?

5. I am getting the following errors when the autobuilder attempts to build=
 qemu-native:
In file included from /media/sda3/yocto-autobuilder/yocto-slave/nightly-atm=
el/build/build/tmp/work/i686-linux/qemu-native/1.4.0-r0/qemu-1.4.0/linux-us=
er/syscall.c:3705:0:
/media/sda3/yocto-autobuilder/yocto-slave/nightly-atmel/build/build/tmp/wor=
k/i686-linux/qemu-native/1.4.0-r0/qemu-1.4.0/linux-user/ioctls.h:189:1: err=
or: 'SNDCTL_DSP_MAPINBUF' undeclared here (not in a function)
/media/sda3/yocto-autobuilder/yocto-slave/nightly-atmel/build/build/tmp/wor=
k/i686-linux/qemu-native/1.4.0-r0/qemu-1.4.0/linux-user/ioctls.h:190:1: err=
or: 'SNDCTL_DSP_MAPOUTBUF' undeclared here (not in a function)
/media/sda3/yocto-autobuilder/yocto-slave/nightly-atmel/build/build/tmp/wor=
k/i686-linux/qemu-native/1.4.0-r0/qemu-1.4.0/linux-user/ioctls.h:245:1: err=
or: 'SOUND_MIXER_ACCESS' undeclared here (not in a function)

I remember having similar issues when trying to setup Yocto ADT for my syst=
em and that I had to do "bitbake -c populate_sdk core-image-minimal" first.=
  Do I need to do something similar before building for qemuarm?  If so, ho=
w do I tell the Autobuilder to do it?

6. I have not included it yet, but I have my own layer for a few of my own =
applications.  We are using Subversion for our version control system, so m=
y layer is stored in a Subversion repository.  After looking at yocto-autob=
uilder/lib/python-2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.p=
y, it looks like the Autobuilder requires all layers to be in a Git reposit=
ory.  What would it take to add compatiblity for a layer residing in a Subv=
ersion repository?

Thanks in advance,
Bryan



