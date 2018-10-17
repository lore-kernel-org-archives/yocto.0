Return-Path: <KZertsekel@advaoptical.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4190E00BDC; Wed, 17 Oct 2018 01:44:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [91.217.199.72 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail2.advaoptical.com (mail2.advaoptical.com [91.217.199.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83C34E00BBF
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 01:44:36 -0700 (PDT)
Received: from MUC-S-EX16D.advaoptical.com ([172.20.1.28])
	by muc-vs-fsmail2.advaoptical.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w9H8iYQf000774
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=FAIL); Wed, 17 Oct 2018 10:44:34 +0200
Received: from MGN-S-EX19A.advaoptical.com (172.25.1.193) by
	MUC-S-EX16D.advaoptical.com (172.20.1.28) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
	15.1.1591.10; Wed, 17 Oct 2018 10:44:34 +0200
Received: from MUC-S-EX19A.advaoptical.com (172.20.1.58) by
	MGN-S-EX19A.advaoptical.com (172.25.1.193) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.2.221.12; Wed, 17 Oct 2018 10:44:33 +0200
Received: from MUC-S-EX19A.advaoptical.com ([fe80::78d1:5dab:178d:a89c]) by
	MUC-S-EX19A.advaoptical.com ([fe80::78d1:5dab:178d:a89c%9]) with mapi
	id 15.02.0221.012; Wed, 17 Oct 2018 10:44:33 +0200
From: Kosta Zertsekel <KZertsekel@advaoptical.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Sumo distro problem with dhcp packet?
Thread-Index: AQHUYJ1Qq9fTcSqQLkmEYsToirjnHKUYoaglgAEqG4CACTrNAIAAIyNf
Date: Wed, 17 Oct 2018 08:44:33 +0000
Message-ID: <d6a28fefcd884dd58d0dd9a2d2533937@advaoptical.com>
References: <CAGAf8Ly_txg3AQNqOM+Rg0Oy-RdS_96y328GwXw7Qu=iDx1yfg@mail.gmail.com>
	<14f3ead713e649f48582d18ddd477d3c@advaoptical.com>
	<CAGAf8LwAQsBHNNCp8uL4pU5tPGGKVKvnVDF6dcdv-VtMHDGRVg@mail.gmail.com>,
	<CAGAf8LwzrRh6j0n9yqpvv6x1Y7AKhDX7FcREdSzpauYga2QDkw@mail.gmail.com>
In-Reply-To: <CAGAf8LwzrRh6j0n9yqpvv6x1Y7AKhDX7FcREdSzpauYga2QDkw@mail.gmail.com>
Accept-Language: en-IL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.20.1.231]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-16_14:, , signatures=0
Subject: Re: Sumo distro problem with dhcp packet?
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
X-List-Received-Date: Wed, 17 Oct 2018 08:44:38 -0000
Content-Language: aa
Content-Type: multipart/alternative;
	boundary="_000_d6a28fefcd884dd58d0dd9a2d2533937advaopticalcom_"

--_000_d6a28fefcd884dd58d0dd9a2d2533937advaopticalcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I suggest trying other reference image.

For example, core-image-minimal.

If it does not help, then core-image-full-cmdline.

Let's get the working reference first with one of these images.


--- Kosta Z.

________________________________
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Sent: Wednesday, 17 October 2018 11:37:38
To: Kosta Zertsekel; Yocto Project
Subject: Re: [yocto] Sumo distro problem with dhcp packet?

Hello Kosta and others,

I am a bit behind on a schedule on this one. Albeit I followed the
advise, This does work for compiling and adding all these packages to
the ROOTFS. I see that after I added all them, I see the
initramfs.tar.xz expanded in
...poky/build/tmp/deploy/image/beagleboneblack/ directory.

But after I do the testing with initramfs, with all these packages
added. I do not find anything in the ROOTFS even what it should be
lookalike DHCP.

After trying # which dhclient, or # which dhcp-client, or # which
dhcp... It finds nothing!

Then, the next step was to find /etc/dhcp/ or similar. There is
nothing lookalike dhcp/ or dhcp* in /etc, which shows that these lines
in dhcp.inc recipe are not executed:

do_install_append () {
       install -d ${D}${sysconfdir}/init.d
       install -d ${D}${sysconfdir}/default
       install -d ${D}${sysconfdir}/dhcp
       install -m 0755 ${WORKDIR}/init-relay ${D}${sysconfdir}/init.d/dhcp-=
relay
       install -m 0644 ${WORKDIR}/default-relay
${D}${sysconfdir}/default/dhcp-relay
       install -m 0755 ${WORKDIR}/init-server
${D}${sysconfdir}/init.d/dhcp-server
       install -m 0644 ${WORKDIR}/default-server
${D}${sysconfdir}/default/dhcp-server

       rm -f ${D}${sysconfdir}/dhclient.conf*
       rm -f ${D}${sysconfdir}/dhcpd.conf*

In addition, when I execute: $ bitbake -c cleanall dhcp, it says that
it executes thee tasks, and none of them are actually executed (0
executed).

I also recompiled form scratch the whole sumo BBB build, but this did
NOT solve the problem.

Any hint how I should proceed?

Thank you,
Zoran
_______

On Thu, Oct 11, 2018 at 1:40 PM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> Hello Kosta,
>
> > For example, you can do the below:
> > CORE_IMAGE_EXTRA_INSTALL_append =3D "openssh dhcp-client dhcp-server cm=
ake... "
>
> I added to this example dhcp-relay, just to test the whole build, and
> it does work. Actually, I need only dhcp-client for the target (since
> I have dhcp-server on the ETH interface on the opposite (VM) side).
>
> Thank you for the help!
> Zoran
> _______
> On Wed, Oct 10, 2018 at 5:57 PM Kosta Zertsekel
> <KZertsekel@advaoptical.com> wrote:
> >
> > You need to take a look at the available dhcp packages
> > for dhcp recipe here:
> > https://git.yoctoproject.org/clean/cgit.cgi/poky/tree/meta/recipes-conn=
ectivity/dhcp/dhcp.inc#n100
> >
> > PACKAGES +=3D "dhcp-libs dhcp-server dhcp-server-config dhcp-client dhc=
p-relay dhcp-omshell"
> >
> > For example, you can do the below:
> > CORE_IMAGE_EXTRA_INSTALL_append =3D "openssh dhcp-client dhcp-server cm=
ake... "
> >
> > Thanks,
> > --- Kosta Z
> > ________________________________
> > From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> o=
n behalf of Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> > Sent: Wednesday, 10 October 2018 16:29:05
> > To: Yocto Project
> > Subject: [yocto] Sumo distro problem with dhcp packet?
> >
> > Hello.
> >
> > I need on my test initramfs YOCTO image to add dhcp package (both dhcp =
server and client).
> >
> > For the beginning, I traced it, where it is:
> > .../poky/meta/recipes-connectivity/dchp
> >
> > and decided to test it adding it to ...poky/build/conf/local.conf for t=
he starters:
> > CORE_IMAGE_EXTRA_INSTALL_append =3D "openssh dhcp cmake... "
> >
> > But it produced the following error:
> > [user@fedora28-ssd conf]$ bitbake -k core-image-base
> >
> >    [snap]
> >
> > ERROR: Nothing RPROVIDES 'dhcp' (but /home/user/projects2/beaglebone-bl=
ack/sumo/poky/meta/recipes-core/images/core-image-base.bb RDEPENDS on or ot=
herwise requires it)
> > NOTE: Runtime target 'dhcp' is unbuildable, removing...
> > Missing or unbuildable dependency chain was: ['dhcp']
> > ERROR: Nothing RPROVIDES 'core-image-base'
> > No eligible RPROVIDERs exist for 'core-image-base'
> > NOTE: Runtime target 'core-image-base' is unbuildable, removing...
> > Missing or unbuildable dependency chain was: ['core-image-base']
> >
> > I added another package, dhcpcd, which is located in the another layer:
> > CORE_IMAGE_EXTRA_INSTALL_append =3D "openssh dhcpcd cmake... "
> >
> > so this one worked/was integrated seamlessly.
> >
> > What is the catch 22 here?
> >
> > Thank you,
> > Zoran
> >

--_000_d6a28fefcd884dd58d0dd9a2d2533937advaopticalcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p>I suggest trying other reference image.</p>
<p>For example, core-image-minimal.</p>
<p>If it does not help, then core-image-full-cmdline.</p>
<p>Let's get the working reference first with one of these images.</p>
<p><br>
</p>
<p>--- Kosta Z.</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Zoran Stojsavljevic=
 &lt;zoran.stojsavljevic@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, 17 October 2018 11:37:38<br>
<b>To:</b> Kosta Zertsekel; Yocto Project<br>
<b>Subject:</b> Re: [yocto] Sumo distro problem with dhcp packet?</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hello Kosta and others,<br>
<br>
I am a bit behind on a schedule on this one. Albeit I followed the<br>
advise, This does work for compiling and adding all these packages to<br>
the ROOTFS. I see that after I added all them, I see the<br>
initramfs.tar.xz expanded in<br>
...poky/build/tmp/deploy/image/beagleboneblack/ directory.<br>
<br>
But after I do the testing with initramfs, with all these packages<br>
added. I do not find anything in the ROOTFS even what it should be<br>
lookalike DHCP.<br>
<br>
After trying # which dhclient, or # which dhcp-client, or # which<br>
dhcp... It finds nothing!<br>
<br>
Then, the next step was to find /etc/dhcp/ or similar. There is<br>
nothing lookalike dhcp/ or dhcp* in /etc, which shows that these lines<br>
in dhcp.inc recipe are not executed:<br>
<br>
do_install_append () {<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}${sysconfdir}/init.d<br=
>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}${sysconfdir}/default<b=
r>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}${sysconfdir}/dhcp<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/init-relay =
${D}${sysconfdir}/init.d/dhcp-relay<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0644 ${WORKDIR}/default-rel=
ay<br>
${D}${sysconfdir}/default/dhcp-relay<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0755 ${WORKDIR}/init-server=
<br>
${D}${sysconfdir}/init.d/dhcp-server<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0644 ${WORKDIR}/default-ser=
ver<br>
${D}${sysconfdir}/default/dhcp-server<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rm -f ${D}${sysconfdir}/dhclient.conf*=
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rm -f ${D}${sysconfdir}/dhcpd.conf*<br=
>
<br>
In addition, when I execute: $ bitbake -c cleanall dhcp, it says that<br>
it executes thee tasks, and none of them are actually executed (0<br>
executed).<br>
<br>
I also recompiled form scratch the whole sumo BBB build, but this did<br>
NOT solve the problem.<br>
<br>
Any hint how I should proceed?<br>
<br>
Thank you,<br>
Zoran<br>
_______<br>
<br>
On Thu, Oct 11, 2018 at 1:40 PM Zoran Stojsavljevic<br>
&lt;zoran.stojsavljevic@gmail.com&gt; wrote:<br>
&gt;<br>
&gt; Hello Kosta,<br>
&gt;<br>
&gt; &gt; For example, you can do the below:<br>
&gt; &gt; CORE_IMAGE_EXTRA_INSTALL_append =3D &quot;openssh dhcp-client dhc=
p-server cmake... &quot;<br>
&gt;<br>
&gt; I added to this example dhcp-relay, just to test the whole build, and<=
br>
&gt; it does work. Actually, I need only dhcp-client for the target (since<=
br>
&gt; I have dhcp-server on the ETH interface on the opposite (VM) side).<br=
>
&gt;<br>
&gt; Thank you for the help!<br>
&gt; Zoran<br>
&gt; _______<br>
&gt; On Wed, Oct 10, 2018 at 5:57 PM Kosta Zertsekel<br>
&gt; &lt;KZertsekel@advaoptical.com&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; You need to take a look at the available dhcp packages<br>
&gt; &gt; for dhcp recipe here:<br>
&gt; &gt; <a href=3D"https://git.yoctoproject.org/clean/cgit.cgi/poky/tree/=
meta/recipes-connectivity/dhcp/dhcp.inc#n100">
https://git.yoctoproject.org/clean/cgit.cgi/poky/tree/meta/recipes-connecti=
vity/dhcp/dhcp.inc#n100</a><br>
&gt; &gt;<br>
&gt; &gt; PACKAGES &#43;=3D &quot;dhcp-libs dhcp-server dhcp-server-config =
dhcp-client dhcp-relay dhcp-omshell&quot;<br>
&gt; &gt;<br>
&gt; &gt; For example, you can do the below:<br>
&gt; &gt; CORE_IMAGE_EXTRA_INSTALL_append =3D &quot;openssh dhcp-client dhc=
p-server cmake... &quot;<br>
&gt; &gt;<br>
&gt; &gt; Thanks,<br>
&gt; &gt; --- Kosta Z<br>
&gt; &gt; ________________________________<br>
&gt; &gt; From: yocto-bounces@yoctoproject.org &lt;yocto-bounces@yoctoproje=
ct.org&gt; on behalf of Zoran Stojsavljevic &lt;zoran.stojsavljevic@gmail.c=
om&gt;<br>
&gt; &gt; Sent: Wednesday, 10 October 2018 16:29:05<br>
&gt; &gt; To: Yocto Project<br>
&gt; &gt; Subject: [yocto] Sumo distro problem with dhcp packet?<br>
&gt; &gt;<br>
&gt; &gt; Hello.<br>
&gt; &gt;<br>
&gt; &gt; I need on my test initramfs YOCTO image to add dhcp package (both=
 dhcp server and client).<br>
