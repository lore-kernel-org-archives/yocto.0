Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE209E00757; Sun, 15 Mar 2015 22:04:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 079D6E006B5;
	Sun, 15 Mar 2015 22:03:55 -0700 (PDT)
Received: by iecsl2 with SMTP id sl2so160867163iec.1;
	Sun, 15 Mar 2015 22:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=YHsAYAWYiCPGMBxrQrQ7fLG3Mz10Otb/9+V0trhbIQg=;
	b=Rw8nMBFfSScX9gkS7oMgBR81aBA0M2XV5X/tzgHr4tp6IIOEfREaDLp0gQHsEMEK14
	hr8G+Jsm7oz3i1wCT8yYb1iKqkMQ7k4P5hDLuCgxPgMSaZW7vd6iLTJofT99MKO5pXq+
	xmF9yZFdBpRsdwfBPMXsLl2dxc55cUTc8ZZMtls3k3Za5mFw/wNFI4mN4emtXF21WKrO
	wD7motaVJk3J8NZbBnkOcZekOtIXDPzuU9p5qJgSQ/lh7shN1uNafPxYBzBcfaeNIj/Z
	1Hu1t5lshJhUcMOtfMJjiDToLtGCIMpSYeiuA6b8mqQGdhg+EP8kmijHwQ+t80Gw6X+o
	IoYQ==
MIME-Version: 1.0
X-Received: by 10.50.29.109 with SMTP id j13mr12275037igh.2.1426482234509;
	Sun, 15 Mar 2015 22:03:54 -0700 (PDT)
Sender: priyaiitmandi@gmail.com
Received: by 10.107.16.139 with HTTP; Sun, 15 Mar 2015 22:03:54 -0700 (PDT)
In-Reply-To: <CAMKF1srYz3YXeo0dJii2H5SrT6GG4inFyPw13VYAymwjSaLO+w@mail.gmail.com>
References: <CALTPfpHK3-q9Xdv-ff_vgP7suRXuSzXEQVNq2wnbPj6hrosvdg@mail.gmail.com>
	<1426175606.12716.5.camel@besquive-mobl.amr.corp.intel.com>
	<CALTPfpGvW3mkeMq0ncWot-8LiUyf+c3xbi2TPfkh0CJLCzfiAQ@mail.gmail.com>
	<CALTPfpHo8gStEcBYzjTe_+x1ihxJ7HPDyDBe_ZyLh5GyvH9U-g@mail.gmail.com>
	<CALTPfpGB_fJPEiXvBzhV+QqzVhMRxuQFfRDoXJntfSjfQcTXPA@mail.gmail.com>
	<CAMKF1srYz3YXeo0dJii2H5SrT6GG4inFyPw13VYAymwjSaLO+w@mail.gmail.com>
Date: Mon, 16 Mar 2015 10:33:54 +0530
X-Google-Sender-Auth: hIQ1kX5Us_OW-UtjZBIx8UIJpSY
Message-ID: <CALTPfpETOT6nuGb1Yfh-urip95sK=SxHwvnZoq3c1KBJw+u2Qg@mail.gmail.com>
From: Priya Agarwal <priya_agarwal@students.iitmandi.ac.in>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Yocto-builds] Linking of external libraries in the recipe
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
X-List-Received-Date: Mon, 16 Mar 2015 05:04:00 -0000
Content-Type: multipart/alternative; boundary=047d7bd74a30ddd040051160c60a

--047d7bd74a30ddd040051160c60a
Content-Type: text/plain; charset=UTF-8

Did this:

DPENDS += "usdpaa"
EXTRA_OECONF_append = "    LDFLAGS = "-L/usr/lib/" \
            LIBS="-lusdpaa_dma -lusdpaa_dma_mem -lusdpaa_of -lusdpaa_fman
-lusdpaa_qbman -lusdpaa_syscfg" \
            CXXFLAGS="-I/usr/include/""

Its still failing.

