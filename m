Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5551FE00B51; Wed, 31 May 2017 09:22:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFE39E00992
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 09:22:16 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP; 31 May 2017 09:22:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,275,1493708400"; 
	d="scan'208,217";a="109245559"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.13.172])
	by fmsmga006.fm.intel.com with ESMTP; 31 May 2017 09:21:52 -0700
Message-ID: <1496247706.8526.14.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Alain Achkar <alain.achkar@triacta.com>, pidge@toganlabs.com
Date: Wed, 31 May 2017 17:21:46 +0100
In-Reply-To: <CAGkf0HCVTqLsPW_nDFqm86_OeXQPCw0h3wXgVErAG1DsNck-Jw@mail.gmail.com>
References: <CAGkf0HCnrCpufRV9U_pz7LYDkCvhK7of_1=0zgS425GeGYSUPQ@mail.gmail.com>
	<1478889473.18810.3.camel@toganlabs.com>
	<CA+n--H8UjNN_PuMaTzDf7S92NqdQber7UW7DOapYvrhDivs1FQ@mail.gmail.com>
	<CAGkf0HDBfdSNXO08PBRvV1+D=wYzWpBi==FnuNocLD3Ee9A7zw@mail.gmail.com>
	<CABcw_OkUq_YX939GrV+SXFAcuKb4c+aHzKOK4Y5pOK+LTOMLWg@mail.gmail.com>
	<CAGkf0HCOzd-_wPbCR9MREADq29vKFWK0jynqLYO5qMezi+txYw@mail.gmail.com>
	<CAGkf0HCjCxFcaNqqsnnTrnQ5kjtCzTc8p4h4T=bbbpFL0JRqeQ@mail.gmail.com>
	<CAGkf0HDOma+8W9hw9nOnXt-WC_7BuFD6-d7EN50Oz7-Oghz-3Q@mail.gmail.com>
	<CAGkf0HCVTqLsPW_nDFqm86_OeXQPCw0h3wXgVErAG1DsNck-Jw@mail.gmail.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Buildbot / Autobuilder / custom?
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
X-List-Received-Date: Wed, 31 May 2017 16:22:19 -0000
Content-Type: multipart/alternative; boundary="=-6RkGgH+H7NzjuW6bP3IL"

--=-6RkGgH+H7NzjuW6bP3IL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2017-05-29 at 17:01 -0400, Alain Achkar wrote:
> Hello Beth and/or Joshua,
> I would really appreciate some pointers on how to get the Variscite
> builds to work with Autobuilder.
> 
> Since my last email, I was able to setup the Yocto Autobuilder, add
> the sample hello.conf and run it.
> I was also able to add another file, nightly-variscite-x11.conf and I
> can see it in the Waterfall view. Initially, I started by filling it
> with content similar to hello.conf and this worked. Now, I need to be
> able to add the Variscite build.
> 
> Since my last email, Variscite have moved to the morty branch, since
> Freescale/NXP have moved to the morty branch. So, the wiki
> instructions here http://variwiki.com/index.php?title=Yocto_Build_Rel
> ease&release=RELEASE_MORTY_BETA_DART-6UL are now simpler:
> 
> 1) Checkout the source code
> $ mkdir ~/var-fslc-yocto
> $ cd ~/var-fslc-yocto
> $ repo init -u https://github.com/varigit/variscite-bsp-platform.git
> -b morty
> $ repo sync -j4
> 
> 2) Run the setup script (which calls oe-init-environment)
> $ cd ~/var-fslc-yocto
> $ MACHINE=imx6ul-var-dart DISTRO=fslc-x11 . setup-environment
> build_x11
> 
> 3) Build X11 demo images
> # Without Qt content:
> $ bitbake fsl-image-gui
> 
> # Or with Qt content:
> $ bitbake fsl-image-qt5
> 
> The 'repo' command reads the file default.xml which has the following
> contents:
> 
> <?xml version="1.0" encoding="UTF-8"?>
> <manifest>
> 
> 
>   <default sync-j="4" revision="morty"/>
> 
> 
>   <remote fetch="https://git.yoctoproject.org/git" name="yocto"/>
>   <remote fetch="https://github.com/Freescale"     name="freescale"/>
>   <remote fetch="https://github.com/openembedded"  name="oe"/>
>   <remote fetch="https://github.com/varigit"       name="variscite"/>
>   <remote fetch="https://github.com/OSSystems"     name="OSSystems"/>
>   <remote fetch="git://github.com/meta-qt5"        name="QT5"/>
> 
> 
>   <project remote="yocto"
> revision="6a1f33cc40bfac33cf030fe41e1a8efd1e5fad6f" upstream="morty"
>  name="poky" path="sources/poky"/>
>   <project remote="yocto"
> revision="56a1460777d1e24b1dfb426cad2b103740936a83" upstream="morty"
>  name="meta-freescale" path="sources/meta-freescale" />
> 
> 
>   <project remote="oe"
> revision="fe5c83312de11e80b85680ef237f8acb04b4b26e" upstream="morty"
> name="meta-openembedded" path="sources/meta-openembedded" />
> 
> 
>   <project remote="variscite" revision="morty" name="variscite-bsp-
> base" path="sources/base">
> 	<copyfile dest="README" src="README"/>
> 	<copyfile dest="setup-environment" src="setup-environment"/>
>   </project>
> 
> 
>   <project remote="freescale"
> revision="4be3db25959e741ac9164a32c82b8c09b59213ad" upstream="morty"
> name="meta-freescale-3rdparty" path="sources/meta-freescale-
> 3rdparty"/>
>   <project remote="freescale"
> revision="dd482aeb7913c099c69f82362776bd92b584553c" upstream="morty"
> name="meta-freescale-distro" path="sources/meta-freescale-distro"/>
>   <project remote="QT5"
> revision="3601fd2c5306ac6d5d0d536e0be8cbb90da9b4c1" upstream="morty"
> name="meta-qt5" path="sources/meta-qt5"/>
>   <project remote="OSSystems"
> revision="7d37ae2adec5cc5ea27367ce125bc7bce2310ca1" upstream="morty"
> name="meta-browser" path="sources/meta-browser"/>
>   <project remote="variscite"
> revision="7a214e7579869be810aa8992c59627ba064db076" upstream="morty"
> name="meta-variscite-fslc" path="sources/meta-variscite-fslc"  />
> 
> 
> </manifest>
> 
> 
> 
> So, AFAIK, I need to either (a) translate these into the 'repos'
> property in my buildset, or write a custom buildstep that can use the
> 'repo' tool to clone the needed repositories.

