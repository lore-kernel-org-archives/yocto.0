Return-Path: <felix01.fischer@iav.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE43FE00BC2; Tue,  6 May 2014 05:13:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=HTML_MESSAGE, RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [94.199.90.94 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 929 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 May 2014 05:13:29 PDT
Received: from mailout04.rmx.de (mailout04.rmx.de [94.199.90.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C99BE00B5D
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 05:13:29 -0700 (PDT)
Received: from cryptout01.retarus.com ([172.19.21.78])
	by mailout04.rmx.de (8.14.4/8.14.5/retarus.custom) with ESMTP id
	s46BviEc030490; Tue, 6 May 2014 13:57:54 +0200
Received: from cryptout01 (localhost [127.0.0.1])
	by cryptout01.retarus.com (Postfix) with ESMTP id DA981370508;
	Tue,  6 May 2014 13:57:49 +0200 (CEST)
Received: from mailcc07.retarus.de (mailcc07.retarus.de [172.19.21.7])
	by cryptout01.retarus.com (Postfix) with SMTP id 809553704FA;
	Tue,  6 May 2014 13:57:49 +0200 (CEST)
In-Reply-To: <CAMKF1soDsZyB1mUg7pJ89XYowMQeNvvtRtcyDuFBmEumfY9E3A@mail.gmail.com>
References: <OFE6AAA3CB.F2E905AC-ONC1257CC5.0035C1A6-C1257CC5.003C7A9B@retarus.de>
	<OF92054C10.827CF0FE-ONC1257CC9.003ED681-C1257CC9.003FD0E4@retarus.de>
	<CAMKF1soDsZyB1mUg7pJ89XYowMQeNvvtRtcyDuFBmEumfY9E3A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
MIME-Version: 1.0
X-KeepSent: 43B0AFD4:39AA98B7-C1257CD0:00419C16;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF39 May 13, 2013
From: Felix01 Fischer <felix01.fischer@iav.de>
Message-ID: <OF43B0AFD4.39AA98B7-ONC1257CD0.00419C16-C1257CD0.0041A32A@retarus.de>
Date: Tue, 6 May 2014 13:56:57 +0200
X-RouteServers: CN=SRVB02M/O=IAV;CN=SRVHUB1/O=IAV
X-MIMETrack: Serialize by Router on jaja/RetarusMail(Release 8.5.3FP3|November
	15, 2012) at 05/06/2014 13:57:14,
	Serialize complete at 05/06/2014 13:57:14
X-RMX-ID: 20140506-135715-s46BvEAJ022270-0@kdin02
X-RMX-TRACE: 2014-05-06 13:57:15 KdIn2013@kdin02/mailcc07 [0.2s]
	20140506-135715-s46BvEAJ022270-0@kdin02 0:00:00
X-RMX-TRACE: 2014-05-06 13:57:15 RmxMSO@kdin02/mailcc07 [0.0s]
	20140506-135715-s46BvEAJ022270-0@kdin02 0:00:00
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Antwort: Re: building qtbase for raspberry pi fails
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
X-List-Received-Date: Tue, 06 May 2014 12:13:33 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0041A32AC1257CD0_="

--=_alternative 0041A32AC1257CD0_=
Content-Type: text/plain; charset="US-ASCII"

Khem Raj <raj.khem@gmail.com> schrieb am 30.04.2014 10:14:29:

> Von: Khem Raj <raj.khem@gmail.com>
> An: Felix01 Fischer <felix01.fischer@iav.de>, 
> Kopie: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Datum: 30.04.2014 10:15
> Betreff: Re: [yocto] building qtbase for raspberry pi fails
> 
> On Tue, Apr 29, 2014 at 4:37 AM, Felix01 Fischer 
> <felix01.fischer@iav.de> wrote:
> > But still I haven't figured out how to get this build correctly so 
qtbase
> > can find and use it.
> 
> I am assuming you need to select this user land recipe to provide
> virtual/libgles2 virtual/egl
> 
> PREFERRED_PROVIDER_virtual/egl = "userland"
> PREFERRED_PROVIDER_virtual/libgres2 = "user land"
> 
> in config metadata



I think you have two typos in the second line. 
It should be
PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
right?

If yes, then this is already set in rpi-default-providers.inc
(see here 
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/plain/conf/machine/include/rpi-default-providers.inc 
)

Nevertheless I managed to build qtbase now, I still have to figure out 
which options exactly are responsible for this :-)

One thing I now for sure:

I have to add the following line to
"/media/yocto_build/qt5-raspb/build/tmp/work/armv6-vfp-poky-linux-gnueabi/atbase/5.2.1-r0/qtbase-opensource-src-5.2.1/mkspecs/linux-oe-g++/qmake.conf"

"QMAKE_LIBS_EGL += 
"/media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libGLESv2.so"

2 Questions:
First, why isn't this library found by default? It clearly is in /usr/lib 
so this should be a no brainer I think
Second, If I have to add this line manually via a bbappend how do I do 
this?
I tried by just adding this line to a qtbase_5.2.1.bbappend, by prefixing 
it with OE_, by substituting the full path with ${STAGING_DIR_TARGET}
and by trying all of these steps in meta-qt5/recipes-qt/qt5/qtbase.inc but 
with no success so far



Unfortunately, I still get the from before when trying to run a Qt 
programm on the raspberrypi:

EGLFS: Unable to query physical screen size, defaulting to 100 dpi.
EGLFS: To override, set QT_QPA_EGLFS_PHYSICAL_WIDTH and 
QT_QPA_EGLFS_PHYSICAL_HEIGHT (in millimeters).
libpng warning: iCCP: Not recognizing known sRGB profile that has been 
edited 
EGL Error : Could not create the egl surface: error = 0x300b


anny suggestions?

Felix

--=_alternative 0041A32AC1257CD0_=
Content-Type: text/html; charset="US-ASCII"

<tt><font size=2>Khem Raj &lt;raj.khem@gmail.com&gt; schrieb am 30.04.2014
10:14:29:<br>
<br>
&gt; Von: Khem Raj &lt;raj.khem@gmail.com&gt;</font></tt>
<br><tt><font size=2>&gt; An: Felix01 Fischer &lt;felix01.fischer@iav.de&gt;,
</font></tt>
<br><tt><font size=2>&gt; Kopie: &quot;yocto@yoctoproject.org&quot; &lt;yocto@yoctoproject.org&gt;</font></tt>
<br><tt><font size=2>&gt; Datum: 30.04.2014 10:15</font></tt>
<br><tt><font size=2>&gt; Betreff: Re: [yocto] building qtbase for raspberry
pi fails</font></tt>
<br><tt><font size=2>&gt; <br>
&gt; On Tue, Apr 29, 2014 at 4:37 AM, Felix01 Fischer <br>
&gt; &lt;felix01.fischer@iav.de&gt; wrote:<br>
&gt; &gt; But still I haven't figured out how to get this build correctly
so qtbase<br>
&gt; &gt; can find and use it.<br>
&gt; <br>
&gt; I am assuming you need to select this user land recipe to provide<br>
&gt; virtual/libgles2 virtual/egl<br>
&gt; <br>
&gt; PREFERRED_PROVIDER_virtual/egl = &quot;userland&quot;<br>
&gt; PREFERRED_PROVIDER_virtual/libgres2 = &quot;user land&quot;<br>
&gt; <br>
&gt; in config metadata<br>
</font></tt>
<br>
<br>
<br><tt><font size=2>I think you have two typos in the second line. <br>
It should be</font></tt>
<br><tt><font size=3>PREFERRED_PROVIDER_virtual/libgles2 ?= &quot;userland&quot;</font></tt>
<br><tt><font size=3>right?</font></tt>
<br>
<br><tt><font size=2>If yes, then this is already set in rpi-default-providers.inc<br>
(see here </font></tt><a href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/plain/conf/machine/include/rpi-default-providers.inc"><tt><font size=2>http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/plain/conf/machine/include/rpi-default-providers.inc</font></tt></a><tt><font size=2>
)<br>
<br>
Nevertheless I managed to build qtbase now, I still have to figure out
which options exactly are responsible for this :-)<br>
<br>
One thing I now for sure:</font></tt>
<br><tt><font size=2><br>
I have to add the following line to</font></tt>
<br><tt><font size=2>&quot;/media/yocto_build/qt5-raspb/build/tmp/work/armv6-vfp-poky-linux-gnueabi/atbase/5.2.1-r0/qtbase-opensource-src-5.2.1/mkspecs/linux-oe-g++/qmake.conf&quot;</font></tt>
<br>
<br><tt><font size=2>&quot;QMAKE_LIBS_EGL += &quot;/media/yocto_build/qt5-raspb/build/tmp/sysroots/raspberrypi/usr/lib/libGLESv2.so&quot;<br>
<br>
2 Questions:</font></tt>
<br><tt><font size=2>First, why isn't this library found by default? It
clearly is in /usr/lib so this should be a no brainer I think</font></tt>
<br><tt><font size=2>Second, If I have to add this line manually via a
bbappend how do I do this?</font></tt>
<br><tt><font size=2>I tried by just adding this line to a qtbase_5.2.1.bbappend,
by prefixing it with OE_, by substituting the full path with ${STAGING_DIR_TARGET}</font></tt>
<br><tt><font size=2>and by trying all of these steps in meta-qt5/recipes-qt/qt5/qtbase.inc
but with no success so far<br>
<br>
<br>
<br>
Unfortunately, I still get the from before when trying to run a Qt programm
on the raspberrypi:<br>
<br>
EGLFS: Unable to query physical screen size, defaulting to 100 dpi.</font></tt>
<br><tt><font size=2>EGLFS: To override, set QT_QPA_EGLFS_PHYSICAL_WIDTH
and QT_QPA_EGLFS_PHYSICAL_HEIGHT (in millimeters).</font></tt>
<br><tt><font size=2>libpng warning: iCCP: Not recognizing known sRGB profile
that has been edited </font></tt>
<br><tt><font size=2>EGL Error : Could not create the egl surface: error
= 0x300b<br>
<br>
<br>
anny suggestions?<br>
<br>
Felix<br>
</font></tt>

--=_alternative 0041A32AC1257CD0_=--
