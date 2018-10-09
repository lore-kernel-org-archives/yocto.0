Return-Path: <sscott@san.rr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71BB0E00A86; Mon,  8 Oct 2018 18:33:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [107.14.166.226 listed in list.dnswl.org]
Received: from cdptpa-cmomta02.email.rr.com (cdptpa-outbound-snat.email.rr.com
	[107.14.166.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9946DE009CA
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2018 18:33:11 -0700 (PDT)
Received: from boobie ([75.80.138.87]) by cmsmtp with ESMTP
	id 9ggSg6edWMMN09ggUgiorJ; Tue, 09 Oct 2018 01:19:39 +0000
From: "Steve Scott" <sscott@san.rr.com>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <001201d45d33$c247aee0$46d70ca0$@san.rr.com>
	<CAJTo0LaK6P5x1ciFJZDFudnemD4i7eEtVYbC2pV-GuPah2RHKw@mail.gmail.com>
In-Reply-To: <CAJTo0LaK6P5x1ciFJZDFudnemD4i7eEtVYbC2pV-GuPah2RHKw@mail.gmail.com>
Date: Mon, 8 Oct 2018 18:19:38 -0700
Message-ID: <003301d45f6e$27ba9e90$772fdbb0$@san.rr.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQEi7z2YG29jC9R8A/BBkmb10HMoDgLUP5o+pmJbdKA=
X-CMAE-Envelope: MS4wfLDSb8eAOSg8T/GRGw4pgD6noMM41NpeQoq0sBX2pV/SOg1EJcwtvBo2dFCWl3w3So0A8XQd4zPlqwQVVzYs5fvYoQIGbmdLo0UG+iZUkpNSQ/s3mFW8
	t3yXRx/yRYADEerkIoZuM1nDOF3BykrSQEW9ZeyG4cVCwQflYpTQ9OCr+6GmVFNMqAgM9/NFl+FB6w==
Cc: 'Yocto-mailing-list' <yocto@yoctoproject.org>
Subject: Re: how to install files in nativesdk
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: sscott@san.rr.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 09 Oct 2018 01:33:13 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-us

Thanks Ross. That helped me pull it all together.

-steve

> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Monday, October 08, 2018 4:11 AM
> To: sscott@san.rr.com
> Cc: Yocto-mailing-list <yocto@yoctoproject.org>
> Subject: Re: [yocto] how to install files in nativesdk
>=20
> On Sat, 6 Oct 2018 at 06:18, Steve Scott <sscott@san.rr.com> wrote:
> > I am able to generate a standard SDK with native and target =
sysroots.
> > The target sysroot has header files for my custom libraries. The
> > header files are generally installed in
> > <path-to-sdk-target-sysroot>/usr/include/
> >
> > We use cmake and googletest running on the *host* for testing some =
of
> > our libraries. So I need to build googletest and the test apps using
> > the host (x86_64) tools. The test apps need to include the target's
> > library header files.
> >
> > I tried specifying the SDK's *target* usr/include as an include
> > directory to the compiler, but files in this tree preempted the
> > standard compiler (g++) system include files. I can avoid this =
problem
> > by installing the library header files under the SDK's native =
sysroot;
> > i.e. in <path-to-sdk-native-sysroot>/usr/include/
> > and setting this directory as an include directory on the compiler
> > command line.
> >
> > However, I cannot grok how to get these files into the SDK's native
> > tree. It seems related to
> >    BBCLASSEXTEND =3D "native nativesdk"
> > but I'm just chasing my tail trying to figure out the magic =
incantation.
> >
> > Does anyone know how to do this? Or is there a better approach?
>=20
> Assuming the recipe is correctly written, simply adding:
>=20
> BBCLASSEXTEND =3D "native nativesdk"
>=20
> Will give your recipe (eg foo.bb) native and nativesdk variant =
(foo-native and
> nativesdk-foo).  The class extension automatically changes the paths =
so in
> general that's all you need to do.  Then just add nativesdk-foo to =
your SDK
> using TOOLCHAIN_HOST_TASK_append =3D "
> nativesdk-foo".
>=20
> Ross


