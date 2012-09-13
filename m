Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94F57E011C0
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 11:12:32 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1TCDtq-0007eV-Og; Thu, 13 Sep 2012 19:12:26 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAJTo0Lb3wH6UQ5SY5mF9seq2cK2k-FguRhvTbASkYBqGTc127Q@mail.gmail.com>
Date: Thu, 13 Sep 2012 19:12:23 +0100
Message-Id: <C3A945A2-3CAE-4045-986E-53C10298A120@keylevel.com>
References: <718DB276-4C65-4925-B1E9-3EFEA0B8B4B7@keylevel.com>
	<CAJTo0Lb3wH6UQ5SY5mF9seq2cK2k-FguRhvTbASkYBqGTc127Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Denzil / Cedartrail / EGL/GLES under X
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
X-List-Received-Date: Thu, 13 Sep 2012 18:12:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Ross,

On 13 Sep 2012, at 12:03, Burton, Ross wrote:

> On 10 September 2012 19:56, Chris Tapp <opensource@keylevel.com> =
wrote:
>> I've managed to get to the point where I think EGL is up (no API =
errors reported), but if I try anything on the GL side (e.g. glClear to =
get the background color) I'm not getting anything showing on the =
display when I call eglSwapBuffers().
>=20
> GL or GLES?  GL on Cedar Trail is very limited , you're heavily
> recommended to use GLES.

Thanks. That's actually where I'm headed - glClear() was the first =
step...

I've actually managed to get things working now. Not too sure what I =
did, but I __think__ it was something to do with the rendering context - =
I may not have been specifying a GLES2 surface when I was using it. GLES =
is new to me (GL background), but my copy of the "OpenGL ES 2.0 =
Programming Guide" arrived today, so I should be on the way ;-)

>> I'm not sure how to configure my build to use the cdv-pvr-driver libs =
rather than the MESA-dri equivalents either. Both provide libGLESv2, =
etc., but I want the cdv-pvr-driver versions in the final image. =
However, cdv-prv-driver doesn't seem to have an include directory to use =
at build time, so MESA needs to be there as well. Is there a =
PREFERRED_PROVIDER_virtual/libgl value I can use?
>=20
> This is a bit of a mess at the moment, and I want to sort it, but it's
> a complicated mess.
>=20
> Building against mesa-dri shouldn't be a problem as all GL
> implementations have the same ABI, assuming you can get the
> cdv-prv-driver package installed and not mesa-dri on your image.
> Preferred providers only work for built-time dependencies, so assuming
> that you're having problems with getting mesa-dri out and
> cdv-prv-driver in the image you'll need to use something like
> RCONFLICTS and RPROVIDES so that the package system uses
> cdv-prv-driver instead of mesa-dri.

It seems to be putting the correct ones in the image as things are =
working with the simple tests I've got going so far. MD5sum on the libs =
confirms they are from cdv-prv-driver. No idea how they get used in =
preference, as I've not used any 'magic' yet!

Thanks for the help :-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




