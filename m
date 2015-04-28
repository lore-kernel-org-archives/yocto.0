Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BF88E00960; Tue, 28 Apr 2015 00:21:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-146.dsl.connexus.net.au
	[203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CB79E0086D
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 00:21:49 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4%14]) with
	mapi; Tue, 28 Apr 2015 17:21:46 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>, Bruce Ashfield
	<bruce.ashfield@windriver.com>, Wouter van Rooy <wouter.van.rooy@axon.tv>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 28 Apr 2015 17:21:43 +1000
Thread-Topic: [yocto] [poky] Initramfs not appended to kernel image
Thread-Index: AdCBJSU1KOjYi462RD+LrLPTgkENEQAUkocwAAMLfLA=
Message-ID: <5500469A22567C4BAF673A6E86AFA3A402227F4FA878@IR-CENTRAL.corp.innerrange.com>
References: <AEC347BAFCE456419C9E7C9F50321CEF10E03514F5@IAD2MBX10.mex02.mlsrvr.com>
	<552FC59F.2080603@windriver.com> <5534C248.5050107@axon.tv>
	<553E95B2.4050004@windriver.com>
	<5500469A22567C4BAF673A6E86AFA3A402227F4FA84D@IR-CENTRAL.corp.innerrange.com>
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A402227F4FA84D@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-7.500.1018-21508.005
x-tm-as-result: No--56.327800-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: [poky] Initramfs not appended to kernel image
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
X-List-Received-Date: Tue, 28 Apr 2015 07:21:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
> >
> > On 2015-04-20 05:09 AM, Wouter van Rooy wrote:
> > > Hi Bruce,
> > >
> > > First of all, thanks for your answer. It would be a comforting idea
> > > to get this initramfs implemented cleanly in my project.
> > >
> > > On 16-04-15 16:22, Bruce Ashfield wrote:
> > >> I'm the proud owner of the bugzilla to document this process
> > >> better, so let's work through the issues and see if there's a bug,
> > >> or something that just isn't clearly described. We are talking
> > >> about the
> > >> 1.6 release here .. so at least the recent changes in
> > >> kernel.bbclass processing won't be the cause of the breakage.
> > > Correct, to be even more precise I am using the daisy-11.0.0 tag for =
Poky.
> > >> Correct, and this definitely used to work. I can't see anything
> > >> wrong by inspection alone, but will launch some builds to see if I
> > >> can confirm the behaviour and that variable not making it down into
> > >> the function call. Bruce
> > > Thanks, I would love to hear the results of your test builds. Just
> > > drop me a line if you need anything else from my build environment
> > > for reproduction, like log files and such.
> >
> > I was traveling last week and am just getting back to this now.
> > I wanted to check in to see if your issues are still persisting to see
> > if you worked it out in the meantime.
>=20
> I'm in the process of using the INITRAMFS_IMAGE and
> INITRAMFS_IMAGE_BUNDLE feature with the latest from the 'dizzy' branch
> for Poky, and it seems to be working for me (on BeagleBone Black).
>=20
> It's been quite a slow process to understand the initramfs mechanism and
> how to use it in Poky. That's including the initramfs-framework. It would=
 be
> great to see some documentation for these features.

On further inspection...

When I build my image, it creates a kernel with initramfs in the deploy dir=
ectory:

    zImage-initramfs-3.14.39-r22b+gitrAUTOINC+ba552b4bc7-machine-2015042806=
1518.bin

However, the rootfs image includes the kernel _without_ the initramfs in it=
s /boot directory.

I'll investigate to see why.

--=20
Craig McQueen


