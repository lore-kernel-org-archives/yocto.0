Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCAE1E008D7; Tue, 30 Dec 2014 01:39:21 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96949E008A7
	for <yocto@yoctoproject.org>; Tue, 30 Dec 2014 01:39:15 -0800 (PST)
Received: from localhost (webmail4.adam.net.au [127.0.0.1])
	by webmail4.adam.net.au (8.13.8/8.13.8) with ESMTP id sBU9dB7X024555
	for <yocto@yoctoproject.org>; Tue, 30 Dec 2014 20:09:12 +1030
Message-Id: <a271ef72b7b9e3175419d6d8ffbb59e5bf6d0065@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: yocto@yoctoproject.org
X-Mailer: Atmail 6.3.5.8698
Date: Tue, 30 Dec 2014 20:09:11 +1030
MIME-Version: 1.0
Subject: libm implementation issue
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
X-List-Received-Date: Tue, 30 Dec 2014 09:39:21 -0000
Content-Type: multipart/alternative;
	boundary="=_c4588be0ab21f56c9549f41296b7a56b"

--=_c4588be0ab21f56c9549f41296b7a56b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=0A I have some software that uses specific mathematical functions. When=
=0AI attempt to compile them with the Yocto cross-compile tools, the=0Af=
unctions are not recognised. E.g. 'pow' in =0AAccording to website=0Ahtt=
ps://wiki.yoctoproject.org/wiki/Minimal_Image, not all eglibc=0Afeatures=
 are installed as standard, and that I should alter my=0Alocal.conf file=
 I have added the following:=0A=0ADISTRO_FEATURES_LIBC=C2=A0 +=3D " lib=
c-libm "=0ADISTRO_FEATURES_append =3D " ${DISTRO_FEATURES_LIBC} "=0A=0AW=
hen I bitbake the image I get the following error: (this is just the=0Ae=
nd of the error log - there are many undefined references)=0A=0A|=0A/hom=
e/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/=
eglibc/2.19-r0/eglibc-2.19/libc/pwd/../nss/getXXbyYY_r.c:213:=0Aundefine=
d reference to `__nss_database_custom'=0A|=0A/home/lachlan/poky/build-at=
mel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/build-ar=
m-poky-linux-gnueabi/libc_pic.os:=0AIn function `__getpwuid_r':=0A|=0A/h=
ome/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueab=
i/eglibc/2.19-r0/eglibc-2.19/libc/pwd/../nss/getXXbyYY_r.c:196:=0Aundefi=
ned reference to `__nscd_getpwuid_r'=0A|=0A/home/lachlan/poky/build-atme=
l/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/eglibc-2.1=
9/libc/pwd/../nss/getXXbyYY_r.c:213:=0Aundefined reference to `__nss_not=
_use_nscd_passwd'=0A|=0A/home/lachlan/poky/build-atmel/tmp/work/cortexa5=
t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/eglibc-2.19/libc/pwd/../nss/g=
etXXbyYY_r.c:213:=0Aundefined reference to `__nss_database_custom'=0A|=
=0A/home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr/libexec/=
cortexa5t2hf-vfp-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux=
-gnueabi/4.8.2/ld:=0A/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2h=
f-vfp-poky-linux-gnueabi/eglibc/2.19-r0/build-arm-poky-linux-gnueabi/lib=
c.so:=0Ahidden symbol `__nss_not_use_nscd_group' isn't defined=0A|=0A/ho=
me/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr/libexec/cortex=
a5t2hf-vfp-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnuea=
bi/4.8.2/ld:=0Afinal link failed: Bad value=0A| collect2: error: ld retu=
rned 1 exit status=0A| ERROR: Function failed: do_compile (log file is l=
ocated at=0A/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-pok=
y-linux-gnueabi/eglibc/2.19-r0/temp/log.do_compile.5266)=0AERROR: Task 3=
9=0A(/home/lachlan/poky/meta/recipes-core/eglibc/eglibc_2.19.bb,=0Ado_co=
mpile) failed with exit code '1'=0A=0AI have reviewed the sample.conf.ex=
tended file in the meta-yocto later=0Aand the above code should be OK, e=
xcept that I have added the '+' and=0A'append'. If I use DISTRO_FEATURES=
 instead of DISTRO_FEATURES_append,=0AI get other errros:=0AMissing or u=
nbuildable dependency chain was:=0A['packagegroup-base-wifi']=0AERROR: R=
equired build target 'atmel-qt5-demo-image' has no buildable=0Aproviders=
=0AMissing or unbuildable dependency chain was: ['atmel-qt5-demo-image'=
,=0A'packagegroup-base-wifi']=0A=0AIf I use DISTRO_FEATURES_LIBC =3D ins=
tead of DISTRO_FEATURES_LIBC +=3D ,=0AI get these errors:=0AERROR: Unabl=
e to parse=0A/home/lachlan/poky/meta/recipes-core/packagegroups/packageg=
roup-core-boot.bb:=0AExited with=0A"1"#=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=0A| ETA:=C2=A0 00:00:39=0AERROR: Please ensure that your setti=
ng of=0AVIRTUAL-RUNTIME_init_manager (sysvinit) matches the entries enab=
led=0Ain DISTRO_FEATURES=0A=0AI am probably overriding a default setting=
 Is there an alternative=0Away to include the libc-libm, or is there so=
