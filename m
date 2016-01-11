Return-Path: <andi.eipeldauer@gmx.at>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 165E7E008A5; Mon, 11 Jan 2016 09:10:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, MIME_HTML_ONLY, RCVD_IN_DNSWL_LOW,
	XPRIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andi.eipeldauer[at]gmx.at)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0006]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	*  2.0 XPRIO Has X-Priority header
X-Greylist: delayed 306 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Jan 2016 09:10:22 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF28BE007EA
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 09:10:22 -0800 (PST)
Received: from [178.191.54.64] by 3capp-gmx-bs50.server.lan (via HTTP); Mon,
	11 Jan 2016 18:05:15 +0100
MIME-Version: 1.0
Message-ID: <trinity-a608f4f7-44d8-476d-8762-7788f16bdc25-1452531915262@3capp-gmx-bs50>
From: "Andreas Eipeldauer" <andi.eipeldauer@gmx.at>
To: yocto@yoctoproject.org
Date: Mon, 11 Jan 2016 18:05:15 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:ZR9zOfY0Jk/JvttsNgl8mVIArEvhQ9hBaTfZ6bn6HL4
	qdj3Uf3EGUP6I2W9i0/AQ9OBwlrfxokHNqMJWMyFHP9tPvRh25
	mlE2y5y+DVsiNb+QXbbKQGEkpIcp5WaYCS7UuBGOOf8QDKTBIL
	hZ45NUUDv/fHD15Ru1IA8BGzCruGS3dgTLZYqBuhvTEWA4Vz0k
	UF7pqlqD1woFeBbT1JQHstLMjT4zi6iUrXjILa9mJQOfl3QtDx
	Bw/PYCHKeU6vn/Md5fBpe99rHjRFqXN1wUp3pjOQRgwTd+SW31 YiTKww=
X-UI-Out-Filterresults: notjunk:1;V01:K0:UibV7KaBFx0=:0x9TKXT713ASAc8hrgmn/7
	Lmbecz7VtKE+beeuvjdRQaoGO+mJCNNov28Vm3W1uN7rjM1fyVefCMlFcg57I3G9CEEMqiCXP
	W88dPxdmYty0K816ACGuhlV5jS1/y+dKhujPRVrilqme50kTqF8dNZWvnoUWxdIS/NKrmjhmM
	uh5g6PvzDkn4bk0cRf82GVY3UoJO3JF/+zHPiB7MvfQMW3mr6SW/5XZci8mjdN39TQVeHM7n2
	7KRPJDhjjv5mSzlTdRTCuGRsqy4zBj5vADODqlOFaOhRaozAmdWXTiOOyPmQ4Nq+i/VuNPM5W
	s4vJXNUbCUWb+EJIbrqmOfWqFhwLp5VDYurGXxCh7Jsy3uRW8QCTHnHuk+2n9fRMuo++ffAs4
	z2W5KJwR2fKqPaIuuyILFzVTYCXA0AWbE94I79QKRPc90o8ucSAMGSvzmL5MSW/04BCWw2KNj
	DigjBeHfxQ==
Subject: Setting up git repository mirror with PREMIRRORS_prepend
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
X-List-Received-Date: Mon, 11 Jan 2016 17:10:28 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>
<div>Hello,</div>

<div>I want to set up mirror server for the source code I use for my embedded target.</div>

<div>&nbsp;</div>

<div>So what I have are archives e.g. tar.gz, ... that i placed in a directory<br/>
on a webserver http://mirror.server/mirror/ and this works fine.</div>

<div>&nbsp;</div>

<div>I also want to mirror the git repositories. So on the server I want to pull new commits from the origin,<br/>
and the build machine should only pull from the mirror. I do not want to use tar balls instead.</div>

<div>&nbsp;</div>

<div>On the mirror there is a git-daemon running with:</div>

<div>git daemon --reuseaddr --base-path=/home/Depot/yocto-repos --export-all --verbose --enable=receive-pack &amp;</div>

<div>&nbsp;</div>

<div>What I suspected how it works, that i just have to put the repos in a directory and state it like this in the local.conf:<br/>
git://.*/.* git://mirror.server/ &#92;n &#92; but this dows not work!?. I have to make an entry for each repo in the PREMIRRORS_prepend list in the build/local.conf file:</div>

<div>&nbsp;</div>

<div>PREMIRRORS_prepend = &quot;&#92;<br/>
http://.*/.* http://mirror.server/mirror/ &#92;n &#92;<br/>
https://.*/.* http://mirror.server/mirror/ &#92;n &#92;<br/>
ftp://.*/.* http://mirror.server/mirror/ &#92;n &#92;<br/>
git://.*/.* git://mirror.server/u-boot.git &#92;n &#92;<br/>
git://.*/.* git://mirror.server/prelink-cross.git &#92;n &#92;<br/>
git://.*/.* git://mirror.server/canutils.git &#92;n &#92;<br/>
git://.*/.* git://mirror.server/glibc.git &#92;n &#92;<br/>
git://.*/.* git://mirror.server/gtk-doc-stub.git &#92;n &#92;<br/>
git://.*/.* git://mirror.server/kraj.localedef &#92;n &#92;<br/>
git://.*/.* git://mirror.server/mtd-utils.git &#92;n &#92;<br/>
git://.*/.* git://mirror.server/opkg-utils &#92;n &#92;<br/>
git://.*/.* git://mirror.server/philb.update-rc.d.git &#92;n &#92;<br/>
git://.*/.* git://mirror.server/pub.scm.linux.kernel.git.torvalds.linux.git &#92;n &#92;<br/>
git://.*/.* git://mirror.server/scm.utils.kernel.kmod.kmod.git &#92;n &#92;<br/>
git://.*/.* git://mirror.server/sourceware.org.git.glibc.git &#92;n &#92;<br/>
git://.*/.* git://mirror.server/tools.libsocketcan.git &#92;n &#92;<br/>
git://.*/.* git://mirror.server/yocto-kernel-tools.git &#92;n &#92;<br/>
git://.*/.* git://mirror.server/psplash &#92;n &#92;<br/>
git://.*/.* git://mirror.server/ &#92;n&quot;</div>

<div>What I observed is that this solution takes very much longer than cloning the origin repos from the origin source and sometimes i have to start over.<br/>
Is this right what i am doing, any proper documentation on this theme? Thank You</div>
</div></div></body></html>