You are correct.

The other step you might have issues with is the setup environment
script, yocto-autobuilder currently expects to source oe-init-build-env 
and doesn't support other init scripts presently.

I have a WIP patch to support alternative environment scripts, but it
doesn't fully resolve support for your BSP as it seems from the example
above that MACHINE and DISTRO need to be set in the environment when
the script is sourced.
Will those values be picked up from auto.conf if not set in the
environment?

Joshua

--=-6RkGgH+H7NzjuW6bP3IL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div>On Mon, 2017-05-29 at 17:01 -0400, Alain Achk=
ar wrote:</div><blockquote type=3D"cite"><div dir=3D"ltr">Hello Beth and/or=
 Joshua,<div><br></div><div>I would really appreciate some pointers on how =
to get the Variscite builds to work with Autobuilder.</div><div><br></div><=
div>Since my last email, I was able to setup the Yocto Autobuilder, add the=
 sample hello.conf and run it.</div><div>I was also able to add another fil=
e, nightly-variscite-x11.conf and I can see it in the Waterfall view. Initi=
ally, I started by filling it with content similar to hello.conf and this w=
orked. Now, I need to be able to add the Variscite build.</div><div><br></d=
iv><div>Since my last email, Variscite have moved to the morty branch, sinc=
e Freescale/NXP have moved to the morty branch. So, the wiki instructions h=
ere <a href=3D"http://variwiki.com/index.php?title=3DYocto_Build_Release&am=
p;release=3DRELEASE_MORTY_BETA_DART-6UL">http://variwiki.com/index.php?titl=
e=3DYocto_Build_Release&amp;release=3DRELEASE_MORTY_BETA_DART-6UL</a> are n=
ow simpler:</div><div><br></div><div>1) Checkout the source code</div><div>=
<pre style=3D"font-size:12.6667px;overflow-x:auto;overflow-y:hidden;font-fa=
mily:Menlo,Monaco,&quot;Courier New&quot;,&quot;Nimbus Mono L&quot;,monospa=
ce,sans-serif;border:1px dashed rgb(47,111,171);color:rgb(0,0,0);background=
-color:rgb(249,249,249);line-height:1.1em;padding:15px 20px;border-radius:6=
px">$ mkdir ~/var-fslc-yocto
$ cd ~/var-fslc-yocto
$ repo init -u <a rel=3D"nofollow" class=3D"external gmail-free" href=3D"ht=
tps://github.com/varigit/variscite-bsp-platform.git" style=3D"text-decorati=
on-line:none;color:rgb(51,102,187);background:url(&quot;locked.png&quot;) 1=
00% 50%/12px 12px no-repeat;padding-right:16px;padding-left:0px">https://gi=
thub.com/varigit/variscite-bsp-platform.git</a> -b morty
$ repo sync -j4</pre></div><div><br></div><div>2) Run the setup script (whi=
ch calls oe-init-environment)</div><div><pre style=3D"font-size:12.6667px;o=
verflow-x:auto;overflow-y:hidden;font-family:Menlo,Monaco,&quot;Courier New=
&quot;,&quot;Nimbus Mono L&quot;,monospace,sans-serif;border:1px dashed rgb=
(47,111,171);color:rgb(0,0,0);background-color:rgb(249,249,249);line-height=
:1.1em;padding:15px 20px;border-radius:6px">$ cd ~/var-fslc-yocto
$ MACHINE=3Dimx6ul-var-dart DISTRO=3Dfslc-x11 . setup-environment build_x11=
</pre></div><div><br></div><div>3) Build X11 demo images</div><div><pre sty=
le=3D"font-size:12.6667px;overflow-x:auto;overflow-y:hidden;font-family:Men=
lo,Monaco,&quot;Courier New&quot;,&quot;Nimbus Mono L&quot;,monospace,sans-=
serif;border:1px dashed rgb(47,111,171);color:rgb(0,0,0);background-color:r=
gb(249,249,249);line-height:1.1em;padding:15px 20px;border-radius:6px"># Wi=
thout Qt content:
$ bitbake fsl-image-gui

