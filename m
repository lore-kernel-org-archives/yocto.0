Return-Path: <soniaverma9727@gmail.com>
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E299E01830
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2013 01:13:00 -0800 (PST)
Received: by mail-we0-f178.google.com with SMTP id q59so1706995wes.9
	for <yocto@yoctoproject.org>; Fri, 08 Nov 2013 01:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Zg9S/ruegC/VfG5WXmLdo+PQabmoAF6lAuP/vqMc7VY=;
	b=sGalsRMcJbf1FqZ/8M9l+Nv80RyhbQ9pe63fBB7si8MT6wJ2YZ+YkPi6hKflc8jpCE
	a8OII1oPgk0PDYjikMGoY2FhLVxVusn7Jqj+4n2S7jY2b7RY7Dp4n88DBJT2H3f8NT8b
	rSt6JU+D8jWmbqjiyAy0ugK8DuOVrpBvt/pWb95Zijabq4qgaoGlYiDUwxz720dFopE4
	/zag/8jkddnDdulkLWEgVUsbRLgq/rxqwYhUql7Ff25iGCN0zoiI09JcZpI/F61QQdfS
	g308nVPJiAzj/aIRd88r0sk5qklotqMNeXAXln//5We2NdSLl9c8xyWkLFE91sE77qZs
	v5GA==
MIME-Version: 1.0
X-Received: by 10.180.90.46 with SMTP id bt14mr1513079wib.50.1383901974396;
	Fri, 08 Nov 2013 01:12:54 -0800 (PST)
Received: by 10.194.9.193 with HTTP; Fri, 8 Nov 2013 01:12:53 -0800 (PST)
Date: Fri, 8 Nov 2013 14:42:53 +0530
Message-ID: <CAJ7VayjsMagVYRU+rV_-uxaFNw6rY=dv2TtuHSYKh40WBeJXMA@mail.gmail.com>
From: sonia verma <soniaverma9727@gmail.com>
To: llvm-announce@cs.uiuc.edu, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: LLVM cross compiler for PowerPc
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
X-List-Received-Date: Fri, 08 Nov 2013 09:13:03 -0000
Content-Type: multipart/alternative; boundary=f46d043c81de9afc3c04eaa6c9ba

--f46d043c81de9afc3c04eaa6c9ba
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I have ported Java based Opendaylight Controller on PowerPc board and have
integrated JAVA on the same Powerpc architecture using meta-java with
yocto.By default it cam with Zero port support which only works in
interpreter mode.

java version "1.7.0_25"
OpenJDK Runtime Environment (IcedTea 2.3.12) (25b30-2.3.12)
OpenJDK Zero VM (build 23.7-b01, interpreted mode)

When I run Opendaylight.it takes approximately about 10 min for the
Controller to start properly.
However when i run it on x-86,it works fine.The Java -version at x-86 is as
follows..

java -version
java version "1.7.0_25"
OpenJDK Runtime Environment (IcedTea 2.3.10) (7u25-2.3.10-1ubuntu0.12.04.2)
OpenJDK Server VM (build 23.7-b01, mixed mode)

I noticed that the Java mode at x-86 is mixed mode whereas at that of my
board is interpreted mode and I think this may be the reason for delay in
starting
When I enabled Shark support on the board,it resulted in LLVM compiler
missing with yocto.
Is there any other alternative to build java with shark on PowerPc.

Please help regarding this.


Thanks


Regards.
Sonia

--f46d043c81de9afc3c04eaa6c9ba
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,<br><br>I have ported Java based Opendaylight =
Controller on PowerPc=20
board and have integrated JAVA on the same Powerpc architecture using=20
meta-java with yocto.By default it cam with Zero port=20
support which only works in interpreter mode.<br>
<br>java version &quot;1.7.0_25&quot;<br>OpenJDK Runtime Environment (IcedT=
ea 2.3.12) (25b30-2.3.12)<br>
OpenJDK Zero VM (build 23.7-b01, interpreted mode)<br>
<br>When I run Opendaylight.it takes=20
approximately about 10 min for the Controller to start properly.<br>However=
 when i run it on=20
x-86,it works fine.The Java -version at x-86 is as follows..<br>
<br>java -version<br>java version &quot;1.7.0_25&quot;<br>OpenJDK Runtime E=
nvironment (IcedTea 2.3.10) (7u25-2.3.10-1ubuntu0.12.04.2)<br>OpenJDK Serve=
r VM (build 23.7-b01, mixed mode)<br>=A0<br>I noticed that the Java mode at=
 x-86 is mixed mode whereas at that of my board is interpreted mode and I t=
hink this may be the reason for delay in starting<br>
When I enabled Shark support on the board,it resulted in LLVM compiler miss=
ing with yocto.<br>
</div>Is there any other alternative to build java with shark on PowerPc.<b=
r><div><br><div>Please help regarding this.<br><br><br></div><div>Thanks<br=
><br><br></div><div>Regards.<br></div><div>Sonia<br></div><br><br></div>
</div>

--f46d043c81de9afc3c04eaa6c9ba--