mething else that could=C2=A0=0Abe causing the erro?=0A=0AThanks for any=
 help=0A=0ALachlan=0A---- Message sent via Adam Internet WebMail - http:=
//www.adam.com.au/

--=_c4588be0ab21f56c9549f41296b7a56b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><br />=0A=09=09=09=09I have some software that uses specific=
 mathematical functions. When I attempt to compile them with the Yocto c=
ross-compile tools, the functions are not recognised. E.g. 'pow' in &lt;=
math&gt;<br />According to website https://wiki.yoctoproject.org/wiki/Mi=
nimal_Image, not all eglibc features are installed as standard, and that=
 I should alter my local.conf file. I have added the following:<br /><br=
 />DISTRO_FEATURES_LIBC=C2=A0 +=3D " libc-libm "<br />DISTRO_FEATURES_ap=
pend =3D " ${DISTRO_FEATURES_LIBC} "<br /><br />When I bitbake the image=
 I get the following error: (this is just the end of the error log - the=
re are many undefined references)<br /><br />| /home/lachlan/poky/build-=
atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/eglibc=
-2.19/libc/pwd/../nss/getXXbyYY_r.c:213: undefined reference to `__nss_d=
atabase_custom'<br />| /home/lachlan/poky/build-atmel/tmp/work/cortexa5t=
2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/build-arm-poky-linux-gnueabi/l=
ibc_pic.os: In function `__getpwuid_r':<br />| /home/lachlan/poky/build-=
atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/eglibc=
-2.19/libc/pwd/../nss/getXXbyYY_r.c:196: undefined reference to `__nscd_=
getpwuid_r'<br />| /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-=
vfp-poky-linux-gnueabi/eglibc/2.19-r0/eglibc-2.19/libc/pwd/../nss/getXXb=
yYY_r.c:213: undefined reference to `__nss_not_use_nscd_passwd'<br />| /=
home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnuea=
bi/eglibc/2.19-r0/eglibc-2.19/libc/pwd/../nss/getXXbyYY_r.c:213: undefin=
ed reference to `__nss_database_custom'<br />| /home/lachlan/poky/build-=
atmel/tmp/sysroots/x86_64-linux/usr/libexec/cortexa5t2hf-vfp-poky-linux-=
gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.2/ld: /home/lac=
hlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglib=
c/2.19-r0/build-arm-poky-linux-gnueabi/libc.so: hidden symbol `__nss_not=
_use_nscd_group' isn't defined<br />| /home/lachlan/poky/build-atmel/tmp=
/sysroots/x86_64-linux/usr/libexec/cortexa5t2hf-vfp-poky-linux-gnueabi.g=
cc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.2/ld: final link failed:=
 Bad value<br />| collect2: error: ld returned 1 exit status<br />| ERRO=
R: Function failed: do_compile (log file is located at /home/lachlan/pok=
y/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r=
0/temp/log.do_compile.5266)<br />ERROR: Task 39 (/home/lachlan/poky/meta=
/recipes-core/eglibc/eglibc_2.19.bb, do_compile) failed with exit code '=
1'<br /><br /><br />I have reviewed the sample.conf.extended file in the=
 meta-yocto later and the above code should be OK, except that I have ad=
ded the '+' and 'append'. If I use DISTRO_FEATURES instead of DISTRO_FEA=
TURES_append, I get other errros:<br />Missing or unbuildable dependency=
 chain was: ['packagegroup-base-wifi']<br />ERROR: Required build target=
 'atmel-qt5-demo-image' has no buildable providers.<br />Missing or unbu=
ildable dependency chain was: ['atmel-qt5-demo-image', 'packagegroup-bas=
e-wifi']<br /><br />If I use DISTRO_FEATURES_LIBC =3D instead of DISTRO_=
FEATURES_LIBC +=3D , I get these errors:<br />ERROR: Unable to parse /ho=
me/lachlan/poky/meta/recipes-core/packagegroups/packagegroup-core-boot.b=
b: Exited with "1"#=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA:=
=C2=A0 00:00:39<br />ERROR: Please ensure that your setting of VIRTUAL-R=
UNTIME_init_manager (sysvinit) matches the entries enabled in DISTRO_FEA=
TURES<br /><br /><br />I am probably overriding a default setting. Is th=
ere an alternative way to include the libc-libm, or is there something e=
lse that could=C2=A0 be causing the erro?<br /><br />Thanks for any help=
<br /><br />Lachlan<br />---- Message sent via Adam Internet WebMail  -=
 http://www.adam.com.au/</body></html>

--=_c4588be0ab21f56c9549f41296b7a56b--