&gt; &gt;<br>
&gt; &gt; For the beginning, I traced it, where it is:<br>
&gt; &gt; .../poky/meta/recipes-connectivity/dchp<br>
&gt; &gt;<br>
&gt; &gt; and decided to test it adding it to ...poky/build/conf/local.conf=
 for the starters:<br>
&gt; &gt; CORE_IMAGE_EXTRA_INSTALL_append =3D &quot;openssh dhcp cmake... &=
quot;<br>
&gt; &gt;<br>
&gt; &gt; But it produced the following error:<br>
&gt; &gt; [user@fedora28-ssd conf]$ bitbake -k core-image-base<br>
&gt; &gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp; [snap]<br>
&gt; &gt;<br>
&gt; &gt; ERROR: Nothing RPROVIDES 'dhcp' (but /home/user/projects2/beagleb=
one-black/sumo/poky/meta/recipes-core/images/core-image-base.bb RDEPENDS on=
 or otherwise requires it)<br>
&gt; &gt; NOTE: Runtime target 'dhcp' is unbuildable, removing...<br>
&gt; &gt; Missing or unbuildable dependency chain was: ['dhcp']<br>
&gt; &gt; ERROR: Nothing RPROVIDES 'core-image-base'<br>
&gt; &gt; No eligible RPROVIDERs exist for 'core-image-base'<br>
&gt; &gt; NOTE: Runtime target 'core-image-base' is unbuildable, removing..=
.<br>
&gt; &gt; Missing or unbuildable dependency chain was: ['core-image-base']<=
br>
&gt; &gt;<br>
&gt; &gt; I added another package, dhcpcd, which is located in the another =
layer:<br>
&gt; &gt; CORE_IMAGE_EXTRA_INSTALL_append =3D &quot;openssh dhcpcd cmake...=
 &quot;<br>
&gt; &gt;<br>
&gt; &gt; so this one worked/was integrated seamlessly.<br>
&gt; &gt;<br>
&gt; &gt; What is the catch 22 here?<br>
&gt; &gt;<br>
&gt; &gt; Thank you,<br>
&gt; &gt; Zoran<br>
&gt; &gt;<br>
</div>
</span></font>
</body>
</html>

--_000_d6a28fefcd884dd58d0dd9a2d2533937advaopticalcom_--