# Or with Qt content:
$ bitbake fsl-image-qt5</pre></div><div><br></div><div>The 'repo' command r=
eads the file default.xml which has the following contents:</div><div><div>=
<br></div><div><div><pre style=3D"font-size:12.6667px;overflow-x:auto;overf=
low-y:hidden;border:1px dashed rgb(47,111,171);color:rgb(0,0,0);background-=
color:rgb(249,249,249);line-height:1.1em;padding:15px 20px;border-radius:6p=
x"><div style=3D"color:rgb(34,34,34);font-size:small;white-space:normal"><d=
iv><font face=3D"monospace, monospace">&lt;?xml version=3D"1.0" encoding=3D=
"UTF-8"?&gt;</font></div><div><font face=3D"monospace, monospace">&lt;manif=
est&gt;</font></div><div><font face=3D"monospace, monospace"><br></font></d=
iv><div><font face=3D"monospace, monospace">&nbsp; &lt;default sync-j=3D"4"=
 revision=3D"morty"/&gt;</font></div><div><font face=3D"monospace, monospac=
e"><br></font></div><div><font face=3D"monospace, monospace">&nbsp; &lt;rem=
ote fetch=3D"<a href=3D"https://git.yoctoproject.org/git">https://git.yocto=
project.org/git</a>" name=3D"yocto"/&gt;</font></div><div><font face=3D"mon=
ospace, monospace">&nbsp; &lt;remote fetch=3D"<a href=3D"https://github.com=
/Freescale">https://github.com/Freescale</a>" &nbsp; &nbsp; name=3D"freesca=
le"/&gt;</font></div><div><font face=3D"monospace, monospace">&nbsp; &lt;re=
mote fetch=3D"<a href=3D"https://github.com/openembedded">https://github.co=
m/openembedded</a>" &nbsp;name=3D"oe"/&gt;</font></div><div><font face=3D"m=
onospace, monospace">&nbsp; &lt;remote fetch=3D"<a href=3D"https://github.c=
om/varigit">https://github.com/varigit</a>" &nbsp; &nbsp; &nbsp; name=3D"va=
riscite"/&gt;</font></div><div><font face=3D"monospace, monospace">&nbsp; &=
lt;remote fetch=3D"<a href=3D"https://github.com/OSSystems">https://github.=
com/OSSystems</a>" &nbsp; &nbsp; name=3D"OSSystems"/&gt;</font></div><div><=
font face=3D"monospace, monospace">&nbsp; &lt;remote fetch=3D"git://<a href=
=3D"http://github.com/meta-qt5">github.com/meta-qt5</a>" &nbsp; &nbsp; &nbs=
p; &nbsp;name=3D"QT5"/&gt;</font></div><div><font face=3D"monospace, monosp=
ace"><br></font></div><div><font face=3D"monospace, monospace">&nbsp; &lt;p=
roject remote=3D"yocto" revision=3D"6a1f33cc40bfac33cf030fe41e1a8efd1e5fad6=
f" upstream=3D"morty" &nbsp;name=3D"poky" path=3D"sources/poky"/&gt;</font>=
</div><div><font face=3D"monospace, monospace">&nbsp; &lt;project remote=3D=
"yocto" revision=3D"56a1460777d1e24b1dfb426cad2b103740936a83" upstream=3D"m=
orty" &nbsp;name=3D"meta-freescale" path=3D"sources/meta-freescale" /&gt;</=
font></div><div><font face=3D"monospace, monospace"><br></font></div><div><=
font face=3D"monospace, monospace">&nbsp; &lt;project remote=3D"oe" revisio=
n=3D"fe5c83312de11e80b85680ef237f8acb04b4b26e" upstream=3D"morty" name=3D"m=
eta-openembedded" path=3D"sources/meta-openembedded" /&gt;</font></div><div=
><font face=3D"monospace, monospace"><br></font></div><div><font face=3D"mo=
nospace, monospace">&nbsp; &lt;project remote=3D"variscite" revision=3D"mor=
ty" name=3D"variscite-bsp-base" path=3D"sources/base"&gt;</font></div><div>=
<font face=3D"monospace, monospace"><span class=3D"gmail-Apple-tab-span" st=
yle=3D"white-space:pre">	</span>&lt;copyfile dest=3D"README" src=3D"README"=
/&gt;</font></div><div><font face=3D"monospace, monospace"><span class=3D"g=
mail-Apple-tab-span" style=3D"white-space:pre">	</span>&lt;copyfile dest=3D=
"setup-environment" src=3D"setup-environment"/&gt;</font></div><div><font f=
ace=3D"monospace, monospace">&nbsp; &lt;/project&gt;</font></div><div><font=
 face=3D"monospace, monospace"><br></font></div><div><font face=3D"monospac=
