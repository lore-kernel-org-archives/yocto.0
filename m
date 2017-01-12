Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7423BE00CB0; Thu, 12 Jan 2017 14:33:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C240E00C7D
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 14:32:59 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP; 12 Jan 2017 14:32:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,220,1477983600"; d="scan'208,217";a="53228156"
Received: from ttorling-mac01.jf.intel.com ([10.24.10.84])
	by fmsmga006.fm.intel.com with ESMTP; 12 Jan 2017 14:32:58 -0800
From: Tim Orling <timothy.t.orling@linux.intel.com>
Message-Id: <C33BCD1B-E241-4CDF-9035-B6A17F337B34@linux.intel.com>
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Date: Thu, 12 Jan 2017 14:32:57 -0800
In-Reply-To: <CAC+thW2das3i_qYatGthx9pm27xEtW-2OHxhEy-qQNasrMLwVQ@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAAfyv36YrBOVfui1Udia8Ba3dwzBn9Sb59w7k8L4p+EGLWLzLg@mail.gmail.com>
	<CAC+thW2das3i_qYatGthx9pm27xEtW-2OHxhEy-qQNasrMLwVQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3259)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 22:33:13 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_04A610AE-336C-45CF-9477-60C61275153A"

--Apple-Mail=_04A610AE-336C-45CF-9477-60C61275153A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jan 12, 2017, at 8:50 AM, Andrea Galbusera <gizero@gmail.com> =
wrote:
>=20
> On Thu, Jan 12, 2017 at 5:21 PM, Belisko Marek =
<marek.belisko@gmail.com <mailto:marek.belisko@gmail.com>> wrote:
> On Thu, Jan 12, 2017 at 4:39 PM, Tim Orling
> <timothy.t.orling@linux.intel.com =
<mailto:timothy.t.orling@linux.intel.com>> wrote:
> > You can also build using Docker containers:
> > https://github.com/crops/docker-win-mac-docs/wiki =
<https://github.com/crops/docker-win-mac-docs/wiki>
> Well the re is other limitation about slow filesystem access from
> docker on osx. There is workaround to use nfs but it's not possible to
> use nfs for building yocto - so it's kind of chicken-egg problem ;)
>=20
> I shortly tested the CROPS docker-based setup after watching some =
presentation at ELCE 2016 in Berlin. It basically worked but I =
experienced the filesystem slowness your are talking about. I ended up =
waiting hours to see a simple core-image-minimal build complete (even =
after giving more cores to docker). One more point is that slightly more =
complex build scenarios, i.e. building resin.os, also required tweaking =
docker run parameters for the build container in order to give bitbake =
access to features like loop devices it needed (not always easily =
debuggable issues indeed). Turned out I decided to stick with more =
canonical linux based environments for the moment.
>=20

Depending on your hardware, it will take hours to build a simple image =
for the first time. This is no different on native Linux, if the =
hardware is only 1-4 cores, 4-8 GB RAM and especially if you are using a =
spinning harddrive. Server class systems with 72+ cores and 128+ GB of =
RAM will have a significantly faster build time. Almost all my YP/OE =
builds are now run in containers.

We will run some tests and get back to you about the real speed =
differences. Assuming you are running on the same hardware, we have seen =
builds on Windows be slightly *faster* than on native Linux. We need to =
collect data for our latest Mac OS X builds to address your concern.

> Anyway, the technology behind CROPS is *very* interesting to me, and =
I'd like to hear from people closely involved (Tim?) what the state of =
the art is and what we can expect to see in the near future. IIRC, the =
roadmap for Yocto 2.3 release was supposed to resurrect the Eclipse =
plugin and adopt CROPS as an alternative for running eSDK in a seamless =
way on different development host OSs. Beside from the images on docker =
hub and the github projects that didn't have high activity in the latest =
months, I hardly find discussions and documentation on the whole =
approach. Isn't this hot enough anymore or are there big issues that =
will prevent this technology from taking off. I often manage SDKs for =
Windows-minded developers and I strongly yearn to find a better approach =
to help them feel at home while building stuff for OE/Yocto based =
systems...=20
>=20

