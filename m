Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AB0DE00CE9; Wed, 29 Jun 2016 05:13:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18E26E00C9B
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 05:13:33 -0700 (PDT)
Received: by mail-vk0-f68.google.com with SMTP id v6so6115702vkb.1
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 05:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=C77pUqUXbBAm5n7vRdMBDcI4+YhNrv7NgR6K9QJ250o=;
	b=Vgp4VvFzjEWGExhF+1MrKsPbvOFnU0jcUlCRAaSid6isYD+867YxL7gi5n1sABDSZu
	KSJZqQloP5EkFahiXSXcPNRlcoQ5IsOLfFtZHhagSBxrupDOqtoej/AYKBYjXAtJ0q5n
	6itnFiG/IcCS2bK2cNzwcrI6W97S/BdhiS9Y4TC5FqorwURII4/nga3c7ADVrqWjNa5o
	ZnJ/Ln8nu+Gllw5Ss0DadflsPcmg0NgBFgs4M0nJH0nzi+vXylHYPfnEhaNw3jZ70WD2
	1Rkkr7RT9TDdNzxL1QAv0rfPOvt2cNIO8hlaK8Szeh9Dhwe1vP8vi49SQfe5pXIBOjxX
	TSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=C77pUqUXbBAm5n7vRdMBDcI4+YhNrv7NgR6K9QJ250o=;
	b=Y6TEcyx171EwwAjUBuHc4nwMxUJyjKbezd/7pErTpIQ7C+/GFRFfGoDBs//2HTYZW7
	/ZQkn/tSKD5ud+IDF4jdNKvEY8zRdN3nMzViA/p4KZ2L8yx6UEp5OZ+mH+XPU8w3z8fF
	vPx0LLK2FDECSqD2ROgIjWyS6XIjPA7ttz0YsbyjzbdeYouxZgeITDXDJhUD48L2GjJ9
	R0UOc+kI98iGAGO/tq5d/jStAFCsro6z7C1nfXqyW66SnNf5yP8deGEqXkvbNPkVHlIq
	R/lXJXZ5hQTde8g7JpCS1u1HBxn2KcrGEofs07vD1IpOHXQMj0SUm27w+QONsChZc5gy
	67Ww==
X-Gm-Message-State: ALyK8tKUX4cWxYdwRYOFFEvJZO9sUmKwZtkuWdxU4uQdPDrTxFgrNETY2aXWENZjF8FXub7kQQHFeh2zGiV9Sg==
X-Received: by 10.31.53.75 with SMTP id c72mr3422903vka.62.1467202412262; Wed,
	29 Jun 2016 05:13:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.50 with HTTP; Wed, 29 Jun 2016 05:13:31 -0700 (PDT)
In-Reply-To: <DB3PR04MB06844D91E4A18CAAFDFD6194EE230@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <DB3PR04MB068442CB73636660A925BBFAEE210@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAMKF1sqzUPbS2ay9QVqOFZ7nnpLTX6ercDSC026aOSnC50jO7w@mail.gmail.com>
	<DB3PR04MB0684EF56CBB04EE78720B595EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAMKF1sr=7o2LnTtbgV=fEb+JMw2=vmvaN8b2iQSmZ1qJKd7SAw@mail.gmail.com>
	<CAMKF1sqSM_jtKm0BCzcpDCDFwQZe6jOA_AO+7acq2Yq-N731-w@mail.gmail.com>
	<CAMKF1soDAJ3hTV90UDTjwPc8U7G2x1m9jSLYnaaXGmJwbg7=FQ@mail.gmail.com>
	<DB3PR04MB06844D91E4A18CAAFDFD6194EE230@DB3PR04MB0684.eurprd04.prod.outlook.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 29 Jun 2016 09:13:31 -0300
Message-ID: <CAF3SDA7koAq8Z6fqmddTCrnbAsrbfjvTTVSFhRX43WD+xNRQTQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 29 Jun 2016 12:13:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Is /usr/lib64/gcc a file or a link? Is it a valid link?

