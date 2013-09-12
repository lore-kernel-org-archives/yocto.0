Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 507C7E01358
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 03:48:55 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Sep 2013 03:48:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,890,1371106800"; d="scan'208";a="394673429"
Received: from ks-mobl3.gar.corp.intel.com (HELO helios.localnet)
	([10.252.123.176])
	by fmsmga001.fm.intel.com with ESMTP; 12 Sep 2013 03:48:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hans =?ISO-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>,
	Karl Hiramoto <karl@hiramoto.org>
Date: Thu, 12 Sep 2013 11:48:53 +0100
Message-ID: <12314943.3pqejBoTbM@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAFyqS9oOY4pyaM63XQnTrh8Qh4pik=b35n78_H76+ifm-qrC=Q@mail.gmail.com>
References: <5231901B.8090801@hiramoto.org>
	<CAFyqS9oOY4pyaM63XQnTrh8Qh4pik=b35n78_H76+ifm-qrC=Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: package development recompile and install to rootfs
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
X-List-Received-Date: Thu, 12 Sep 2013 10:48:56 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Karl / Hans,

On Thursday 12 September 2013 12:28:16 Hans Beck=E9rus wrote:
> On Thu, Sep 12, 2013 at 11:57 AM, Karl Hiramoto <karl@hiramoto.org> w=
rote:
> > So to compile and reinstall mypackage i do:
> > bitbake -v mypackage -c clean -f  && bitbake -v mypackage -c instal=
l -f &&
> > bitbake -v mymachine-image
> >=20
> >=20
> > The mymachine-image  deletes and recreates the rootfs, which is len=
gthly.
> > After i do this, I need to reboot my  target board, so the nfsroot =
gets
> > remounted.
> >=20
> > Is there any way to quickly get  mypackage  installed on the rootfs=
?  =20
> > I'd like to be able to quickly recompile/link mypackage after chang=
ing a
> > few lines of code.
> >=20
> > I could write a script to copy the binaries over but I'm wondering =
if
> > there is an easier way.
>=20
> AFAIK there is no quick way of updating a rootfs image with a new
> version of a package. If there is then please tell us because I would=

> like to know too ;)

Well, assuming you're prepared to enable package management in the targ=
et
image (can just be temporary during development), you can share your
packages as a feed over http and install/update from there from the tar=
get.=20
There's a section of the manual that covers this (for rpm, but can be
adapted for ipk):

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#set=
ting-up-runtime-package-management

> If your are only after package development and testing it on target I=

> would use the SDK. That is why it exists. The poky tree is so much
> more than a simple cross-compilation toolchain. It is a complete
> integration/build and package management environment, not a
> development tool for individual packages. In our case we build our
> packages stand-alone using the SDK toolchain and then upload them to
> the board using scp or a special dedicated NFS mount for testing. It
> is a very quick way to try out those few lines of code you changed.
>=20
> To build the SDK, you do bitbake -c populate_sdk <your image>
> The result will be a huge .sh script that you run to install the
> toolchain somewhere on your host/build machine.
> After install you source an environment setup script in the root of
> the install path and that is it. Now you can configure/compile your
> package from anywhere. The SDK will provide exactly the same header
> files and libraries as used when building your rootfs so output from
> the build is 100% binary compatible. Just throw it onto the board and=

> run :)

This is definitely an option. Personally I prefer something closer to t=
he build
system like the package method I mentioned above; however it depends on=
 what
you're doing. The SDK is great for people developing applications that =
just
want to be able to build their apps so they can run on the target and d=
on't
want or need to deal with the complexities of building the entire OS, b=
ut on
the other hand it doesn't automate building the application like the bu=
ild
system can (on the assumption that you have your own means to do that, =
e.g. an
IDE that you're integrating the SDK with).

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