configure: WARNING: you should use --build, --host, --target
configure: error: invalid variable name: `'
Didn't work even with single inverted comma.

On Sun, Mar 15, 2015 at 2:20 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Sat, Mar 14, 2015 at 11:23 PM, Priya Agarwal
> <priya_agarwal@students.iitmandi.ac.in> wrote:
> > I wrote the following in squid_3.4.7.bbappend:
> >
> > DPENDS_append = "usdpaa"
>
> DEPENDS += "usdpaa" should be better here.
>
> > EXTRA_OECONF_append = "
> >
> LDFLAGS=-L/media/NewVolume/yocto/build_t4240qds_release/tmp/sysroots/t4240qds/usr/lib/
> > \
>
> This is not ok. you are hardcoding sysroot. You should rather use
> LDFLAGS='-L=/usr/lib'
>
> >             LIBS=-lusdpaa_dma -lusdpaa_dma_mem -lusdpaa_of -lusdpaa_fman
> > -lusdpaa_qbman -lusdpaa_syscfg \
>
> may be you should include LIBS in quotes ?
>
> >
> >
> CXXFLAGS=-I/media/NewVolume/yocto/build_t4240qds_release/tmp/sysroots/t4240qds/usr/include/"
> >
> > So the error is that it is not able to recognize the option
> > -lusdpaa_dma_mem. ( I tried linking only 1 linrary, then it worked but
> when
> > I link more than 1 the 2nd one is unrecognized). oe_runconf is failing
> > basically. How to link all the libraries successfully?
> >
> > Basically I have many static libraries in
> >
> /media/NewVolume/yocto/build_t4240qds_release/tmp/sysroots/t4240qds/usr/lib/
> > and I want to link all of them while building squid code. To do that I
> need
> > to run ./configure with these extra parameters LDFLAGS,LIBS,CXXFLAGS.
> >
> >
> >
> > On Thu, Mar 12, 2015 at 10:39 PM, Priya Agarwal
> > <priya_agarwal@students.iitmandi.ac.in> wrote:
> >>
> >> Okay I think I understood. It has to be DEPENDS = "usdpaa" . Basically
> the
> >> recipe which is building the libraries is
> >> /meta-fsl-ppc/recipe-tools/usdpaa/usdpaa_git.bb.
> >> Thanks.
> >>
> >> On Thu, Mar 12, 2015 at 9:58 PM, Priya Agarwal
> >> <priya_agarwal@students.iitmandi.ac.in> wrote:
> >>>>
> >>>> If the libraries are already generated during the build it might be a
> >>>> case where you just DEPENDS_append = " <libraryproviderpackage>" at
> >>>>
> >>>> he .bbappend file
> >>>
> >>>
> >>> I know where the libraries are but how do I make out which is the
> >>> package.
> >>> (The needed '.a' files are in ..../usdpaa/git-r5/git/lib_powerpc/*)
> >>>
> >>>
> >>>
> >>>
> >>>
> >>> On Thu, Mar 12, 2015 at 9:23 PM, Benjamin Esquivel
> >>> <benjamin.esquivel@linux.intel.com> wrote:
> >>>>
> >>>> On Thu, 2015-03-12 at 18:00 +0530, Priya Agarwal wrote:
> >>>> > Hello,
> >>>> >
> >>>> >
> >>>> > I have taken a recipe for the package squid from OpenEmbedded.org
> and
> >>>> > have built it along with the kernel image.
> >>>> >
> >>>> >
> >>>> > Now I want to edit its recipe so that it will include some external
> >>>> > libraries.
> >>>> > But these libraries are the ones that are generated during the
> build.
> >>>> > So how do I edit the recipe to include those libraries?
> >>>> >
> >>>> Hi Priya, if you want to use a recipe and make some modifications to
> >>>> it's behavior it is recommended that you do it via a .bbappend file
> >>>>
> >>>>
> >>>>
> http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#using-bbappend-files
> >>>>
> >>>> If the libraries are already generated during the build it might be a
> >>>> case where you just DEPENDS_append = " <libraryproviderpackage>" at
> >>>> the .bbappend file. When the dependiencies are resolved prior your
> >>>> recipe is built, the headers and libraries are placed in a special
> part
> >>>> of the working directory that the recipes know where to look for (if
> >>>> they don't deviate of the standard, of course).
> >>>>
> >>>> >
> >>>> > Location of
> >>>> > library:  ../yocto/<build-directory>/............/libusdpaa.a
> >>>> >
> >>>> >
> >>>> >
> >>>> > currently the do_compile task is failing as I have used an extra
> >>>> > function whose library I haven't included. Snippet of the error:
> >>>> >
> >>>> > | main.cc: In function 'int SquidMainSafe(int, char**)':
> >>>> > | main.cc:1259:10: error: 'of_init' was not declared in this scope
> >>>> > | make[3]: *** [main.o] Error 1
> >>>> > | make[3]: *** Waiting for unfinished jobs....
> >>>> > | make[3]: Leaving directory
> >>>> >
> >>>> >
> `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
> >>>> > | make[2]: *** [all-recursive] Error 1
> >>>> > | make[2]: Leaving directory
> >>>> >
> >>>> >
> `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
> >>>> > | make[1]: *** [all] Error 2
> >>>> > | make[1]: Leaving directory
> >>>> >
> >>>> >
> `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
> >>>> > | make: *** [all-recursive] Error 1
> >>>> > | ERROR: oe_runmake failed
> >>>> > | ERROR: Function failed: do_compile
> >>>> > (see
> >>>> >
> /media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/temp/log.do_compile.28810
> >>>> > for further information)
> >>>> > ERROR: Task 799
> >>>> >
> >>>> >
> (/media/NewVolume/yocto/meta-oe/meta-networking/recipes-daemons/squid/
> squid_3.4.7.bb,
> >>>> > do_compile) failed with exit code '1'
> >>>> >
> >>>> >
> >>>> > I have attached my recipe.
> >>>> >
> >>>> >
> >>>> >
> >>>>
> >>>>
> >>>> --
> >>>> _______________________________________________
> >>>> yocto mailing list
> >>>> yocto@yoctoproject.org
> >>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>
> >>>
> >>
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto-builds mailing list
> yocto-builds@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto-builds
>

