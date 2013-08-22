Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90058E00406
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 11:14:09 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id l12so1027356wiv.7
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 11:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=sHqtTkNK+VSpV+gU5mveK9vS+RAPJn7dhetU1M7auq4=;
	b=NKb7yHYDUT717InGcdGgNJOLsc7b2blHrp1ye7tNtygqORI5iY9eAZ0UNw7Qa5Hgr1
	6lbtJQ6xZ9ZhRJ4/cCOVCSWoOgFnpQi3f+wnLFj03l3c/5cV3sKEmtq3GRc5o22IA9hF
	hQ+UP8RHrSO+w073LG+X5KmNyRKjOyU6EkTybxnNXPI4I3HZx5VZCVXbAHZc6UEfweDn
	u7wQicTeSrqiFq6Yql6GqZjwR1e2d6Lkj57+1Gu188NHLVGWsUM9YyncDgf1PYcCsF0l
	QXHCEwoesyfT1dSbYcXE1DlD8ea8ADhWOO7+ikzZOmxaJh3gyXiCkdx3k22z67KYot9q
	kRkQ==
X-Received: by 10.180.74.173 with SMTP id u13mr21952393wiv.32.1377195248887;
	Thu, 22 Aug 2013 11:14:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.69 with HTTP; Thu, 22 Aug 2013 11:13:48 -0700 (PDT)
In-Reply-To: <52161E20.3010800@balister.org>
References: <CAAGt+t0w9Rtia4vVJujgjTfmEU709WyhjCYSPP7PThMN+vpOdg@mail.gmail.com>
	<CAJTo0LYTB2eby76YsAtj+YM9jfAo1oia4TvRUXgiNU+DKiuOFQ@mail.gmail.com>
	<CAAGt+t2gxfmg8cJ+izKmejXcywknPpOvYMrRPUgKN5fHHa-gmw@mail.gmail.com>
	<CAAGt+t13OZ88fi_9foDDp+FeD9VOkBDip1RVQYxWkNejmvifeg@mail.gmail.com>
	<CAJTo0LYqaCwHTLnxUwPVME_zFNbWEVXHZoJpiWTTw-wBWn5xeQ@mail.gmail.com>
	<52161E20.3010800@balister.org>
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Thu, 22 Aug 2013 20:13:48 +0200
Message-ID: <CAAGt+t3Q3GaitOuGTob0faWa4PU1sqmBAwLrdNetMK1PZLDF5Q@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bitbake with cmake recipe
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
X-List-Received-Date: Thu, 22 Aug 2013 18:14:13 -0000
Content-Type: multipart/alternative; boundary=f46d0437495398ac2e04e48d419a

--f46d0437495398ac2e04e48d419a
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I am newbie and I am learning stuff.

I have a c++ code and CMakeLists.txt on Github which needs to be run with
Cmake. I am trying to get that code embed into my build using my own
recipe. This is my first experience with Cmake. I have no clue what should
I write in my recipe.

My recipe is as follows:

DESCRIPTION = "cameracapture application"
SECTION = "examples"
LICENSE = "CLOSED"
PR = "r0"

DEPENDS += "opencv"
inherit cmake pkgconfig

SRC_URI = "git://
github.com/zafrullahsyed/cameracapture.git;protocol=https;tag=v0.1"

do_configure() {
    ${BUILD_CXX} cameracapture.cpp -o cameracapture
    }

EXTRA_OECMAKE=""

I know this recipe is wrong, I looked up many other recipes that use Cmake
http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/gnuradio/gnuradio_git.bb

each of them have their own parameters and functions.

Everytime I build my system I get this error:

ERROR: Function failed: do_configure (see
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.1410
for further information)
ERROR: Logfile of failure stored in:
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.1410
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing shell function do_configure
| CMake Error: The source directory
"/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/cameracapture-0.1"
does not appear to contain CMakeLists.txt.
| Specify --help for usage, or press the help button on the CMake GUI.
| ERROR: Function failed: do_configure (see
/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_configure.1410
for further information)
ERROR: Task 579
(/home/siguser/yocto/poky/meta-bebot/recipes-bebot/cameracapture/
cameracapture_0.1.bb, do_configure) failed with exit code '1'

I have no clue what I should write in my recipe file. Yocto doesn't have
any tutorial for this.

Can anyone give some hints where I am doing wrong or what should be
included in my recipe?



On Thu, Aug 22, 2013 at 4:20 PM, Philip Balister <philip@balister.org>wrote:

> On 08/22/2013 10:14 AM, Burton, Ross wrote:
> > On 22 August 2013 14:40, Zafrullah Syed <zafrullahmehdi@gmail.com>
> wrote:
> >> Hi Ross,
> >>
> >> Is this the correct way to write my recipe with cmake?
> >
> > You should be able to remove your do_configure().
>
> This recipe uses cmake:
>
>
> http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/gnuradio/gnuradio_git.bb
>
> Hoepfully, it is more complicated than you need, but you should be able
> to see the cmake related parts.
>
> Philip
>
> >
> > Ross
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> >
>



-- 
Regards,
Zafrullah Syed

--f46d0437495398ac2e04e48d419a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I am newbie and I am learning s=
tuff.</div><div><br></div><div>I have a c++ code and CMakeLists.txt on Gith=
ub which needs to be run with Cmake. I am trying to get that code embed int=
o my build using my own recipe. This is my first experience with Cmake. I h=
ave no clue what should I write in my recipe.</div>

