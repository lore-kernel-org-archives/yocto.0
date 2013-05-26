Return-Path: <precipice.development@gmail.com>
Received: from mail-pb0-f43.google.com (mail-pb0-f43.google.com
	[209.85.160.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09F98E013EE
	for <yocto@yoctoproject.org>; Sun, 26 May 2013 10:21:20 -0700 (PDT)
Received: by mail-pb0-f43.google.com with SMTP id ma3so6035300pbc.16
	for <yocto@yoctoproject.org>; Sun, 26 May 2013 10:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:date:subject:to:message-id:mime-version:x-mailer;
	bh=E/TmaeKqrynMEuo1jfnIa5LH4A7ggwM+x5gmT9nthn4=;
	b=AzQ+M5ybMTkIRLPkvgKze0o4tBrYPmCG7MKx/tL6Ac9615Oc9H5NzMYmx/6t53lDxU
	40cG1aO0WoOxT/kBKCXCnCzV3J0cFuBN+hkWbOFgyNqe5O60LDkDHkXycwtaLR6jZ5Ep
	L+J8YkbOw2phmN7jwsA1YRgsIlA2Xsd25a61+zmswUKHroIRaKpaG/PRsVdJK4dj47Yi
	anxVNOmRVRcJsrLmcNKkBtscE+ZjfTX6e+H0pnfKBNInvVzVphhL11Z2y2JgMRZrkBUB
	NP5vWtHCbdy9ioC7TXThwBkzBulEiics9RzNWOVR/P2kyww76YEXhwoLuLytc3jhFdN4
	EsOQ==
X-Received: by 10.68.130.167 with SMTP id of7mr26683934pbb.169.1369588879857; 
	Sun, 26 May 2013 10:21:19 -0700 (PDT)
Received: from [192.168.100.106] (ip70-176-238-137.ph.ph.cox.net.
	[70.176.238.137]) by mx.google.com with ESMTPSA id
	ag4sm25062908pbc.20.2013.05.26.10.21.18 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 26 May 2013 10:21:19 -0700 (PDT)
From: Precipice Development <precipice.development@gmail.com>
Date: Sun, 26 May 2013 10:21:17 -0700
To: yocto@yoctoproject.org
Message-Id: <034977B3-A653-4991-A2DF-2859B8C14EAC@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
X-Mailer: Apple Mail (2.1503)
Subject: ADT_REPO Issue
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
X-List-Received-Date: Sun, 26 May 2013 17:21:20 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8449D847-255E-470B-9F46-9471467EC5C8"

--Apple-Mail=_8449D847-255E-470B-9F46-9471467EC5C8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hello

I am installing Yocto on a new machine.  I did  a GIT pull to grab Poky =
as per the docs (git clone -b dylan git://git.yoctoproject.org/poky.git)

Subsequently I tried to build the art_installer which went through =
without issues.  However,  when I run the art_installer scripts I get an =
error that it is looking for the =
http://adtrepo.yoctoproject.org/1.4.1/adt-ipk/x86_64-nativesdk.  The =
values seems to be configured in opkg/conf/opkg-sdk-x86_64.conf (and =
corresponding x86 conf file).  There is no such URL.  Only 1.4 exists. =20=


Should I try to edit and just use =
http://adtrepo.yoctoproject.org/1.4/adt-ipk/x86_64-nativesdk/ or is that =
going to cause some issues.  Or when will there be a 1.4.1?

Thanks

Jerry

When I installed yocto on a laptop earlier using the tar ball (about 2 =
weeks ago) this was a not issue.   My conf file on that machine is:
arch all 1
arch any 6
arch noarch 11
arch x86_64-nativesdk 16
src yp-x86_64-nativesdk =
http://adtrepo.yoctoproject.org//1.4/adt-ipk/x86_64-nativesdk


On my new machine it is:
arch all 1
arch any 6
arch noarch 11
arch x86_64-nativesdk 16
src yp-x86_64-nativesdk =
http://adtrepo.yoctoproject.org/1.4.1/adt-ipk/x86_64-nativesdk

Note the different version number and the double // in the first conf =
file=

--Apple-Mail=_8449D847-255E-470B-9F46-9471467EC5C8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hello<div><br></div><div>I am installing Yocto on a new machine. =
&nbsp;I did &nbsp;a GIT pull to grab Poky as per the docs (<span =
style=3D"background-color: rgb(0, 0, 0); color: rgb(255, 255, 255); =
font-family: 'Courier New', 'DejaVu Sans Mono', monospace, sans-serif; =
font-size: 13px; line-height: 20.984375px; ">git clone -b dylan <a =
href=3D"git://git.yoctoproject.org/poky.git">git://git.yoctoproject.org/po=
ky.git</a>)</span></div><div><span style=3D"background-color: rgb(0, 0, =
0); color: rgb(255, 255, 255); font-family: 'Courier New', 'DejaVu Sans =
Mono', monospace, sans-serif; font-size: 13px; line-height: 20.984375px; =
"><br></span></div><div>Subsequently I tried to build the art_installer =
which went through without issues. &nbsp;However, &nbsp;when I run the =
art_installer scripts I get an error that it is looking for the&nbsp;<a =
href=3D"http://adtrepo.yoctoproject.org/1.4.1/adt-ipk/x86_64-nativesdk">ht=
tp://adtrepo.yoctoproject.org/1.4.1/adt-ipk/x86_64-nativesdk</a>. =
&nbsp;The values seems to be configured =
in&nbsp;opkg/conf/opkg-sdk-x86_64.conf (and corresponding x86 conf =
file). &nbsp;There is no such URL. &nbsp;Only 1.4 exists. =
&nbsp;</div><div><br></div><div>Should I try to edit and just =
use&nbsp;<a =
href=3D"http://adtrepo.yoctoproject.org/1.4/adt-ipk/x86_64-nativesdk/">htt=
p://adtrepo.yoctoproject.org/1.4/adt-ipk/x86_64-nativesdk/</a> or is =
that going to cause some issues. &nbsp;Or when will there be a =
1.4.1?</div><div><br></div><div>Thanks</div><div><br></div><div>Jerry</div=
><div><br></div><div>When I installed yocto on a laptop earlier using =
the tar ball (about 2 weeks ago) this was a not issue. &nbsp; My conf =
file on that machine is:</div><div><div>arch all 1</div><div>arch any =
6</div><div>arch noarch 11</div><div>arch x86_64-nativesdk =
16</div><div>src yp-x86_64-nativesdk <a =
href=3D"http://adtrepo.yoctoproject.org//1.4/adt-ipk/x86_64-nativesdk">htt=
p://adtrepo.yoctoproject.org//1.4/adt-ipk/x86_64-nativesdk</a></div></div>=
<div><br></div><div><br></div><div>On my new machine it =
is:</div><div><div>arch all 1</div><div>arch any 6</div><div>arch noarch =
11</div><div>arch x86_64-nativesdk 16</div><div>src yp-x86_64-nativesdk =
<a =
href=3D"http://adtrepo.yoctoproject.org/1.4.1/adt-ipk/x86_64-nativesdk">ht=
tp://adtrepo.yoctoproject.org/1.4.1/adt-ipk/x86_64-nativesdk</a></div></di=
v><div><br></div><div>Note the different version number and the double =
// in the first conf file</div></body></html>=

--Apple-Mail=_8449D847-255E-470B-9F46-9471467EC5C8--
