Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2DE0E00931; Fri,  1 Jul 2016 07:31:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A6FDE006D2
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 07:31:17 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id m2so58562244qtd.1
	for <yocto@yoctoproject.org>; Fri, 01 Jul 2016 07:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=32h1QcOzmMEX3uzjG2RdS6VhAhklXPfHu2Q9XpXLDB8=;
	b=uuUdAEfyh2pVFL8sTw/5Lyg2h5AlWzFFh2LmHsjs0vEQ4PEQQz9vOiqfFik3oAHmjJ
	fo9V1xeq0Uc4zV3UWoxS/uQJTkSVsk4/YAPWJjZOtDI/l4EAKDCR1iV4F9CLl+M0Dplj
	Hgib+oRBhw5liKa2qJBV//99dyKLMR1f8ogrLRtZ983XQZMUwZ6Tfw3OsurKzffeeMDH
	18CnT6itTT8QXfK9rIIxidHGR734K+1CsNX4gCyBu19zbeWWshUDZdMPgRqQH8Z9/2Hf
	TwxWRvnELzS+64e9px5fVQAgt9cYoa2luDXa5q+Jmc3H388MD4rnji4dftb7HHk9ZLYX
	RoHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=32h1QcOzmMEX3uzjG2RdS6VhAhklXPfHu2Q9XpXLDB8=;
	b=SA7MN0wOJdT2lNXkAXtcRyBZqLJDn4qfNi+jjbwqvVgq4BqMarAAztKoP84NrcdXwB
	e1ML++rAzWOK3PwM7FAUu6hFr2R9k+0GVRMU2PHkoMmU1momcyXvbYZGNGHISdOtt6Bc
	P9RtyAgEpjlxxtLvgAhWuhimc5qLcYy0c7SQsCQf3aRcPK4L94+XQNtNo/IEnzsa0c8j
	aeIRPI4RJtIb1rC5IdxPc8JUHrGTCzYkAEp3IeWeZQUkfRoqs7rIoDMoYi+3RaUARAMo
	woNRfXayZYH7jpKIV3ongnXH6rMdX0bOr2UjVp8W6TFxdibfdjm6NxZGvQRkmSRP9ych
	OWoQ==
X-Gm-Message-State: ALyK8tL5apf+MDuDBWcsZ3Hxva7pRLag5pG1RBM+ZEBO8nxiKb/tqZH++RKh7BfssDf4J5Wcipj7fMfAzAkaVg==
X-Received: by 10.200.42.43 with SMTP id k40mr32895907qtk.98.1467383476515;
	Fri, 01 Jul 2016 07:31:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Fri, 1 Jul 2016 07:30:47 -0700 (PDT)
In-Reply-To: <DB3PR04MB06840DD8C928F12BD653FE4AEE250@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <DB3PR04MB068442CB73636660A925BBFAEE210@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAMKF1sqzUPbS2ay9QVqOFZ7nnpLTX6ercDSC026aOSnC50jO7w@mail.gmail.com>
	<DB3PR04MB0684EF56CBB04EE78720B595EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAMKF1sr=7o2LnTtbgV=fEb+JMw2=vmvaN8b2iQSmZ1qJKd7SAw@mail.gmail.com>
	<CAMKF1sqSM_jtKm0BCzcpDCDFwQZe6jOA_AO+7acq2Yq-N731-w@mail.gmail.com>
	<CAMKF1soDAJ3hTV90UDTjwPc8U7G2x1m9jSLYnaaXGmJwbg7=FQ@mail.gmail.com>
	<DB3PR04MB06844D91E4A18CAAFDFD6194EE230@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAF3SDA7koAq8Z6fqmddTCrnbAsrbfjvTTVSFhRX43WD+xNRQTQ@mail.gmail.com>
	<DB3PR04MB0684768D40AAEB43CF618EF0EE240@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAF3SDA5Bf3shkBX+RqgRovCKtycByo3RFN8R80vXbfeRTvCKiQ@mail.gmail.com>
	<DB3PR04MB06840DD8C928F12BD653FE4AEE250@DB3PR04MB0684.eurprd04.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Jul 2016 07:30:47 -0700
Message-ID: <CAMKF1spHpPnBXBkpDDaSFaCUmGFKgA3Obs+VsCT85iEzeut_Gg@mail.gmail.com>
To: Zhenhua Luo <zhenhua.luo@nxp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to cross compile kernel with Yocto toolchain
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
X-List-Received-Date: Fri, 01 Jul 2016 14:31:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

you can try to set HOSTCC=3D/usr/bin/gcc along when you call make may be
via EXTRA_OEMAKE, problem you have is that kernel is expecting gcc to
be used for host utilties and ccache has overrides for gcc which may
not be working in all situations. Ideally you should just uninstall
ccache from your build host.

