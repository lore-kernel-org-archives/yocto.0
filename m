Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F9A7E0090C; Tue, 28 Aug 2018 18:32:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D3A3E00718
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 18:32:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7T1W2W5024036
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 28 Aug 2018 18:32:03 -0700 (PDT)
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 28 Aug 2018 18:32:01 -0700
To: Martin Siegumfeldt <mns@gomspace.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <8261c343c1a643e2a3079b5d8fc458fc@gomspace.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <2ff7ed92-7fba-77b8-2966-f3f51ca5ff37@windriver.com>
Date: Wed, 29 Aug 2018 09:36:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <8261c343c1a643e2a3079b5d8fc458fc@gomspace.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: Sequential generation of eSDK from with the same workspace fails for similar machines
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
X-List-Received-Date: Wed, 29 Aug 2018 01:32:10 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: quoted-printable

The problem is about two machines having the same TUNE_PKGARCH, and=20
could be solved by setting TOOLCHAIN_OUTPUTNAME in your distro conf file =

to include MACHINE information.

But I'm not sure if this is a bug and should be fixed. Let's wait for=20
more opinions.

Best Regards,
Chen Qi

On 08/28/2018 04:44 PM, Martin Siegumfeldt wrote:
> Hi,
>
> I am subsequently trying to render eSDKs for two different machines fro=
m within the same workspace.
>
> The first (succeeding) is built according to 'MACHINE=3D"zcu102-zynqmp"=
 bitbake core-image-minimal -c populate_sdk_ext' whereas the second (MACH=
INE=3D"zcu104-zynqmp" bitbake core-image-minimal -c populate_sdk_ext) fai=
ls providing:
>
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: The recipe core-i=
mage-minimal is trying to install files into a shared area when those fil=
es already exist. Those files and their manifest location are:
>    /home/martin/work/z7000-distro/build/tmp/deploy/sdk/poky-glibc-x86_6=
4-core-image-minimal-aarch64-toolchain-ext-2.5.1.testdata.json
>      (matched in manifest-zcu102_zynqmp-core-image-minimal.populate_sdk=
_ext)
>    /home/martin/work/z7000-distro/build/tmp/deploy/sdk/poky-glibc-x86_6=
4-core-image-minimal-aarch64-toolchain-ext-2.5.1.sh
>      (matched in manifest-zcu102_zynqmp-core-image-minimal.populate_sdk=
_ext)
> Please verify which recipe should provide the above files.
>
> The build has stopped, as continuing in this scenario WILL break things=
 - if not now, possibly in the future (we've seen builds fail several mon=
ths later). If the system knew how to recover from this automatically it =
would, however there are several different scenarios which can result in =
this and we don't know which one this is. It may be you have switched pro=
viders of something like virtual/kernel (e.g. from linux-yocto to linux-y=
octo-dev), in that case you need to execute the clean task for both recip=
es and it will resolve this error. It may be you changed DISTRO_FEATURES =
from systemd to udev or vice versa. Cleaning those recipes should again r=
esolve this error, however switching DISTRO_FEATURES on an existing build=
 directory is not supported - you should really clean out tmp and rebuild=
 (reusing sstate should be safe). It could be the overlapping files detec=
ted are harmless in which case adding them to SSTATE_DUPWHITELIST may be =
the correct solution. It could also be your
>    build is including two different conflicting versions of things (e.g=
=2E bluez 4 and bluez 5 and the correct solution for that would be to res=
olve the conflict. If in doubt, please ask on the mailing list, sharing t=
he error and filelist above.
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: If the above mess=
age is too much, the simpler version is you're advised to wipe out tmp an=
d rebuild (reusing sstate is fine). That will likely fix things in most (=
but not all) cases.
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Function failed: =
sstate_task_postfunc
> ERROR: Logfile of failure stored in: /home/martin/work/z7000-distro/bui=
ld/tmp/work/zcu104_zynqmp-poky-linux/core-image-minimal/1.0-r0/temp/log.d=
o_populate_sdk_ext.14111
> ERROR: Task (/home/martin/work/z7000-distro/poky/meta/recipes-core/imag=
es/core-image-minimal.bb:do_populate_sdk_ext) failed with exit code '1'
>
>
> Since the machines are of the same CPU architecture and and the image b=
eing the same, the previously built artifacts are about to be overwritten=
=2E AFAICS images are neatly populated in subdirectories according to the=
 machine name, however since the SDKs are not populated according to the =
machine the above issue is encountered.
>
> Is this not a supported use case, or am I missing a configuration?
>
> Thanks,
> Martin




