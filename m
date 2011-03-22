Return-Path: <madison@cisco.com>
Received: from sj-iport-3.cisco.com (sj-iport-3.cisco.com [171.71.176.72])
	by mx1.pokylinux.org (Postfix) with ESMTP id 16E284C80050
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 11:41:01 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=madison@cisco.com;
	x-dkim-adsp=none (insecure policy)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=madison@cisco.com; l=2327; q=dns/txt;
	s=iport; t=1300812061; x=1302021661;
	h=date:subject:from:to:message-id:mime-version;
	bh=7NkXxeuEPdS34aGXKPIVuRCxhEDsr/6vp/VP2COAlgk=;
	b=BLWtdCV21zG6sW6a2annvN2UoQC9vqqNeIZwN+/AcYWPuAz5/Dp5WEbK
	mPEkgiLlKL2nP5OElPKjaalmGU9RyAFBuTsJpFkhpoLKPIt8l+ltS6Nf2
	E7/LtG+vhdCdsDih1pWgkK2QyTRgsrMg3mUBTnOa/nVFarqQ26d4I8JCB w=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: ApUFAPttiE2rRDoG/2dsb2JhbACCYaF/VAJ3pnCcTIVoBIU1hzaDWIVJ
X-IronPort-AV: E=Sophos;i="4.63,225,1299456000"; 
	d="scan'208,217";a="280929890"
Received: from mtv-core-1.cisco.com ([171.68.58.6])
	by sj-iport-3.cisco.com with ESMTP; 22 Mar 2011 16:41:00 +0000
Received: from xbh-sjc-211.amer.cisco.com (xbh-sjc-211.cisco.com
	[171.70.151.144])
	by mtv-core-1.cisco.com (8.14.3/8.14.3) with ESMTP id p2MGf0us018535
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 16:41:00 GMT
Received: from xmb-sjc-217.amer.cisco.com ([171.70.151.175]) by
	xbh-sjc-211.amer.cisco.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 22 Mar 2011 09:41:00 -0700
Received: from 128.107.159.176 ([128.107.159.176]) by
	xmb-sjc-217.amer.cisco.com ([171.70.151.175]) with Microsoft
	Exchange Server HTTP-DAV ; Tue, 22 Mar 2011 16:40:59 +0000
User-Agent: Microsoft-Entourage/12.28.0.101117
Date: Tue, 22 Mar 2011 09:40:53 -0700
From: Matt Madison <madison@cisco.com>
To: Yocto Mailer <yocto@yoctoproject.org>
Message-ID: <C9AE1F25.3EB2F%madison@cisco.com>
Thread-Topic: Older versions of Linux as build hosts?
Thread-Index: Acvor+ih8u5ArlEO6EmxWZmoHMnn0w==
Mime-version: 1.0
X-OriginalArrivalTime: 22 Mar 2011 16:41:00.0509 (UTC)
	FILETIME=[ED1B20D0:01CBE8AF]
Subject: Older versions of Linux as build hosts?
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
X-List-Received-Date: Tue, 22 Mar 2011 16:41:01 -0000
Content-type: multipart/alternative;
	boundary="B_3383631655_56443806"

--B_3383631655_56443806
Content-type: text/plain;
	charset="ISO-8859-1"
Content-transfer-encoding: quoted-printable

Hi,

I know the documentation mentions that you should be running a =B3reasonably
current=B2 Linux as your build host, but in my enterprise environment I=B9m
stuck with having to run fairly old versions, based on RHEL 4 and 5.  I=B9ve
got some patches that I=B9ve been maintaining so I can bootstrap Bernard
builds on these systems.  Is there any interest in supporting older systems
as build hosts?  Any thoughts on how far back =B3reasonably current=B2 is going
to be with each Yocto release?  I=B9m trying to work with my IT group to
upgrade a bit more frequently, and for developer workstations, that might b=
e
possible, but I=B9m not sure I=B9ll be able to convince them to do that for
servers in our data centers.

Is anyone else having this kind of problem?

Thanks,
-Matt

--B_3383631655_56443806
Content-type: text/html;
	charset="ISO-8859-1"
Content-transfer-encoding: quoted-printable

<HTML>
<HEAD>
<TITLE>Older versions of Linux as build hosts?</TITLE>
</HEAD>
<BODY>
<FONT FACE=3D"Calibri, Verdana, Helvetica, Arial"><SPAN STYLE=3D'font-size:10pt=
'>Hi,<BR>
<BR>
I know the documentation mentions that you should be running a &#8220;reaso=
nably current&#8221; Linux as your build host, but in my enterprise environm=
ent I&#8217;m stuck with having to run fairly old versions, based on RHEL 4 =
and 5. &nbsp;I&#8217;ve got some patches that I&#8217;ve been maintaining so=
 I can bootstrap Bernard builds on these systems. &nbsp;Is there any interes=
t in supporting older systems as build hosts? &nbsp;Any thoughts on how far =
back &#8220;reasonably current&#8221; is going to be with each Yocto release=
? &nbsp;I&#8217;m trying to work with my IT group to upgrade a bit more freq=
uently, and for developer workstations, that might be possible, but I&#8217;=
m not sure I&#8217;ll be able to convince them to do that for servers in our=
 data centers.<BR>
<BR>
Is anyone else having this kind of problem?<BR>
<BR>
Thanks,<BR>
-Matt</SPAN></FONT>
</BODY>
</HTML>


--B_3383631655_56443806--