e, monospace">&nbsp; &lt;project remote=3D"freescale" revision=3D"4be3db259=
59e741ac9164a32c82b8c09b59213ad" upstream=3D"morty" name=3D"meta-freescale-=
3rdparty" path=3D"sources/meta-freescale-3rdparty"/&gt;</font></div><div><f=
ont face=3D"monospace, monospace">&nbsp; &lt;project remote=3D"freescale" r=
evision=3D"dd482aeb7913c099c69f82362776bd92b584553c" upstream=3D"morty" nam=
e=3D"meta-freescale-distro" path=3D"sources/meta-freescale-distro"/&gt;</fo=
nt></div><div><font face=3D"monospace, monospace">&nbsp; &lt;project remote=
=3D"QT5" revision=3D"3601fd2c5306ac6d5d0d536e0be8cbb90da9b4c1" upstream=3D"=
morty" name=3D"meta-qt5" path=3D"sources/meta-qt5"/&gt;</font></div><div><f=
ont face=3D"monospace, monospace">&nbsp; &lt;project remote=3D"OSSystems" r=
evision=3D"7d37ae2adec5cc5ea27367ce125bc7bce2310ca1" upstream=3D"morty" nam=
e=3D"meta-browser" path=3D"sources/meta-browser"/&gt;</font></div><div><fon=
t face=3D"monospace, monospace">&nbsp; &lt;project remote=3D"variscite" rev=
ision=3D"7a214e7579869be810aa8992c59627ba064db076" upstream=3D"morty" name=
=3D"meta-variscite-fslc" path=3D"sources/meta-variscite-fslc" &nbsp;/&gt;</=
font></div><div><font face=3D"monospace, monospace"><br></font></div><div><=
font face=3D"monospace, monospace">&lt;/manifest&gt;</font></div></div><div=
 style=3D"font-family:arial,sans-serif;color:rgb(34,34,34);font-size:small;=
white-space:normal"><br></div></pre></div></div><div><br></div><div>So, AFA=
IK, I need to either (a) translate these into the 'repos' property in my bu=
ildset, or write a custom buildstep that can use the 'repo' tool to clone t=
he needed repositories.<br></div></div></div></blockquote><div><br></div><d=
iv>You are correct.</div><div><br></div><div>The other step you might have =
issues with is the setup environment script, yocto-autobuilder currently ex=
pects to source oe-init-build-env and doesn't support other init scripts pr=
esently.</div><div><br></div><div>I have a WIP patch to support alternative=
 environment scripts, but it doesn't fully resolve support for your BSP as =
it seems from the example above that MACHINE and DISTRO need to be set in t=
he environment when the script is sourced.</div><div>Will those values be p=
icked up from auto.conf if not set in the environment?</div><div><br></div>=
<div>Joshua</div></body></html>

--=-6RkGgH+H7NzjuW6bP3IL--
