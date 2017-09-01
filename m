Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7D7BE00CD5; Fri,  1 Sep 2017 08:04:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.179 listed in dnsbl.sorbs.net]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F249E00B77
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 08:04:01 -0700 (PDT)
Received: by mail-ua0-f179.google.com with SMTP id g16so1361531uah.3
	for <yocto@yoctoproject.org>; Fri, 01 Sep 2017 08:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YqAbu0Flwvfxtw+QIQWSZ9xmDaPhwN6RCeyytU9oE4A=;
	b=R2PqLVDY+H6J+blBIJALJDC0PHphi6Ebd/jPMJhn9jCdFqzMaTWIPXOAlLzvxbTmo/
	89oGSmN50ZG1c5ul3bDGEm0Ce80Qz+6w8+Mu1naeGVbhy1LMLtjxbthm9vtk4PliuMqU
	rL+ORT5pB2Hx7TeENabyHhjvWlicGvPxXRtfdadF0W1Mwjui0FvhGTbtNTczhcM3mHL9
	+I/y4YCnitRbwcFN3RB+dIF1myTZSsBOr6/rF+V1m7BG1Vfpq3/fD0/g/6Z99Y+71JJ1
	n9b9HHnpTrf5z8+g6GGp0UF9YQhuHnr53DE3PTSv/Nim9nw1Vpsk2Sxcgyk9ssl0TUSU
	EiXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YqAbu0Flwvfxtw+QIQWSZ9xmDaPhwN6RCeyytU9oE4A=;
	b=GbE8LWIYlOshFHoDPnHpq8VNV65kX7/gGvGVU1XKGboXfJuZ6kYC641MsCHjfSSD82
	nJVkOc2E1cgy8GBqXzAu50ZBiX3XYI+/ZMEGEGgVqR17lH3pbPXKeenLDLGuCGJ5fEQa
	U4KciG9/E9ZMWi9MxPK7ycxInZuD/GEIbxNGyOXQ7OGjKzDapXK8VQqN0MU1CNsGkGhM
	18Pfu6GhlzFvQgfVVAnwg2h1Efbvkwtavuhb6Hy/vlq0xB17HS0TPM2lAnfy+pkNGKyO
	volsryWlhL+yI8vuypZtEDNBypAV5BppJvwofSZKfAoXaUxBCwFdjfvLfJuf2nmHoZ0p
	3WCg==
X-Gm-Message-State: AHPjjUg1j1x/AjwVHPgoq8ErQ5LMTCnLPeLSWsJpxv0WNoJKCd4eyXgN
	dV/dWwGKE2+BdMyb/pJ83f0YhYciOA==
X-Google-Smtp-Source: ADKCNb4GoARyOhTuwNKvwbZZDLGAdFO5rjffJJjgVTbyTlEyGAec3CnB4SxHR3XpuK3bL0pqs7O6BLYm5b/vEjHCONw=
X-Received: by 10.176.92.104 with SMTP id a40mr568784uag.168.1504278240902;
	Fri, 01 Sep 2017 08:04:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.93.42 with HTTP; Fri, 1 Sep 2017 08:04:00 -0700 (PDT)
In-Reply-To: <CAD4b0_LdonvEYaAANBiUhmYN5iaderdSpOMEmqQTtam+Z2s=2g@mail.gmail.com>
References: <CAC+thW14riQRGnruH2NszoavVA5J9utX8926Q36DvKXGPbZrow@mail.gmail.com>
	<CAD4b0_LdonvEYaAANBiUhmYN5iaderdSpOMEmqQTtam+Z2s=2g@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 1 Sep 2017 17:04:00 +0200
Message-ID: <CAC+thW3WCk90+eGs5wiT6bari4MGxxN_ParbySkM4rgTSW0a4Q@mail.gmail.com>
To: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cannot re-use shared state cache between build hosts
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
X-List-Received-Date: Fri, 01 Sep 2017 15:04:04 -0000
Content-Type: multipart/alternative; boundary="f403043eb22c3144f10558221249"

--f403043eb22c3144f10558221249
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maciej,

On Fri, Sep 1, 2017 at 4:08 PM, Maciej Borz=C4=99cki <maciej.borzecki@rndit=
y.com>
wrote:

