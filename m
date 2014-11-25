Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C558AE008D9; Tue, 25 Nov 2014 13:12:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.238 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail2.adam.net.au (webmail2.adam.net.au [202.136.110.238])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03734E0084E
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 13:12:16 -0800 (PST)
Received: from localhost (webmail2.adam.net.au [127.0.0.1])
	by webmail2.adam.net.au (8.13.8/8.13.8) with ESMTP id sAPLC2BS019070;
	Wed, 26 Nov 2014 07:42:02 +1030
Message-Id: <c6e9cc6d66af00ee55dc350d65e1525e8f5b0870@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Anders Darander" <anders@chargestorm.se>, peterengcomau001@adam.com.au
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <060EFF06-F136-4BC9-8F2B-944D64EB3F00@chargestorm.se>
Date: Wed, 26 Nov 2014 07:42:02 +1030
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: New error in 1.7
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
X-List-Received-Date: Tue, 25 Nov 2014 21:12:28 -0000
Content-Type: multipart/alternative;
	boundary="=_3d3d84a05d415f5ea3380ed259f820c9"

--=_3d3d84a05d415f5ea3380ed259f820c9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for your patience. I was successful in building the patch as=0Afo=
llows:=0A__________________=0A--- a/configure.ac=C2=A0=C2=A0 =C2=A02014-=
08-28 03:20:36.000000000 +0300=0A+++ b/configure.ac=C2=A0=C2=A0 =C2=A020=
14-11-25 23:22:45.129711196 +0300=0A@@ -13,7 +13,7 @@=0A=C2=A0AG_GST_INI=
T=0A=C2=A0=0A=C2=A0dnl initialize automake=0A-AM_INIT_AUTOMAKE([-Wno-por=
tability 1.11 no-dist-gzip dist-xz=0Atar-ustar])=0A+AM_INIT_AUTOMAKE([-W=
no-portability 1.11 no-dist-gzip dist-xz=0Atar-ustar foreign])=0A=C2=A0=
=0A=C2=A0dnl define PACKAGE_VERSION_* variables=0A=C2=A0AS_VERSION =0A _=
_______________________________=0Abuild proceeds past do_config but now=
 fails at do_complie for the=0Asame module.=0A=0AThe last part of the er=
ror is as follows:=0A______________________________________________=0A|=
 In file included from=0A/home/lachlan/poky/build-atmel/tmp/work/cortexa=
5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/gst-hant=
ro-g1-1.0/gst-libs/ext/g1/dwl/gstdwlallocator.c:31:0:=0A|=0A/home/lachla=
n/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreame=
r1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/gst-libs/ext/g1/dwl/gstdwla=
llocator.h:36:28:=0Afatal error: gstg1allocator.h: No such file or direc=
tory=0A|=C2=A0 #include "gstg1allocator.h"=0A|=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 ^=0A| compilation terminated.=0A| make[5]: *** [libgstdwlallocator_1.0_=
la-gstdwlallocator.lo] Error 1=0A| make[5]: Leaving directory=0A`/home/l=
achlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gst=
reamer1.0-plugins-hantro/1.0-r1/build/gst-libs/ext/g1/dwl'=0A| make[4]:=
 *** [all-recursive] Error 1=0A| make[4]: Leaving directory=0A`/home/lac=
hlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstre=
amer1.0-plugins-hantro/1.0-r1/build/gst-libs/ext/g1'=0A| make[3]: *** [a=
ll-recursive] Error 1=0A| make[3]: Leaving directory=0A`/home/lachlan/po=
ky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0=
-plugins-hantro/1.0-r1/build/gst-libs/ext'=0A| make[2]: *** [all-recursi=
ve] Error 1=0A| make[2]: Leaving directory=0A`/home/lachlan/poky/build-a=
tmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-h=
antro/1.0-r1/build/gst-libs'=0A| make[1]: *** [all-recursive] Error 1=0A=
| make[1]: Leaving directory=0A`/home/lachlan/poky/build-atmel/tmp/work/=
cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/b=
uild'=0A| make: *** [all] Error 2=0A| ERROR: oe_runmake failed=0A| WARNI=
NG: exit code 1 from a shell command.=0A| ERROR: Function failed: do_com=
pile (log file is located at=0A/home/lachlan/poky/build-atmel/tmp/work/c=
ortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/te=
mp/log.do_compile.3977)=0AERROR: Task 603=0A(/home/lachlan/poky/meta-atm=
el/recipes-multimedia/gstreamer1.0-plugins/gstreamer1.0-plugins-hantro_1=
0.bb,=0Ado_compile) failed with exit code '1'=0A_______________________=
__________________________________________________________=0A=0AAny ides=
 on how to proceed?=0AMaybe i go back to using poky 1.6.1 ?=0A=0AThanks=
 for any ideas=0ALachlan=0A=0A=C2=A0=0A=0A----- Original Message -----=
=0AFrom: "Anders Darander" =0ATo:"peterengcomau001@adam.com.au" =0ACc:"y=
octo@yoctoproject.org" =0ASent:Tue, 25 Nov 2014 19:19:27 +0100=0ASubject=
:Re: [yocto] New error in 1.7=0A=0A On 25 November 2014 17:13:17 CET, "p=
eterengcomau001@adam.com.au" =0Awrote:=0A >My original problem is that t=
he image built in 1.6.1 does not build=0Ain=0A >1.7. Paul indicated this=
 is probably because of the -foreign issue=0Aas=0A >referred to in the r=
eference manual Section 5.6.3 when upgrading. =0A >=0A >=0A >What I need=
 to do is modify my recipe to include this. I understand=0A >once I have=
 modified the recipe I can generate a patch against the=0A >original.=0A=
=0A The easiest way is likely to patch configure.ac, similar to what was=
=0Adone in=0Ahttp://git.openembedded.org/openembedded-core/commit/?id=3D=
60da074fea280d8190e7439361712dcc86177f12=0A=0A So you were on the right=
 track in your earlier email. =0A=0A >However, I still cannot identify t=
he original change to the recipe=0A >required to add this item.=0A >=0A=
 >=0A >I have added to the recipe=0A >=0A >=0A >EXTRA_OECONF =3D " 'AM_I=
NIT_AUTOMAKE([foreign]); "=0A >=0A >=0A >Is this the correct change to t=
he recipe to ensure the config.ac=0Afile=0A >is updated so that any non-=
conformance with GNU guidelines is=0A >overlooked?=0A=0A No, what that l=
ine does is add some extra argument to the call to=0Aconfigure. AM_INIT_=
AUTOMAKE is a macro in configure.ac. =0A=0A Create the patch that you ta=
lked about in got previous email, and=0Amake sure that it applies. Then=
 this problem will go away. =0A=0A Cheers, =0A Anders =0A=0A -- =0A Char=
geStorm AB / eStorm =0A -- =0A _________________________________________=
______=0A yocto mailing list=0A yocto@yoctoproject.org=0A https://lists.=
yoctoproject.org/listinfo/yocto=0A=0A---- Message sent via Adam Internet=
 WebMail - http://www.adam.com.au/

--=_3d3d84a05d415f5ea3380ed259f820c9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>Thanks for your patience. I was successful in building the p=
atch as follows:<br />__________________<br />--- a/configure.ac=C2=A0=
=C2=A0 =C2=A02014-08-28 03:20:36.000000000 +0300<br />+++ b/configure.ac=
=C2=A0=C2=A0 =C2=A02014-11-25 23:22:45.129711196 +0300<br />@@ -13,7 +13=
,7 @@<br />=C2=A0AG_GST_INIT<br />=C2=A0<br />=C2=A0dnl initialize autom=
ake<br />-AM_INIT_AUTOMAKE([-Wno-portability 1.11 no-dist-gzip dist-xz t=
ar-ustar])<br />+AM_INIT_AUTOMAKE([-Wno-portability 1.11 no-dist-gzip di=
st-xz tar-ustar foreign])<br />=C2=A0<br />=C2=A0dnl define PACKAGE_VERS=
ION_* variables<br />=C2=A0AS_VERSION <br />=0A=09=09=09=09_____________=
___________________<br />build proceeds past do_config but now fails at=
 do_complie for the same module.<br /><br />The last part of the error i=
s as follows:<br />______________________________________________<br />|=
 In file included from /home/lachlan/poky/build-atmel/tmp/work/cortexa5t=
2hf-vfp-poky-linux-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/gst-hantro=
-g1-1.0/gst-libs/ext/g1/dwl/gstdwlallocator.c:31:0:<br />| /home/lachlan=
/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer=
1.0-plugins-hantro/1.0-r1/gst-hantro-g1-1.0/gst-libs/ext/g1/dwl/gstdwlal=
locator.h:36:28: fatal error: gstg1allocator.h: No such file or director=
y<br />|=C2=A0 #include "gstg1allocator.h"<br />|=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ^<br />| compilation terminated.<br />| make[5]: *** [libgstdwlalloc=
ator_1.0_la-gstdwlallocator.lo] Error 1<br />| make[5]: Leaving director=
y `/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-g=
nueabi/gstreamer1.0-plugins-hantro/1.0-r1/build/gst-libs/ext/g1/dwl'<br=
 />| make[4]: *** [all-recursive] Error 1<br />| make[4]: Leaving direct=
ory `/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux=
-gnueabi/gstreamer1.0-plugins-hantro/1.0-r1/build/gst-libs/ext/g1'<br />=
| make[3]: *** [all-recursive] Error 1<br />| make[3]: Leaving directory=
 `/home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gn=
