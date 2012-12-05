Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A64DE006C3
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 13:12:11 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qB5LCADq020477
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 5 Dec 2012 13:12:10 -0800 (PST)
Received: from msp-dhcp50.wrs.com (172.25.34.50) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Wed, 5 Dec 2012 13:12:10 -0800
Message-ID: <50BFB8B2.4090702@windriver.com>
Date: Wed, 5 Dec 2012 15:12:18 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:16.0) Gecko/20121026 Thunderbird/16.0.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <36ED13F3654AE54CA763E6821D93A5711048C834@szxeml534-mbx.china.huawei.com>
In-Reply-To: <36ED13F3654AE54CA763E6821D93A5711048C834@szxeml534-mbx.china.huawei.com>
Subject: Re: Need for offline binary configuration
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
X-List-Received-Date: Wed, 05 Dec 2012 21:12:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

My apologies for the late response.  See below, I'll follow up on your second 
email as well...

On 11/20/12 9:09 AM, Venkata ramana gollamudi wrote:
> Poky allows to build custom Linux for you, but we have cases where the post
> build customization is required, like user-addition, network configuration,
> service control. Even selecting the required packages can be a post build activity.

One of the objectives that we are currently working toward is being able to 
start with the package feed (doesn't matter if it's rpm, deb or ipk files), 
generate a rootfs, configure the rootfs and then deploy the rootfs into an image.

The above should be able to be done on both a cross-configured environment or on 
the target via a traditional installer like mechanism.

> The current model requires the image to be rebuilt to support these configuration.

The current model can avoid many of the tasks associated with the build by using 
sstate-cache, but I agree that is not optimal for users who want to start with a 
known set of binaries and then tailor from that point.  (This includes users 
expecting a more traditional Linux install experience or users who need 
immutable software from an upstream vendor.)

> Offline Configuration tool (OCT), which allows a binary image customization
> before making a final target image. This case will be more evident in larger
> companies, where platform teams, product teams , application teams are
> distributed and Linux build from source will be owned and lab tested by a single
> team, like platform team. Other teams just configure to use it for product
> variants from same platform build.

This was factored into the work we are doing.  I know many companies have an 
outside OSV that provides the build environment, support, etc.. and they feed 
into an Operating Systems group (or similar).  This group then prepares the 
software according to the corporate guidelines (license restrictions, quality 
assurance, etc) and repackages it for consumption by others in the organization. 
  Often time the output of the Operating System group is either a blessed source 
based system -- or a set of binaries that are blessed as being in conformance 
with that companies guidelines.  This process repeats through the platform group 
and even individual projects -- with the eventual output being a product image 
including the blessed binaries, custom applications and configurations -- and a 
matching SDK.

> Detailed use cases can be found in enhancement bug:3252
>
> OCT should work on the binary pool of compiled packages generated from poky.
>
> The basic operations that can be supported includes

For the next section, I'm going to assume the pool of binary packages is what we 
refer to as the package feeds in OpenEmbedded.  This is simple a collection of 
binary packages that have been built from the build system that can be used to 
construct the rootfs.  Each package feed is constructed based on a single 
"distribution" configuration file which sets the policies for the packages in 
the feed and distribution wide options, such as selinux, pam, etc.

> a) Select/deselect required packages from pool of binary packages into final target image.

The above is definitely considered in the work we've been talking about.  This 
will require software that will take a list of the available items in the feed, 
present the user/developer with a way to enable the components they want on the 
target.  (Note, there is an inherit requirement here that dependencies also be 
met, so things the user/developer may not have selected will either have to be 
installed to meet dependencies or will have to generate an error that 
dependencies can't be met.)

> b) Provision to select external binary packages like ADT compiled applications as input and add them to final target image.

As long as the external package is in the same format as the rest of the feeds, 
this should be easy to do.  And I certainly expect that it will be needed.

> c) Binary level Offline configuration can includes
>        Configure the users/passwords
>        Configure the network
>        Configure the host name
>        Select the services to be started by default