2016-06-29 5:52 GMT-03:00 Zhenhua Luo <zhenhua.luo@nxp.com>:
> The /usr/lib64/ccache is added in PATH by /etc/profile.d/ccache.sh when
> ccache is installed on Fedora host, the issue disappears if one of the
> following changes is done.
>
> 1.       Remove /usr/lib64/ccache from PATH
>
> 2.       Move /usr/lib64/ccache after /usr/bin in PATH
>
> 3.       Set CCACHE_PATH equals to PATH
>
> 4.       Unset CCACHE_PATH
>
>
>
> Another observation, before sourcing environment-setup-<core>-poky-linux,
> gcc can be found even if /usr/lib64/ccache is in prepend to PATH, but aft=
er
> sourcing the environment-setup-<core>-poky-linux script, the gcc can=E2=
=80=99t be
> found, this should be a bug of the environment-setup-<core>-poky-linux
> script. Should I open a Bugzilla ticket to track it?
>
>
>
> $ echo $PATH
>
> /usr/lib64/qt-3.3/bin:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/loca=
l/sbin:/usr/sbin:/home/bjsimics/.local/bin:/home/bjsimics/bin
>
> which gcc
>
> /usr/lib64/ccache/gcc
>
> $ gcc -v
>
> Using built-in specs.
>
> COLLECT_GCC=3D/usr/bin/gcc
>
> COLLECT_LTO_WRAPPER=3D/usr/libexec/gcc/x86_64-redhat-linux/5.3.1/lto-wrap=
per
>
> Target: x86_64-redhat-linux
>
> Configured with: ../configure --enable-bootstrap
> --enable-languages=3Dc,c++,objc,obj-c++,fortran,ada,go,lto --prefix=3D/us=
r
> --mandir=3D/usr/share/man --infodir=3D/usr/share/info
> --with-bugurl=3Dhttp://bugzilla.redhat.com/bugzilla --enable-shared
> --enable-threads=3Dposix --enable-checking=3Drelease --enable-multilib
> --with-system-zlib --enable-__cxa_atexit --disable-libunwind-exceptions
> --enable-gnu-unique-object --enable-linker-build-id
> --with-linker-hash-style=3Dgnu --enable-plugin --enable-initfini-array
> --disable-libgcj --with-default-libstdcxx-abi=3Dgcc4-compatible --with-is=
l
> --enable-libmpx --enable-gnu-indirect-function --with-tune=3Dgeneric
> --with-arch_32=3Di686 --build=3Dx86_64-redhat-linux
>
> Thread model: posix
>
> gcc version 5.3.1 20160406 (Red Hat 5.3.1-6) (GCC)
>
> $
>
> $ source /opt/poky/2.1+snapshot/environment-setup-ppce500mc-poky-linux
>
> $
>
> $ echo $PATH
>
> /opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/poky/2.=
1+snapshot/sysroots/x86_64-pokysdk-linux/usr/sbin:/opt/poky/2.1+snapshot/sy=
sroots/x86_64-pokysdk-linux/bin:/opt/poky/2.1+snapshot/sysroots/x86_64-poky=
sdk-linux/sbin:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin=
/../x86_64-pokysdk-linux/bin:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk=
-linux/usr/bin/powerpc-poky-linux:/opt/poky/2.1+snapshot/sysroots/x86_64-po=
kysdk-linux/usr/bin/powerpc-poky-linux-uclibc:/opt/poky/2.1+snapshot/sysroo=
ts/x86_64-pokysdk-linux/usr/bin/powerpc-poky-linux-musl:/usr/lib64/qt-3.3/b=
in:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/hom=
e/bjsimics/.local/bin:/home/bjsimics/bin
>
> $
>
> $ which gcc
>
> /usr/lib64/ccache/gcc
>
> $ gcc -v
>
> ccache: error: Could not find compiler "gcc" in PATH
>
> $
>
>
>
>
>
> Best Regards,
>
>
>
> Zhenhua
>
>
>
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Tuesday, June 28, 2016 10:48 PM
> To: Zhenhua Luo <zhenhua.luo@nxp.com>
> Cc: yocto@yoctoproject.org
> Subject: RE: [yocto] Failed to cross compile kernel with Yocto toolchain
>
>
>
> /usr/lib64/ccache is unusual why do you have it in path and if you really
> need it add it after all other paths. Check your env first
>
>
>
> On Jun 27, 2016 10:56 PM, "Zhenhua Luo" <zhenhua.luo@nxp.com> wrote:
>
> Hello Khem,
>
>
>> -----Original Message-----
>> From: Khem Raj [mailto:raj.khem@gmail.com]
>> Sent: Tuesday, June 28, 2016 12:36 AM
>> To: Zhenhua Luo <zhenhua.luo@nxp.com>
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Failed to cross compile kernel with Yocto toolchain
>>
>> On Mon, Jun 27, 2016 at 1:16 AM, Zhenhua Luo <zhenhua.luo@nxp.com>
>> wrote:
>> > Hello all,
>> >
>> >
>> >
>> > I generate the Yocto toolchain by =E2=80=9Cbitbake meta-toolchain=E2=
=80=9D, and use
>> > this toolchain to cross-compile kernel, I met the following error. Is
>> > this a bug or I missed something? My host Linux is Fedora 22.
>>
>> its better to start using bitbake -cpopulate_sdk <image name> to generat=
e
>> SDKs.
>>
>>
>> >
>> >
>> >
>> > $ source /opt/poky/2.1+snapshot/environment-setup-ppce500mc-poky-
>> linux
>> >
>> > $ cd linux/
>> >
>> > $ make corenet32_smp_defconfig
>> >
>> >   HOSTCC  scripts/kconfig/conf.o
>> >
>> > ccache: error: Could not find compiler "gcc" in PATH
>>
>> did you see if gcc is in your path after sourcing SDK env script?
>
> [Luo Zhenhua-B19537] gcc can't be found after sourcing the SDK env script=
.
> but the /usr/bin is in the PATH env variable.
> $ source /opt/poky/2.1+snapshot/environment-setup-ppce500mc-poky-linux
> $ echo $PATH
> /opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/poky/2.=
1+snapshot/sysroots/x86_64-pokysdk-linux/usr/sbin:/opt/poky/2.1+snapshot/sy=
sroots/x86_64-pokysdk-linux/bin:/opt/poky/2.1+snapshot/sysroots/x86_64-poky=
sdk-linux/sbin:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin=
/../x86_64-pokysdk-linux/bin:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk=
-linux/usr/bin/powerpc-poky-linux:/opt/poky/2.1+snapshot/sysroots/x86_64-po=
kysdk-linux/usr/bin/powerpc-poky-linux-uclibc:/opt/poky/2.1+snapshot/sysroo=
ts/x86_64-pokysdk-linux/usr/bin/powerpc-poky-linux-musl:/usr/lib64/qt-3.3/b=
in:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/hom=
e/bjsimics/.local/bin:/home/bjsimics/bin
> $ echo $CCACHE_PATH
> /opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/poky/2.=
1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/../x86_64-pokysdk-linux/bi=
n:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/powerpc-poky=
-linux:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/powerpc=
-poky-linux-uclibc:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr=
/bin/powerpc-poky-linux-musl:
> $ which gcc
> /usr/lib64/ccache/gcc
> $ gcc -v
>
> ccache: error: Could not find compiler "gcc" in PATH
>
> Best Regards,
>
> Zhenhua
>
>
>> > scripts/Makefile.host:108: recipe for target 'scripts/kconfig/conf.o'
>> > failed
>> >
>> > make[1]: *** [scripts/kconfig/conf.o] Error 1
>> >
>> > Makefile:541: recipe for target 'corenet32_smp_defconfig' failed
>> >
>> > make: *** [corenet32_smp_defconfig] Error 2
>> >
>> >
>> >
>> >
>> >
>> > Best Regards,
>> >
>> >
>> >
>> > Zhenhua
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
"Do or do not. There is no try"
  Yoda Master

