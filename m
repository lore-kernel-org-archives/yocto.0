Return-Path: <peterengcomau001@adam.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6975FE00828; Fri,  9 Jan 2015 13:03:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [202.136.110.237 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from webmail3.adam.net.au (webmail3.adam.net.au [202.136.110.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F07DE0070B
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 13:03:01 -0800 (PST)
Received: from localhost (webmail3.adam.net.au [127.0.0.1])
	by webmail3.adam.net.au (8.13.8/8.13.8) with ESMTP id t09L2r5x024162;
	Sat, 10 Jan 2015 07:32:54 +1030
Message-Id: <f04fc9a4d1e6a373a99c65db8dd21cb2ec69294f@webmail.adam.com.au>
From: peterengcomau001@adam.com.au
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>,
	peterengcomau001@adam.com.au
X-Mailer: Atmail 6.3.5.8698
in-reply-to: <1420018893.25779.12.camel@linuxfoundation.org>
Date: Sat, 10 Jan 2015 07:32:53 +1030
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
X-List-Received-Date: Fri, 09 Jan 2015 21:03:16 -0000
Content-Type: multipart/alternative;
	boundary="=_f285a7a7375ca1a3071cafd392ff1ed7"

--=_f285a7a7375ca1a3071cafd392ff1ed7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=C2=A0Hi Richard,I am using the standard poky DISTRO (although the=0Acon=
figuration is DISTRO ?=3D "poky' so something else my be changing=0Ait.=
 Also The final image is pretty large taking 256Mb.Is there=0Aanything e=
lse I can check that may be altering the DISTRO or the=0Alibc. If I look=
 at all the setting in ECLIPSE, there is no reference=0Ato changing any=
 libm or -lm settings.=0AI am also having problems with some of the libr=
aries being generated=0Awhen i use qemu-extra-sdk are not present in the=
 resulting rootfs, so=0AI have to also run "$bitbake image -c populate_s=
dk" and manully copy=0Aover the affected libraries. However, since I use=
 eglibc-static in=0Athe extra image features in the config file, I have=
 not had a problem=0Awith missing libc libraries according to the linker=
, but that doesn't=0Amean there is not something else wrong.=0A=0AAlso,=
 I have been trying to access the jiffy.h which should be=0Astandard in=
 Linux but is not created as part of the build. It is=0Acreated during t=
he build but something is removing it from the image=0A(or not including=
 it). Do you have any idea what I can do to add=0Ajiffy to the final ima=
ge?=0AThanks for your help.=0ALachlan=0A=0A----- Original Message -----=
=0AFrom: "Richard Purdie" =0ATo:=0ACc:=0ASent:Wed, 31 Dec 2014 09:41:33=
 +0000=0ASubject:Re: [yocto] libm implementation issue=0A=0A On Tue, 201=
4-12-30 at 20:09 +1030, peterengcomau001@adam.com.au=0Awrote:=0A > =0A >=
 I have some software that uses specific mathematical functions.=0AWhen=
 I=0A > attempt to compile them with the Yocto cross-compile tools, the=
=0A > functions are not recognised. E.g. 'pow' in =0A > According to web=
site=0Ahttps://wiki.yoctoproject.org/wiki/Minimal_Image,=0A > not all eg=
libc features are installed as standard, and that I=0Ashould=0A > alter=
 my local.conf file. I have added the following:=0A > =0A > DISTRO_FEATU=
RES_LIBC +=3D " libc-libm "=0A > DISTRO_FEATURES_append =3D " ${DISTRO_F=
EATURES_LIBC} "=0A=0A By default the libc we build is fully featured. Th=
e only time we cut=0A down the libc by default is when you use DISTRO=
 =3D "poky-tiny". Are=0Ayou=0A using poky-tiny?=0A=0A If you're not, the=
 most likely issue you didn't see pow and friends=0A would be a missing=
 linkage against libm (-lm on the commandline for=0A gcc/ld).=0A=0A Chee=
rs,=0A=0A Richard=0A=0A---- Message sent via Adam Internet WebMail - htt=
p://www.adam.com.au/

--=_f285a7a7375ca1a3071cafd392ff1ed7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body>=C2=A0Hi Richard,<div>I am using the standard poky DISTRO (a=
lthough the configuration is DISTRO ?=3D "poky' so something else my be=
 changing it. Also The final image is pretty large taking 256Mb.</div><d=
iv>Is there anything else I can check that may be altering the DISTRO or=
 the libc. If I look at all the setting in ECLIPSE, there is no referenc=
e to changing any libm or -lm settings.</div><div><br /></div><div>I am=
 also having problems with some of the libraries being generated when i=
 use qemu-extra-sdk are not present in the resulting rootfs, so I have t=
o also run "$bitbake image -c populate_sdk" and manully copy over the af=
fected libraries. However, since I use eglibc-static in the extra image=
 features in the config file, I have not had a problem with missing libc=
 libraries according to the linker, but that doesn't mean there is not s=
omething else wrong.</div><div><br /></div><div><br />Also, I have been=
 trying to access the jiffy.h which should be standard in Linux but is n=
ot created as part of the build. It is created during the build but some=
thing is removing it from the image (or not including it). Do you have a=
ny idea what I can do to add jiffy to the final image?</div><div><br /><=
/div><div>Thanks for your help.</div><div><br /></div><div>Lachlan<br />=
<br /><blockquote><br />----- Original Message -----<br /><div style=3D"=
width:100%;background:rgb(228,228,228);"><div style=3D"font-weight:bold;=
">From:</div> "Richard Purdie" &lt;richard.purdie@linuxfoundation.org&gt=
;</div><br /><div style=3D"font-weight:bold;">To:</div>&lt;peterengcomau=
001@adam.com.au&gt;<br /><div style=3D"font-weight:bold;">Cc:</div>&lt;y=
octo@yoctoproject.org&gt;<br /><div style=3D"font-weight:bold;">Sent:</d=
iv>Wed, 31 Dec 2014 09:41:33 +0000<br /><div style=3D"font-weight:bold;"=
>Subject:</div>Re: [yocto] libm implementation issue<br /><br /><br />=
=0AOn Tue, 2014-12-30 at 20:09 +1030, peterengcomau001@adam.com.au wrote=
:<br />=0A&gt; <br />=0A&gt; I have some software that uses specific mat=
hematical functions. When I<br />=0A&gt; attempt to compile them with th=
e Yocto cross-compile tools, the<br />=0A&gt; functions are not recognis=
ed. E.g. 'pow' in &lt;math&gt;<br />=0A&gt; According to website https:/=
/wiki.yoctoproject.org/wiki/Minimal_Image,<br />=0A&gt; not all eglibc f=
eatures are installed as standard, and that I should<br />=0A&gt; alter=
 my local.conf file. I have added the following:<br />=0A&gt; <br />=0A&=
gt; DISTRO_FEATURES_LIBC  +=3D " libc-libm "<br />=0A&gt; DISTRO_FEATURE=
S_append =3D " ${DISTRO_FEATURES_LIBC} "<br /><br />=0ABy default the li=
bc we build is fully featured. The only time we cut<br />=0Adown the lib=
c by default is when you use DISTRO =3D "poky-tiny". Are you<br />=0Ausi=
ng poky-tiny?<br /><br />=0AIf you're not, the most likely issue you did=
n't see pow and friends<br />=0Awould be a missing linkage against libm=
 (-lm on the commandline for<br />=0Agcc/ld).<br /><br />=0ACheers,<br /=
><br />=0ARichard<br /><br /></blockquote></div>---- Message sent via Ad=
am Internet WebMail  - http://www.adam.com.au/</body></html>

--=_f285a7a7375ca1a3071cafd392ff1ed7--
