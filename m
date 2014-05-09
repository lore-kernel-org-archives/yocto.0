Return-Path: <felix01.fischer@iav.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6B0FE0073A; Fri,  9 May 2014 09:42:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	RDNS_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [94.199.90.94 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mailout04.rmx.de (unknown [94.199.90.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF22EE00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 09:42:31 -0700 (PDT)
Received: from cryptout02.retarus.com ([172.19.21.79])
	by mailout04.rmx.de (8.14.4/8.14.5/retarus.custom) with ESMTP id
	s49GgS6o019370
	for <yocto@yoctoproject.org>; Fri, 9 May 2014 18:42:28 +0200
Received: from cryptout02 (localhost [127.0.0.1])
	by cryptout02.retarus.com (Postfix) with ESMTP id 212171FFC8B
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 18:42:26 +0200 (CEST)
Received: from mailcc08.retarus.de (mailcc08.retarus.de [172.19.21.8])
	by cryptout02.retarus.com (Postfix) with SMTP id 839121FFC86
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 18:42:25 +0200 (CEST)
In-Reply-To: <OF43B0AFD4.39AA98B7-ONC1257CD0.00419C16-C1257CD0.0041A32A@retarus.de>
References: <OFE6AAA3CB.F2E905AC-ONC1257CC5.0035C1A6-C1257CC5.003C7A9B@retarus.de>	<OF92054C10.827CF0FE-ONC1257CC9.003ED681-C1257CC9.003FD0E4@retarus.de>
	<CAMKF1soDsZyB1mUg7pJ89XYowMQeNvvtRtcyDuFBmEumfY9E3A@mail.gmail.com>
	<OF43B0AFD4.39AA98B7-ONC1257CD0.00419C16-C1257CD0.0041A32A@retarus.de>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 6132B990:E2FA8E42-C1257CD3:005B4F17;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF39 May 13, 2013
From: Felix01 Fischer <felix01.fischer@iav.de>
Message-ID: <OF6132B990.E2FA8E42-ONC1257CD3.005B4F17-C1257CD3.005BBB67@retarus.de>
Date: Fri, 9 May 2014 18:42:02 +0200
X-RouteServers: CN=SRVB02M/O=IAV;CN=SRVHUB1/O=IAV
X-MIMETrack: Serialize by Router on jaja/RetarusMail(Release 8.5.3FP3|November
	15, 2012) at 05/09/2014 18:42:11,
	Serialize complete at 05/09/2014 18:42:11
X-RMX-ID: 20140509-184211-s49GgB86031948-0@kdin01
X-RMX-TRACE: 2014-05-09 18:42:12 KdIn2013@kdin01/mailcc05 [0.2s]
	20140509-184211-s49GgB86031948-0@kdin01 0:00:00
X-RMX-TRACE: 2014-05-09 18:42:12 RmxMSO@kdin01/mailcc08 [0.0s]
	20140509-184211-s49GgB86031948-0@kdin01 0:00:01
Subject: Re: building qtbase for raspberry pi fails
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
X-List-Received-Date: Fri, 09 May 2014 16:42:37 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 005BBB67C1257CD3_="

--=_alternative 005BBB67C1257CD3_=
Content-Type: text/plain; charset="US-ASCII"

Hello all,
I managed to get qtbase building with a raspberry pi.
In the end, all you have to do is to add a .bbappend for qtbase with the 
following

QT_CONFIG_FLAGS += " \
    -device linux-rasp-pi-g++ \
    -device-option 
CROSS_COMPILE=$PATH_TO_SYSROOT_DIR/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi- 
\
    -I$PATH_TO_SYSROOT_DIR/raspberrypi/usr/include/interface/vcos/pthreads 
\
"
and then it builds.

Unfortunately any qt application on the rasp will always fail with error 
0b300b :-(






yocto-bounces@yoctoproject.org schrieb am 06.05.2014 13:56:57:

> Von: Felix01 Fischer <felix01.fischer@iav.de>
> An: Khem Raj <raj.khem@gmail.com>, 
> Kopie: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Datum: 06.05.2014 15:54
> Betreff: [yocto] Antwort: Re:  building qtbase for raspberry pi fails
> Gesendet von: yocto-bounces@yoctoproject.org
> 
> Khem Raj <raj.khem@gmail.com> schrieb am 30.04.2014 10:14:29:
> 
> > Von: Khem Raj <raj.khem@gmail.com> 
> > An: Felix01 Fischer <felix01.fischer@iav.de>, 
> > Kopie: "yocto@yoctoproject.org" <yocto@yoctoproject.org> 
> > Datum: 30.04.2014 10:15 
> > Betreff: Re: [yocto] building qtbase for raspberry pi fails 
> > 
> > On Tue, Apr 29, 2014 at 4:37 AM, Felix01 Fischer 
> > <felix01.fischer@iav.de> wrote:
> > > But still I haven't figured out how to get this build correctly so 
qtbase
> > > can find and use it.
> > 
> > I am assuming you need to select this user land recipe to provide
> > virtual/libgles2 virtual/egl
> > 
> > PREFERRED_PROVIDER_virtual/egl = "userland"
> > PREFERRED_PROVIDER_virtual/libgres2 = "user land"
> > 
> > in config metadata
> 
> 
> 
> I think you have two typos in the second line. 
> It should be 
> PREFERRED_PROVIDER_virtual/libgles2 ?= "userland" 
> right? 
> 
> If yes, then this is already set in rpi-default-providers.inc
> (see here http://git.yoctoproject.org/cgit/cgit.cgi/meta-
> raspberrypi/plain/conf/machine/include/rpi-default-providers.inc )
> 
> Nevertheless I managed to build qtbase now, I still have to figure 
> out which options exactly are responsible for this :-)
> 
> One thing I now for sure: 
> 
> I have to add the following line to 
> "/media/yocto_build/qt5-raspb/build/tmp/work/armv6-vfp-poky-linux-
> gnueabi/atbase/5.2.1-r0/qtbase-opensource-src-5.2.1/mkspecs/linux-
> oe-g++/qmake.conf" 
> 
> "QMAKE_LIBS_EGL += "/media/yocto_build/qt5-raspb/build/tmp/sysroots/
> raspberrypi/usr/lib/libGLESv2.so"
> 
> 2 Questions: 
> First, why isn't this library found by default? It clearly is in /
> usr/lib so this should be a no brainer I think 
> Second, If I have to add this line manually via a bbappend how do I do 
this? 
> I tried by just adding this line to a qtbase_5.2.1.bbappend, by 
> prefixing it with OE_, by substituting the full path with $
> {STAGING_DIR_TARGET} 
> and by trying all of these steps in meta-qt5/recipes-qt/qt5/
> qtbase.inc but with no success so far
> 
> 
> 
> Unfortunately, I still get the from before when trying to run a Qt 
> programm on the raspberrypi:
> 
> EGLFS: Unable to query physical screen size, defaulting to 100 dpi. 
> EGLFS: To override, set QT_QPA_EGLFS_PHYSICAL_WIDTH and 
> QT_QPA_EGLFS_PHYSICAL_HEIGHT (in millimeters). 
> libpng warning: iCCP: Not recognizing known sRGB profile that has been 
edited 
> EGL Error : Could not create the egl surface: error = 0x300b
> 
> 
> anny suggestions?
> 
> Felix-- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=_alternative 005BBB67C1257CD3_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Hello all,</font>
<br><font size=2 face="sans-serif">I managed to get qtbase building with
a raspberry pi.<br>
In the end, all you have to do is to add a .bbappend for qtbase with the
following<br>
<br>
QT_CONFIG_FLAGS += &quot; \</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; -device linux-rasp-pi-g++
\</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; -device-option CROSS_COMPILE=$PATH_TO_SYSROOT_DIR/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-
\</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; -I$PATH_TO_SYSROOT_DIR/raspberrypi/usr/include/interface/vcos/pthreads
\</font>
<br><font size=2 face="sans-serif">&quot;</font>
<br><font size=2 face="sans-serif">and then it builds.<br>
</font>
<br><font size=2 face="sans-serif">Unfortunately any qt application on
the rasp will always fail with error 0b300b :-(</font>
<br>
<br>
<br>
<br>
<br>
<br>
<br><tt><font size=2>yocto-bounces@yoctoproject.org schrieb am 06.05.2014
13:56:57:<br>
<br>
&gt; Von: Felix01 Fischer &lt;felix01.fischer@iav.de&gt;</font></tt>
<br><tt><font size=2>&gt; An: Khem Raj &lt;raj.khem@gmail.com&gt;, </font></tt>
<br><tt><font size=2>&gt; Kopie: &quot;yocto@yoctoproject.org&quot; &lt;yocto@yoctoproject.org&gt;</font></tt>
<br><tt><font size=2>&gt; Datum: 06.05.2014 15:54</font></tt>
<br><tt><font size=2>&gt; Betreff: [yocto] Antwort: Re: &nbsp;building
qtbase for raspberry pi fails</font></tt>
<br><tt><font size=2>&gt; Gesendet von: yocto-bounces@yoctoproject.org</font></tt>
<br><tt><font size=2>&gt; <br>
&gt; Khem Raj &lt;raj.khem@gmail.com&gt; schrieb am 30.04.2014 10:14:29:<br>
&gt; <br>
&gt; &gt; Von: Khem Raj &lt;raj.khem@gmail.com&gt; <br>
&gt; &gt; An: Felix01 Fischer &lt;felix01.fischer@iav.de&gt;, <br>
&gt; &gt; Kopie: &quot;yocto@yoctoproject.org&quot; &lt;yocto@yoctoproject.org&gt;
<br>
&gt; &gt; Datum: 30.04.2014 10:15 <br>
&gt; &gt; Betreff: Re: [yocto] building qtbase for raspberry pi fails <br>
&gt; &gt; <br>
&gt; &gt; On Tue, Apr 29, 2014 at 4:37 AM, Felix01 Fischer <br>
&gt; &gt; &lt;felix01.fischer@iav.de&gt; wrote:<br>
&gt; &gt; &gt; But still I haven't figured out how to get this build correctly
so qtbase<br>
&gt; &gt; &gt; can find and use it.<br>
&gt; &gt; <br>
&gt; &gt; I am assuming you need to select this user land recipe to provide<br>
&gt; &gt; virtual/libgles2 virtual/egl<br>
&gt; &gt; <br>
&gt; &gt; PREFERRED_PROVIDER_virtual/egl = &quot;userland&quot;<br>
&gt; &gt; PREFERRED_PROVIDER_virtual/libgres2 = &quot;user land&quot;<br>
&gt; &gt; <br>
&gt; &gt; in config metadata<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; I think you have two typos in the second line. <br>
&gt; It should be <br>
&gt; PREFERRED_PROVIDER_virtual/libgles2 ?= &quot;userland&quot; <br>
&gt; right? <br>
&gt; <br>
&gt; If yes, then this is already set in rpi-default-providers.inc<br>
&gt; (see here </font></tt><a href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-"><tt><font size=2>http://git.yoctoproject.org/cgit/cgit.cgi/meta-</font></tt></a><tt><font size=2><br>
&gt; raspberrypi/plain/conf/machine/include/rpi-default-providers.inc )<br>
&gt; <br>
&gt; Nevertheless I managed to build qtbase now, I still have to figure
<br>
&gt; out which options exactly are responsible for this :-)<br>
&gt; <br>
&gt; One thing I now for sure: <br>
&gt; <br>
&gt; I have to add the following line to <br>
&gt; &quot;/media/yocto_build/qt5-raspb/build/tmp/work/armv6-vfp-poky-linux-<br>
&gt; gnueabi/atbase/5.2.1-r0/qtbase-opensource-src-5.2.1/mkspecs/linux-<br>
&gt; oe-g++/qmake.conf&quot; <br>
&gt; <br>
&gt; &quot;QMAKE_LIBS_EGL += &quot;/media/yocto_build/qt5-raspb/build/tmp/sysroots/<br>
&gt; raspberrypi/usr/lib/libGLESv2.so&quot;<br>
&gt; <br>
&gt; 2 Questions: <br>
&gt; First, why isn't this library found by default? It clearly is in /<br>
&gt; usr/lib so this should be a no brainer I think <br>
&gt; Second, If I have to add this line manually via a bbappend how do
I do this? <br>
&gt; I tried by just adding this line to a qtbase_5.2.1.bbappend, by <br>
&gt; prefixing it with OE_, by substituting the full path with $<br>
&gt; {STAGING_DIR_TARGET} <br>
&gt; and by trying all of these steps in meta-qt5/recipes-qt/qt5/<br>
&gt; qtbase.inc but with no success so far<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Unfortunately, I still get the from before when trying to run a Qt
<br>
&gt; programm on the raspberrypi:<br>
&gt; <br>
&gt; EGLFS: Unable to query physical screen size, defaulting to 100 dpi.
<br>
&gt; EGLFS: To override, set QT_QPA_EGLFS_PHYSICAL_WIDTH and <br>
&gt; QT_QPA_EGLFS_PHYSICAL_HEIGHT (in millimeters). <br>
&gt; libpng warning: iCCP: Not recognizing known sRGB profile that has
been edited <br>
&gt; EGL Error : Could not create the egl surface: error = 0x300b<br>
&gt; <br>
&gt; <br>
&gt; anny suggestions?<br>
&gt; <br>
&gt; Felix-- <br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; </font></tt><a href=https://lists.yoctoproject.org/listinfo/yocto><tt><font size=2>https://lists.yoctoproject.org/listinfo/yocto</font></tt></a><tt><font size=2><br>
</font></tt>

--=_alternative 005BBB67C1257CD3_=--