On Fri, Jul 1, 2016 at 1:45 AM, Zhenhua Luo <zhenhua.luo@nxp.com> wrote:
> Thanks a lot for your comments, Daniel.
>
> Can somebody please shed light on how to fix the issue in Yocto recipes?
>
>
> Best Regards,
>
> Zhenhua
>
>> -----Original Message-----
>> From: Daniel. [mailto:danielhilst@gmail.com]
>> Sent: Friday, July 01, 2016 4:48 AM
>> To: Zhenhua Luo <zhenhua.luo@nxp.com>
>> Cc: Khem Raj <raj.khem@gmail.com>; yocto@yoctoproject.org
>> Subject: Re: [yocto] Failed to cross compile kernel with Yocto toolchain
>>
>> The problem is that ccache is not finding the compiler after environment=
-
>> setup*.sh is sourced.Your error message can be foud at:
>> https://github.com/ccache/ccache/blob/master/ccache.c#L2075. It seems th=
at
>> its searching for "gcc" when I though that kernel would search for
>> "${CROSS_COMPILE}gcc"
>>
>> 2016-06-29 22:54 GMT-03:00 Zhenhua Luo <zhenhua.luo@nxp.com>:
>> > I think you mean /usr/lib64/ccache/gcc instead of /usr/lib64/gcc, it i=
s a valid
>> link.
>> >
>> > $ source /opt/poky/2.1+snapshot/environment-setup-ppce500mc-poky-
>> linux
>> > $ which gcc
>> > /usr/lib64/ccache/gcc
>> > $
>> > $ ls -l /usr/lib64/ccache/gcc
>> > lrwxrwxrwx 1 root root 16 Jun 29 18:22 /usr/lib64/ccache/gcc ->
>> > ../../bin/ccache $ ls -l /usr/bin/ccache -rwxr-xr-x 1 root root 128584
>> > Jan 26 14:58 /usr/bin/ccache $
>> >
>> >
>> > Best Regards,
>> >
>> > Zhenhua
>> >
>> >> -----Original Message-----
>> >> From: Daniel. [mailto:danielhilst@gmail.com]
>> >> Sent: Wednesday, June 29, 2016 8:14 PM
>> >> To: Zhenhua Luo <zhenhua.luo@nxp.com>
>> >> Cc: Khem Raj <raj.khem@gmail.com>; yocto@yoctoproject.org
>> >> Subject: Re: [yocto] Failed to cross compile kernel with Yocto
>> >> toolchain
>> >>
>> >> Is /usr/lib64/gcc a file or a link? Is it a valid link?
>> >>
>> >> 2016-06-29 5:52 GMT-03:00 Zhenhua Luo <zhenhua.luo@nxp.com>:
>> >> > The /usr/lib64/ccache is added in PATH by /etc/profile.d/ccache.sh
>> >> > when ccache is installed on Fedora host, the issue disappears if
>> >> > one of the following changes is done.
>> >> >
>> >> > 1.       Remove /usr/lib64/ccache from PATH
>> >> >
>> >> > 2.       Move /usr/lib64/ccache after /usr/bin in PATH
>> >> >
>> >> > 3.       Set CCACHE_PATH equals to PATH
>> >> >
>> >> > 4.       Unset CCACHE_PATH
>> >> >
>> >> >
>> >> >
>> >> > Another observation, before sourcing
>> >> > environment-setup-<core>-poky-linux,
>> >> > gcc can be found even if /usr/lib64/ccache is in prepend to PATH,
>> >> > but after sourcing the environment-setup-<core>-poky-linux script,
>> >> > the gcc can=E2=80=99t be found, this should be a bug of the
>> >> > environment-setup-<core>-poky-linux
>> >> > script. Should I open a Bugzilla ticket to track it?
>> >> >
>> >> >
>> >> >
>> >> > $ echo $PATH
>> >> >
>> >> > /usr/lib64/qt-3.3/bin:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/us
>> >> > r/l
>> >> > ocal/sbin:/usr/sbin:/home/bjsimics/.local/bin:/home/bjsimics/bin
>> >> >
>> >> > which gcc
>> >> >
>> >> > /usr/lib64/ccache/gcc
>> >> >
>> >> > $ gcc -v
>> >> >
>> >> > Using built-in specs.
>> >> >
>> >> > COLLECT_GCC=3D/usr/bin/gcc
>> >> >
>> >> > COLLECT_LTO_WRAPPER=3D/usr/libexec/gcc/x86_64-redhat-linux/5.3.1/lt=
o-
>> >> wra
>> >> > pper
>> >> >
>> >> > Target: x86_64-redhat-linux
>> >> >
>> >> > Configured with: ../configure --enable-bootstrap
>> >> > --enable-languages=3Dc,c++,objc,obj-c++,fortran,ada,go,lto
>> >> > --prefix=3D/usr --mandir=3D/usr/share/man --infodir=3D/usr/share/in=
fo
>> >> > --with-bugurl=3Dhttp://bugzilla.redhat.com/bugzilla --enable-shared
>> >> > --enable-threads=3Dposix --enable-checking=3Drelease --enable-multi=
lib
>> >> > --with-system-zlib --enable-__cxa_atexit
>> >> > --disable-libunwind-exceptions --enable-gnu-unique-object
>> >> > --enable-linker-build-id --with-linker-hash-style=3Dgnu
>> >> > --enable-plugin --enable-initfini-array --disable-libgcj
>> >> > --with-default-libstdcxx-abi=3Dgcc4-compatible --with-isl
>> >> > --enable-libmpx --enable-gnu-indirect-function --with-tune=3Dgeneri=
c
>> >> > --with-arch_32=3Di686 --build=3Dx86_64-redhat-linux
>> >> >
>> >> > Thread model: posix
>> >> >
>> >> > gcc version 5.3.1 20160406 (Red Hat 5.3.1-6) (GCC)
>> >> >
>> >> > $
>> >> >
>> >> > $ source /opt/poky/2.1+snapshot/environment-setup-ppce500mc-poky-
>> >> linux
>> >> >
>> >> > $
>> >> >
>> >> > $ echo $PATH
>> >> >
>> >> > /opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/p
>> >> > oky
>> >> > /2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/sbin:/opt/poky/2.1+
>> >> > sna
>> >> > pshot/sysroots/x86_64-pokysdk-linux/bin:/opt/poky/2.1+snapshot/sysr
>> >> > oot
>> >> > s/x86_64-pokysdk-linux/sbin:/opt/poky/2.1+snapshot/sysroots/x86_64-
>> >> > pok
>> >> > ysdk-linux/usr/bin/../x86_64-pokysdk-linux/bin:/opt/poky/2.1+snapsh
>> >> > ot/
>> >> > sysroots/x86_64-pokysdk-linux/usr/bin/powerpc-poky-linux:/opt/poky/
>> >> > 2.1
>> >> > +snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/powerpc-poky-linux-
>> >> > +ucl
>> >> > ibc:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/po
>> >> > wer
>> >> > pc-poky-linux-musl:/usr/lib64/qt-3.3/bin:/usr/lib64/ccache:/usr/loc
>> >> > al/
>> >> > bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/bjsimics/.local/bin:/h
>> >> > ome
>> >> > /bjsimics/bin
>> >> >
>> >> > $
>> >> >
>> >> > $ which gcc
>> >> >
>> >> > /usr/lib64/ccache/gcc
>> >> >
>> >> > $ gcc -v
>> >> >
>> >> > ccache: error: Could not find compiler "gcc" in PATH
>> >> >
>> >> > $
>> >> >
>> >> >
>> >> >
>> >> >
>> >> >
>> >> > Best Regards,
>> >> >
>> >> >
>> >> >
>> >> > Zhenhua
>> >> >
>> >> >
>> >> >
>> >> > From: Khem Raj [mailto:raj.khem@gmail.com]
>> >> > Sent: Tuesday, June 28, 2016 10:48 PM
>> >> > To: Zhenhua Luo <zhenhua.luo@nxp.com>
>> >> > Cc: yocto@yoctoproject.org
>> >> > Subject: RE: [yocto] Failed to cross compile kernel with Yocto
>> >> > toolchain
>> >> >
>> >> >
>> >> >
>> >> > /usr/lib64/ccache is unusual why do you have it in path and if you
>> >> > really need it add it after all other paths. Check your env first
>> >> >
>> >> >
>> >> >
>> >> > On Jun 27, 2016 10:56 PM, "Zhenhua Luo" <zhenhua.luo@nxp.com> wrote=
:
>> >> >
>> >> > Hello Khem,
>> >> >
>> >> >
>> >> >> -----Original Message-----
>> >> >> From: Khem Raj [mailto:raj.khem@gmail.com]
>> >> >> Sent: Tuesday, June 28, 2016 12:36 AM
>> >> >> To: Zhenhua Luo <zhenhua.luo@nxp.com>
>> >> >> Cc: yocto@yoctoproject.org
>> >> >> Subject: Re: [yocto] Failed to cross compile kernel with Yocto
>> >> >> toolchain
>> >> >>
>> >> >> On Mon, Jun 27, 2016 at 1:16 AM, Zhenhua Luo <zhenhua.luo@nxp.com>
>> >> >> wrote:
>> >> >> > Hello all,
>> >> >> >
>> >> >> >
>> >> >> >
>> >> >> > I generate the Yocto toolchain by =E2=80=9Cbitbake meta-toolchai=
n=E2=80=9D, and
>> >> >> > use this toolchain to cross-compile kernel, I met the following =
error.
>> >> >> > Is this a bug or I missed something? My host Linux is Fedora 22.
>> >> >>
>> >> >> its better to start using bitbake -cpopulate_sdk <image name> to
>> >> >> generate SDKs.
>> >> >>
>> >> >>
>> >> >> >
>> >> >> >
>> >> >> >
>> >> >> > $ source
>> >> >> > /opt/poky/2.1+snapshot/environment-setup-ppce500mc-poky-
>> >> >> linux
>> >> >> >
>> >> >> > $ cd linux/
>> >> >> >
>> >> >> > $ make corenet32_smp_defconfig
>> >> >> >
>> >> >> >   HOSTCC  scripts/kconfig/conf.o
>> >> >> >
>> >> >> > ccache: error: Could not find compiler "gcc" in PATH
>> >> >>
>> >> >> did you see if gcc is in your path after sourcing SDK env script?
>> >> >
>> >> > [Luo Zhenhua-B19537] gcc can't be found after sourcing the SDK env =
script.
>> >> > but the /usr/bin is in the PATH env variable.
>> >> > $ source /opt/poky/2.1+snapshot/environment-setup-ppce500mc-poky-
>> >> linux
>> >> > $ echo $PATH
>> >> > /opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/p
>> >> > oky
>> >> > /2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/sbin:/opt/poky/2.1+
>> >> > sna
>> >> > pshot/sysroots/x86_64-pokysdk-linux/bin:/opt/poky/2.1+snapshot/sysr
>> >> > oot
>> >> > s/x86_64-pokysdk-linux/sbin:/opt/poky/2.1+snapshot/sysroots/x86_64-
>> >> > pok
>> >> > ysdk-linux/usr/bin/../x86_64-pokysdk-linux/bin:/opt/poky/2.1+snapsh
>> >> > ot/
>> >> > sysroots/x86_64-pokysdk-linux/usr/bin/powerpc-poky-linux:/opt/poky/
>> >> > 2.1
>> >> > +snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/powerpc-poky-linux-
>> >> > +ucl
>> >> > ibc:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/po
>> >> > wer
>> >> > pc-poky-linux-musl:/usr/lib64/qt-3.3/bin:/usr/lib64/ccache:/usr/loc
>> >> > al/
>> >> > bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/bjsimics/.local/bin:/h
>> >> > ome
>> >> > /bjsimics/bin
>> >> > $ echo $CCACHE_PATH
>> >> > /opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-
>> >> linux/usr/bin:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-
>> >> linux/usr/bin/../x86_64-pokysdk-
>> >> linux/bin:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-
>> >> linux/usr/bin/powerpc-poky-linux:/opt/poky/2.1+snapshot/sysroots/x86_
>> >> 64-
>> >> pokysdk-linux/usr/bin/powerpc-poky-linux-
>> >> uclibc:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-
>> >> linux/usr/bin/powerpc-poky-linux-musl:
>> >> > $ which gcc
>> >> > /usr/lib64/ccache/gcc
>> >> > $ gcc -v
>> >> >
>> >> > ccache: error: Could not find compiler "gcc" in PATH
>> >> >
>> >> > Best Regards,
>> >> >
>> >> > Zhenhua
>> >> >
>> >> >
>> >> >> > scripts/Makefile.host:108: recipe for target 'scripts/kconfig/co=
nf.o'
>> >> >> > failed
>> >> >> >
>> >> >> > make[1]: *** [scripts/kconfig/conf.o] Error 1
>> >> >> >
>> >> >> > Makefile:541: recipe for target 'corenet32_smp_defconfig' failed
>> >> >> >
>> >> >> > make: *** [corenet32_smp_defconfig] Error 2
>> >> >> >
>> >> >> >
>> >> >> >
>> >> >> >
>> >> >> >
>> >> >> > Best Regards,
>> >> >> >
>> >> >> >
>> >> >> >
>> >> >> > Zhenhua
>> >> >> >
>> >> >> >
>> >> >> > --
>> >> >> > _______________________________________________
>> >> >> > yocto mailing list
>> >> >> > yocto@yoctoproject.org
>> >> >> > https://lists.yoctoproject.org/listinfo/yocto
>> >> >> >
>> >> >
>> >> >
>> >> >
>> >> >
>> >> > --
>> >> > _______________________________________________
>> >> > yocto mailing list
>> >> > yocto@yoctoproject.org
>> >> > https://lists.yoctoproject.org/listinfo/yocto
>> >> >
>> >>
>> >>
>> >>
>> >> --
>> >> "Do or do not. There is no try"
>> >>   Yoda Master
>>
>>
>>
>> --
>> "Do or do not. There is no try"
>>   Yoda Master