<div><br></div><div>My recipe is as follows:</div><div><br></div><div>DESCR=
IPTION =3D &quot;cameracapture application&quot;=A0</div><div>SECTION =3D &=
quot;examples&quot;=A0</div><div>LICENSE =3D &quot;CLOSED&quot;=A0</div><di=
v>PR =3D &quot;r0&quot;=A0</div>

<div><br></div><div>DEPENDS +=3D &quot;opencv&quot;</div><div>inherit cmake=
 pkgconfig</div><div><br></div><div>SRC_URI =3D &quot;git://<a href=3D"http=
://github.com/zafrullahsyed/cameracapture.git;protocol=3Dhttps;tag=3Dv0.1">=
github.com/zafrullahsyed/cameracapture.git;protocol=3Dhttps;tag=3Dv0.1</a>&=
quot;</div>

<div><br></div><div>do_configure() {</div><div>=A0 =A0 ${BUILD_CXX} camerac=
apture.cpp -o cameracapture</div><div>=A0 =A0 }</div><div><br></div><div>EX=
TRA_OECMAKE=3D&quot;&quot;=A0</div><div><br></div><div>I know this recipe i=
s wrong, I looked up many other recipes that use Cmake</div>

<div><a href=3D"http://git.openembedded.org/meta-openembedded/tree/meta-oe/=
recipes-connectivity/gnuradio/gnuradio_git.bb">http://git.openembedded.org/=
meta-openembedded/tree/meta-oe/recipes-connectivity/gnuradio/gnuradio_git.b=
b</a><br>

</div><div><br></div><div>each of them have their own parameters and functi=
ons.<br></div><div><br></div><div>Everytime I build my system I get this er=
ror:<br></div><div><br></div><div><div>ERROR: Function failed: do_configure=
 (see /home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi=
/cameracapture-0.1-r0/temp/log.do_configure.1410 for further information)</=
div>

<div>ERROR: Logfile of failure stored in: /home/siguser/yocto/build/tmp/wor=
k/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp/log.do_confi=
gure.1410</div><div>Log data follows:</div><div>| DEBUG: Executing python f=
unction sysroot_cleansstate</div>

<div>| DEBUG: Python function sysroot_cleansstate finished</div><div>| DEBU=
G: SITE files [&#39;endian-little&#39;, &#39;bit-32&#39;, &#39;arm-common&#=
39;, &#39;common-linux&#39;, &#39;common-glibc&#39;, &#39;arm-linux&#39;, &=
#39;arm-linux-gnueabi&#39;, &#39;common&#39;]</div>

<div>| DEBUG: Executing shell function autotools_preconfigure</div><div>| D=
EBUG: Shell function autotools_preconfigure finished</div><div>| DEBUG: Exe=
cuting shell function do_configure</div><div>| CMake Error: The source dire=
ctory &quot;/home/siguser/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-g=
nueabi/cameracapture-0.1-r0/cameracapture-0.1&quot; does not appear to cont=
ain CMakeLists.txt.</div>

<div>| Specify --help for usage, or press the help button on the CMake GUI.=
</div><div>| ERROR: Function failed: do_configure (see /home/siguser/yocto/=
build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/cameracapture-0.1-r0/temp=
/log.do_configure.1410 for further information)</div>

<div>ERROR: Task 579 (/home/siguser/yocto/poky/meta-bebot/recipes-bebot/cam=
eracapture/<a href=3D"http://cameracapture_0.1.bb">cameracapture_0.1.bb</a>=
, do_configure) failed with exit code &#39;1&#39;</div></div><div><br></div=
>

<div>I have no clue what I should write in my recipe file. Yocto doesn&#39;=
t have any tutorial for this.</div><div><br></div><div>Can anyone give some=
 hints where I am doing wrong or what should be included in my recipe?</div=
>

<div><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Thu, Aug 22, 2013 at 4:20 PM, Philip Balister <span dir=3D"ltr">=
&lt;<a href=3D"mailto:philip@balister.org" target=3D"_blank">philip@baliste=
r.org</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 0=
8/22/2013 10:14 AM, Burton, Ross wrote:<br>
&gt; On 22 August 2013 14:40, Zafrullah Syed &lt;<a href=3D"mailto:zafrulla=
hmehdi@gmail.com">zafrullahmehdi@gmail.com</a>&gt; wrote:<br>
&gt;&gt; Hi Ross,<br>
&gt;&gt;<br>
&gt;&gt; Is this the correct way to write my recipe with cmake?<br>
&gt;<br>
&gt; You should be able to remove your do_configure().<br>
<br>
</div></div>This recipe uses cmake:<br>
<br>
<a href=3D"http://git.openembedded.org/meta-openembedded/tree/meta-oe/recip=
es-connectivity/gnuradio/gnuradio_git.bb" target=3D"_blank">http://git.open=
embedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/gnuradio/g=
nuradio_git.bb</a><br>


<br>
Hoepfully, it is more complicated than you need, but you should be able<br>
to see the cmake related parts.<br>
<br>
Philip<br>
<br>
&gt;<br>
&gt; Ross<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
&gt;<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><span style=
=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:collapse;co=
lor:rgb(136,136,136)">Regards,<br>Zafrullah Syed</span><div><font color=3D"=
#888888" face=3D"arial, sans-serif"><span style=3D"border-collapse:collapse=
"><br>

</span></font></div>
</div>

--f46d0437495398ac2e04e48d419a--
