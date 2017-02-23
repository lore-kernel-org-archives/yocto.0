Return-Path: <darren.hart@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2009BE00AB9; Thu, 23 Feb 2017 09:36:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1FFCE0085D
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2017 09:36:43 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga105.jf.intel.com with ESMTP; 23 Feb 2017 09:36:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,198,1484035200"; d="scan'208";a="1133976109"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by fmsmga002.fm.intel.com with ESMTP; 23 Feb 2017 09:36:36 -0800
Received: from fmsmsx118.amr.corp.intel.com ([169.254.1.242]) by
	FMSMSX103.amr.corp.intel.com ([169.254.2.47]) with mapi id
	14.03.0248.002; Thu, 23 Feb 2017 09:36:36 -0800
From: "Hart, Darren" <darren.hart@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH] yocto-docs: Some aesthetic changes to
	kernel-dev-common.xml
Thread-Index: AQHSjcU08FU4B3X4DU2ga5N5Rl5ppaF22heg
Date: Thu, 23 Feb 2017 17:36:36 +0000
Message-ID: <79661426AB6B40478E52EE7F511CC9051F9C362B@fmsmsx118.amr.corp.intel.com>
References: <alpine.LFD.2.20.1702230604450.7481@uk63952.mitel.com>
In-Reply-To: <alpine.LFD.2.20.1702230604450.7481@uk63952.mitel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [PATCH] yocto-docs: Some aesthetic changes to kernel-dev-common.xml
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
X-List-Received-Date: Thu, 23 Feb 2017 17:36:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> Sent: Thursday, February 23, 2017 3:08 AM
> To: Yocto discussion list <yocto@yoctoproject.org>
> Cc: Hart, Darren <darren.hart@intel.com>
> Subject: [PATCH] yocto-docs: Some aesthetic changes to kernel-dev-
> common.xml
>=20
>=20
> Small number of aesthetic/visual changes to kernel-dev-common.xml.
>=20

Erm... that's not really what these are :-) These are a mix of grammatical =
fixes, format preferences, and clarifying commentary, which do amount to so=
me functional changes in terms of what a reader may do or not do as a resul=
t of reading them. Please be explicit in your commit log.

That said, I have no objections to these changes, the majority of which I c=
onsider to be good improvements. Thanks for taking the time to improve the =
documentation.

> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Reviewed-by: Darren Hart <dvhart@linux.intel.com>

