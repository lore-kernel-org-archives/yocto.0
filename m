Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f54.google.com (mail-oa0-f54.google.com
	[209.85.219.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D395E01358
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 00:56:00 -0700 (PDT)
Received: by mail-oa0-f54.google.com with SMTP id j10so10603638oah.27
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 00:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=7LUQ+jMHvmGDYIH+3abQJvLa6NpE9Xrcu0RMC1M0fJI=;
	b=IrIkp74wt1jXveoNcnqWVoZjZgKFBo32fscAMIvlBPN6vlzKpATmIJKFdqLhGz67Zb
	daKfyiL93TrUuQUBUL9KuOhEOosp9FccQDLS3sYCI2rg1rAtoQvCkRTNlVqSbvcKdFt6
	fUAJZCbjAryNZkyS0NP4r/AqA/ae59nFGDts/UX97o4vHhKaoPn8KQBfbIA/nR+mcveG
	I8aeVPpK2y7RtPzcCqQGTe3eMlpqfX9eIXc9Iz+3knPttgM8fAWu40R/GjheEAKOP4xI
	TdWKmUqVE7SiqJkRKG0GSSE0MwTPA5MqtGxJOQqUHWt0U3kHXbNr/xCO9i0bAe8pzMkN
	IJRw==
MIME-Version: 1.0
X-Received: by 10.60.63.68 with SMTP id e4mr5446687oes.23.1378972559349; Thu,
	12 Sep 2013 00:55:59 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Thu, 12 Sep 2013 00:55:59 -0700 (PDT)
In-Reply-To: <CABHD4K9m06Rd3NNbB3ha4xz_ohFicXaQTBuOPzj4fkgA19Bg0g@mail.gmail.com>
References: <CABHD4K9QJO=OOojPX4KmHXBMgfDK1wX-nWasJ82CL3m1ZzoZUg@mail.gmail.com>
	<CAFyqS9qQd1mcQ1OYxjRbRZnwezA=V8bvCLb+uvMBDYS1EwM-dA@mail.gmail.com>
	<CABHD4K9m06Rd3NNbB3ha4xz_ohFicXaQTBuOPzj4fkgA19Bg0g@mail.gmail.com>
Date: Thu, 12 Sep 2013 09:55:59 +0200
Message-ID: <CAFyqS9rMfTRP9zT0-99fUgyPhr0fxHNKR=ozVAZa4HbH+1Or+g@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: amit tomer <amittomer25@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to change machine name in yocto
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
X-List-Received-Date: Thu, 12 Sep 2013 07:56:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 12, 2013 at 9:11 AM, amit tomer <amittomer25@gmail.com> wrote:
> Thanks Hans for kind reply
>
> I somehow manage to change the machine name in build confriguation
>
> Build Configuration:
> BB_VERSION        =3D "1.18.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "RedHatEnterpriseServer-5.6"
> TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> MACHINE           =3D "k2"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.4.1"
> TUNE_FEATURES     =3D "armv7a vfp neon callconvention-hard cortexa15"
> TARGET_FPU        =3D "vfp-neon"
> meta
> meta-yocto
>
>
> Now machine name is K2 for me,what I did is rename the
> "/meta-xyz/conf/machine/pyp-ii.conf  to k2.conf and set  MACHINE=3Dk2 in
> build/conf/local.conf .
>
>
> But my bitbake is still failing with different error this time.
>
> Could you please let me know whats needs to be changed in
> "build/conf/bblayers.conf file"  in order to change machine name. below i=
s
> my "build/conf/bblayers.conf" file
>
Since your MACHINE is presented as "k2", the .conf file has been
picked up correctly. So far so good.
You should not need to add anything else in your bblayers.conf.
The new errors you are referring to might have nothing to do with your
current MACHINE setting.
You need to show the actual error you get. Not much we can do to help other=
wise.

Thanks.
Hans

>
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION =3D "6"
>
> BBPATH =3D "${TOPDIR}"
> BBFILES ?=3D ""
>
> BBLAYERS ?=3D " \
>   ${TOPDIR}/../poky/meta \
>   ${TOPDIR}/../poky/meta-yocto \
>   ${TOPDIR}/../poky/meta-yocto-bsp \
>   ${TOPDIR}/../linaro/meta-linaro-toolchain \
>   ${TOPDIR}/../meta-ti \
>   ${TOPDIR}/../meta-nsn \
>   "
> BBLAYERS_NON_REMOVABLE ?=3D " \
>   ${TOPDIR}/../poky/meta \
>   ${TOPDIR}/../poky/meta-yocto \
>   "
>
> BBMASK =3D "meta-ti/recipes-misc"
> BBMASK .=3D "|meta-ti/recipes-graphics"
>
> # meta-linaro is only able to supply linaro-4.7 without
> # toolchain-layer, therefore mask out linaro-4.6.  Note
> # that an associated change in local.conf to remove
> # toolchain-layer from LAYERDEPENDS_linaro is required.
> BBMASK .=3D "|gcc.*_linaro-4\.[^7]"
>
> # mask out lrc specific layer(s)
> BBMASK .=3D "|meta-nsn/recipes-connectivity-lrc"
>
>
>
>
> On Wed, Sep 11, 2013 at 8:26 PM, Hans Beck=E9rus <hans.beckerus@gmail.com=
>
> wrote:
>>
>> The MACHINE is simply a pointer to a machine specific configuration
>> file. So if you set your MACHINE=3Dfoo, then somewhere in your bblayer
>> path(s) you need to make sure that a conf/machine/foo.conf is
>> available. Then it will use that.
>> Typically, I think you should do this in your own bsp meta, eg.
>> meta-foo/conf/machine/foo.conf and then add meta-foo to your
>> build/conf/bblayers.conf file.
>>
>> Thanks,
>> Hans
>>
>>
>>
>> On Wed, Sep 11, 2013 at 4:30 PM, amit tomer <amittomer25@gmail.com> wrot=
e:
>> >  I am new to opensource build framework Yocto and have a requirement
>> > wherein
>> > wanted to change the machine name ,when I do BITBAKE image-name
>> >
>> > Build Configuration:
>> >
>> > BB_VERSION        =3D "1.18.0"
>> > BUILD_SYS         =3D "x86_64-linux"
>> > NATIVELSBSTRING   =3D "RedHatEnterpriseServer-5.6"
>> > TARGET_SYS        =3D "arm-poky-linux-gnueabi"
>> > MACHINE           =3D "pyp-ii"
>> > DISTRO            =3D "poky"
>> > DISTRO_VERSION    =3D "1.4.1"
>> > TUNE_FEATURES     =3D "armv7a vfp neon callconvention-hard cortexa15"
>> > TARGET_FPU        =3D "vfp-neon"
>> > meta
>> > meta-yocto
>> > meta-yocto-bsp    =3D
>> > "(nobranch):beda5013e46da16a3d76f095869a5a5c5b1bc08a"
>> > meta-linaro-toolchain =3D
>> > "(nobranch):0f679485b945c1b929a44d1865eb517a096ac4ef"
>> > meta-ti           =3D "(nobranch):3eb71003af3ebb025285493721332111ac58=
1a42
>> >
>> > Now MACHIEN name I wanted to change something like k2 from pyp-ii ,I
>> > tried
>> > changing it in local.conf file but I am getting error like
>> >
>> > ERROR: OE-core's config sanity checker detected a potential
>> > misconfiguration. Either fix the cause of this error or at your own ri=
sk
>> > disable the checker (see sanity.conf). Following is the list of
>> > potential
>> > problems / advisories:
>> >
>> > Please set a valid MACHINE in your local.conf or environment
>> >
>> > ERROR: Execution of event handler 'check_sanity_eventhandler' failed
>> >
>> > I also tried setting up export MACHINE=3D"k2" but I am getting the sam=
e
>> > error
>> > message
>> >
>> > In my /var/fpwork/tomar_yocto1/snz-yocto/meta-xyz/conf/machine there
>> > exist a
>> > pyp-ii.conf file.
>> >
>> > I tried renaming it to k2.conf but it also didn't work out.
>> >
>> >
>> > Can anybody let me know what needs to be done in order to change MACHI=
NE
>> > name here.
>> >
>> >
>> > Thanks
>> >
>> > Amit Singh Tomar
>> >
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>
>

