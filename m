Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 718C0E01404
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 15:56:04 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Aug 2012 15:56:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,748,1336374000"; d="scan'208";a="179169617"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga001.jf.intel.com with ESMTP; 10 Aug 2012 15:56:03 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 10 Aug 2012 15:56:03 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.106]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.231]) with mapi id
	14.01.0355.002; Fri, 10 Aug 2012 15:56:03 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Trevor Woerner <twoerner@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Hob workflow
Thread-Index: AQHNdjGnK31vHS/7uUGv/3lbpB9ijpdTqB/Q
Date: Fri, 10 Aug 2012 22:56:01 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46ACEEE4@ORSMSX101.amr.corp.intel.com>
References: <CAHUNapTBvghatM8xxnuCMPSkFZzS4_ssiU1b3TXvWk1SR74Qug@mail.gmail.com>
In-Reply-To: <CAHUNapTBvghatM8xxnuCMPSkFZzS4_ssiU1b3TXvWk1SR74Qug@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: Hob workflow
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
X-List-Received-Date: Fri, 10 Aug 2012 22:56:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Trevor,

Thanks for using hob and provide your valuable feedbacks, I'm trying to sum=
marize your desired behavior/usage of hob as:

1. hob should save the customization into the project's configuration, inst=
ead of using its own configuration saving mechanism.  In this way, people w=
ill be able to achieve same customized build result from command line or us=
ing hob.
2. Current "Save template" wording is confusing.

Am I missing any point that you're also trying to make here?  I think these=
 are valid points, could you file enhancement bugs for them in Yocto projec=
t bugzilla for us to track them and plan the future work for them according=
ly?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Trevor Woerner
Sent: Thursday, August 09, 2012 6:16 AM
To: yocto@yoctoproject.org
Subject: [yocto] Hob workflow

Hi everyone,

I've been using Hob lately and I'm completely blown away by how useful it i=
s! Kudos to everyone: from those insisting there exist such a tool to those=
 working on it :-)

While using it, however, I must admit it took me quite a while to get my he=
ad around some workflow issues and I was wondering if others felt the same =
way or if it's just me. (At this point I must to point out that I'm still o=
nly working my way through the Yocto Developer Manual and have not yet read=
 the Hob documentation.)

I do my Yocto work in ~/devel/yocto. Under ~/devel/yocto I have:

1) git-method/
        which contains some bare yocto kernels
        various build directories for builds using the latest git
        a poky/ directory with all the yocto git goodness

2) releases/
        which contains various yocto project releases, which in turn contai=
n various directories of builds

Let's say I decided I wanted to work on a PPC image and I decided I wanted =
to use the latest git from which to work. I would go to ~/devel/yocto/git-m=
ethod and run:

    $ source poky/oe-init-build-env ppc-image

I would then find myself in ~/devel/yocto/git-method/ppc-image from which I=
 could start my work. Now, if I was a yocto guru (like everyone else is) I =
could just start tweaking and playing around with various configuration fil=
es by hand (e.g. conf/local.conf) and then invoke "bitbake <image>" on the =
cmdline. If, however, I'm still learning and/or simply prefer not to tweak =
configuration files by hand, it would seem natural to assume I could, inste=
ad, invoke "hob" and start working on my PPC image using the GUI. This assu=
mption, however, turns out to be not entirely correct.

If, before invoking "hob", I edit conf/local.conf then any changes there wi=
ll show up in the hob configuration (i.e. DL_DIR or number of threads). But=
 (and this is the really confusing part for me) any changes I make to those=
 parameters while in Hob are not reflected in the relevant configuration fi=
les! If I quit Hob and then restarted, any changes made while in Hob would =
be lost; unless I clicked on "Save" explicitly, but even then any changes a=
re only saved to a ~/devel/yocto/git-method/ppc-image/.hob directory, not i=
n this project's configuration files themselves. Then, when I am done confi=
guring and building an image just the way I want it, none of my changes are=
 saved to any of the ~/devel/yocto/git-method/ppc-image
configuration files... unless I click on "save template".

As a native english speaker I find the use of the term "template" to be inc=
orrect. I wasn't interested in saving a template of my work I wanted to sav=
e my current configuration. For days I was frustrated that any tweaks I mad=
e to my configuration would be lost when I quit Hob. A "template", to me, i=
mplies some of the data will not be saved, which is distinct from the idea =
of saving my full, current, configuration (which is what "save template" is=
 doing).

As a further example, while working on my PPC image let's say I also wanted=
 to use Hob to work on an ARM image. In that case I'd go to ~/devel/yocto/g=
it-method and run "poky/oe-init-build-env arm-image", find myself in ~/deve=
l/yocto/git-method/arm-image, and then invoke "hob". I now would have two i=
nstances of Hob running, but there is nothing to say that the Hob I invoked=
 from the ARM project directory is modifying the ARM project and that the H=
ob invoked from the PPC project is modifying the PPC project. I could use t=
he Hob invoked from the ARM project to "save as a template" for the PPC wor=
k.

It just seems more natural to me that if I started Hob from a given project=
 directory (which is required since it needs bitbake), and if this instance=
 of Hob is smart enough to start by using various configuration items from =
said project directory, that any changes or images made using this instance=
 of Hob should be reflected back to the same configuration files and should=
 tweak the project's configuration files based on the changes made while ru=
nning Hob without having to explicitly save the configuration or "save as a=
 template" any of the work that is done. In other words, given the same pro=
ject, if I do some configurations by hand and then invoke "bitbake" or use =
Hob to perform other configurations and click "build image" I would end up =
with two completely different builds and this doesn't seem right. It would =
seem natural that Hob should be a different path (gui) to working with the =
same given project since Hob can only be invoked within a project, not that=
 Hob is off working on its own, almost completely unrelated, project.

Thoughts?

Best regards,
    Trevor
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

