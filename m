Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B596E00A04; Wed,  1 Aug 2018 07:48:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [69.252.207.35 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bluehills7[at]comcast.net)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-03v.sys.comcast.net
	(resqmta-ch2-03v.sys.comcast.net [69.252.207.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DE49E009CF
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 07:48:35 -0700 (PDT)
Received: from resomta-ch2-13v.sys.comcast.net ([69.252.207.109])
	by resqmta-ch2-03v.sys.comcast.net with ESMTP
	id kqKFfOk0WurUvksQUfoiii; Wed, 01 Aug 2018 14:48:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1533134914;
	bh=kSPANx837yltYhh+UOCaI3IalwM+bkriPf73KXpmXoo=;
	h=Received:Received:Date:From:Reply-To:To:Message-ID:Subject:
	MIME-Version:Content-Type;
	b=LO56r9CIZ5s7A5bgVgSaeBcJa4k/2yKBVP6JEZqnOAcdbwGWMaZPbCcjnaahX1ite
	xpCxdalzCmrB5XrqiZY2lm7FZInDp53htQRGqF18T/NwA3tZ2nrxsVyLnfEK5ZIZoY
	V+uzCqNMhdzagAtKgqBuUWd+jwJ3ih3TgvNn9yluFJ2MjkXeNeCwnp1pL0ZfGWKsMH
	Z00muRuJakRE6SD5yEqHGH2vhI5/ZHRYFgNnzdVUsdEm/1F/fAg+4FHfBqLWz53zom
	fsM6QBRJV2vWik7ihTsDLitK9vNLIMJYOyC7xsAZte5HydnvyRjU52t3vT7OdYizH2
	l5gAkjcCzxvkQ==
Received: from oxapp-ch2h-63o.email.comcast.net ([96.118.150.57])
	by resomta-ch2-13v.sys.comcast.net with ESMTPS
	id ksQUfhxliL5P9ksQUfjt3p; Wed, 01 Aug 2018 14:48:34 +0000
Date: Wed, 1 Aug 2018 10:48:34 -0400 (EDT)
From: RUSSELL PETERSON <bluehills7@comcast.net>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <1631305736.2205.1533134914086@connect.xfinity.com>
In-Reply-To: <2104577883.536094.1532523684485@connect.xfinity.com>
References: <16C5EFE1-1FE0-4E48-9797-EEC5E54033AB@comcast.net>
	<CAMKF1so968sUsO8bdbvndD=VyVO_rxriC3kssO_K4V875M-byg@mail.gmail.com>
	<48A03EA7-A9B1-4249-8AF8-91EC5BA1CD38@comcast.net>
	<894173275.508644.1532435764564@connect.xfinity.com>
	<2104577883.536094.1532523684485@connect.xfinity.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev26
X-Originating-IP: ::ffff:216.156.69.42
X-Originating-Client: open-xchange-appsuite
X-CMAE-Envelope: MS4wfD6+ndjEnHAK1qPNbaKaNQyFG41kI30Ihhjg81uU4lSYcl/7vBrYEuiaxaY0340pyq0FonUSPYUv3jcV3HbxhI3G9W+4MgFUz3vZdVWCnQfkpOmNQuTw
	5Wo9XGjbD0B5ZYIplOTS6SALPAuYKmRoix1/dFdVcqIUIJGjIjMtCuh0bcTv9UbPLmy5mi2VRS+gv3eJu7KmoAoy77q5tu+MGL+sIquZLIlCKq503D1D0NRQ
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: SDK and out of tree modules
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: RUSSELL PETERSON <bluehills7@comcast.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Aug 2018 14:48:38 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2204_1324283184.1533134914068"

------=_Part_2204_1324283184.1533134914068
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I have started looking at this more closely and I have a few questions. Hop=
e someone knows or has seen these issues before.

1. When running create_filtered task list I see failures. This is mainly du=
e to the fact that the sdkbasepath getting renamed to tmp-renamed-sdk fails=
. I have bypassed this to get around it but it seems like it should work. R=
enaming <...>/sdk-ext/image/opt/poky/2.4.1 to <...>sdk-ext/image/tmp-rename=
d-sdk doesn't seem to work.

2. Understanding the sstate-cache took some time but I think I understand t=
he basic idea now. The problem I was seeing relates to the fact that my bui=
ld directory and my temp directory are on different disks. Hence, when I de=
lete the build directory, the cache gets deleted. I would think that making=
 core-image-full again would regenerate the sstate-cache but it does not. T=
he only way I see the sstate-cache regenerated is by deleting the tmp direc=
tory completely and starting over. Without the cache, building the sdk-ext =
fails with about 5000 "should have been setscened" errors. As the ext sdk c=
learly has a dependency there... why isn't the state cache re-created?? Pro=
bably just don't quite understand state yet, I guess.

3. Finally, I have the ext sdk built... tried to install it... failed with =
an error telling me TMPDIR has changed and I need to rebuild or change it b=
ack. I assume this is related to me setting TMPDIR in the original local.co=
nf? Anyone else see this? Seems like unless TMPDIR is set to the default (T=
OPDIR/tmp) the SDK won't work??

Regards,

Russell

> On July 25, 2018 at 9:01 AM RUSSELL PETERSON <bluehills7@comcast.net> wro=
te:
>
>
> So, this seems broken to me. I managed to get around this issue (sstate-c=
ontrol/manifest-allarch-kernel-devsrc.populate_sysroot not found?) by appen=
ding PACKAGE_EXTRA_ARCHS with the MACHINE_ARCH for my bsp. While PACKAGE_AR=
CHS now has a duplicate in it (it already includes MACHINE_ARCH as well as =
PACKAGE_EXTRA_ARCH), the python code in staging_populate_sysroot seems to r=
equire this or it looks for the wrong manifest file.
>
> Also, when building the eSDK, dnf seems very confused about what packages=
 are compatible. It's looking for my SoC arch packages... but then won't ac=
cept aarch64 as being compatible. I needed to set:
>
> ALL_MULTILIB_PACKAGE_ARCHS =3D+ " ${PACKAGE_EXTRA_ARCHS_tune-${DEFAULTTUN=
E}}"
>
> to get /etc/dnf/vars/arch to update correctly. This is a bit tedious. I'm=
 now having a similar issue because dnf doesn't seem to like an arch of x86=