This work is being done by a very small team. It is no less hot than =
since it was first announced. However, the state of the Eclipse plugin =
at the initial announcement was experimental and the perception was that =
it was production ready. That is a risk of developing a project in the =
open. Both the Docker technology and the Eclipse technologies that we =
are using are rapidly changing.

Our current work is hosted on GitHub =
(https://github.com/crops/eclipse-crops =
<https://github.com/crops/eclipse-crops>). We had to rethink some of the =
approach that we demoed at ELC San Diego. We are still targeting 2.3 for =
the =E2=80=9Cstandard SDK=E2=80=9D approach (e.g. no =E2=80=9Cdevtool=E2=80=
=9D integration).

> =20
> >
> > On Jan 12, 2017, at 7:34 AM, Burton, Ross <ross.burton@intel.com =
<mailto:ross.burton@intel.com>> wrote:
> >
> >
> > On 12 January 2017 at 15:14, Roger Smith <roger@sentientblue.com =
<mailto:roger@sentientblue.com>> wrote:
> >>
> >> Is there any documentation for running the Yocto build system on =
Mac OS X
> >> or macOS as Apple now calls it? I am working with the Intel Aero =
board.
> >> Before I go down the rabbit hole of fixing issues like this one =
(and I am
> >> using the bash shell), I=E2=80=99d like to know if anyone has build =
it on os x
> >> before.
> >
> >
> > If you install all of the GNU tools using brew or similar and put =
them first
> > on $PATH then you can get bitbake started.  Then you need to stub =
out the
> > linux-specific bits in bitbake.  I've previously started on this =
work
> > already
> > =
(http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dross/darw=
in =
<http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dross/darw=
in>).
> > The next step is figuring out how to configure OE to build and link =
natively
> > on OSX using LLVM instead of GCC.
> >
> > However all of this is mostly academic because in Sierra (iirc) =
onwards
> > there is tighter security on processes, which means that pseudo =
won't work
> > even if you port it to macOS.
> >
> > So unless you fancy some non-trivial engineering the short version =
is just
> > use something like Docker to run a Linux system on your Mac.
> >
> > Ross
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
> >
>=20
> marek
>=20
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>=20
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184 <tel:%2B421%20915%20052%20184>
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com <http://open-nandra.com/>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_04A610AE-336C-45CF-9477-60C61275153A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 12, 2017, at 8:50 AM, Andrea Galbusera &lt;<a =
href=3D"mailto:gizero@gmail.com" class=3D"">gizero@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
dir=3D"ltr" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; orphans: auto; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; widows: auto; =
word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><div =
class=3D"gmail_extra"><div class=3D"gmail_quote">On Thu, Jan 12, 2017 at =
5:21 PM, Belisko Marek<span =
class=3D"Apple-converted-space">&nbsp;</span><span dir=3D"ltr" =
class=3D"">&lt;<a href=3D"mailto:marek.belisko@gmail.com" =
target=3D"_blank" class=3D"">marek.belisko@gmail.com</a>&gt;</span><span =
class=3D"Apple-converted-space">&nbsp;</span>wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px =
0px 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, =
204); border-left-style: solid; padding-left: 1ex;"><span class=3D"">On =
Thu, Jan 12, 2017 at 4:39 PM, Tim Orling<br class=3D"">&lt;<a =
href=3D"mailto:timothy.t.orling@linux.intel.com" =
class=3D"">timothy.t.orling@linux.intel.<wbr class=3D"">com</a>&gt; =
wrote:<br class=3D"">&gt; You can also build using Docker containers:<br =
class=3D"">&gt;<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"https://github.com/crops/docker-win-mac-docs/wiki" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://github.com/crops/<wbr =
class=3D"">docker-win-mac-docs/wiki</a><br class=3D""></span>Well the re =
is other limitation about slow filesystem access from<br class=3D"">docker=
 on osx. There is workaround to use nfs but it's not possible to<br =
