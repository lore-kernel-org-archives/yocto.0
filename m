Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70F23E004AB
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 06:16:07 -0700 (PDT)
Received: by lboi15 with SMTP id i15so289553lbo.35
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 06:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Ta9520gltlQQztADWL7Z+zrc8VP/JyKQlMUse1vugXA=;
	b=NZoB8xp6cr3r2i2CnIKYXQrWuP4KApXr2mE/AI2OI3TIJv3QgBVMMTPiNgjKd4t5n3
	Wfvkok9+GuBlQchS9Cmvil3bt+y1ELEYzgQeXupW+HvEXwOD8ruNSj+hahuCy9llcLiI
	XxyNftoAI8e32rya6EbXqYxgqvqaM2ngFKmy+0itkvBb/mQNc70oAetflC6uO+831cZu
	tT5W2KPnbiJvvaskDV2tfq4hV+tQR50nC8HC0uIo+jrU1kMsK1SZi6wsRxgTZVInJiBG
	X7ZKYmOw9ZFXQ9cda7zsEiS9cegXy1G6NAYz7fFmGsBYFasP/NGk+mgv8DqmcxFjrjdX
	XE5A==
MIME-Version: 1.0
Received: by 10.112.99.71 with SMTP id eo7mr811820lbb.84.1344518166357; Thu,
	09 Aug 2012 06:16:06 -0700 (PDT)
Received: by 10.112.21.9 with HTTP; Thu, 9 Aug 2012 06:16:06 -0700 (PDT)
Date: Thu, 9 Aug 2012 09:16:06 -0400
Message-ID: <CAHUNapTBvghatM8xxnuCMPSkFZzS4_ssiU1b3TXvWk1SR74Qug@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Hob workflow
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
X-List-Received-Date: Thu, 09 Aug 2012 13:16:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi everyone,

I've been using Hob lately and I'm completely blown away by how useful
it is! Kudos to everyone: from those insisting there exist such a tool
to those working on it :-)

While using it, however, I must admit it took me quite a while to get
my head around some workflow issues and I was wondering if others felt
the same way or if it's just me. (At this point I must to point out
that I'm still only working my way through the Yocto Developer Manual
and have not yet read the Hob documentation.)

I do my Yocto work in ~/devel/yocto. Under ~/devel/yocto I have:

1) git-method/
        which contains some bare yocto kernels
        various build directories for builds using the latest git
        a poky/ directory with all the yocto git goodness

2) releases/
        which contains various yocto project releases, which in turn
contain various directories of builds

Let's say I decided I wanted to work on a PPC image and I decided I
wanted to use the latest git from which to work. I would go to
~/devel/yocto/git-method and run:

    $ source poky/oe-init-build-env ppc-image

I would then find myself in ~/devel/yocto/git-method/ppc-image from
which I could start my work. Now, if I was a yocto guru (like everyone
else is) I could just start tweaking and playing around with various
configuration files by hand (e.g. conf/local.conf) and then invoke
"bitbake <image>" on the cmdline. If, however, I'm still learning
and/or simply prefer not to tweak configuration files by hand, it
would seem natural to assume I could, instead, invoke "hob" and start
working on my PPC image using the GUI. This assumption, however, turns
out to be not entirely correct.

If, before invoking "hob", I edit conf/local.conf then any changes
there will show up in the hob configuration (i.e. DL_DIR or number of
threads). But (and this is the really confusing part for me) any
changes I make to those parameters while in Hob are not reflected in
the relevant configuration files! If I quit Hob and then restarted,
any changes made while in Hob would be lost; unless I clicked on
"Save" explicitly, but even then any changes are only saved to a
~/devel/yocto/git-method/ppc-image/.hob directory, not in this
project's configuration files themselves. Then, when I am done
configuring and building an image just the way I want it, none of my
changes are saved to any of the ~/devel/yocto/git-method/ppc-image
configuration files... unless I click on "save template".

As a native english speaker I find the use of the term "template" to
be incorrect. I wasn't interested in saving a template of my work I
wanted to save my current configuration. For days I was frustrated
that any tweaks I made to my configuration would be lost when I quit
Hob. A "template", to me, implies some of the data will not be saved,
which is distinct from the idea of saving my full, current,
configuration (which is what "save template" is doing).

As a further example, while working on my PPC image let's say I also
wanted to use Hob to work on an ARM image. In that case I'd go to
~/devel/yocto/git-method and run "poky/oe-init-build-env arm-image",
find myself in ~/devel/yocto/git-method/arm-image, and then invoke
"hob". I now would have two instances of Hob running, but there is
nothing to say that the Hob I invoked from the ARM project directory
is modifying the ARM project and that the Hob invoked from the PPC
project is modifying the PPC project. I could use the Hob invoked from
the ARM project to "save as a template" for the PPC work.

It just seems more natural to me that if I started Hob from a given
project directory (which is required since it needs bitbake), and if
this instance of Hob is smart enough to start by using various
configuration items from said project directory, that any changes or
images made using this instance of Hob should be reflected back to the
same configuration files and should tweak the project's configuration
files based on the changes made while running Hob without having to
explicitly save the configuration or "save as a template" any of the
work that is done. In other words, given the same project, if I do
some configurations by hand and then invoke "bitbake" or use Hob to
perform other configurations and click "build image" I would end up
with two completely different builds and this doesn't seem right. It
would seem natural that Hob should be a different path (gui) to
working with the same given project since Hob can only be invoked
within a project, not that Hob is off working on its own, almost
completely unrelated, project.

Thoughts?

Best regards,
    Trevor