> On Fri, Sep 1, 2017 at 3:54 PM, Andrea Galbusera <gizero@gmail.com> wrote=
:
> > Hi!
> >
> > I was trying to share sstate between different hosts, but the consumer
> build
> > system seems to be unable to use re-use any sstate object. My scenario =
is
> > setup as follows:
> >
> > * The cache was populated by a pristine qemux86 core-image-minimal buil=
d
> of
> > morty. This was done in a crops/poky container (running in docker on Ma=
c)
> > * The cache was then served via HTTP
>
> Make sure that you use a decent HTTP server. Simple `python3 -m
> http.server` will quickly choke when the mirror is being checked. Also
> running bitbake -DDD -v makes investigating this much easier.
>

To be honest, the current server was indeed setup with python's
SimpleHTTPServer... As you suggest, I checked the verbose debug log and
noticed what's happening behind the apparently happy "Checking sstate
mirror object availability" step. After a first "SState: Successful fetch
test for" that I see correctly served with 200 on the server side, tests
for any other sstate object suddenly and systematically fail with logs like
this:

DEBUG: SState: Attempting to fetch file://7d/sstate:libxml2:i586-
poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz
DEBUG: Searching for 7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:
7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz in paths:
    /home/vagrant/koan/morty/build/sstate-cache