_64-nativesdk. Do I update ALL_MULTILIB_PACKAGE_ARCHS again?? Ug.
>
> --Russ
>
>
> > On July 24, 2018 at 8:36 AM RUSSELL PETERSON <bluehills7@comcast.net> w=
rote:
> >
> >
> > I am running Poky Rocko at the HEAD (just updated yesterday) and see th=
e following when I attempt to build the eSDK:
> >
> > sstate-control/manifest-allarch-kernel-devsrc.populate_sysroot not foun=
d?
> >
> > I see this has been an issue with others as well. It looks like Paul ha=
d a fix around April but then the trail went silent so I'm not sure if ther=
e was a fix or if that fix went into Rocko. Anyone?
> >
> > --Russ
> >
> > > On July 21, 2018 at 4:42 PM Russell Peterson <bluehills7@comcast.net>=
 wrote:
> > >
> > >
> > > No, just the standard SDK. I was having issues building the eSDK back=
 when we used pyro and never fully figured it out=E2=80=A6 but we have sinc=
e upgraded to rocko. I should revisit the eSDK and see if it works for me n=
ow or find the root cause since it sounds useful.
> > >
> > > Thanks, Khem.
> > >
> > > =E2=80=94Russ
> > >
> > >
> > > > On Jul 21, 2018, at 1:34 PM, Khem Raj <raj.khem@gmail.com> wrote:
> > > >
> > > > On Sat, Jul 21, 2018 at 6:20 AM Russell Peterson <bluehills7@comcas=
t.net> wrote:
> > > >>
> > > >> Hello,
> > > >>
> > > >> I have been building some modules using the SDK for a while now. T=
his is mostly for development flow purposes but we have had a few customers=
 doing this as well. To get this to work we always need to run =E2=80=9Cmak=
e silentoldconfig scripts=E2=80=9D inside the RFS of the SDK on the build h=
ost. Many folks forget to do this this and thus many, many questions come m=
y way about the SDK being broken and they can=E2=80=99t build their modules=
 (not all users are kernel experts or even intermediates=E2=80=A6 they just=
 want to apply a patch and quickly move on to their app). Is there a way to=
 do this auto-magically during the installation of the SDK by adding some t=