The above are things we've talked about, but I don't believe there have been any 
formal plans to implement them at this time.  The components necessary for the 
binary package based install -> rootfs generation have taken up most of our 
planning time at this point.

One thing I would love to see is a set of standard components (or a framework) 
that could be used for this type of configuration.  But I believe it's very 
important that the configuration work both within the OpenEmbedded environment 
and externally in the "installer" like environment.

>        Security related configuration

This is something that I don't believe has really been addressed at all, but 
like the above we need a way to implement it.

>        Generate initrd in ramfs/ext3/... format
>        etc..

We are already considering how to go from rootfs to deployable image.  initrd 
just happens to be one of many potential image types.  We've specified hard disk 
image (partition map, bootloader, individual partitions that comprise one or 
more rootfs).  A flash based image -- instruction for flashing, and individual 
flash 'partitions' that will work similarly to the hard drive.  A CD/DVD/USB 
based bootable system.  And finally as a component of these an initrd rootfs 
that can be used as a component of the others are separately to instantiate the 
system before handing off control to one of the other types.

We have a huge advantage in OE that we can generate multiple rootfses from a 
given distribution configuration, we just don't currently have the tooling to 
put those rootfses together into the various images.  I know Darren Hart at 
Intel is working on some of the ground work for the hard disk style images.

> Considering the methods to support these in our current yocto model, following changes can be done.

The first thing we would like to see is a -single- rootfs creation model for all 
of the modes.  Build system, cross-install, and target-based-install.  The way 
that I'm approaching this right now is by attempting to abstract out just the 
rootfs generation capabilities within the current build system.  The intention 
is that you will be able to access interfaces to get a list of whats available 
to be installed, (what may be already installed,) a way to pass what to install 
and where to the environment.  Then the same code will be executed to perform 
these actions.  The actions will be designed to be package type agnostic as well.

Early R&D work is going on there, just to see if I can come up with something 
reasonable.

> 1) HOB can be the tool which can be extended to support these
>      Poky can generate a binary package pool as one if its output and Hob can work on this package pool to select packages, configure and generate image.
> So HOB can support opening HOB in Binary(or OCT) mode i.e., without build options but only with binary package selection. Configuration GUI needs to be added to HOB.
> Note:HOB+OCT is together or separate, needs a bit more thought and overall organization as they will be intended for different users.

I'm not sure HOB itself is the right tool for this, but there are certainly 
facets of HOB that would be needed in this kind of tool.  The package selection, 
etc.

> 2) Binary package pool can be a minimal/partial sstate-cache, as complete sstate-cache is quite big and not required for product teams as they are not expected to build but just need to select and configure.
>      I think it is sufficient to keep the minimal binaries from sstate-cache which are required to execute image.bbclass, do_rootfs task to generate image.

There are multiple steps of binary package pool, each I think are valid.  For 
someone wanting a source based system, with prebuilt binaries that can be 
locally modified -- sstate-cache is by far the best way to do this.  For an 
applications group that needs to generate images and SDKs, but is never allowed 
to use anything but the corporate blessed binary packages, a different mechanism 
(package based) is likely what is needed.  There is a lot of area though where 
either method may be needed (or desired).

My experience shows people familiar with traditional workstation based systems 
prefer the binary RPM approach, while hard-core embedded developers prefer 
source based systems.  The reality is the world has fewer hard-code embedded 
developers and more folks used to the traditional environments, add to that the 
capabilities of today's embedded systems and it makes sense for a lot of people 
to start with blessed binaries, tailored for embedded systems, and simple add 
their integration of applications and configurations after.

> 3) Along with specific configuration UI implementation, a generic configuration model similar to kernel kconfig and menuconfig can be considered, in cases where more detailed offline configurations is required like detailed security configuration.

This is absolutely need, but I think we need to get the general rootfs 
generation working and figured out before we spend too much time on this. 
However, if this is a high priority for you, it may make sense to start working 
on configuration.  This is something that is definitely needed, and I don't 
believe anyone is actively working on.

--Mark

> Regards,
> Ramana
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