DEBUG: Defaulting to /home/vagrant/koan/morty/build/sstate-cache/7d/sstate:
libxml2:i586-poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bdb86ac7ab32_pa=
ckage_qa.tgz
for 7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23b
db86ac7ab32_package_qa.tgz
DEBUG: Testing URL file://7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3=
:
7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz
DEBUG: For url ['file', '', '7d/sstate:libxml2:i586-poky-
linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz', '',
'', OrderedDict()] comparing ['file', '', '.*', '', '', OrderedDict()] to
['http', '192.168.33.1:8000', '
/sstate-cache/PATH', '', '', OrderedDict([('downloadfilename', 'PATH')])]
DEBUG: For url file://7d/sstate:libxml2:i586-poky-linux:2.9.4:r0:i586:3:
7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz returning
http://192.168.33.1:8000/sstate-cache/7d/sstate%3Alibxml2%3Ai586-poky-linux=
%
3A2.9.4%3Ar0%3Ai586%3A3%3A7da8fc
3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz;downloadfilename=3D7d/sstate:
libxml2:i586-poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bdb86ac7ab
32_package_qa.tgz
DEBUG: checkstatus: trying again
DEBUG: checkstatus() urlopen failed: <urlopen error [Errno 9] Bad file
descriptor>
DEBUG: SState: Unsuccessful fetch test for file://7d/sstate:libxml2:i586-
poky-linux:2.9.4:r0:i586:3:7da8fc3f7f5ed0102d23bdb86ac7ab32_package_qa.tgz

Nothing is reported server-side for any of these failures... As you
recommend, I'll try to setup something more "decent" for the HTTP server
and see if it helps.



> > * The second host is a VM running Ubuntu 16.04 where I set
> SSTATE_MIRRORS to
> > point to the hosted sstate cache like this:
> >
> > SSTATE_MIRRORS ?=3D "\
> > file://.* http://192.168.33.1:8000/sstate-cache/PATH;downloadfilename=
=3D
> PATH"
> >
> > * I checked with curl that the VM can successfully get sstate objects
> from
> > the server.
> > * Then I start a new build (same metadata revisions, default
> configuration
> > for core-image-minimal) and each and every task run from scratch with n=
o
> > sstate cache re-use.
> >
> > Here are the two configurations from bitbake and /etc/lsb-release files=
:
> >
> > On the container used to seed sstate cache:
> >
> > Build Configuration:
> > BB_VERSION        =3D "1.32.0"
> > BUILD_SYS         =3D "x86_64-linux"
> > NATIVELSBSTRING   =3D "universal"
> > TARGET_SYS        =3D "i586-poky-linux"
> > MACHINE           =3D "qemux86"
> > DISTRO            =3D "poky"
> > DISTRO_VERSION    =3D "2.2.2"
> > TUNE_FEATURES     =3D "m32 i586"
> > TARGET_FPU        =3D ""
> > meta
> > meta-poky
> > meta-yocto-bsp    =3D "morty:2a70e84643381eca0e7bf7928d4a3d56f9651128"
> >
> > $ cat /etc/lsb-release
> > DISTRIB_ID=3DUbuntu
> > DISTRIB_RELEASE=3D16.04
> > DISTRIB_CODENAME=3Dxenial
> > DISTRIB_DESCRIPTION=3D"Ubuntu 16.04.2 LTS"
> >
> > On the VM that should consume the cache:
> >
> > Build Configuration:
> > BB_VERSION        =3D "1.32.0"
> > BUILD_SYS         =3D "x86_64-linux"
> > NATIVELSBSTRING   =3D "Ubuntu-16.04"
> > TARGET_SYS        =3D "i586-poky-linux"
> > MACHINE           =3D "qemux86"
> > DISTRO            =3D "poky"
> > DISTRO_VERSION    =3D "2.2.2"
> > TUNE_FEATURES     =3D "m32 i586"
> > TARGET_FPU        =3D ""
> > meta
> > meta-poky
> > meta-yocto-bsp    =3D "morty:2a70e84643381eca0e7bf7928d4a3d56f9651128"
> >
> > $ cat /etc/lsb-release
> > DISTRIB_ID=3DUbuntu
> > DISTRIB_RELEASE=3D16.04
> > DISTRIB_CODENAME=3Dxenial
> > DISTRIB_DESCRIPTION=3D"Ubuntu 16.04.3 LTS"
> >
> >
> > To me, the only differing bit that in my understanding can lead to ssta=
te
> > cache objects invalidation is the value of NATIVELSBSTRING which is
> > "universal" inside the container and "Ubuntu-16.04". This sounds strang=
e
> to
> > me, since both underlying systems are Ubuntu 16.04 (although not exactl=
y
> the
> > same dot release) as confirmed by /etc/lsb-release contents.
> >
> > Is the different NATIVELSBSTRING the root cause for everything being
> > re-built? If so, what's causing them being different in the end and wha=
t
> > does "universal" exactly mean (to me it looks like a more generic and
> > incluse term than any distro label, so I'm confused...)?
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
>
> --
> Maciej Borzecki
> RnDity
>

--f403043eb22c3144f10558221249
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">Hi M=
aciej,</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote"=
>On Fri, Sep 1, 2017 at 4:08 PM, Maciej Borz=C4=99cki <span dir=3D"ltr">&lt=
;<a href=3D"mailto:maciej.borzecki@rndity.com" target=3D"_blank">maciej.bor=
zecki@rndity.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><span class=3D"m_-5228568782234999071gmail-">On Fri, Sep 1=
, 2017 at 3:54 PM, Andrea Galbusera &lt;<a href=3D"mailto:gizero@gmail.com"=
 target=3D"_blank">gizero@gmail.com</a>&gt; wrote:<br>
</span><span class=3D"m_-5228568782234999071gmail-">&gt; Hi!<br>
&gt;<br>
&gt; I was trying to share sstate between different hosts, but the consumer=
 build<br>
&gt; system seems to be unable to use re-use any sstate object. My scenario=
 is<br>
&gt; setup as follows:<br>
&gt;<br>
&gt; * The cache was populated by a pristine qemux86 core-image-minimal bui=
ld of<br>
&gt; morty. This was done in a crops/poky container (running in docker on M=
ac)<br>
&gt; * The cache was then served via HTTP<br>
<br>
</span>Make sure that you use a decent HTTP server. Simple `python3 -m<br>
http.server` will quickly choke when the mirror is being checked. Also<br>
running bitbake -DDD -v makes investigating this much easier.<br></blockquo=
te><div><br></div><div>To be honest, the current server was indeed setup wi=
th python&#39;s SimpleHTTPServer... As you suggest, I checked the verbose d=
ebug log and noticed what&#39;s happening behind the apparently happy &quot=
;Checking sstate mirror object availability&quot; step. After a first &quot=
;SState: Successful fetch test for&quot; that I see correctly served with 2=
00 on the server side, tests for any other sstate object suddenly and syste=
matically fail with logs like this:</div><div><br></div><div><div>DEBUG: SS=
tate: Attempting to fetch file://7d/sstate:libxml2:i586-<wbr>poky-linux:2.9=
.4:r0:i586:3:<wbr>7da8fc3f7f5ed0102d23bdb86ac7ab<wbr>32_package_qa.tgz</div=
><div>DEBUG: Searching for 7d/sstate:libxml2:i586-poky-<wbr>linux:2.9.4:r0:=
i586:3:<wbr>7da8fc3f7f5ed0102d23bdb86ac7ab<wbr>32_package_qa.tgz in paths:<=
/div><div>=C2=A0 =C2=A0 /home/vagrant/koan/morty/<wbr>build/sstate-cache</d=
iv><div>DEBUG: Defaulting to /home/vagrant/koan/morty/<wbr>build/sstate-cac=
he/7d/sstate:<wbr>libxml2:i586-poky-linux:2.9.4:<wbr>r0:i586:3:<wbr>7da8fc3=
f7f5ed0102d23bdb86ac7ab<wbr>32_package_qa.tgz for 7d/sstate:libxml2:i586-po=
ky-<wbr>linux:2.9.4:r0:i586:3:<wbr>7da8fc3f7f5ed0102d23b</div><div>db86ac7a=
b32_package_qa.tgz</div><div>DEBUG: Testing URL file://7d/sstate:libxml2:i5=
86-<wbr>poky-linux:2.9.4:r0:i586:3:<wbr>7da8fc3f7f5ed0102d23bdb86ac7ab<wbr>=
32_package_qa.tgz</div><div>DEBUG: For url [&#39;file&#39;, &#39;&#39;, &#3=
9;7d/sstate:libxml2:i586-poky-<wbr>linux:2.9.4:r0:i586:3:<wbr>7da8fc3f7f5ed=
0102d23bdb86ac7ab<wbr>32_package_qa.tgz&#39;, &#39;&#39;, &#39;&#39;, Order=
edDict()] comparing [&#39;file&#39;, &#39;&#39;, &#39;.*&#39;, &#39;&#39;, =
&#39;&#39;, OrderedDict()] to [&#39;http&#39;, &#39;<a href=3D"http://192.1=
68.33.1:8000" target=3D"_blank">192.168.33.1:8000</a>&#39;, &#39;</div><div=
>/sstate-cache/PATH&#39;, &#39;&#39;, &#39;&#39;, OrderedDict([(&#39;<wbr>d=
ownloadfilename&#39;, &#39;PATH&#39;)])]</div><div>DEBUG: For url file://7d=
/sstate:libxml2:i586-<wbr>poky-linux:2.9.4:r0:i586:3:<wbr>7da8fc3f7f5ed0102=
d23bdb86ac7ab<wbr>32_package_qa.tgz returning <a href=3D"http://192.168.33.=
1:8000/sstate-cache/7d/sstate%3Alibxml2%3Ai586-poky-linux%3A2.9.4%3Ar0%3Ai5=
86%3A3%3A7da8fc" target=3D"_blank">http://192.168.33.1:8000/<wbr>sstate-cac=
he/7d/sstate%<wbr>3Alibxml2%3Ai586-poky-linux%<wbr>3A2.9.4%3Ar0%3Ai586%3A3%=
<wbr>3A7da8fc</a></div><div>3f7f5ed0102d23bdb86ac7ab32_<wbr>package_qa.tgz;=
<wbr>downloadfilename=3D7d/sstate:<wbr>libxml2:i586-poky-linux:2.9.4:<wbr>r=
0:i586:3:<wbr>7da8fc3f7f5ed0102d23bdb86ac7ab<wbr>32_package_qa.tgz</div><di=
v>DEBUG: checkstatus: trying again</div><div>DEBUG: checkstatus() urlopen f=
ailed: &lt;urlopen error [Errno 9] Bad file descriptor&gt;</div><div>DEBUG:=
 SState: Unsuccessful fetch test for file://7d/sstate:libxml2:i586-<wbr>pok=
y-linux:2.9.4:r0:i586:3:<wbr>7da8fc3f7f5ed0102d23bdb86ac7ab<wbr>32_package_=
qa.tgz</div></div><div><br></div><div>Nothing is reported server-side for a=
ny of these failures... As you recommend, I&#39;ll try to setup something m=
ore &quot;decent&quot; for the HTTP server and see if it helps.=C2=A0</div>=
<div><br></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
<div class=3D"m_-5228568782234999071gmail-HOEnZb"><div class=3D"m_-52285687=
82234999071gmail-h5"><br>
&gt; * The second host is a VM running Ubuntu 16.04 where I set SSTATE_MIRR=
ORS to<br>
&gt; point to the hosted sstate cache like this:<br>
&gt;<br>
&gt; SSTATE_MIRRORS ?=3D &quot;\<br>
&gt; file://.* <a href=3D"http://192.168.33.1:8000/sstate-cache/PATH;downlo=
adfilename=3DPATH" rel=3D"noreferrer" target=3D"_blank">http://192.168.33.1=
:8000/sstat<wbr>e-cache/PATH;downloadfilename=3D<wbr>PATH</a>&quot;<br>
&gt;<br>
&gt; * I checked with curl that the VM can successfully get sstate objects =
from<br>
&gt; the server.<br>
&gt; * Then I start a new build (same metadata revisions, default configura=
tion<br>
&gt; for core-image-minimal) and each and every task run from scratch with =
no<br>
&gt; sstate cache re-use.<br>
&gt;<br>
&gt; Here are the two configurations from bitbake and /etc/lsb-release file=
s:<br>
&gt;<br>
&gt; On the container used to seed sstate cache:<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.32.0&quot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot=
;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;universal&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;i586-poky-linux&quot;<=
br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;qemux86&quot=
;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<b=
r>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;2.2.2&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;m32 i586&quot;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;<br>
&gt; meta<br>
&gt; meta-poky<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;morty:2a70e84643381eca0e7bf79<wb=
r>28d4a3d56f9651128&quot;<br>
&gt;<br>
&gt; $ cat /etc/lsb-release<br>
&gt; DISTRIB_ID=3DUbuntu<br>
&gt; DISTRIB_RELEASE=3D16.04<br>
&gt; DISTRIB_CODENAME=3Dxenial<br>
&gt; DISTRIB_DESCRIPTION=3D&quot;Ubuntu 16.04.2 LTS&quot;<br>
&gt;<br>
&gt; On the VM that should consume the cache:<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.32.0&quot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot=
;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-16.04&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;i586-poky-linux&quot;<=
br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;qemux86&quot=
;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<b=
r>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;2.2.2&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;m32 i586&quot;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;<br>
&gt; meta<br>
&gt; meta-poky<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =3D &quot;morty:2a70e84643381eca0e7bf79<wb=
r>28d4a3d56f9651128&quot;<br>
&gt;<br>
&gt; $ cat /etc/lsb-release<br>
&gt; DISTRIB_ID=3DUbuntu<br>
&gt; DISTRIB_RELEASE=3D16.04<br>
&gt; DISTRIB_CODENAME=3Dxenial<br>
&gt; DISTRIB_DESCRIPTION=3D&quot;Ubuntu 16.04.3 LTS&quot;<br>
&gt;<br>
&gt;<br>
&gt; To me, the only differing bit that in my understanding can lead to sst=
ate<br>
&gt; cache objects invalidation is the value of NATIVELSBSTRING which is<br=
>
&gt; &quot;universal&quot; inside the container and &quot;Ubuntu-16.04&quot=
;. This sounds strange to<br>
&gt; me, since both underlying systems are Ubuntu 16.04 (although not exact=
ly the<br>
&gt; same dot release) as confirmed by /etc/lsb-release contents.<br>
&gt;<br>
&gt; Is the different NATIVELSBSTRING the root cause for everything being<b=
r>
&gt; re-built? If so, what&#39;s causing them being different in the end an=
d what<br>
&gt; does &quot;universal&quot; exactly mean (to me it looks like a more ge=
neric and<br>
&gt; incluse term than any distro label, so I&#39;m confused...)?<br>
&gt;<br>
&gt;<br>
</div></div><div class=3D"m_-5228568782234999071gmail-HOEnZb"><div class=3D=
"m_-5228568782234999071gmail-h5">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
<br>
<br>
<br>
</div></div><span class=3D"m_-5228568782234999071gmail-HOEnZb"><font color=
=3D"#888888">--<br>
Maciej Borzecki<br>
RnDity<br>
</font></span></blockquote></div><br></div></div>

--f403043eb22c3144f10558221249--