class=3D"">use nfs for building yocto - so it's kind of chicken-egg =
problem ;)<br class=3D""></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">I shortly tested the CROPS docker-based =
setup after watching some presentation at ELCE 2016 in Berlin. It =
basically worked but I experienced the filesystem slowness your are =
talking about. I ended up waiting hours to see a simple =
core-image-minimal build complete (even after giving more cores to =
docker). One more point is that slightly more complex build scenarios, =
i.e. building resin.os, also required tweaking docker run parameters for =
the build container in order to give bitbake access to features like =
loop devices it needed (not always easily debuggable issues indeed). =
Turned out I decided to stick with more canonical linux based =
environments for the moment.</div><div class=3D""><br =
class=3D""></div></div></div></div></div></blockquote><div><br =
class=3D""></div><div>Depending on your hardware, it will take hours to =
build a simple image for the first time. This is no different on native =
Linux, if the hardware is only 1-4 cores, 4-8 GB RAM and especially if =
you are using a spinning harddrive. Server class systems with 72+ cores =
and 128+ GB of RAM will have a significantly faster build time. Almost =
all my YP/OE builds are now run in containers.</div><div><br =
class=3D""></div>We will run some tests and get back to you about the =
real speed differences. Assuming you are running on the same hardware, =
we have seen builds on Windows be slightly *faster* than on native =
Linux. We need to collect data for our latest Mac OS X builds to address =
your concern.</div><div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><div dir=3D"ltr" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;" class=3D""><div class=3D"gmail_extra"><div =
class=3D"gmail_quote"><div class=3D"">Anyway, the technology behind =
CROPS is *very* interesting to me, and I'd like to hear from people =
closely involved (Tim?) what the state of the art is and what we can =
expect to see in the near future. IIRC, the roadmap for Yocto 2.3 =
release was supposed to resurrect the Eclipse plugin and adopt CROPS as =
an alternative for running eSDK in a seamless way on different =
development host OSs. Beside from the images on docker hub and the =
github projects that didn't have high activity in the latest months, I =
hardly find discussions and documentation on the whole approach. Isn't =
this hot enough anymore or are there big issues that will prevent this =
technology from taking off. I often manage SDKs for Windows-minded =
developers and I strongly yearn to find a better approach to help them =
feel at home while building stuff for OE/Yocto based =
systems...&nbsp;</div><div class=3D""><br =
class=3D""></div></div></div></div></div></blockquote><div><br =
class=3D""></div><div>This work is being done by a very small team. It =
is no less hot than since it was first announced. However, the state of =
the Eclipse plugin at the initial announcement was experimental and the =
perception was that it was production ready. That is a risk of =
developing a project in the open. Both the Docker technology and the =
Eclipse technologies that we are using are rapidly =
changing.</div><div><br class=3D""></div>Our current work is hosted on =
GitHub (<a href=3D"https://github.com/crops/eclipse-crops" =
class=3D"">https://github.com/crops/eclipse-crops</a>). We had to =
rethink some of the approach that we demoed at ELC San Diego. We are =
still targeting 2.3 for the =E2=80=9Cstandard SDK=E2=80=9D approach =
(e.g. no =E2=80=9Cdevtool=E2=80=9D integration).</div><div><br =
class=3D""></div><div><blockquote type=3D"cite" class=3D""><div =
class=3D""><div dir=3D"ltr" style=3D"font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; orphans: auto; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: =
auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" class=3D""><div =
class=3D"gmail_extra"><div class=3D"gmail_quote"><div =
class=3D"">&nbsp;</div><blockquote class=3D"gmail_quote" style=3D"margin: =
0px 0px 0px 0.8ex; border-left-width: 1px; border-left-color: rgb(204, =
204, 204); border-left-style: solid; padding-left: 1ex;"><div =
class=3D"HOEnZb"><div class=3D"h5">&gt;<br class=3D"">&gt; On Jan 12, =
2017, at 7:34 AM, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:<br class=3D"">&gt;<br =
class=3D"">&gt;<br class=3D"">&gt; On 12 January 2017 at 15:14, Roger =
Smith &lt;<a href=3D"mailto:roger@sentientblue.com" =
class=3D"">roger@sentientblue.com</a>&gt; wrote:<br class=3D"">&gt;&gt;<br=
 class=3D"">&gt;&gt; Is there any documentation for running the Yocto =
build system on Mac OS X<br class=3D"">&gt;&gt; or macOS as Apple now =
calls it? I am working with the Intel Aero board.<br class=3D"">&gt;&gt; =
Before I go down the rabbit hole of fixing issues like this one (and I =
am<br class=3D"">&gt;&gt; using the bash shell), I=E2=80=99d like to =
know if anyone has build it on os x<br class=3D"">&gt;&gt; before.<br =
class=3D"">&gt;<br class=3D"">&gt;<br class=3D"">&gt; If you install all =
of the GNU tools using brew or similar and put them first<br =
class=3D"">&gt; on $PATH then you can get bitbake started.&nbsp; Then =
you need to stub out the<br class=3D"">&gt; linux-specific bits in =
bitbake.&nbsp; I've previously started on this work<br class=3D"">&gt; =
already<br class=3D"">&gt; (<a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dro=
ss/darwin" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">http://git.yoctoproject.org/<wbr =
class=3D"">cgit/cgit.cgi/poky-contrib/<wbr =
class=3D"">log/?h=3Dross/darwin</a>).<br class=3D"">&gt; The next step =
is figuring out how to configure OE to build and link natively<br =
class=3D"">&gt; on OSX using LLVM instead of GCC.<br class=3D"">&gt;<br =
class=3D"">&gt; However all of this is mostly academic because in Sierra =
(iirc) onwards<br class=3D"">&gt; there is tighter security on =
processes, which means that pseudo won't work<br class=3D"">&gt; even if =
you port it to macOS.<br class=3D"">&gt;<br class=3D"">&gt; So unless =
you fancy some non-trivial engineering the short version is just<br =
class=3D"">&gt; use something like Docker to run a Linux system on your =
Mac.<br class=3D"">&gt;<br class=3D"">&gt; Ross<br class=3D"">&gt; --<br =
class=3D"">&gt; ______________________________<wbr =
class=3D"">_________________<br class=3D"">&gt; yocto mailing list<br =
class=3D"">&gt;<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">&gt;<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">https://lists.yoctoproject.<wbr =
class=3D"">org/listinfo/yocto</a><br class=3D"">&gt;<br class=3D"">&gt;<br=
 class=3D"">&gt;<br class=3D"">&gt; --<br class=3D"">&gt; =
______________________________<wbr class=3D"">_________________<br =
class=3D"">&gt; yocto mailing list<br class=3D"">&gt;<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">&gt;<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">https://lists.yoctoproject.<wbr =
class=3D"">org/listinfo/yocto</a><br class=3D"">&gt;<br class=3D""><br =
class=3D""></div></div><span class=3D"HOEnZb"><font color=3D"#888888" =
class=3D"">marek<br class=3D""><br class=3D"">--<br class=3D"">as simple =
and primitive as possible<br class=3D"">------------------------------<wbr=
 class=3D"">-------------------<br class=3D"">Marek Belisko - =
OPEN-NANDRA<br class=3D"">Freelance Developer<br class=3D""><br =
class=3D"">Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br =
class=3D"">Tel:<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"tel:%2B421%20915%20052%20184" value=3D"+421915052184" =
class=3D"">+421 915 052 184</a><br class=3D"">skype: marekwhite<br =
class=3D"">twitter: #opennandra<br class=3D"">web:<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://open-nandra.com/" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">http://open-nandra.com</a><br class=3D""></font></span><div =
class=3D"HOEnZb"><div class=3D"h5">--<br =
class=3D"">______________________________<wbr =
class=3D"">_________________<br class=3D"">yocto mailing list<br =
class=3D""><a href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">https://lists.yoctoproject.<wbr =
class=3D"">org/listinfo/yocto</a></div></div></blockquote></div></div></di=
v></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_04A610AE-336C-45CF-9477-60C61275153A--
