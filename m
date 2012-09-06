Return-Path: <macon@us.ibm.com>
Received: from e36.co.us.ibm.com (e36.co.us.ibm.com [32.97.110.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63AE6E002AC
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 09:30:36 -0700 (PDT)
Received: from /spool/local
	by e36.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <yocto@yoctoproject.org> from <macon@us.ibm.com>;
	Thu, 6 Sep 2012 10:30:30 -0600
Received: from d03dlp02.boulder.ibm.com (9.17.202.178)
	by e36.co.us.ibm.com (192.168.1.136) with IBM ESMTP SMTP Gateway:
	Authorized Use Only! Violators will be prosecuted; 
	Thu, 6 Sep 2012 10:29:56 -0600
Received: from d03relay05.boulder.ibm.com (d03relay05.boulder.ibm.com
	[9.17.195.107])
	by d03dlp02.boulder.ibm.com (Postfix) with ESMTP id 5D0913E40044
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 10:29:53 -0600 (MDT)
Received: from d03av05.boulder.ibm.com (d03av05.boulder.ibm.com [9.17.195.85])
	by d03relay05.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with ESMTP
	id q86GTSeX119986
	for <yocto@yoctoproject.org>; Thu, 6 Sep 2012 10:29:34 -0600
Received: from d03av05.boulder.ibm.com (loopback [127.0.0.1])
	by d03av05.boulder.ibm.com (8.14.4/8.13.1/NCO v10.0 AVout) with ESMTP
	id q86GTH6K014519
	for <yocto@yoctoproject.org>; Thu, 6 Sep 2012 10:29:17 -0600
Received: from d03nm114.boulder.ibm.com (d03nm114.boulder.ibm.com
	[9.63.40.221])
	by d03av05.boulder.ibm.com (8.14.4/8.13.1/NCO v10.0 AVin) with ESMTP id
	q86GTER1014415
	for <yocto@yoctoproject.org>; Thu, 6 Sep 2012 10:29:15 -0600
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 2E6500D3:0EB341C7-87257A71:005A2207;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.1FP5 SHF29 November 12, 2010
Message-ID: <OF2E6500D3.0EB341C7-ON87257A71.005A2207-85257A71.005A8DF2@us.ibm.com>
From: James Macon <macon@us.ibm.com>
Date: Thu, 6 Sep 2012 12:29:04 -0400
X-MIMETrack: Serialize by Router on D03NM114/03/M/IBM(Release 8.5.3FP2IF1|July
	25, 2012) at 09/06/2012 10:29:15,
	Serialize complete at 09/06/2012 10:29:15
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 12090616-7606-0000-0000-00000369AD08
Subject: Where is PREFERRED_VERSION_linux-yocto_qemux86 used?
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
X-List-Received-Date: Thu, 06 Sep 2012 16:30:36 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 005A8DE585257A71_="

--=_alternative 005A8DE585257A71_=
Content-Type: text/plain; charset="US-ASCII"

Inside of poky.conf there is a variable 
PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.0%"
 
I assume linux-yocto is the package name and qemux86 is the machine name. 

I can't find where any references PREFERRED_VERSION_linux-yocto_qemux86 
are in the build. It is probably the result of multiple appends but I 
haven't been able to find it. 

I would like to know where the appends are and who uses it.


Thanks, 

Jim Macon
Toshiba Global Commerce Solutions
voice +1 919-543-7490 
mailto: macon@us.ibm.com

--=_alternative 005A8DE585257A71_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Inside of poky.conf there is a variable
</font><font size=2 face="Courier New">PREFERRED_VERSION_linux-yocto_qemux86
?= &quot;3.0%&quot;</font>
<br><font size=2 face="sans-serif">&nbsp;</font>
<br><font size=2 face="sans-serif">I assume linux-yocto is the package
name and qemux86 is the machine name. </font>
<br>
<br><font size=2 face="sans-serif">I can't find where any references </font><font size=2 face="Courier New">PREFERRED_VERSION_linux-yocto_qemux86</font><font size=2 face="sans-serif">
are in the build. It is probably the result of multiple appends but I haven't
been able to find it. </font>
<br>
<br><font size=2 face="sans-serif">I would like to know where the appends
are and who uses it.</font>
<br>
<br>
<br><font size=2 face="sans-serif">Thanks, </font>
<br><font size=2 face="sans-serif"><br>
Jim Macon<br>
Toshiba Global Commerce Solutions<br>
voice +1 919-543-7490 <br>
mailto: macon@us.ibm.com</font>

--=_alternative 005A8DE585257A71_=--