ype of scripts etc=E2=80=A6 to the recipe? I assume it needs to be done at =
install time since while the build host is x86=E2=80=A6 the exact linux dis=
tro is not known until then (or does that matter?).
> > > >>
> > > >
> > > > are you using extensible SDK ? in that case I think do_make_scripts
> > > > from module-base.bbclass should be helpful
> > > >
> > > >> =E2=80=94Russ
> > > >>
> > > >> --
> > > >> _______________________________________________
> > > >> yocto mailing list
> > > >> yocto@yoctoproject.org
> > > >> https://lists.yoctoproject.org/listinfo/yocto
> > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

------=_Part_2204_1324283184.1533134914068
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body>I have started looking at this more closely and I have a few q=
uestions.  Hope someone knows or has seen these issues before.<br><br>1. Wh=
en running create_filtered task list I see failures.  This is mainly due to=
 the fact that the sdkbasepath getting renamed to tmp-renamed-sdk fails.  I=
 have bypassed this to get around it but it seems like it should work.  Ren=
aming &#60;...&#62;/sdk-ext/image/opt/poky/2.4.1 to &#60;...&#62;sdk-ext/im=
age/tmp-renamed-sdk doesn&#39;t seem to work.<br><br>2. Understanding the s=
state-cache took some time but I think I understand the basic idea now.  Th=
e problem I was seeing relates to the fact that my build directory and my t=
emp directory are on different disks.  Hence, when I delete the build direc=
tory, the cache gets deleted.  I would think that making core-image-full ag=
ain would regenerate the sstate-cache but it does not.  The only way I see =
the sstate-cache regenerated is by deleting the tmp directory completely an=
d starting over.  Without the cache, building the sdk-ext fails with about =
5000 &#34;should have been setscened&#34; errors.  As the ext sdk clearly h=
as a dependency there... why isn&#39;t the state cache re-created??  Probab=
ly just don&#39;t quite understand state yet, I guess.  <br><br>3. Finally,=
 I have the ext sdk built... tried to install it... failed with an error te=
lling me TMPDIR has changed and I need to rebuild or change it back.  I ass=
ume this is related to me setting TMPDIR in the original local.conf?  Anyon=
e else see this?  Seems like unless TMPDIR is set to the default (TOPDIR/tm=
p) the SDK won&#39;t work??<br><br>Regards,<br><br>Russell<br><br>&#62; On =
July 25, 2018 at 9:01 AM RUSSELL PETERSON &#60;bluehills7@comcast.net&#62; =
wrote:<br>&#62; <br>&#62; <br>&#62; So, this seems broken to me.  I managed=
 to get around this issue (sstate-control/manifest-allarch-kernel-devsrc.po=
pulate_sysroot not found?) by appending PACKAGE_EXTRA_ARCHS with the MACHIN=
E_ARCH for my bsp.  While PACKAGE_ARCHS now has a duplicate in it (it alrea=
dy includes MACHINE_ARCH as well as PACKAGE_EXTRA_ARCH), the python code in=
 staging_populate_sysroot seems to require this or it looks for the wrong m=
anifest file.<br>&#62; <br>&#62; Also, when building the eSDK, dnf seems ve=
ry confused about what packages are compatible.  It&#39;s looking for my So=
C arch packages... but then won&#39;t accept aarch64 as being compatible.  =
I needed to set:<br>&#62; <br>&#62; ALL_MULTILIB_PACKAGE_ARCHS =3D+ &#34; $=
{PACKAGE_EXTRA_ARCHS_tune-${DEFAULTTUNE}}&#34;<br>&#62; <br>&#62; to get /e=
tc/dnf/vars/arch to update correctly.  This is a bit tedious.  I&#39;m now =
having a similar issue because dnf doesn&#39;t seem to like an arch of x86_=
64-nativesdk.  Do I update ALL_MULTILIB_PACKAGE_ARCHS again??  Ug.<br>&#62;=
 <br>&#62; --Russ<br>&#62;  <br>&#62; <br>&#62; &#62; On July 24, 2018 at 8=
:36 AM RUSSELL PETERSON &#60;bluehills7@comcast.net&#62; wrote:<br>&#62; &#=
62; <br>&#62; &#62; <br>&#62; &#62; I am running Poky Rocko at the HEAD (ju=
st updated yesterday) and see the following when I attempt to build the eSD=
K:<br>&#62; &#62; <br>&#62; &#62; sstate-control/manifest-allarch-kernel-de=
vsrc.populate_sysroot not found?<br>&#62; &#62; <br>&#62; &#62; I see this =
has been an issue with others as well.  It looks like Paul had a fix around=
 April but then the trail went silent so I&#39;m not sure if there was a fi=
