Return-Path: <prvs=685d11186=Maxime.Moge@sick.de>
Received: from mail.sick.de (mail.sick.de [91.207.92.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05768E00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 10:00:05 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.84,260,1355094000"; 
   d="scan'208";a="373969"
Received: from unknown (HELO deags00086.sickcn.net) ([10.2.32.182])
	by mail.waki.de.dmz with ESMTP; 11 Dec 2012 19:00:04 +0100
In-Reply-To: <alpine.DEB.2.02.1212110801200.23904@oneiric>
References: <alpine.DEB.2.02.1212110801200.23904@oneiric>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 1C2954B7:9AD39620-C1257AD1:00627511;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.2FP2 SHF191 July 18, 2011
Message-ID: <OF1C2954B7.9AD39620-ONC1257AD1.00627511-C1257AD1.0062D841@sick.de>
From: Maxime Moge <Maxime.Moge@sick.de>
Date: Tue, 11 Dec 2012 18:59:49 +0100
X-MIMETrack: Serialize by Router on WAKMA02.waki.de.internal/SRV/SICK(Release
	8.5.3FP2|July 02, 2012) at 11.12.2012 19:00:04,
	Serialize complete at 11.12.2012 19:00:04
Subject: jffs2 change erase block size / page size
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Dec 2012 18:00:06 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0062D841C1257AD1_="

--=_alternative 0062D841C1257AD1_=
Content-Type: text/plain; charset="US-ASCII"

Hi,

I need to know where can i configure the jffs2 image type in the yocto 
directory?

Thanks in advance for the reply.




Von:    "Robert P. J. Day" <rpjday@crashcourse.ca>
An:     Yocto discussion list <yocto@yoctoproject.org>
Datum:  12/11/2012 02:08 PM
Betreff:        [yocto] should users be able to run yocto's pre-built 
images  standalone?
Gesendet von:   yocto-bounces@yoctoproject.org




  following up on my updated QEMU page here:

http://www.crashcourse.ca/wiki/index.php/Running_pre-built_QEMU_images

a basic question -- is it supported that users be able to download and
run yocto's pre-built QEMU images without having to download an entire
build system, and set up bitbake, etc?  theoretically, of course, it
can be done, but it's not set up to do it conveniently (if it even
should be).

  first, one can't get yocto's qemu-related utilities without
downloading either oe-core or a toolchain.  is that really necessary?
how hard would it be to break out the QEMU stuff into a much smaller
tarball if that's all people want?

  and if that's done, certainly, the help messages from runqemu can be
updated, since those utilities clearly assume they're running as part
of a build infrastructure when that's not necessary.

  anyway, you can see the observations i made on my QEMU page.  it
seems that, if you just want people to be able to *easily* fire up
some pre-built images to see the beauty of yocto, you shouldn't make
them download an entire build infrastructure they don't need.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


--=_alternative 0062D841C1257AD1_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Hi,</font>
<br>
<br><font size=2 face="sans-serif">I need to know where can i configure
the jffs2 image type in the yocto directory?</font>
<br>
<br><font size=2 face="sans-serif">Thanks in advance for the reply.</font>
<br>
<br>
<br>
<br>
<br><font size=1 color=#5f5f5f face="sans-serif">Von: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">&quot;Robert P. J.
Day&quot; &lt;rpjday@crashcourse.ca&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">An: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">Yocto discussion list
&lt;yocto@yoctoproject.org&gt;</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Datum: &nbsp; &nbsp; &nbsp;
&nbsp;</font><font size=1 face="sans-serif">12/11/2012 02:08 PM</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Betreff: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">[yocto] should
users be able to run yocto's pre-built images &nbsp; &nbsp; &nbsp; &nbsp;standalone?</font>
<br><font size=1 color=#5f5f5f face="sans-serif">Gesendet von: &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size=1 face="sans-serif">yocto-bounces@yoctoproject.org</font>
<br>
<hr noshade>
<br>
<br>
<br><tt><font size=2><br>
 &nbsp;following up on my updated QEMU page here:<br>
<br>
</font></tt><a href="http://www.crashcourse.ca/wiki/index.php/Running_pre-built_QEMU_images"><tt><font size=2>http://www.crashcourse.ca/wiki/index.php/Running_pre-built_QEMU_images</font></tt></a><tt><font size=2><br>
<br>
a basic question -- is it supported that users be able to download and<br>
run yocto's pre-built QEMU images without having to download an entire<br>
build system, and set up bitbake, etc? &nbsp;theoretically, of course,
it<br>
can be done, but it's not set up to do it conveniently (if it even<br>
should be).<br>
<br>
 &nbsp;first, one can't get yocto's qemu-related utilities without<br>
downloading either oe-core or a toolchain. &nbsp;is that really necessary?<br>
how hard would it be to break out the QEMU stuff into a much smaller<br>
tarball if that's all people want?<br>
<br>
 &nbsp;and if that's done, certainly, the help messages from runqemu can
be<br>
updated, since those utilities clearly assume they're running as part<br>
of a build infrastructure when that's not necessary.<br>
<br>
 &nbsp;anyway, you can see the observations i made on my QEMU page. &nbsp;it<br>
seems that, if you just want people to be able to *easily* fire up<br>
some pre-built images to see the beauty of yocto, you shouldn't make<br>
them download an entire build infrastructure they don't need.<br>
<br>
 &nbsp;thoughts?<br>
<br>
rday<br>
<br>
-- <br>
<br>
========================================================================<br>
Robert P. J. Day &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ottawa, Ontario,
CANADA<br>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;</font></tt><a href=http://crashcourse.ca/><tt><font size=2>http://crashcourse.ca</font></tt></a><tt><font size=2><br>
<br>
Twitter: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </font></tt><a href=http://twitter.com/rpjday><tt><font size=2>http://twitter.com/rpjday</font></tt></a><tt><font size=2><br>
LinkedIn: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </font></tt><a href=http://ca.linkedin.com/in/rpjday><tt><font size=2>http://ca.linkedin.com/in/rpjday</font></tt></a><tt><font size=2><br>
========================================================================<br>
_______________________________________________<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
</font></tt><a href=https://lists.yoctoproject.org/listinfo/yocto><tt><font size=2>https://lists.yoctoproject.org/listinfo/yocto</font></tt></a><tt><font size=2><br>
</font></tt>
<br>

--=_alternative 0062D841C1257AD1_=--
