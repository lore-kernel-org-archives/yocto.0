Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7ED9E006E9
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 06:37:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2BDbvCk008040
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 11 Mar 2013 06:37:57 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 11 Mar 2013 06:37:57 -0700
Message-ID: <513DDE28.4050004@windriver.com>
Date: Mon, 11 Mar 2013 09:37:44 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
References: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
	<20130308191213.102258ca@e6520eb> <513A3557.10405@gmail.com>
	<513A7836.2050908@windriver.com>
	<CAFyqS9rT=amDBNTO_awzXL3zNS-vCx1+0ERCspXTps8u_VpHwA@mail.gmail.com>
	<CAFyqS9q5aDSUiGFOsOz4CWN7oV8kAiAuzA5mK4HbsEaReqQzHA@mail.gmail.com>
In-Reply-To: <CAFyqS9q5aDSUiGFOsOz4CWN7oV8kAiAuzA5mK4HbsEaReqQzHA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How do I control what kernel modules are being loaded?
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
X-List-Received-Date: Mon, 11 Mar 2013 13:37:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-03-11 09:28 AM, Hans Beckérus wrote:
>
> On Sat, Mar 9, 2013 at 12:45 AM, Bruce Ashfield
> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>> wrote:
>
>     On 13-03-08 2:00 PM, Hans Beckerus wrote:
>
>         On 2013-03-08 7:12, Eric Bénard wrote:
>
>             Hi Hans,
>
>             Le Fri, 8 Mar 2013 13:08:21 +0100,
>             Hans Beckérus <hans.beckerus@gmail.com
>             <mailto:hans.beckerus@gmail.com>> a écrit :
>
>                 Hi. I have built some custom kernel modules (.ko) using
>                 a .bb that
>                 inherits from the module.bbclass. There is one main
>                 kernel module and
>                 the rest are dependent on the first. Building and
>                 installing the
>                 modules to the rootfs works fine. Next question is how
>                 do I control
>                 what actual modules are loaded at boot, or actually how
>                 do I control
>                 this through Yocto? To my surprise one of the kernel
>                 module loaded
>                 automatically!? How could this happen? I did not have an
>                 entry for it
>                 in /etc/modules. And what do I need to do to actually
>                 add entries to
>                 /etc/modules? Or is there some other mechanism that I
>                 should use. I
>                 tried going through the module.bbclass but must admit I
>                 lost it
>                 somewhere in the middle ;) Any guidance would be
>                 appreciated.
>
>             when the module is built by the kernel recipe you can use :
>             module_autoload and you can see somme usage examples here :
>             http://cgit.openembedded.org/__meta-handheld/tree/conf/__machine/palmtx.conf
>             <http://cgit.openembedded.org/meta-handheld/tree/conf/machine/palmtx.conf>
>             http://cgit.openembedded.org/__meta-handheld/tree/conf/__machine/include/palm.inc
>             <http://cgit.openembedded.org/meta-handheld/tree/conf/machine/include/palm.inc>
>
>
>             maybe you could get inspiration from kernel.bbclass to do
>             the same
>             thing in your recipe.
>
>             Eric
>
>         Thanks guys for your quick feedback. I can see that using
>         module_autoload_${PN} seems like a good approach, if a package
>         maps 1:1
>         to a module.
>         In my case that is not so. The package/recipe builds six (or
>         even more)
>         .ko files using one makefile.
>         I guess one option could be to split each module build in its own
>         recipe, but that is not supported by the makefile and thus would
>         require
>         patching from my side in the source tree. I think the only
>         option I have
>         left is to try to use /etc/modules and add the modules there in a
>         do_install_append().
>         But the problem then is, what happens if some other package also
>         add a
>         /etc/modules.conf to the image folder? Will it be merged or only
>         copied?
>         In the latter case last package wins which would not work out
>         very well :(
>
>         Out of curiosity, what will module_autoload do? Will it add the
>         .ko to
>         /etc/modules or does it implement some other mechanism to make a
>         module
>         load automatically at boot?
>
>
>     It depends on what release you are using. In yocto 1.3 and before the
>     autoload variables translated to mod-util loading, using just what you'd
>     think. In yocto 1.4 and kmod in the picture:
>
>              # If autoloading is requested, output
>     /etc/modules-load.d/<name>.__conf and append
>              # appropriate modprobe commands to the postinst
>              autoload = d.getVar('module_autoload_%s' % basename, True)
>              if autoload:
>                  name = '%s/etc/modules-load.d/%s.__conf' % (dvar, basename)
>                  f = open(name, 'w')
>                  for m in autoload.split():
>                      f.write('%s\n' % m)
>                  f.close()
>                  postinst = d.getVar('pkg_postinst_%s' % pkg, True)
>                  if not postinst:
>                      bb.fatal("pkg_postinst_%s not defined" % pkg)
>                  postinst += d.getVar('autoload_postinst___fragment',
>     True) % autoload
>                  d.setVar('pkg_postinst_%s' % pkg, postinst)
>
>              # Write out any modconf fragment
>              modconf = d.getVar('module_conf_%s' % basename, True)
>              if modconf:
>                  name = '%s/etc/modprobe.d/%s.conf' % (dvar, basename)
>                  f = open(name, 'w')
>                  f.write("%s\n" % modconf)
>                  f.close()
>
>     Cheers,
>
>     Bruce
>
> I do not have much luck getting this to work I am afraid. No matter what
> I try with module_autoload it does not seem to have any effect on my
> system (no file(s) created in /etc). I have tried adding module_autoload
> to both my machine config and/or distro. I am running danny 8.0 which is
> version 1.3 of the poky distro I guess. I can see how module_autoload_%s
> is parsed in kernel.bb <http://kernel.bb> but how is that recipe called
> as part om my module package? I can not see that anything is inheriting
> from it so when is the module_autoload supposed to be parsed and place
> files in in the package /etc? Do I need to rebuild something other than
> my module package? My guess Is that I should see something in the
> package image folder, or? All I see is the lib folder holding the kernel
> module hierarchy and the .ko files of course. I would really like
> getting this to work. Otherwise the only ugly workaround I can see is to
> write my own simplistic init script that calls modprobe on the modules I
> need after boot.

Can you post your exact changes where we can see them ? You need to put
the module_autload variable in a .conf file, whether that be your
local.conf, your machine.conf or you distro configuration file (which
it appears that you are doing), but you also must have the name of
the module package correct, and the module needs to be part of your
IMAGE_INSTALL, since the code fragment I pasted above is from the
post installation fragment created for the various module packages
as they are created.

i.e. I have this in a .conf file:

    module_autoload_nfsd = "nfsd"

To ensure that the nfsd .ko is loaded on boot, when the module is built
and present on the rootfs.

Cheers,

Bruce



>
> Hans
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