x or if that fix went into Rocko.  Anyone?<br>&#62; &#62; <br>&#62; &#62; -=
-Russ<br>&#62; &#62; <br>&#62; &#62; &#62; On July 21, 2018 at 4:42 PM Russ=
ell Peterson &#60;bluehills7@comcast.net&#62; wrote:<br>&#62; &#62; &#62; <=
br>&#62; &#62; &#62; <br>&#62; &#62; &#62; No, just the standard SDK.  I wa=
s having issues building the eSDK back when we used pyro and never fully fi=
gured it out&#8230; but we have since upgraded to rocko.  I should revisit =
the eSDK and see if it works for me now or find the root cause since it sou=
nds useful.<br>&#62; &#62; &#62; <br>&#62; &#62; &#62; Thanks, Khem.<br>&#6=
2; &#62; &#62; <br>&#62; &#62; &#62; &#8212;Russ<br>&#62; &#62; &#62; <br>&=
#62; &#62; &#62; <br>&#62; &#62; &#62; &#62; On Jul 21, 2018, at 1:34 PM, K=
hem Raj &#60;raj.khem@gmail.com&#62; wrote:<br>&#62; &#62; &#62; &#62; <br>=
&#62; &#62; &#62; &#62; On Sat, Jul 21, 2018 at 6:20 AM Russell Peterson &#=
60;bluehills7@comcast.net&#62; wrote:<br>&#62; &#62; &#62; &#62;&#62; <br>&=
#62; &#62; &#62; &#62;&#62; Hello,<br>&#62; &#62; &#62; &#62;&#62; <br>&#62=
; &#62; &#62; &#62;&#62; I have been building some modules using the SDK fo=
r a while now.  This is mostly for development flow purposes but we have ha=
d a few customers doing this as well.  To get this to work we always need t=
o run &#8220;make silentoldconfig scripts&#8221; inside the RFS of the SDK =
on the build host.  Many folks forget to do this this and thus many, many q=
uestions come my way about the SDK being broken and they can&#8217;t build =
their modules (not all users are kernel experts or even intermediates&#8230=
; they just want to apply a patch and quickly move on to their app).  Is th=
ere a way to do this auto-magically during the installation of the SDK by a=
dding some type of scripts etc&#8230; to the recipe?  I assume it needs to =
be done at install time since while the build host is x86&#8230; the exact =
linux distro is not known until then (or does that matter?).<br>&#62; &#62;=
 &#62; &#62;&#62; <br>&#62; &#62; &#62; &#62; <br>&#62; &#62; &#62; &#62; a=
re you using extensible SDK ? in that case I think do_make_scripts<br>&#62;=
 &#62; &#62; &#62; from module-base.bbclass should be helpful<br>&#62; &#62=
; &#62; &#62; <br>&#62; &#62; &#62; &#62;&#62; &#8212;Russ<br>&#62; &#62; &=
#62; &#62;&#62; <br>&#62; &#62; &#62; &#62;&#62; --<br>&#62; &#62; &#62; &#=
62;&#62; _______________________________________________<br>&#62; &#62; &#6=
2; &#62;&#62; yocto mailing list<br>&#62; &#62; &#62; &#62;&#62; yocto@yoct=
oproject.org<br>&#62; &#62; &#62; &#62;&#62; https://lists.yoctoproject.org=
/listinfo/yocto<br>&#62; &#62; &#62; <br>&#62; &#62; &#62; -- <br>&#62; &#6=
2; &#62; _______________________________________________<br>&#62; &#62; &#6=
2; yocto mailing list<br>&#62; &#62; &#62; yocto@yoctoproject.org<br>&#62; =
&#62; &#62; https://lists.yoctoproject.org/listinfo/yocto<br>&#62; &#62; --=
 <br>&#62; &#62; _______________________________________________<br>&#62; &=
#62; yocto mailing list<br>&#62; &#62; yocto@yoctoproject.org<br>&#62; &#62=
; https://lists.yoctoproject.org/listinfo/yocto<br>&#62; -- <br>&#62; _____=
__________________________________________<br>&#62; yocto mailing list<br>&=
#62; yocto@yoctoproject.org<br>&#62; https://lists.yoctoproject.org/listinf=
o/yocto<br></body></html>
=20

------=_Part_2204_1324283184.1533134914068--