--047d7bd74a30ddd040051160c60a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Did this:<br><br>DPENDS +=3D &quot;usdpaa&q=
uot;<br>EXTRA_OECONF_append =3D &quot;=C2=A0=C2=A0=C2=A0 LDFLAGS =3D &quot;=
-L/usr/lib/&quot; \<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 LIBS=3D&quot;-lusdpaa_dma -lusdpaa_dma_mem -lusdpaa_of -lusdpaa_fman=
 -lusdpaa_qbman -lusdpaa_syscfg&quot; \<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 CXXFLAGS=3D&quot;-I/usr/include/&quot;&quot;<br><=
/div><br></div>Its still failing.<br><br>configure: WARNING: you should use=
 --build, --host, --target<br>configure: error: invalid variable name: `&#3=
9;<br></div>Didn&#39;t work even with single inverted comma.<br></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sun, Mar 15, 2015 a=
t 2:20 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.=
com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><span class=3D"">On Sat, Mar 14, 2015 at 11:23 PM, P=
riya Agarwal<br>
&lt;<a href=3D"mailto:priya_agarwal@students.iitmandi.ac.in">priya_agarwal@=
students.iitmandi.ac.in</a>&gt; wrote:<br>
&gt; I wrote the following in squid_3.4.7.bbappend:<br>
&gt;<br>
&gt; DPENDS_append =3D &quot;usdpaa&quot;<br>
<br>
</span>DEPENDS +=3D &quot;usdpaa&quot; should be better here.<br>
<br>
&gt; EXTRA_OECONF_append =3D &quot;<br>
&gt; LDFLAGS=3D-L/media/NewVolume/yocto/build_t4240qds_release/tmp/sysroots=
/t4240qds/usr/lib/<br>
&gt; \<br>
<br>
This is not ok. you are hardcoding sysroot. You should rather use<br>
LDFLAGS=3D&#39;-L=3D/usr/lib&#39;<br>
<span class=3D""><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LIBS=3D-lusdpaa_dma -lu=
sdpaa_dma_mem -lusdpaa_of -lusdpaa_fman<br>
&gt; -lusdpaa_qbman -lusdpaa_syscfg \<br>
<br>
</span>may be you should include LIBS in quotes ?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; CXXFLAGS=3D-I/media/NewVolume/yocto/build_t4240qds_release/tmp/sysroot=
s/t4240qds/usr/include/&quot;<br>
&gt;<br>
&gt; So the error is that it is not able to recognize the option<br>
&gt; -lusdpaa_dma_mem. ( I tried linking only 1 linrary, then it worked but=
 when<br>
&gt; I link more than 1 the 2nd one is unrecognized). oe_runconf is failing=
<br>
&gt; basically. How to link all the libraries successfully?<br>
&gt;<br>
&gt; Basically I have many static libraries in<br>
&gt; /media/NewVolume/yocto/build_t4240qds_release/tmp/sysroots/t4240qds/us=
r/lib/<br>
&gt; and I want to link all of them while building squid code. To do that I=
 need<br>
&gt; to run ./configure with these extra parameters LDFLAGS,LIBS,CXXFLAGS.<=
br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Mar 12, 2015 at 10:39 PM, Priya Agarwal<br>
&gt; &lt;<a href=3D"mailto:priya_agarwal@students.iitmandi.ac.in">priya_aga=
rwal@students.iitmandi.ac.in</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Okay I think I understood. It has to be DEPENDS =3D &quot;usdpaa&q=
uot; . Basically the<br>
&gt;&gt; recipe which is building the libraries is<br>
&gt;&gt; /meta-fsl-ppc/recipe-tools/usdpaa/<a href=3D"http://usdpaa_git.bb"=
 target=3D"_blank">usdpaa_git.bb</a>.<br>
&gt;&gt; Thanks.<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Mar 12, 2015 at 9:58 PM, Priya Agarwal<br>
&gt;&gt; &lt;<a href=3D"mailto:priya_agarwal@students.iitmandi.ac.in">priya=
_agarwal@students.iitmandi.ac.in</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; If the libraries are already generated during the build it=
 might be a<br>
&gt;&gt;&gt;&gt; case where you just DEPENDS_append =3D &quot; &lt;libraryp=
roviderpackage&gt;&quot; at<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; he .bbappend file<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I know where the libraries are but how do I make out which is =
the<br>
&gt;&gt;&gt; package.<br>
&gt;&gt;&gt; (The needed &#39;.a&#39; files are in ..../usdpaa/git-r5/git/l=
ib_powerpc/*)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Thu, Mar 12, 2015 at 9:23 PM, Benjamin Esquivel<br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:benjamin.esquivel@linux.intel.com">benja=
min.esquivel@linux.intel.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Thu, 2015-03-12 at 18:00 +0530, Priya Agarwal wrote:<br=
>
&gt;&gt;&gt;&gt; &gt; Hello,<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; I have taken a recipe for the package squid from Open=
Embedded.org and<br>
&gt;&gt;&gt;&gt; &gt; have built it along with the kernel image.<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; Now I want to edit its recipe so that it will include=
 some external<br>
&gt;&gt;&gt;&gt; &gt; libraries.<br>
&gt;&gt;&gt;&gt; &gt; But these libraries are the ones that are generated d=
uring the build.<br>
&gt;&gt;&gt;&gt; &gt; So how do I edit the recipe to include those librarie=
s?<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; Hi Priya, if you want to use a recipe and make some modifi=
cations to<br>
&gt;&gt;&gt;&gt; it&#39;s behavior it is recommended that you do it via a .=
bbappend file<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; <a href=3D"http://www.yoctoproject.org/docs/1.7.1/dev-manu=
al/dev-manual.html#using-bbappend-files" target=3D"_blank">http://www.yocto=
project.org/docs/1.7.1/dev-manual/dev-manual.html#using-bbappend-files</a><=
br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; If the libraries are already generated during the build it=
 might be a<br>
&gt;&gt;&gt;&gt; case where you just DEPENDS_append =3D &quot; &lt;libraryp=
roviderpackage&gt;&quot; at<br>
&gt;&gt;&gt;&gt; the .bbappend file. When the dependiencies are resolved pr=
ior your<br>
&gt;&gt;&gt;&gt; recipe is built, the headers and libraries are placed in a=
 special part<br>
&gt;&gt;&gt;&gt; of the working directory that the recipes know where to lo=
ok for (if<br>
&gt;&gt;&gt;&gt; they don&#39;t deviate of the standard, of course).<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; Location of<br>
&gt;&gt;&gt;&gt; &gt; library:=C2=A0 ../yocto/&lt;build-directory&gt;/.....=
......./libusdpaa.a<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; currently the do_compile task is failing as I have us=
ed an extra<br>
&gt;&gt;&gt;&gt; &gt; function whose library I haven&#39;t included. Snippe=
t of the error:<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; | main.cc: In function &#39;int SquidMainSafe(int, ch=
ar**)&#39;:<br>
&gt;&gt;&gt;&gt; &gt; | main.cc:1259:10: error: &#39;of_init&#39; was not d=
eclared in this scope<br>
&gt;&gt;&gt;&gt; &gt; | make[3]: *** [main.o] Error 1<br>
&gt;&gt;&gt;&gt; &gt; | make[3]: *** Waiting for unfinished jobs....<br>
&gt;&gt;&gt;&gt; &gt; | make[3]: Leaving directory<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; `/media/NewVolume/yocto/build_t4240qds_release/tmp/wo=
rk/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src&#39;<br>
&gt;&gt;&gt;&gt; &gt; | make[2]: *** [all-recursive] Error 1<br>
&gt;&gt;&gt;&gt; &gt; | make[2]: Leaving directory<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; `/media/NewVolume/yocto/build_t4240qds_release/tmp/wo=
rk/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src&#39;<br>
&gt;&gt;&gt;&gt; &gt; | make[1]: *** [all] Error 2<br>
&gt;&gt;&gt;&gt; &gt; | make[1]: Leaving directory<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; `/media/NewVolume/yocto/build_t4240qds_release/tmp/wo=
rk/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src&#39;<br>
&gt;&gt;&gt;&gt; &gt; | make: *** [all-recursive] Error 1<br>
&gt;&gt;&gt;&gt; &gt; | ERROR: oe_runmake failed<br>
&gt;&gt;&gt;&gt; &gt; | ERROR: Function failed: do_compile<br>
&gt;&gt;&gt;&gt; &gt; (see<br>
&gt;&gt;&gt;&gt; &gt; /media/NewVolume/yocto/build_t4240qds_release/tmp/wor=
k/ppce6500-fsl_networking-linux/squid/3.4.7-r0/temp/log.do_compile.28810<br=
>
&gt;&gt;&gt;&gt; &gt; for further information)<br>
&gt;&gt;&gt;&gt; &gt; ERROR: Task 799<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; (/media/NewVolume/yocto/meta-oe/meta-networking/recip=
es-daemons/squid/<a href=3D"http://squid_3.4.7.bb" target=3D"_blank">squid_=
3.4.7.bb</a>,<br>
&gt;&gt;&gt;&gt; &gt; do_compile) failed with exit code &#39;1&#39;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; I have attached my recipe.<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br>
&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto-builds mailing list<br>
<a href=3D"mailto:yocto-builds@yoctoproject.org">yocto-builds@yoctoproject.=
org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto-builds" target=3D"=
_blank">https://lists.yoctoproject.org/listinfo/yocto-builds</a><br>
</font></span></blockquote></div><br></div>

--047d7bd74a30ddd040051160c60a--
