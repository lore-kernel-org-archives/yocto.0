Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2175DE008CA; Mon,  4 Feb 2019 03:47:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [81.236.60.155 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout2.han.skanova.net (v-smtpout2.han.skanova.net
	[81.236.60.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 679DFE0084E
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 03:47:38 -0800 (PST)
Received: from [90.236.3.187] ([90.236.3.187]) by cmsmtp with ESMTPA
	id qciugPEQPX7EQqciug19xW; Mon, 04 Feb 2019 12:47:36 +0100
Mime-Version: 1.0 (1.0)
From: Ulf Samuelsson <yocto@emagii.com>
X-Mailer: iPad Mail (15F79)
In-Reply-To: <CAPo_4QA-6rT0SuarWwF_dZ4b2m+Hvv7RdAQfoqD6qkQdEd40Uw@mail.gmail.com>
Date: Mon, 4 Feb 2019 12:47:36 +0100
Message-Id: <DA608BB2-7FC2-4975-8B2B-C9E9C10CCB07@emagii.com>
References: <CAPo_4QCE-N-tVUQhOF_Q3f18306TqXSrT+QOSO_Yg2C3Uo5ghw@mail.gmail.com>
	<4cbbfed2-f3cb-c2f2-10de-586c27b63b2c@windriver.com>
	<CAPo_4QDzJCtRvytauoWhixKSV7EfL4h2LKrZGQuKRF3pZF_Now@mail.gmail.com>
	<c0bd97f9-1aed-7c9d-17c5-dc9059f1a11c@emagii.com>
	<CAPo_4QA-6rT0SuarWwF_dZ4b2m+Hvv7RdAQfoqD6qkQdEd40Uw@mail.gmail.com>
To: Ken Sloat <ken.sloat@ohmlinx.com>
X-CMAE-Envelope: MS4wfH2Y+ndQHMy3VpqW3mE17TrcC4thmgXiPOPKfwGWL38JJ5KgshZCGmTzhApXGRx5FHd5s/Oa37wp5tXJBc+joRp38Mcbclx67/BQy/RS2jOhbwNT5+uA
	mPQp7N3mf8X5tOYfwhQja9n9DkKiRdGV6RXcu+U/kwI3ArlzN1YtvmYnVXtpbuM4mg7n0y3U5ws+Fze70q9aEElKpKb1GhWALxE=
Cc: yocto@yoctoproject.org
Subject: Re: Proper Use of KERNEL_MODULE_AUTOLOAD variable
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
X-List-Received-Date: Mon, 04 Feb 2019 11:47:41 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable



> 3 feb. 2019 kl. 20:09 skrev Ken Sloat <ken.sloat@ohmlinx.com>:
>=20
>> On Sun, Feb 3, 2019 at 12:51 AM Ulf Samuelsson <yocto@emagii.com> wrote:
>>=20
>>> Den 2019-02-03 kl. 04:16, skrev Ken Sloat:
>>> On Sat, Feb 2, 2019 at 10:03 PM Bruce Ashfield
>>> <bruce.ashfield@windriver.com> wrote:
>>>>=20
>>>>> On 2019-02-02 9:59 p.m., Ken Sloat wrote:
>>>>> Hello,
>>>>>=20
>>>>> I have an out of tree kernel module which I want autoloaded at startup=

>>>>> on my system. Looking at the Yocto project manual, I see that one way
>>>>> I can do this is to add the module name to the KERNEL_MODULE_AUTOLOAD
>>>>> variable within my custom module recipe.
>>>>>=20
>>>>> What I have found is that the module-split class is indeed generating
>>>>> the "/etc/modules-load.d/mymodule.conf" file, however this file is not=

>>>>> actually being installed. To be more precise it is appearing in the
>>>>> "package" directory (i.e.
>>>>> tmp/work/**/mymodule/package/etc/modules-load.d/mymodule.conf) but not=

>>>>> within the "image" directory (nor in my final rootfs).
>>>>>=20
>>>>> Is there something I'm missing in the usage of KERNEL_MODULE_AUTOLOAD?=

>>>>> Is the intention for this variable I add extra steps to manually
>>>>> install this file in my recipe? FYI I'm using Morty.
>>>>=20
>>>> Can you provide your recipe ? It would make suggestions easier. For
>>>> example, my first question is: Is the module being installed to your
>>>> image via IMAGE_INSTALL, or some other similar variable ?
>>>>=20
>>>> Bruce
>>>>=20
>>>>>=20
>>>>> Thanks,
>>>>> Ken Sloat
>>>>>=20
>>>>=20
>>>=20
>>> Hi Bruce,
>>>=20
>>> Thanks for your quick reply. Yes the module is being installed via
>>> image_install. Module is installed but generated conf file is not. See
>>> recipe below:
>>>=20
>>> require mymodule.inc
>>>=20
>>> inherit module kernel-module-split
>>>=20
>>> DEPENDS =3D "virtual/kernel"
>>>=20
>>> EXTRA_OEMAKE_append =3D " \
>>>     KERNELDIR=3D${STAGING_KERNEL_DIR} \
>>>     "
>>>=20
>>> MAKE_TARGETS =3D "module"
>>>=20
>>> MODULE_NAME =3D "mymodule"
>>>=20
>>> PKG_${PN} =3D "kernel-module-${MODULE_NAME}"
>>>=20
>>> module_do_install() {
>>>     install -d ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}
>>>     install -m 0644 ${MODULE_NAME}.ko \
>>>     ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}/${MODULE_NA=
ME}.ko
>>> }
>>>=20
>>> FILES_${PN} =3D " \
>>>     /lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME} \
>>> "
>>>=20
>>> KERNEL_MODULE_AUTOLOAD +=3D "${MODULE_NAME}"
>>>=20
>>=20
>> One would think that the file should be added automatically,
>> but this might be required, - or a workaround...
>>=20
>> FILES_${PN} =3D " \
>>       /lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME} \
>>       ${sysconfdir}/modules-load.d/${MODULE_NAME}.conf \
>> "
>>=20
>>=20
>> --
>> Best Regards
>> Ulf Samuelsson
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
> Hi Ulf,
>=20
> Yes it seems that this indeed allows it to end up in the final image.
>=20
> Not sure why it doesn't work without as I see the kernel-module-split
> class seems to have statements to do this automatically:
>=20
>        files =3D d.getVar('FILES_%s' % pkg, True)
>        files =3D "%s /etc/modules-load.d/%s.conf
> /etc/modprobe.d/%s.conf" % (files, basename, basename)
>        d.setVar('FILES_%s' % pkg, files)
>=20
> Maybe there's some type of name mismatch or something in my case?
>=20
> Thanks,
> Ken Sloat

I would log those statements when building.
Either pkg, or basename has a different value, than what is expected.

Best Regards,
Ulf Samuelsson
+46 722 427 437=


