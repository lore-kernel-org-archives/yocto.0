Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53B96E00BFB; Wed,  6 Feb 2019 06:40:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [81.236.60.156 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout3.han.skanova.net (v-smtpout3.han.skanova.net
	[81.236.60.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70456E00B81
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2019 06:40:24 -0800 (PST)
Received: from [90.236.121.192] ([90.236.121.192]) by cmsmtp with ESMTPA
	id rONBgmWIxHNTSrONBg6orb; Wed, 06 Feb 2019 15:40:22 +0100
Mime-Version: 1.0 (1.0)
From: Ulf Samuelsson <yocto@emagii.com>
X-Mailer: iPad Mail (15F79)
In-Reply-To: <CAMKF1sq0y_uP6pvoK4fbPG-ty9=z1xiLnaRFO8_Ba=e-WBEwTw@mail.gmail.com>
Date: Wed, 6 Feb 2019 15:40:20 +0100
Message-Id: <8B114A44-9A3D-4189-83A6-D590E6E275BD@emagii.com>
References: <CAPo_4QCE-N-tVUQhOF_Q3f18306TqXSrT+QOSO_Yg2C3Uo5ghw@mail.gmail.com>
	<4cbbfed2-f3cb-c2f2-10de-586c27b63b2c@windriver.com>
	<CAPo_4QDzJCtRvytauoWhixKSV7EfL4h2LKrZGQuKRF3pZF_Now@mail.gmail.com>
	<CAMKF1sq0y_uP6pvoK4fbPG-ty9=z1xiLnaRFO8_Ba=e-WBEwTw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-CMAE-Envelope: MS4wfIPGvXol7rPwnsESiUb+VEqic8frUVGt2Eu2RfhWKdx8O4KkoEg+Duy+Res+NTIhwU8O+5Ftbc7zmoYSwYJ2wqhQeIj2hGwtFdPUcWvE1RjXZZCcsTMj
	wUUmZteJ0kDtMB+97vUNdZ6Y+UggAWRq0dwhf0MvIfJoWygO+vlyXh1DO7ao6DGa3NxB2i/QuyzI+kGLasyIt3jzn6Uh61ab3zhMyWBaoxxbS3ipGXN6QzEp
	T+ky7G4Ifw4apWVe9eUvyDMDiN30GSSYhzBQMme9E36SP0cE1hdeGQkZAT4JP189Kj5vMQUNgfPLOhRBql/+mg==
Cc: yocto@yoctoproject.org, Nate Drude <nate.drude@ohmlinxelectronics.com>
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
X-List-Received-Date: Wed, 06 Feb 2019 14:40:27 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-62F3E4C9-1461-4DCD-813C-C040A599A164
Content-Transfer-Encoding: 7bit

--Apple-Mail-62F3E4C9-1461-4DCD-813C-C040A599A164
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Maybe it would be good to have a working example in the tree.

Best Regards,
Ulf Samuelsson

> 6 feb. 2019 kl. 02:22 skrev Khem Raj <raj.khem@gmail.com>:
>=20
>=20
>=20
>> On Sat, Feb 2, 2019 at 7:17 PM Ken Sloat <ken.sloat@ohmlinxelectronics.co=
m> wrote:
>> On Sat, Feb 2, 2019 at 10:03 PM Bruce Ashfield
>> <bruce.ashfield@windriver.com> wrote:
>> >
>> > On 2019-02-02 9:59 p.m., Ken Sloat wrote:
>> > > Hello,
>> > >
>> > > I have an out of tree kernel module which I want autoloaded at startu=
p
>> > > on my system. Looking at the Yocto project manual, I see that one way=

>> > > I can do this is to add the module name to the KERNEL_MODULE_AUTOLOAD=

>> > > variable within my custom module recipe.
>> > >
>> > > What I have found is that the module-split class is indeed generating=

>> > > the "/etc/modules-load.d/mymodule.conf" file, however this file is no=
t
>> > > actually being installed. To be more precise it is appearing in the
>> > > "package" directory (i.e.
>> > > tmp/work/**/mymodule/package/etc/modules-load.d/mymodule.conf) but no=
t
>> > > within the "image" directory (nor in my final rootfs).
>> > >
>> > > Is there something I'm missing in the usage of KERNEL_MODULE_AUTOLOAD=
?
>> > > Is the intention for this variable I add extra steps to manually
>> > > install this file in my recipe? FYI I'm using Morty.
>> >
>> > Can you provide your recipe ? It would make suggestions easier. For
>> > example, my first question is: Is the module being installed to your
>> > image via IMAGE_INSTALL, or some other similar variable ?
>> >
>> > Bruce
>> >
>> > >
>> > > Thanks,
>> > > Ken Sloat
>> > >
>> >
>>=20
>> Hi Bruce,
>>=20
>> Thanks for your quick reply. Yes the module is being installed via
>> image_install. Module is installed but generated conf file is not. See
>> recipe below:
>>=20
>> require mymodule.inc
>>=20
>> inherit module kernel-module-split
>>=20
>> DEPENDS =3D "virtual/kernel"
>>=20
>> EXTRA_OEMAKE_append =3D " \
>>     KERNELDIR=3D${STAGING_KERNEL_DIR} \
>>     "
>>=20
>> MAKE_TARGETS =3D "module"
>>=20
>> MODULE_NAME =3D "mymodule"
>>=20
>> PKG_${PN} =3D "kernel-module-${MODULE_NAME}"
>>=20
>> module_do_install() {
>>     install -d ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}
>>     install -m 0644 ${MODULE_NAME}.ko \
>>     ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}/${MODULE_NAM=
E}.ko
>> }
>>=20
>> FILES_${PN} =3D " \
>>     /lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME} \
>> "
>=20
> Your recipe is overwriting common stuff which otherwise should be provided=
 by module bbclass=20
> I would suggest that you append to the variables instead of over writing t=
hem above and try to reuse
> The primitives from bbclass as much as you can for best results=20
>>=20
>>=20
>> KERNEL_MODULE_AUTOLOAD +=3D "${MODULE_NAME}"
>> --=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-62F3E4C9-1461-4DCD-813C-C040A599A164
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head><meta http-equiv="content-type" content="text/html; charset=utf-8"></head><body dir="auto">Maybe it would be good to have a working example in the tree.<br><br><div>Best Regards,<div>Ulf Samuelsson</div></div><div><br>6 feb. 2019 kl. 02:22 skrev Khem Raj &lt;<a href="mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;:<br><br></div><blockquote type="cite"><div><div><br></div><div><br><div class="gmail_quote"><div dir="ltr">On Sat, Feb 2, 2019 at 7:17 PM Ken Sloat &lt;<a href="mailto:ken.sloat@ohmlinxelectronics.com">ken.sloat@ohmlinxelectronics.com</a>&gt; wrote:<br></div><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Sat, Feb 2, 2019 at 10:03 PM Bruce Ashfield<br>
&lt;<a href="mailto:bruce.ashfield@windriver.com" target="_blank">bruce.ashfield@windriver.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 2019-02-02 9:59 p.m., Ken Sloat wrote:<br>
&gt; &gt; Hello,<br>
&gt; &gt;<br>
&gt; &gt; I have an out of tree kernel module which I want autoloaded at startup<br>
&gt; &gt; on my system. Looking at the Yocto project manual, I see that one way<br>
&gt; &gt; I can do this is to add the module name to the KERNEL_MODULE_AUTOLOAD<br>
&gt; &gt; variable within my custom module recipe.<br>
&gt; &gt;<br>
&gt; &gt; What I have found is that the module-split class is indeed generating<br>
&gt; &gt; the "/etc/modules-load.d/mymodule.conf" file, however this file is not<br>
&gt; &gt; actually being installed. To be more precise it is appearing in the<br>
&gt; &gt; "package" directory (i.e.<br>
&gt; &gt; tmp/work/**/mymodule/package/etc/modules-load.d/mymodule.conf) but not<br>
&gt; &gt; within the "image" directory (nor in my final rootfs).<br>
&gt; &gt;<br>
&gt; &gt; Is there something I'm missing in the usage of KERNEL_MODULE_AUTOLOAD?<br>
&gt; &gt; Is the intention for this variable I add extra steps to manually<br>
&gt; &gt; install this file in my recipe? FYI I'm using Morty.<br>
&gt;<br>
&gt; Can you provide your recipe ? It would make suggestions easier. For<br>
&gt; example, my first question is: Is the module being installed to your<br>
&gt; image via IMAGE_INSTALL, or some other similar variable ?<br>
&gt;<br>
&gt; Bruce<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; Thanks,<br>
&gt; &gt; Ken Sloat<br>
&gt; &gt;<br>
&gt;<br>
<br>
Hi Bruce,<br>
<br>
Thanks for your quick reply. Yes the module is being installed via<br>
image_install. Module is installed but generated conf file is not. See<br>
recipe below:<br>
<br>
require mymodule.inc<br>
<br>
inherit module kernel-module-split<br>
<br>
DEPENDS = "virtual/kernel"<br>
<br>
EXTRA_OEMAKE_append = " \<br>
&nbsp; &nbsp; KERNELDIR=${STAGING_KERNEL_DIR} \<br>
&nbsp; &nbsp; "<br>
<br>
MAKE_TARGETS = "module"<br>
<br>
MODULE_NAME = "mymodule"<br>
<br>
PKG_${PN} = "kernel-module-${MODULE_NAME}"<br>
<br>
module_do_install() {<br>
&nbsp; &nbsp; install -d ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}<br>
&nbsp; &nbsp; install -m 0644 ${MODULE_NAME}.ko \<br>
&nbsp; &nbsp; ${D}/lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME}/${MODULE_NAME}.ko<br>
}<br>
<br>
FILES_${PN} = " \<br>
&nbsp; &nbsp; /lib/modules/${KERNEL_VERSION}/kernel/${MODULE_NAME} \<br>
"</blockquote><div dir="auto"><br></div><div dir="auto">Your recipe is overwriting common stuff which otherwise should be provided by module bbclass&nbsp;</div><div dir="auto">I would suggest that you append to the variables instead of over writing them above and try to reuse</div><div dir="auto">The primitives from bbclass as much as you can for best results&nbsp;</div><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
<br>
KERNEL_MODULE_AUTOLOAD += "${MODULE_NAME}"<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href="mailto:yocto@yoctoproject.org" target="_blank">yocto@yoctoproject.org</a><br>
<a href="https://lists.yoctoproject.org/listinfo/yocto" rel="noreferrer" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>
</div></blockquote><blockquote type="cite"><div><span>-- </span><br><span>_______________________________________________</span><br><span>yocto mailing list</span><br><span><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a></span><br><span><a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></div></blockquote></body></html>

--Apple-Mail-62F3E4C9-1461-4DCD-813C-C040A599A164--
