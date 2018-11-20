Return-Path: <samuli.piippo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99752E00C43; Mon, 19 Nov 2018 21:14:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (samuli.piippo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28AABE00C3C
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 21:14:33 -0800 (PST)
Received: by mail-it1-f195.google.com with SMTP id o19so1590742itg.5
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 21:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=yVQjFSyf5vFPe3od93g7PmOdGkcwnVgKvU7cGGWf8uQ=;
	b=UsoMbYUIEYnIHDr8Ey+BFkUcmRKQERZ7Oq9ZWUkrra66e6py69eLW6+vVkLdJGT5gG
	HxczrvFksRIcGm08NmFDePmLLmdQSxoiT4ooJcGKs0MNlxF5Xd5HbRgNWywZB0e/VV+o
	OGu+KbZ9ankVS5OFL87mt4U+KZbqxqhjPcJV8dgIlOneeX37escw4lnbYF8x5BxT0aR/
	F1jw2SVktaFUifgnFg2I7kLTIbD8SSe75s1AYrg4cjeMhKPqXt2YAgyevHrZf7s33Xbr
	GTqjhTxXMSgqZu54AeTz/53QreXxq+yVIDHGnw1OkkTa+O9XRE6N283zOoEx3i802jOi
	B9dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=yVQjFSyf5vFPe3od93g7PmOdGkcwnVgKvU7cGGWf8uQ=;
	b=l7/FMx27yYehYghE2khl/EroIO138AAodtfBlWHcVRCYZ6hVYtD2FxbLQj/JSg2akr
	eOi5gbuqC4CzTEYMF/VWQmrc8h3N1dMMVCLx3EwEoaOgvMj0PtZZgKYLMxf3BHBekQY/
	9DyaM/5Ow68lwUY0R20AVIr0j6qSFa0hOsASFOba3CNon4Vg69sdtBDm3SAVrVcTt65Y
	rK5TRxBSfGhSVISGh4F8EJU22IFQTlQPKiUmSYYhsFL1/OVgv+t1uEBTcwPiBP00BuOy
	0c4rnTlrEawW9tMvgHhX9NCnLJ5ltfKA1eGYSmrHoagw7fV9hhtlxWxY/7ORaFxyH5xk
	3DLg==
X-Gm-Message-State: AGRZ1gL7ahvEzekIWZFRqlHjTYGX2pkFYU5a1qbZuQgbvHOdrXjTjPGz
	O288D0m4tGUMukcUCSag0zJCHlm9blRvRzvEvQg=
X-Google-Smtp-Source: AJdET5dJGWpYbpzfUq8lZjw1I+yAhwpvu9q08EqBw5pPxkLDfh7I7GuyfTuwrU57DrNBY6gi4tnwXetUa/X6n8x0HRc=
X-Received: by 2002:a02:5ec9:: with SMTP id h192mr515509jab.112.1542690872439; 
	Mon, 19 Nov 2018 21:14:32 -0800 (PST)
MIME-Version: 1.0
References: <20181115092658.29152-1-samuli.piippo@qt.io>
	<20181115092658.29152-2-samuli.piippo@qt.io>
	<CAJdd5GawDQsC9nfKxqEUWEMWoDw8ZbrMy-3xdF17=C_Z=Hk5Sw@mail.gmail.com>
	<HE1PR0201MB226527D27E394E02AD43585BE9DD0@HE1PR0201MB2265.eurprd02.prod.outlook.com>
	<CAJdd5GaMXbK8F9WziC52tV_YOS41T4q95vUAj+8Ne1q9wRuLHw@mail.gmail.com>
In-Reply-To: <CAJdd5GaMXbK8F9WziC52tV_YOS41T4q95vUAj+8Ne1q9wRuLHw@mail.gmail.com>
From: Samuli Piippo <samuli.piippo@gmail.com>
Date: Tue, 20 Nov 2018 07:14:21 +0200
Message-ID: <CABXoSoU2DeMvetJ_nY2AkSnaQigmLu36KkWtrrQ14mquJUc3kA@mail.gmail.com>
To: jpewhacker@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mingw][PATCH 2/2] cmake: add support for building nativesdk-cmake
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
X-List-Received-Date: Tue, 20 Nov 2018 05:14:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yeah, it was bad testing on my part, cmake really isn't ready for
prime-time until it works correctly from with the environment-setup
script.

