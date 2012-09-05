Return-Path: <macon@us.ibm.com>
Received: from e6.ny.us.ibm.com (e6.ny.us.ibm.com [32.97.182.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4CD5E01423
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 12:05:54 -0700 (PDT)
Received: from /spool/local
	by e6.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <yocto@yoctoproject.org> from <macon@us.ibm.com>;
	Wed, 5 Sep 2012 15:05:46 -0400
Received: from d01dlp02.pok.ibm.com (9.56.250.167)
	by e6.ny.us.ibm.com (192.168.1.106) with IBM ESMTP SMTP Gateway:
	Authorized Use Only! Violators will be prosecuted; 
	Wed, 5 Sep 2012 15:05:20 -0400
Received: from d01relay05.pok.ibm.com (d01relay05.pok.ibm.com [9.56.227.237])
	by d01dlp02.pok.ibm.com (Postfix) with ESMTP id BC6946E805F
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 15:05:18 -0400 (EDT)
Received: from d03av04.boulder.ibm.com (d03av04.boulder.ibm.com [9.17.195.170])
	by d01relay05.pok.ibm.com (8.13.8/8.13.8/NCO v10.0) with ESMTP id
	q85J5HBS164696
	for <yocto@yoctoproject.org>; Wed, 5 Sep 2012 15:05:18 -0400
Received: from d03av04.boulder.ibm.com (loopback [127.0.0.1])
	by d03av04.boulder.ibm.com (8.14.4/8.13.1/NCO v10.0 AVout) with ESMTP
	id q85J3nYM028651
	for <yocto@yoctoproject.org>; Wed, 5 Sep 2012 13:03:49 -0600
Received: from d03nm114.boulder.ibm.com (d03nm114.boulder.ibm.com
	[9.63.40.221])
	by d03av04.boulder.ibm.com (8.14.4/8.13.1/NCO v10.0 AVin) with ESMTP id
	q85J3mTN027489
	for <yocto@yoctoproject.org>; Wed, 5 Sep 2012 13:03:48 -0600
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: C6F80D24:F2F92589-87257A70:00684AC0;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.1FP5 SHF29 November 12, 2010
Message-ID: <OFC6F80D24.F2F92589-ON87257A70.00684AC0-85257A70.0068B234@us.ibm.com>
From: James Macon <macon@us.ibm.com>
Date: Wed, 5 Sep 2012 15:03:32 -0400
X-MIMETrack: Serialize by Router on D03NM114/03/M/IBM(Release 8.5.3FP2IF1|July
	25, 2012) at 09/05/2012 13:03:47,
	Serialize complete at 09/05/2012 13:03:47
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 12090519-1976-0000-0000-000010F83DAA
Subject: Re: core-image-minimal linux kernel version
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
X-List-Received-Date: Wed, 05 Sep 2012 19:05:54 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0068B23285257A70_="

--=_alternative 0068B23285257A70_=
Content-Type: text/plain; charset="US-ASCII"

I found it but this is only partially the answer. I found 
PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto" in qemu.inc but there 
is no recipe for linux-yocto. There are recipes for linux-yocto_3.* , 
linux-yocto-tiny, and linux-yocto-rt_3*. 

Somewhere during the build process something is appending to linux-yocto. 
I will keep looking but if someone knows the answer please respond. 

Thanks,

Jim Macon
Toshiba Global Commerce Solutions
voice +1 919-543-7490 
mailto: macon@us.ibm.com

--=_alternative 0068B23285257A70_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">I found it but this is only partially the
answer. I found </font><tt><font size=3>PREFERRED_PROVIDER_virtual/kernel
?= &quot;linux-yocto&quot;</font></tt><font size=2 face="sans-serif"> in
qemu.inc but there is no recipe for linux-yocto. There are recipes for
linux-yocto_3.* , linux-yocto-tiny, and linux-yocto-rt_3*. </font>
<br>
<br><font size=2 face="sans-serif">Somewhere during the build process something
is appending to </font><tt><font size=3>linux-yocto</font></tt><font size=2 face="sans-serif">.
I will keep looking but if someone knows the answer please respond. </font>
<br>
<br><font size=2 face="sans-serif">Thanks,</font>
<br><font size=2 face="sans-serif"><br>
Jim Macon<br>
Toshiba Global Commerce Solutions<br>
voice +1 919-543-7490 <br>
mailto: macon@us.ibm.com</font>

--=_alternative 0068B23285257A70_=--
