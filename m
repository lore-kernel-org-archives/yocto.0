Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85985E00CBA; Thu, 31 Aug 2017 18:41:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from remote.innerrange.com (vpn.innerrange.com.au [203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38ACAE00C88
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 18:41:43 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Fri, 1 Sep 2017 11:41:42 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>, Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Sep 2017 11:41:41 +1000
Thread-Topic: [yocto] Python module and build_ext args
Thread-Index: AdMdXQNEjfh8vJQ0TRyR6DmwaftuSQDEo1NgAJTs3tA=
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F086424D@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F086417D@IR-CENTRAL.corp.innerrange.com>
	<5500469A22567C4BAF673A6E86AFA3A40295F0864183@IR-CENTRAL.corp.innerrange.com>
	<CAMKF1soq1xM+HM+tBX3ear57EU0P8N5MMSJxgOy3+ixyt2GPOA@mail.gmail.com>
	<5500469A22567C4BAF673A6E86AFA3A40295F0864194@IR-CENTRAL.corp.innerrange.com>
	<CAMKF1soW30WKkrHtcNcgLM5A22oLO-irncSnBFjJFw999PjtdQ@mail.gmail.com>
	<5500469A22567C4BAF673A6E86AFA3A40295F08641D1@IR-CENTRAL.corp.innerrange.com>
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F08641D1@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23292.006
x-tm-as-result: No--14.584100-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python module and build_ext args
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
X-List-Received-Date: Fri, 01 Sep 2017 01:41:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I wrote:
> Khem Raj wrote:
> > On Thu, Aug 24, 2017 at 9:42 PM, Craig McQueen
> > <craig.mcqueen@innerrange.com> wrote:
> > > Khem Raj wrote:
> > > On Thu, Aug 24, 2017 at 6:48 PM Craig McQueen
> > > <craig.mcqueen@innerrange.com>
> > > wrote:
> > >
> > > I wrote:
> > >> I'm trying to make a recipe for python3-uvloop, using setuptools3.
> > >>
> > >> The Python 3 uvloop module depends on libuv. It bundles a version
> > >> of libuv, and setup.py tries to build it, but it doesn't work well
> > >> for cross-compilation.
> > >> However, it also provides a build_ext parameter
> > >> "--use-system-libuv", which seems to work when I try running it
> > >> manually in devshell. (I have made a suitable recipe for libuv and
> > >> added libuv to DEPENDS.)
> > >>
> > >> How can I specify the "--use-system-libuv" parameter for build_ext
> > >> in the python3-uvloop recipe? I see a reference to
> > >> DISTUTILS_BUILD_EXT_ARGS, but it doesn't seem to be functional.
> > >
> > >
> > > I see DISTUTILS_BUILD_EXT_ARGS was submitted in this patch:
> > > https://patchwork.openembedded.org/patch/66071/
> > >
> > > However, in the Yocto poky repository, I see commit
> > > 0221af0f4ee9e8bfb8796841bdf806e38bc600c6 which appears to be a
> > broken
> > > version of the above patch with the separate build_ext step not
> > > actually executed with the DISTUTILS_BUILD_EXT_ARGS parameters.
> > >
> > >
> > >
> > > You did not explain broken in which sense ?
> > >
> > >
> > >
> > > It is broken in the sense that: The separate build_ext step is not
> > > actually executed with the DISTUTILS_BUILD_EXT_ARGS parameters. The
> > > original patch submission contained:
> > >
> > >
> > >
> > >           STAGING_INCDIR=3D${STAGING_INCDIR} \
> > >
> > >           STAGING_LIBDIR=3D${STAGING_LIBDIR} \
> > >
> > >           BUILD_SYS=3D${BUILD_SYS} HOST_SYS=3D${HOST_SYS} \
> > >
> > > -         ${STAGING_BINDIR_NATIVE}/${PYTHON_PN}-
> native/${PYTHON_PN}
> > setup.py
> > > build ${DISTUTILS_BUILD_ARGS} || \
> > >
> > > +         ${STAGING_BINDIR_NATIVE}/${PYTHON_PN}-
> native/${PYTHON_PN}
> > > + setup.py
> > > \
> > >
> > > +         build_ext --include-dirs
> > > ${STAGING_INCDIR}/${PYTHON_DIR}${PYTHON_ABI} \
> > >
> > > +         --library-dirs ${STAGING_LIBCDIR}/${PYTHON_DIR} \
> > >
> > > +         ${DISTUTILS_BUILD_EXT_ARGS} \
> > >
> > > +         build ${DISTUTILS_BUILD_ARGS} || \
> > >
> > > +         ${STAGING_BINDIR_NATIVE}/${PYTHON_PN}-
> native/${PYTHON_PN}
> > > + setup.py
> > > build_ext ${DISTUTILS_BUILD_ARGS} || \
> > >
> > >           bbfatal "${PYTHON_PN} setup.py build_ext execution failed."
> > >
> > > }
> > >
> > >
> > >
> > > However that part of the patch is not present in commit
> > > 0221af0f4ee9e8bfb8796841bdf806e38bc600c6.
> > >
> >
> > IIRC there were some breakages with this but it was long time ago. Can
> > you appy this change and test it out ?
>=20
> I tried applying the change manually. The Yocto do_compile step succeeded=
.
> But then the do_install step still failed. It seems that the do_install s=
tep
> (which runs setup.py install) still runs the setup.py build_ext step a se=
cond
> time, without the extra option I was trying to use.
>=20
> I'm not familiar enough with the working of python3 setup.py to know why
> the install step re-runs the build_ext step a second time.

I wasn't able to find an elegant solution for DISTUTILS_BUILD_EXT_ARGS. I e=
nded up getting a working python3-uvloop recipe a different way, using two =
patches to the setup.py.

I have posted to the uvloop project regarding this:

https://github.com/MagicStack/uvloop/issues/104

--=20
Craig McQueen