>=20
> ---
>=20
>   as darren is the author, i'll leave it in his hands to
> accept/reject any of this. a lot of this is just subtle rewording
> whenever i think there might be the slightest ambiguity, and some
> aesthetic prettification. nothing significant.
>=20
> diff --git a/documentation/kernel-dev/kernel-dev-common.xml
> b/documentation/kernel-dev/kernel-dev-common.xml
> index a9aafd3..cb186c9 100644
> --- a/documentation/kernel-dev/kernel-dev-common.xml
> +++ b/documentation/kernel-dev/kernel-dev-common.xml
> @@ -25,10 +25,10 @@
>              If you are going to be modifying kernel recipes, it is recom=
mended
>              that you create and prepare your own layer in which to do yo=
ur
>              work.
> -            Your layer contains its own
> +            Your layer would typically contain its own
>              <ulink url=3D'&YOCTO_DOCS_DEV_URL;#bitbake-
> term'>BitBake</ulink>
>              append files
> -            (<filename>.bbappend</filename>) and provides a convenient
> +            (<filename>.bbappend</filename>) and would provide a
> convenient
>              mechanism to create your own recipe files
>              (<filename>.bb</filename>).
>              For details on how to create and work with layers, see the
> following
> @@ -59,9 +59,9 @@
>          <para>
>              Modifying an existing recipe can consist of the following:
>              <itemizedlist>
> -                <listitem><para>Creating the append file</para></listite=
m>
> -                <listitem><para>Applying patches</para></listitem>
> -                <listitem><para>Changing the configuration</para></listi=
tem>
> +                <listitem><para>Creating an append file</para></listitem=
>
> +                <listitem><para>Applying some local
> patches</para></listitem>
> +                <listitem><para>Changing the kernel
> configuration</para></listitem>
>              </itemizedlist>
>          </para>
>=20
> @@ -81,14 +81,14 @@
>=20
>              <para>
>                  You create this file in your custom layer.
> -                You also name it accordingly based on the linux-yocto re=
cipe
> -                you are using.
> +                You also name it accordingly based on the version of the
> +                linux-yocto recipe you are modifying.
>                  For example, if you are modifying the
> -                <filename>meta/recipes-kernel/linux/linux-
> yocto_3.19.bb</filename>
> -                recipe, the append file will typically be located as fol=
lows
> -                within your custom layer:
> +                <filename>meta/recipes-kernel/linux/linux-
> yocto_4.4.bb</filename>
> +                recipe, the corresponding append file will typically be =
located
> +                as follows within your custom layer:
>                  <literallayout class=3D'monospaced'>
> -     <replaceable>your-layer</replaceable>/recipes-kernel/linux/linux-
> yocto_3.19.bbappend
> +     <replaceable>your-layer</replaceable>/recipes-kernel/linux/linux-
> yocto_4.4.bbappend
>                  </literallayout>
>                  The append file should initially extend the
>                  <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
> FILESPATH'><filename>FILESPATH</filename></ulink>
> @@ -133,12 +133,14 @@
>=20
>              <para>
>                  For example, you can apply a three-patch series by addin=
g the
> -                following lines to your linux-yocto
> -                <filename>.bbappend</filename> file in your layer:
> +                following lines to the linux-yocto
> +                <filename>.bbappend</filename> file in your custom layer=
:
>                  <literallayout class=3D'monospaced'>
> -     SRC_URI +=3D "file://0001-first-change.patch"
> -     SRC_URI +=3D "file://0002-second-change.patch"
> -     SRC_URI +=3D "file://0003-third-change.patch"
> +     SRC_URI +=3D " \
> +                file://0001-first-change.patch \
> +                file://0002-second-change.patch \
> +                file://0003-third-change.patch \
> +                "
>                  </literallayout>
>                  The next time you run BitBake to build the Linux kernel,
>                  BitBake detects the change in the recipe and fetches and
> @@ -158,11 +160,12 @@
>              <para>
>                  You can make wholesale or incremental changes to the fin=
al
>                  <filename>.config</filename> file used for the eventual
> -                Linux kernel configuration by including a
> -                <filename>defconfig</filename> file and by specifying
> +                Linux kernel configuration by including a local
> +                <filename>defconfig</filename> file, as well as by speci=
fying
>                  configuration fragments in the
>                  <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
> SRC_URI'><filename>SRC_URI</filename></ulink>
> -                to be applied to that file.
> +                to be applied to the configuration defined by that
> +                <filename>defconfig</filename> file.
>              </para>
>=20
>              <para>
> @@ -204,10 +207,10 @@
>=20
>              <para>
>                  Generally speaking, the preferred approach is to determi=
ne the
> -                incremental change you want to make and add that as a
> -                configuration fragment.
> -                For example, if you want to add support for a basic seri=
al
> -                console, create a file named <filename>8250.cfg</filenam=
e> in
> +                incremental changes you want to make and add each of tho=
se
> changes
> +                using a separate configuration fragment.
> +                For example, if you want to add support for a basic (825=
0 UART-
> based) serial
> +                console, create a file named, for example,
> <filename>8250.cfg</filename> in
>                  the <filename>${PN}</filename> directory with the follow=
ing
>                  content (without indentation):
>                  <literallayout class=3D'monospaced'>
> @@ -219,7 +222,7 @@
>       CONFIG_SERIAL_CORE=3Dy
>       CONFIG_SERIAL_CORE_CONSOLE=3Dy
>                  </literallayout>
> -                Next, include this configuration fragment and extend the
> +                Next, include this configuration fragment and (as before=
)
> extend the
>                  <filename>FILESPATH</filename> variable in your
>                  <filename>.bbappend</filename> file:
>                  <literallayout class=3D'monospaced'>
> @@ -231,6 +234,17 @@
>                  new configuration before building the kernel.
>              </para>
>=20
> +            <note>
> +                Depending on the kernel config fragment you are adding, =
it
> might not be
> +                necessary to specify every single setting related to wha=
t you
> want.
> +                For instance, in the above example, once you select
> +                <varname>CONFIG_SERIAL_8250=3Dy</varname>, some of the
> subsequent config
> +                settings might be set based on default values in the ker=
nel's
> +                corresponding <varname>Kconfig</varname>
> +                file. However, some developers prefer to list everything=
 related
> to
> +                the selected feature for the sake of completeness and cl=
arity.
> +            </note>
> +
>              <para>
>                  For a detailed example showing how to configure the kern=
el,
>                  see the
> @@ -270,7 +284,7 @@
>                  edit the recipe that builds your kernel so that it has t=
he
>                  following command form:
>                  <literallayout class=3D'monospaced'>
> -     KBUILD_DEFCONFIG_KMACHINE ?=3D
> <replaceable>defconfig_file</replaceable>
> +     KBUILD_DEFCONFIG_<replaceable>KMACHINE</replaceable> ?=3D
> <replaceable>defconfig_file</replaceable>
>                  </literallayout>
>                  You need to append the variable with
>                  <ulink url=3D'&YOCTO_DOCS_REF_URL;#var-
> KMACHINE'><filename>KMACHINE</filename></ulink>
>=20
> --
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>=20
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


