Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DE01E00CB9; Tue, 22 Aug 2017 07:43:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.135 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AA04E00C14
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 07:43:18 -0700 (PDT)
Received: from oxbaltgw10.schlund.de ([172.19.246.16]) by
	mrelayeu.kundenserver.de (mreue003 [212.227.15.163]) with ESMTPSA
	(Nemesis)
	id 0Liq3V-1d85x310RB-00cvzd; Tue, 22 Aug 2017 16:43:08 +0200
Date: Tue, 22 Aug 2017 15:43:07 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Message-ID: <1860092135.29844.1503412987767@email.1and1.co.uk>
In-Reply-To: <CAHiDW_H+OPiekHXkoU2yxSbOXcuFoLKVvEG6U5XxQ8Htsu=K0Q@mail.gmail.com>
References: <0fe401d31b4c$ad25dac0$07719040$@ln-systems.com>
	<CAHiDW_H+OPiekHXkoU2yxSbOXcuFoLKVvEG6U5XxQ8Htsu=K0Q@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev30
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:N5e8hsYPrSaiTDptmH10DS9m8k6X8b1MQjvLEXBgg5ikR+2/xw0
	B68QCu2+h2j17nhwH0XMpUSVRbKzhsC6oXI49DsAkugK+IurRwrCzMqwjX4loOeM/8WUSBo
	jNlQBslhhNYDDY0t+EQdaW2FQkgOixY0F7gwxLA04gNhatcRo7LtreHpnMzvAvkAZIRZX52
	AK0hTGZMwfREao9MUL+GA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:+vopduCQ+uI=:Nmor0lYOdX2m1k5qzyprEe
	ydHg8HIZkGuJabujOO/iut6ulEmVtJwj3FKC37e71d3UV8D1q3nhrAr/NW5KvN499napBIMD0
	qVpfqbzoFO0OJP4+OefEAAGjx99dgqbQeUwN6mg+F9PRT5DjqZ3sf2AYMR4dga37/qJ7WdDcP
	N1FVUU7eRi86BGFhmWG+JNJsJJL66nCVpvl/JRriJZKQBg8GG/YhnD+W12/mhoiF1Fpasw3+G
	8t2FSH67k0nhzvNZSEMEvEyIPSZ3HIDU7L8D0I1KfNkW+x2SfHVew7GafQFAAsip/PpzEJq0h
	UjDnsPClj4V/5DbUvHDPC2x0ZT45ofFmxxpBEFlkQgplhCyp/ei34DdI1yZdQM3/i6ezjtrGx
	4KiLLdLDYKH0coy1zG5gEk904s94WSZTaPdUGpD0XwfcUrgx/iBOliMvXWxxkZsQW188zSuHV
	gepr6+tPuZUEQ94c/+i6mCii5UigvM3mLc/Yw+QpKanavwMGHFza2WVqhGOM36sn07elCW+gX
	rhxte+aTY8jtisEdH40ZggS09KUAActviPIC8zVravQtMTmwxvLSFrgCneh/Stj5zissaXf39
	gtLAzyP5jp/V2wEEHuS7qrm6IhAxWE0UgxqZ9r4nkGsNGwCIZLzEfHfkH9dP+V9JXln2vcQ3r
	Cec4lT4Vlj/SWR18weYAjeh5HoCNl//gimTJw/Sl5C4I+dWqhRbNbtxPpguh0dUUhS+aS8gje
	+MwKqWaXUxWVlcj2ot/ikW7RrLLR7GJNwsZBaB7CPTWMLqjqyfw8Il+U648=
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Custom recipe - resolving "do_package_qa: QA Issue: -dev package contains non-symlink .so"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Aug 2017 14:43:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


> On 22 August 2017 at 15:13 Jussi Kukkonen <jussi.kukkonen@intel.com> wrot=
e:
>=20
> On 22 August 2017 at 16:43, <colin.helliwell@ln-systems.com> wrote:
> >
> > I have a custom recipe (for the AWS SDK), which is failing at the packa=
ge_qa
> > stage.
> > The recipe is a very basic cmake styley, and on its own seems to begin =
with:
> > 'bitbake -f -c package aws-sdk' =C2=A0completes without errors.
> >
> > But for 'bitbake -c package_qa aws-sdk) I get:
> >
> > ERROR: aws-sdk-1.1.31-r0 do_package_qa: QA Issue: -dev package contains
> > non-symlink .so: aws-sdk-dev path
> > '/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.1.31-r0/packages-split/=
aws-s
> > dk-dev/usr/lib/libaws-cpp-sdk-core.so'
> > -dev package contains non-symlink .so: aws-sdk-dev path
> > '/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.1.31-r0/packages-split/=
aws-s
> > dk-dev/usr/lib/libaws-cpp-sdk-s3.so' [dev-elf]
> >
> > I'd appreciate help with resolving this. Thanks.>
> >
>=20
> It looks like aws-sdk installs .so files that are actual libraries (and n=
ot symlinks to the versioned libraries as would be the usual case). The bes=
t solution would be to get aws to install versioned libraries but if that's=
 not an option, you probably want to package the .so files in the actual li=
brary package, not the -dev package (which is the default since usually .so=
 are symlinks for development and the actually versioned ).
>=20
> You may have to set both FILES_${PN}-dev and FILES_${PN} (so the former d=
oesn't grab the so files, and the latter does)
>=20
> HTH,
> =C2=A0 Jussi

Thanks for the tips, Jussi.
I'm managing to get a little further, added
INSANE_SKIP_${PN}-dev +=3D "dev-elf"
FILES_${PN}-dev +=3D "${libdir}/libaws-cpp-sdk-core.so ${libdir}/libaws-cpp=
-sdk-s3.so"
FILES_${PN} +=3D "${libdir}/libaws-cpp-sdk-core.so ${libdir}/libaws-cpp-sdk=
-s3.so"

and now the package_qa succeeds, but when I try to build the full system im=
age I get:

ERROR: core-image-wg2xx-1.0-r0 do_rootfs: Unable to install packages. Comma=
nd '/home/colin/fsl-community-bsp/build/tmp/sysroots/x86_64-linux/usr/bin/a=
pt-get  install --force-yes --allow-unauthenticated  .....' returned 100:
Reading package lists...
Building dependency tree...
Reading state information...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 packagegroup-my-apps : Depends: aws-sdk but it is not installable
E: Unable to correct problems, you have held broken packages.

Perhaps the INSANE_SKIP is un-necessary/over-zealous, but I didn't yet mana=
ge to get through the package_qa without it.=20
(Admittedly, I wasn't *100%* sure of what you were suggesting...)