I have enabled cmake on our sumo based SDK, where it works nicely with
the Qt Creator integration. It also builds there without the
winpthreads change. On thud, cmake was updated and now requires the
c++11 features from pthreads, which was more or less why I started
pushing these changes.

I'll update the patch and remove cmake from the packagegroup again.


On Mon, 19 Nov 2018 at 23:33, Joshua Watt <jpewhacker@gmail.com> wrote:
>
>
>
> On Fri, Nov 16, 2018 at 12:33 AM Samuli Piippo <samuli.piippo@qt.io> wrot=
e:
>>
>> I've been testing cmake with Qt Creator integration which explicitly use=
s -G "MinGW Makefiles", while cmake defaults to NMake Makefiles. I'm not su=
re if it's possible to set generator in the toolchain file.
>
>
> Hmm, so perhaps Qt creator isn't using %CC% %CFLAGS% & friends? Did you m=
anually configure it to pass the right arguments to the compiler (e.g. path=
 to sysroot and such)? That might explain why it works for you since AFAIK,=
 cmake can't handle "\" as a path separator, and that is what our environme=
nt setup script uses.
>
> I'm not specifically opposed to adding cmake to the SDK (I think it's pro=
bably a good idea even), but if we are adding it to the default SDK (native=
sdk-packagegroup-sdk-host) I think it would be wise for it to work as expec=
ted (e.g. work like it does in the Linux SDK). Fortunately, your patches se=
nt me off on a deeper tangent in my quest for automated testing of the MinG=
W SDK, and I believe I have actually done a significant amount of the work =
required to facilitate getting cmake working "as expected". You can take a =
look at my patches on the jpew/oeqa branch in meta-mingw-contrib. For the m=
ost part, the changes aren't too bad; the only one that really scares me is=
 the change to make the toolchain batch files use the unix path seperator (=
/) instead of the Windows separator (\) ("classes/toolchain-scripts-mingw32=
: Use Unix path separators"). I don't really know enough about cmake, so pe=
rhaps there is some better (cmake specific) mechanism that we can use inste=
ad?
>
> Just to be clear, I don't mind the changes you made to make cmake build, =
but I would prefer to not add it to the SDK by default until it actually wo=
rks with the SDK (and preferably has some test cases ;).
>
>
>>
>>
>> ________________________________
>> From: Joshua Watt <jpewhacker@gmail.com>
>> Sent: 16 November 2018 05:35:50
>> To: Samuli Piippo
>> Cc: Yocto list discussion
>> Subject: Re: [yocto] [meta-mingw][PATCH 2/2] cmake: add support for buil=
ding nativesdk-cmake
>>
>> On Thu, Nov 15, 2018 at 7:22 PM Samuli Piippo <samuli.piippo@qt.io> wrot=
e:
>> >
>> > Build nativesdk-cmake and dependency libs without without openssl.
>> >
>> > Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
>> > ---
>> >  .../nativesdk-packagegroup-sdk-host.bbappend              | 1 +
>> >  recipes-devtools/cmake/cmake_%.bbappend                   | 8 +++++++=
+
>> >  recipes-extended/libarchive/libarchive_%.bbappend         | 1 +
>> >  recipes-support/curl/curl_%.bbappend                      | 2 ++
>> >  4 files changed, 12 insertions(+)
>> >  create mode 100644 recipes-devtools/cmake/cmake_%.bbappend
>> >  create mode 100644 recipes-extended/libarchive/libarchive_%.bbappend
>> >  create mode 100644 recipes-support/curl/curl_%.bbappend
>> >
>> > diff --git a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-hos=
t.bbappend b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bba=
ppend
>> > index ad69b13..9544ffb 100644
>> > --- a/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbapp=
end
>> > +++ b/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bbapp=
end
>> > @@ -2,4 +2,5 @@ RDEPENDS_${PN}_mingw32 =3D "\
>> >      nativesdk-pkgconfig \
>> >      nativesdk-libtool \
>> >      nativesdk-qemu \
>> > +    nativesdk-cmake \
>>
>> Have you been successful at getting cmake to work properly in MinGW?
>> I've been working on automated tests for the SDK, and for kicks I
>> pulled in your changes and tried to write a test for cmake (heavily
>> borrowed from the cmake/assimp test in oe-core). When I ran the test,
>> I got the following:
>>
>> --- snip ---
>>
>> -- Building for: NMake Makefiles
>> -- The C compiler identification is GNU 8.2.0
>> CMake Error at Z:/projects/poky/build/tmp/work/qemux86-poky-linux/core-i=
mage-minimal/1.0-r0/testimage-sdk/CMakeTest-zljaq7x7/build/CMakeFiles/3.12.=
2/CMakeCCompiler.cmake:2
>> (set):
>>   Syntax error in cmake code at
>>
>>     Z:/projects/poky/build/tmp/work/qemux86-poky-linux/core-image-minima=
l/1.0-r0/testimage-sdk/CMakeTest-zljaq7x7/build/CMakeFiles/3.12.2/CMakeCCom=
piler.cmake:2
>>
>>   when parsing string
>>
>>       -m32 -march=3Di586
>> --sysroot=3DZ:\projects\poky\build\tmp\work\QEMU~ELC\CORE~B5D\1~~~~N25.0=
-R\TEST~Y0Z\\sysroots\i586-poky-linux
>>
>>   Invalid escape sequence \p
>> Call Stack (most recent call first):
>>   CMakeLists.txt:38 (PROJECT)
>>
>> --- snip ---
>>
>> It looks like cmake doesn't like the Windows style slashes in CFLAGS.
>>
>> You can see my test branch at jpew/oeqa in meta-mingw-contrib... it's
>> still in progress so it might be a bit of work if you want to try it
>> yourself.
>>
>> >      "
>> > diff --git a/recipes-devtools/cmake/cmake_%.bbappend b/recipes-devtool=
s/cmake/cmake_%.bbappend
>> > new file mode 100644
>> > index 0000000..f76cd82
>> > --- /dev/null
>> > +++ b/recipes-devtools/cmake/cmake_%.bbappend
>> > @@ -0,0 +1,8 @@
>> > +DEPENDS_remove_mingw32 =3D "ncurses"
>> > +
>> > +cmake_do_generate_toolchain_file_append_mingw32() {
>> > +    cat >> ${WORKDIR}/toolchain.cmake <<EOF
>> > +set( CMAKE_SYSTEM_NAME Windows )
>> > +EOF
>> > +}
>> > +
>> > diff --git a/recipes-extended/libarchive/libarchive_%.bbappend b/recip=
es-extended/libarchive/libarchive_%.bbappend
>> > new file mode 100644
>> > index 0000000..a411b40
>> > --- /dev/null
>> > +++ b/recipes-extended/libarchive/libarchive_%.bbappend
>> > @@ -0,0 +1 @@
>> > +EXTRA_OECONF_append_mingw32 =3D " --without-cng"
>> > diff --git a/recipes-support/curl/curl_%.bbappend b/recipes-support/cu=
rl/curl_%.bbappend
>> > new file mode 100644
>> > index 0000000..7865b46
>> > --- /dev/null
>> > +++ b/recipes-support/curl/curl_%.bbappend
>> > @@ -0,0 +1,2 @@
>> > +PACKAGECONFIG_remove_class-nativesdk_mingw32 =3D "ssl"
>> > +RRECOMMENDS_lib${BPN}_remove_mingw32 =3D "ca-certificates"
>> > --
>> > 2.17.1
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> yocto Info Page
>> lists.yoctoproject.org
>> Discussion of all things about the Yocto Project. Read our Community Gui=
delines or learn more about how to participate in other community discussio=
ns. Subscribe before posting to bypass moderation. To see the collection of=
 prior postings to the list, visit the yocto Archives.. Using yocto
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

