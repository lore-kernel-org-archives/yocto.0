Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3E2AE00798; Fri, 22 Aug 2014 00:37:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B881E0044A
	for <yocto@yoctoproject.org>; Fri, 22 Aug 2014 00:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=1cVvWQmOpPJ1K0RPZWiPdqFxMX3odOxMp4/XjTVNSMY=; 
	b=q8od/A21njWimpJ52NDbXGxZoYA42gJ9tUoOqGkrEYD2dszxPSCCmM5olfBTYYiCDqfKHI1cdL70evc1Yi3En9h8uZFFzfzUcRNxK5hReyt68Nc34g6KUDAkN/SaBUz6mT1kWckGEX5Ztunu1oBR4j3TS+sZ7LcCOX9YYA/EFR4=;
Received: from [109.224.171.0] (port=39156
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1XKjPA-003eY3-Aa; Fri, 22 Aug 2014 08:37:02 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <53F648D3.2090205@windriver.com>
Date: Fri, 22 Aug 2014 08:37:00 +0100
Message-Id: <C7E540C9-9DA7-4AC8-9627-D92CF11B7520@keylevel.com>
References: <4EAABF91-29AE-4B7D-9FEE-07C87F37197D@keylevel.com>	<53F40306.2080500@windriver.com>	<728404FF-F7F0-4371-AF09-D8C73ABA784C@keylevel.com>	<CADkTA4PKUNKFkWrz-BEud-mvNTVLUykLq_M-AMvJJWXOaxZZaA@mail.gmail.com>
	<79C4CC9D-34AA-485F-B7A7-F35FD86A3CE3@keylevel.com>
	<53F63A54.4030401@windriver.com>
	<4FC2BFFB-9FBD-43BA-AAF4-EE9CBB8126E7@keylevel.com>
	<53F648D3.2090205@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel driver for Turbosight TBS6285 DVB card
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
X-List-Received-Date: Fri, 22 Aug 2014 07:37:18 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On 21 Aug 2014, at 20:30, Bruce Ashfield <bruce.ashfield@windriver.com> =
wrote:

> On 14-08-21 03:11 PM, Chris Tapp wrote:
>>=20
>> On 21 Aug 2014, at 19:28, Bruce Ashfield =
<bruce.ashfield@windriver.com> wrote:
>>=20
>>> On 14-08-21 04:17 AM, Chris Tapp wrote:
>>>> On 21 Aug 2014, at 05:08, Bruce Ashfield <bruce.ashfield@gmail.com> =
wrote:
>>>>=20
>>>>> On Wed, Aug 20, 2014 at 4:11 PM, Chris Tapp =
<opensource@keylevel.com> wrote:
>>>>>> Hi Bruce,
>>>>>>=20
>>>>>> Thanks for the feedback.
>>>>>>=20
>>>>>> On 20 Aug 2014, at 03:08, Bruce Ashfield =
<bruce.ashfield@windriver.com> wrote:
>>>>>>=20
>>>>>>> On 2014-08-19, 5:26 PM, Chris Tapp wrote:
>>>>>>>> I need to include the kernel driver for the Turbosight TBS6285 =
DVB card in an image.
>>>>>>>>=20
>>>>>>>> The official bundle at =
http://www.tbsdtv.com/download/document/common/tbs-linux-drivers_v140707.z=
ip includes the drivers and a load of other "stuff" (e.g. a full V4L =
build).
>>>>>>>>=20
>>>>>>>> LinuxTV.org have the drivers extracted into a .tar.bz2 at =
(e.g.) http://linuxtv.org/downloads/drivers/linux-media-LATEST.tar.bz2, =
so I plan to use this as the download source.
>>>>>> This bit is wrong - I need to use the .tar.bz within the .zip.
>>>>>>=20
>>>>>>>> So far I have a recipe which downloads from this URL and =
extracts the files into the work area and ${WORKAREA}/drivers/media =
includes a Makefile and Kconfig.
>>>>>>>>=20
>>>>>>>> I've looked at the Yocto documentation, but this doesn't seem =
to be a good match for the "Out of tree" kernel module case.
>>>>>>> Hmm. At a glance, I'd say that it does sound like a typical out =
of
>>>>>>> tree module build.
>>>>>> Ah, ok - to my (untrained) eye the use-case looked completely =
different based on the example.
>>>>>>=20
>>>>>>> Did you try adopting the meta-skeleton hello-mod recipe and =
point it
>>>>>>> at that source directory ?
>>>>>> I have now (with the above change). However, it looks as if =
something within the build is referencing the host file system when =
building.
>>>>>>=20
>>>>>> I'm building for ValleyIsland 32-bit:
>>>>>>=20
>>>>>>  1) If I configure the drivers for 32-bit there is a linker error =
complaining that elf 32 and elf 64 aren't compatible (host is 64 bit);
>>>>> Hmm. The target arch should be used for this build. Are you =
enabling a
>>>>> multi lib config
>>>>> as well ?
>>>> Not that I know of ;-)
>>>>=20
>>>> The build uses a .version file to specify the kernel. The top =
makefile creates this using 'uname -r' by default. I can run 'make dir =
DIR=3D"..." in do_configure() to specify the path to the yocto kernel =
files, which seems to fix this (after modifying another makefile, which =
prepends "../" to the DIR path).
>>>=20
>>> Definite host contamination there. You likely want the code, but
>>> not the build infrastructure in this case.
>>>=20
>>>>=20
>>>>>  2) Everything appears to build if I target 64-bit, but the =
installer tries to modify /lib/modules/3.2.0-67/..., which is also part =
of the host.
>>>>>=20
>>>>> Do the Makefile's that come in that archive (I haven't gone to =
look)
>>>>> have a custom
>>>>> install rule ? If so, that's likely the problem. If the kernel's =
build
>>>>> system is triggered
>>>>> (i.e. the makefile follows the conventions), everything will be
>>>>> installed to the proper
>>>>> location.
>>>> The installer uses DESTDIR to select the installation path - I've =
not worked out how this gets set yet or how I can set it from within my =
recipe.
>>>>=20
>>>> Is there a trick I can use to get the kernel's build system to =
manage things?
>>>=20
>>> In this case, you really need to replace (or patch) the existing =
Makefile
>>> that comes with the package.
>>>=20
>>> The hello-mod example I pointed out has makefile that shows the =
right
>>> definitions to allow the kernel's build system to enter the =
directory, build
>>> and install the modules.
>>=20
>> I've made some good progress, but still not quite there.
>>=20
>> I've got a do_compile() that basically does:
>>=20
>>   make DIR=3D${STAGING_KERNEL_DIR}
>>=20
>> The appears to build the modules correctly - testing will tell ;-)
>>=20
>> I've then got similar in do_install():
>>=20
>>   make DIR=3D${STAGING_KERNEL_DIR} DESTDIR=3D${D}
>>=20
>> That's 99% there - the modules get put in =
image/lib/modules/3.10.40-ltsi/...
>> They should be in image/lib/modules/3.10.40-ltsi-yocto-standard/... - =
not sure yet how to fix this one.
>>=20
>=20
> The kernel-abiversion should have all the details to get the mdoules
> installed in the right place. See the use of the file in the various
> module bbclasses.
>=20
> export KERNEL_VERSION =3D =
"${@base_read_file('${STAGING_KERNEL_DIR}/kernel-abiversion')}"

Thanks, that helps. Looks like I need to find a bug in the makefiles now =
- using kernel-abiversion results in a message reporting that =
3.10.40-ltsi-yocto-standard will be used, but the installation ends up =
going to 3.0.40-ltsi-yocto-standard :-(

>=20
> Bruce
>=20
>> There is also a packaging QA issue causing a build failure (some =
files aren't used), but an INSANE_SKIP installed-vs-shipped fixes that =
one for now.
>>=20
>> --
>>=20
>> Chris Tapp
>> opensource@keylevel.com
>> www.keylevel.com

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com