ueabi/gstreamer1.0-plugins-hantro/1.0-r1/build/gst-libs/ext'<br />| make=
[2]: *** [all-recursive] Error 1<br />| make[2]: Leaving directory `/hom=
e/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/=
gstreamer1.0-plugins-hantro/1.0-r1/build/gst-libs'<br />| make[1]: *** [=
all-recursive] Error 1<br />| make[1]: Leaving directory `/home/lachlan/=
poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/gstreamer1=
0-plugins-hantro/1.0-r1/build'<br />| make: *** [all] Error 2<br />| ER=
ROR: oe_runmake failed<br />| WARNING: exit code 1 from a shell command.=
<br />| ERROR: Function failed: do_compile (log file is located at /home=
/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/g=
streamer1.0-plugins-hantro/1.0-r1/temp/log.do_compile.3977)<br />ERROR:=
 Task 603 (/home/lachlan/poky/meta-atmel/recipes-multimedia/gstreamer1.0=
-plugins/gstreamer1.0-plugins-hantro_1.0.bb, do_compile) failed with exi=
t code '1'<br />________________________________________________________=
_________________________<br /><br />Any ides on how to proceed?<br />Ma=
ybe i go back to using poky 1.6.1 ?<br /><br />Thanks for any ideas<br /=
>Lachlan<br /><br />=C2=A0<br /><blockquote><br />----- Original Message=
 -----<br /><div style=3D"width:100%;background:rgb(228,228,228);"><div=
 style=3D"font-weight:bold;">From:</div> "Anders Darander" &lt;anders@ch=
argestorm.se&gt;</div><br /><div style=3D"font-weight:bold;">To:</div>"p=
eterengcomau001@adam.com.au" &lt;peterengcomau001@adam.com.au&gt;<br /><=
div style=3D"font-weight:bold;">Cc:</div>"yocto@yoctoproject.org" &lt;yo=
cto@yoctoproject.org&gt;<br /><div style=3D"font-weight:bold;">Sent:</di=
v>Tue, 25 Nov 2014 19:19:27 +0100<br /><div style=3D"font-weight:bold;">=
Subject:</div>Re: [yocto] New error in 1.7<br /><br /><br /><br /><br />=
=0AOn 25 November 2014 17:13:17 CET, "peterengcomau001@adam.com.au" &lt;=
peterengcomau001@adam.com.au&gt; wrote:<br />=0A&gt;My original problem=
 is that the image built in 1.6.1 does not build in<br />=0A&gt;1.7. Pau=
l indicated this is probably because of the -foreign issue as<br />=0A&g=
t;referred to in the reference manual Section 5.6.3 when upgrading. <br=
 />=0A&gt;<br />=0A&gt;<br />=0A&gt;What I need to do is modify my recip=
e to include this. I understand<br />=0A&gt;once I have modified the rec=
ipe I can generate a patch against the<br />=0A&gt;original.<br /><br />=
=0AThe easiest way is likely to patch configure.ac, similar to what was=
 done in http://git.openembedded.org/openembedded-core/commit/?id=3D60da=
074fea280d8190e7439361712dcc86177f12<br /><br />=0ASo you were on the ri=
ght track in your earlier email. <br /><br />=0A&gt;However, I still can=
not identify the original change to the recipe<br />=0A&gt;required to a=
dd this item.<br />=0A&gt;<br />=0A&gt;<br />=0A&gt;I have added to the=
 recipe<br />=0A&gt;<br />=0A&gt;<br />=0A&gt;EXTRA_OECONF =3D " 'AM_INI=
T_AUTOMAKE([foreign]); "<br />=0A&gt;<br />=0A&gt;<br />=0A&gt;Is this t=
he correct change to the recipe to ensure the config.ac file<br />=0A&gt=
;is updated so that any non-conformance with GNU guidelines is<br />=0A&=
gt;overlooked?<br /><br />=0ANo, what that line does is add some extra a=
rgument to the call to configure. AM_INIT_AUTOMAKE is a macro in configu=
re.ac. <br /><br />=0A Create the patch that you talked about in got pre=
vious email, and make sure that it applies. Then this problem will go aw=
ay. <br /><br />=0ACheers, <br />=0AAnders <br /><br />=0A-- <br />=0ACh=
argeStorm AB / eStorm <br />=0A-- <br />=0A_____________________________=
__________________<br />=0Ayocto mailing list<br />=0Ayocto@yoctoproject=
org<br />=0Ahttps://lists.yoctoproject.org/listinfo/yocto<br /><br /></=
blockquote>---- Message sent via Adam Internet WebMail  - http://www.ada=
m.com.au/</body></html>

--=_3d3d84a05d415f5ea3380ed259f820c9--
