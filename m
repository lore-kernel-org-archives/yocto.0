Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 173E7E005B4; Wed, 31 Dec 2014 01:01:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.236 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail4.adam.net.au (webmail4.adam.net.au [202.136.110.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ECC4E002F9
	for <yocto@yoctoproject.org>; Wed, 31 Dec 2014 01:01:37 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sBV91Wrq031956;
	Wed, 31 Dec 2014 19:31:32 +1030
Message-Id: <1f24c23ba840fdf27e6e7a86f781eb700283aa33@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: benjamin.esquivel@linux.intel.com
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <1419968937.15852.18.camel@besquive-mobl.amr.corp.intel.com>
Date: Wed, 31 Dec 2014 19:31:32 +1030
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: libm implementation issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: peterengcomau001@adam.com.au
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 31 Dec 2014 09:01:46 -0000
Content-Type: multipart/alternative;
	boundary="=_cdd39d7d31dcdcd46ad47a2da92a5cf8"

--=_cdd39d7d31dcdcd46ad47a2da92a5cf8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=C2=A0=0A Thanks,I have continued to struggle on and had just decided to=
 file=0Aa bug myself. Thanks for verifying and filing the bug=0Aalready.=
RegardsLachlan=0A=0A----- Original Message -----=0AFrom: benjamin.esquiv=
el@linux.intel.com=0ATo:=0ACc:=0ASent:Tue, 30 Dec 2014 13:48:57 -0600=0A=
Subject:Re: [yocto] libm implementation issue=0A=0A On Tue, 2014-12-30 a=
t 20:09 +1030, peterengcomau001@adam.com.au=0Awrote:=0A > =0A > I have s=
ome software that uses specific mathematical functions.=0AWhen I=0A > at=
tempt to compile them with the Yocto cross-compile tools, the=0A > funct=
ions are not recognised. E.g. 'pow' in =0A > According to website=0Ahttp=
s://wiki.yoctoproject.org/wiki/Minimal_Image,=0A > not all eglibc featur=
es are installed as standard, and that I=0Ashould=0A > alter my local.co=
nf file. I have added the following:=0A > =0A > DISTRO_FEATURES_LIBC +=
=3D " libc-libm "=0A > DISTRO_FEATURES_append =3D " ${DISTRO_FEATURES_LI=
BC} "=0A > =0A=0A it seems like the instructions at:=0A=0A=0Ahttps://wik=
i.yoctoproject.org/wiki/Minimal_Image#eglibc_component_configuration_sys=
tem=0A=0A are not giving the expected results. I tried it with dizzy and=
 daisy=0Aand=0A I obtained the same ld error as you.=0A=0A I filed a bug=
 here for such:=0A=0A https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D7108=0A=0A I guess we can track it from there.=0A=0A > When I bitbake=
 the image I get the following error: (this is just=0Athe=0A > end of th=
e error log - there are many undefined references)=0A > =0A > |=0A/home/=
lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eg=
libc/2.19-r0/eglibc-2.19/libc/pwd/../nss/getXXbyYY_r.c:213:=0Aundefined=
 reference to `__nss_database_custom'=0A > |=0A/home/lachlan/poky/build-=
atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/build-=
arm-poky-linux-gnueabi/libc_pic.os:=0AIn function `__getpwuid_r':=0A > |=
=0A/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-g=
nueabi/eglibc/2.19-r0/eglibc-2.19/libc/pwd/../nss/getXXbyYY_r.c:196:=0Au=
ndefined reference to `__nscd_getpwuid_r'=0A > |=0A/home/lachlan/poky/bu=
ild-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/eg=
libc-2.19/libc/pwd/../nss/getXXbyYY_r.c:213:=0Aundefined reference to `_=
_nss_not_use_nscd_passwd'=0A > |=0A/home/lachlan/poky/build-atmel/tmp/wo=
rk/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/eglibc-2.19/libc/p=
wd/../nss/getXXbyYY_r.c:213:=0Aundefined reference to `__nss_database_cu=
stom'=0A > |=0A/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/=
usr/libexec/cortexa5t2hf-vfp-poky-linux-gnueabi.gcc-cross-initial/gcc/ar=
m-poky-linux-gnueabi/4.8.2/ld:=0A/home/lachlan/poky/build-atmel/tmp/work=
/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/build-arm-poky-linux=
-gnueabi/libc.so:=0Ahidden symbol `__nss_not_use_nscd_group' isn't defin=
ed=0A > |=0A/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr=
/libexec/cortexa5t2hf-vfp-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-p=
oky-linux-gnueabi/4.8.2/ld:=0Afinal link failed: Bad value=0A > | collec=
t2: error: ld returned 1 exit status=0A > | ERROR: Function failed: do_c=
ompile (log file is located=0A > at=0A/home/lachlan/poky/build-atmel/tmp=
/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/temp/log.do_com=
pile.5266)=0A > ERROR: Task 39=0A > (/home/lachlan/poky/meta/recipes-cor=
e/eglibc/eglibc_2.19.bb,=0A > do_compile) failed with exit code '1'=0A >=
 =0A > =0A > I have reviewed the sample.conf.extended file in the meta-y=
octo=0Alater=0A > and the above code should be OK, except that I have ad=
ded the '+'=0Aand=0A > 'append'. If I use DISTRO_FEATURES instead of=0AD=
ISTRO_FEATURES_append,=0A > I get other errros:=0A > Missing or unbuilda=
ble dependency chain was:=0A > ['packagegroup-base-wifi']=0A > ERROR: Re=
quired build target 'atmel-qt5-demo-image' has no=0Abuildable=0A > provi=
ders.=0A > Missing or unbuildable dependency chain was:=0A['atmel-qt5-de=
mo-image',=0A > 'packagegroup-base-wifi']=0A > =0A > If I use DISTRO_FEA=
TURES_LIBC =3D instead of DISTRO_FEATURES_LIBC +=3D=0A, I=0A > get these=
 errors:=0A > ERROR: Unable to=0A > parse=0A/home/lachlan/poky/meta/reci=
pes-core/packagegroups/packagegroup-core-boot.bb:=0AExited with "1"# | E=
TA: 00:00:39=0A > ERROR: Please ensure that your setting of=0AVIRTUAL-RU=
NTIME_init_manager=0A > (sysvinit) matches the entries enabled in DISTRO=
_FEATURES=0A > =0A > =0A > I am probably overriding a default setting. I=
s there an=0Aalternative=0A > way to include the libc-libm, or is there=
 something else that=0Acould=0A > be causing the erro?=0A > =0A > Thanks=
 for any help=0A > =0A > Lachlan=0A > ---- Message sent via Adam Interne=
t WebMail -=0Ahttp://www.adam.com.au/=0A=0A---- Message sent via Adam In=
ternet WebMail - http://www.adam.com.au/

--=_cdd39d7d31dcdcd46ad47a2da92a5cf8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>=C2=A0<br />=0A=09=09=09=09Thanks,<div>I have continued to s=
truggle on and had just decided to file a bug myself. Thanks for verifyi=
ng and filing the bug already.</div><div>Regards</div><div>Lachlan<br />=
<blockquote><br />----- Original Message -----<br /><div style=3D"width:=
100%;background:rgb(228,228,228);"><div style=3D"font-weight:bold;">From=
:</div> benjamin.esquivel@linux.intel.com</div><br /><div style=3D"font-=
weight:bold;">To:</div>&lt;peterengcomau001@adam.com.au&gt;<br /><div st=
yle=3D"font-weight:bold;">Cc:</div>&lt;yocto@yoctoproject.org&gt;<br /><=
div style=3D"font-weight:bold;">Sent:</div>Tue, 30 Dec 2014 13:48:57 -06=
00<br /><div style=3D"font-weight:bold;">Subject:</div>Re: [yocto] libm=
 implementation issue<br /><br /><br />=0AOn Tue, 2014-12-30 at 20:09 +1=
030, peterengcomau001@adam.com.au wrote:<br />=0A&gt; <br />=0A&gt; I ha=
ve some software that uses specific mathematical functions. When I<br />=
=0A&gt; attempt to compile them with the Yocto cross-compile tools, the<=
br />=0A&gt; functions are not recognised. E.g. 'pow' in &lt;math&gt;<br=
 />=0A&gt; According to website https://wiki.yoctoproject.org/wiki/Minim=
al_Image,<br />=0A&gt; not all eglibc features are installed as standard=
, and that I should<br />=0A&gt; alter my local.conf file. I have added=
 the following:<br />=0A&gt; <br />=0A&gt; DISTRO_FEATURES_LIBC  +=3D "=
 libc-libm "<br />=0A&gt; DISTRO_FEATURES_append =3D " ${DISTRO_FEATURES=
_LIBC} "<br />=0A&gt; <br /><br />=0Ait seems like the instructions at:<=
br /><br />=0Ahttps://wiki.yoctoproject.org/wiki/Minimal_Image#eglibc_co=
mponent_configuration_system<br /><br />=0Aare not giving the expected r=
esults. I tried it with dizzy and daisy and<br />=0AI obtained the same=
 ld error as you.<br /><br />=0AI filed a bug here for such:<br /><br />=
=0Ahttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7108<br /><br />=
=0AI guess we can track it from there.<br /><br />=0A&gt; When I bitbake=
 the image I get the following error: (this is just the<br />=0A&gt; end=
 of the error log - there are many undefined references)<br />=0A&gt; <b=
r />=0A&gt; | /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-p=
oky-linux-gnueabi/eglibc/2.19-r0/eglibc-2.19/libc/pwd/../nss/getXXbyYY_r=
c:213: undefined reference to `__nss_database_custom'<br />=0A&gt; | /h=
ome/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueab=
i/eglibc/2.19-r0/build-arm-poky-linux-gnueabi/libc_pic.os: In function `=
__getpwuid_r':<br />=0A&gt; | /home/lachlan/poky/build-atmel/tmp/work/co=
rtexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/eglibc-2.19/libc/pwd/..=
/nss/getXXbyYY_r.c:196: undefined reference to `__nscd_getpwuid_r'<br />=
=0A&gt; | /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-=
linux-gnueabi/eglibc/2.19-r0/eglibc-2.19/libc/pwd/../nss/getXXbyYY_r.c:2=
13: undefined reference to `__nss_not_use_nscd_passwd'<br />=0A&gt; | /h=
ome/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueab=
i/eglibc/2.19-r0/eglibc-2.19/libc/pwd/../nss/getXXbyYY_r.c:213: undefine=
d reference to `__nss_database_custom'<br />=0A&gt; | /home/lachlan/poky=
/build-atmel/tmp/sysroots/x86_64-linux/usr/libexec/cortexa5t2hf-vfp-poky=
-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.2/ld: /h=
ome/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueab=
i/eglibc/2.19-r0/build-arm-poky-linux-gnueabi/libc.so: hidden symbol `__=
nss_not_use_nscd_group' isn't defined<br />=0A&gt; | /home/lachlan/poky/=
build-atmel/tmp/sysroots/x86_64-linux/usr/libexec/cortexa5t2hf-vfp-poky-=
linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.2/ld: fin=
al link failed: Bad value<br />=0A&gt; | collect2: error: ld returned 1=
 exit status<br />=0A&gt; | ERROR: Function failed: do_compile (log file=
 is located<br />=0A&gt; at /home/lachlan/poky/build-atmel/tmp/work/cort=
exa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/temp/log.do_compile.5266)=
<br />=0A&gt; ERROR: Task 39<br />=0A&gt; (/home/lachlan/poky/meta/recip=
es-core/eglibc/eglibc_2.19.bb,<br />=0A&gt; do_compile) failed with exit=
 code '1'<br />=0A&gt; <br />=0A&gt; <br />=0A&gt; I have reviewed the s=
ample.conf.extended file in the meta-yocto later<br />=0A&gt; and the ab=
ove code should be OK, except that I have added the '+' and<br />=0A&gt;=
 'append'. If I use DISTRO_FEATURES instead of DISTRO_FEATURES_append,<b=
r />=0A&gt; I get other errros:<br />=0A&gt; Missing or unbuildable depe=
ndency chain was:<br />=0A&gt; ['packagegroup-base-wifi']<br />=0A&gt; E=
RROR: Required build target 'atmel-qt5-demo-image' has no buildable<br /=
>=0A&gt; providers.<br />=0A&gt; Missing or unbuildable dependency chain=
 was: ['atmel-qt5-demo-image',<br />=0A&gt; 'packagegroup-base-wifi']<br=
 />=0A&gt; <br />=0A&gt; If I use DISTRO_FEATURES_LIBC =3D instead of DI=
STRO_FEATURES_LIBC +=3D , I<br />=0A&gt; get these errors:<br />=0A&gt;=
 ERROR: Unable to<br />=0A&gt; parse /home/lachlan/poky/meta/recipes-cor=
e/packagegroups/packagegroup-core-boot.bb: Exited with "1"#            =
                                            | ETA:  00:00:39<br />=0A&gt=
; ERROR: Please ensure that your setting of VIRTUAL-RUNTIME_init_manager=
<br />=0A&gt; (sysvinit) matches the entries enabled in DISTRO_FEATURES<=
br />=0A&gt; <br />=0A&gt; <br />=0A&gt; I am probably overriding a defa=
ult setting. Is there an alternative<br />=0A&gt; way to include the lib=
c-libm, or is there something else that could<br />=0A&gt; be causing th=
e erro?<br />=0A&gt; <br />=0A&gt; Thanks for any help<br />=0A&gt; <br=
 />=0A&gt; Lachlan<br />=0A&gt; ---- Message sent via Adam Internet WebM=
ail - http://www.adam.com.au/<br /><br /><br /></blockquote></div>---- M=
essage sent via Adam Internet WebMail  - http://www.adam.com.au/</body><=
/html>

--=_cdd39d7d31dcdcd46ad47a2da92a5cf8--
