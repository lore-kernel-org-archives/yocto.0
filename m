Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com [148.163.156.1])
 by mx.groups.io with SMTP id smtpd.web08.3044.1625781656507366989
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jul 2021 15:00:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=m3luuiEm;
 spf=pass (domain: us.ibm.com, ip: 148.163.156.1, mailfrom: youhour@us.ibm.com)
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 168LXelk114487
	for <yocto@lists.yoctoproject.org>; Thu, 8 Jul 2021 18:00:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=mime-version : subject :
 to : message-id : from : date : content-type; s=pp1;
 bh=JbjS1U5jXElmkSD+hIU7vdZCITWJTHFmBFTrTGPc9LE=;
 b=m3luuiEmxGIZc3oZD/Bm3I14s04WJU+xy6NDkquexd9FS8KOL68RX6iPukxzI1a27x5U
 botFzoPb1k3yCuE5Q5Q2Zc09YbsX/KDwKQDmSIwf7JPU6PAScFuEoj6Gw8McGU3CemNs
 tlc9qd4rPwy5XsrCG7IeY6H0GUwCAolmfNoYrhtejF6aQUhQigeZ/8wJgSTYkkbvcYHF
 RKQbIKceBGrLG4QXmxLAG0GC4zs+NH1dMM57ucknFXiM6/BEpynQO+A3kmWf7seOds6J
 02z5qoCQfutv9GtNCTh2zWvJ56H+AyxK40p4K3nSFfLwvHQbMWA+j9Zaqq3XcXzWDcWF iA== 
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.11])
	by mx0a-001b2d01.pphosted.com with ESMTP id 39nhcbhafj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 08 Jul 2021 18:00:55 -0400
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
	by ppma03dal.us.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 168LrNfi015299
	for <yocto@lists.yoctoproject.org>; Thu, 8 Jul 2021 22:00:55 GMT
Received: from b03cxnp08028.gho.boulder.ibm.com (b03cxnp08028.gho.boulder.ibm.com [9.17.130.20])
	by ppma03dal.us.ibm.com with ESMTP id 39jhq1nm8h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 08 Jul 2021 22:00:55 +0000
Received: from b03ledav002.gho.boulder.ibm.com (b03ledav002.gho.boulder.ibm.com [9.17.130.233])
	by b03cxnp08028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 168M0rcq34210054
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@lists.yoctoproject.org>; Thu, 8 Jul 2021 22:00:53 GMT
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BF27E136076
	for <yocto@lists.yoctoproject.org>; Thu,  8 Jul 2021 22:00:53 +0000 (GMT)
Received: from b03ledav002.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A8AF7136060
	for <yocto@lists.yoctoproject.org>; Thu,  8 Jul 2021 22:00:53 +0000 (GMT)
Received: from mww0342.dal12m.mail.ibm.com (unknown [9.208.69.19])
	by b03ledav002.gho.boulder.ibm.com (Postfix) with ESMTPS
	for <yocto@lists.yoctoproject.org>; Thu,  8 Jul 2021 22:00:53 +0000 (GMT)
MIME-Version: 1.0
Subject: valgrind failed do_compile during bitbake
To: yocto@lists.yoctoproject.org
Message-ID: <OFB9643837.3B7703CB-ON0025870C.00772D0E-8625870C.0078ED16@ibm.com>
From: "Michael" <youhour@us.ibm.com>
Date: Thu, 8 Jul 2021 17:00:50 -0500
X-KeepSent: B9643837:3B7703CB-0025870C:00772D0E; name=$KeepSent; type=4
X-Mailer: IBM Notes Release 9.0.1FP10 SHF252 August 10, 2018
X-Disclaimed: 29415
X-MIMETrack: CD-MIME by Router on MWW0342/03/M/IBM at 07/08/2021 22:00:53,CD-MIME complete
 at 07/08/2021 22:00:53,Itemize by Router on MWW0342/03/M/IBM at 07/08/2021
 22:00:53
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: U1RoN50tRoueKuMWRI6dyAw2qOZdYswu
X-Proofpoint-GUID: U1RoN50tRoueKuMWRI6dyAw2qOZdYswu
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-08_12:2021-07-08,2021-07-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 mlxlogscore=937 mlxscore=0 spamscore=0
 clxscore=1011 impostorscore=0 priorityscore=1501 adultscore=0
 suspectscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107080110
Content-type: multipart/alternative; 
	Boundary="0__=8FBB0D9FDFE4AB9E8f9e8a93df938690918c8FBB0D9FDFE4AB9E"
Content-Disposition: inline

--0__=8FBB0D9FDFE4AB9E8f9e8a93df938690918c8FBB0D9FDFE4AB9E
Content-type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable


I'm using Yocto "warrior" version.

It is setup for powerpc-nf
DEFAULTTUNE =3D "powerpc-nf"
DISTRO =3D "poky"

Everything seems to work find until I enable "valgrind".  'bitbake' fails
to compile valgrind

************************
:
| collect2: error: ld returned 1 exit status
| make[3]: *** [Makefile:1034: memcheck-ppc32-linux] Error 1
| make[3]: Leaving directory '$
{WORK=5FDIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/build/memcheck'
| make[2]: *** [Makefile:1345: all-recursive] Error 1
| make[2]: Leaving directory '$
{WORK=5FDIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/build/memcheck'
| make[1]: *** [Makefile:834: all-recursive] Error 1
| make[1]: Leaving directory '$
{WORK=5FDIR}/work/powerpc-nf-poky-linux/valgrind/3.14.0-r0/build'
| make: *** [Makefile:703: all] Error 2
| make: Leaving directory '$
{WORK=5FDIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/build'
| ERROR: oe=5Frunmake failed
| WARNING: $
{WORK=5FDIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/temp/run.do=5Fcompile=
.23806:1
 exit 1 from 'exit 1'
| ERROR: Function failed: do=5Fcompile (log file is located at $
{WORK=5FDIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/temp/log.do=5Fcompile=
.23806)
ERROR: Task ($
{REPODIR}fips-build/meta/recipes-devtools/valgrind/valgrind=5F3.14.0.bb:do=
=5Fcompile)
 failed with exit code '1'
NOTE: Tasks Summary: Attempted 4091 tasks of which 4089 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  $
{REPO=5FDIR}/fips-build/meta/recipes-devtools/valgrind/valgrind=5F3.14.0.bb=
:do=5Fcompile
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
*********************************************

Many link failure...
**********************************
 undefined reference to `=5F=5Ffloatsidf'
 undefined reference to `=5F=5Fmuldf3'
 undefined reference to `=5F=5Fltdf2'
 undefined reference to `=5F=5Ffixdfsi'
 undefined reference to `=5F=5Fdivdf3'
 undefined reference to `=5F=5Ffloatunsidf'
 undefined reference to `=5F=5Ffloatundidf'
 undefined reference to `=5F=5Fadddf3'
 undefined reference to `=5F=5Ffixunsdfdi'
 undefined reference to `=5F=5Fnedf2'
 undefined reference to `=5F=5Fgtdf2'
 undefined reference to `=5F=5Fsubdf3'
 undefined reference to `=5F=5Feqsf2'
 undefined reference to `=5F=5Feqdf2'
 undefined reference to `=5F=5Ffloatunsisf'
 undefined reference to `=5F=5Fdivsf3'
***********************

Seems like many people were running into this issue for many reason.  Saw a
lot of suggestion in google, but seem like there is no real solution...
I try to create valgrind=5F%.bbappen with the following contents.  And did
not help...
#####################
#valgrind will not compile even with below changes
CFLAGS=5Fprepend =3D " -lc -lm "
CFLAGS=5Fappend =3D " -ffast-math -static-libgcc -lgcc -ffreestanding -lc -=
lm "
#BASE=5FWORKDIR=3D"/tmp/youhour/fips-build/m20210707a/fips-ppcnf/build/tmp/=
work"
#./powerpc-nf-poky-linux/valgrind/3.14.0-r0/recipe-sysroot/usr/lib/powerpc-=
poky-linux/8.3.0/libgcc.a
BUILD=5FLDFLAGS=5Fappend =3D " -L$
{BASE=5FWORKDIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/recipe-sysroot/us=
r/lib/powerpc-poky-linux/8.3.0
 "
#####################

Any suggestion is appreciated.

--0__=8FBB0D9FDFE4AB9E8f9e8a93df938690918c8FBB0D9FDFE4AB9E
Content-type: text/html; charset=US-ASCII
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

<html><body><p><font size=3D"2" face=3D"sans-serif">I'm using Yocto &quot;w=
arrior&quot; version.</font><br><br><font size=3D"2" face=3D"sans-serif">It=
 is setup for powerpc-nf</font><br><font size=3D"2" face=3D"sans-serif">DEF=
AULTTUNE =3D &quot;powerpc-nf&quot;</font><br><font size=3D"2" face=3D"sans=
-serif">DISTRO =3D &quot;poky&quot;</font><br><br><font size=3D"2" face=3D"=
sans-serif">Everything seems to work find until I enable &quot;valgrind&quo=
t;. &nbsp;'bitbake' fails to compile valgrind</font><br><br><font size=3D"2=
" face=3D"sans-serif">************************</font><br><font size=3D"2" f=
ace=3D"sans-serif">:</font><br><font size=3D"2" face=3D"sans-serif">| colle=
ct2: error: ld returned 1 exit status</font><br><font size=3D"2" face=3D"sa=
ns-serif">| make[3]: *** [Make<a href=3D"file:1034:">file:1034:</a> memchec=
k-ppc32-linux] Error 1</font><br><font size=3D"2" face=3D"sans-serif">| mak=
e[3]: Leaving directory '${WORK=5FDIR}/powerpc-nf-poky-linux/valgrind/3.14.=
0-r0/build/memcheck'</font><br><font size=3D"2" face=3D"sans-serif">| make[=
2]: *** [Make<a href=3D"file:1345:">file:1345:</a> all-recursive] Error 1</=
font><br><font size=3D"2" face=3D"sans-serif">| make[2]: Leaving directory =
'${WORK=5FDIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/build/memcheck'</fo=
nt><br><font size=3D"2" face=3D"sans-serif">| make[1]: *** [Make<a href=3D"=
file:834:">file:834:</a> all-recursive] Error 1</font><br><font size=3D"2" =
face=3D"sans-serif">| make[1]: Leaving directory '${WORK=5FDIR}/work/powerp=
c-nf-poky-linux/valgrind/3.14.0-r0/build'</font><br><font size=3D"2" face=
=3D"sans-serif">| make: *** [Make<a href=3D"file:703:">file:703:</a> all] E=
rror 2</font><br><font size=3D"2" face=3D"sans-serif">| make: Leaving direc=
tory '${WORK=5FDIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/build'</font><=
br><font size=3D"2" face=3D"sans-serif">| ERROR: oe=5Frunmake failed</font>=
<br><font size=3D"2" face=3D"sans-serif">| WARNING: ${WORK=5FDIR}/powerpc-n=
f-poky-linux/valgrind/3.14.0-r0/temp/run.do=5Fcompile.23806:1 exit 1 from '=
exit 1'</font><br><font size=3D"2" face=3D"sans-serif">| ERROR: Function fa=
iled: do=5Fcompile (log file is located at ${WORK=5FDIR}/powerpc-nf-poky-li=
nux/valgrind/3.14.0-r0/temp/log.do=5Fcompile.23806)</font><br><font size=3D=
"2" face=3D"sans-serif">ERROR: Task (${REPODIR}fips-build/meta/recipes-devt=
ools/valgrind/valgrind=5F3.14.0.bb:do=5Fcompile) failed with exit code '1'<=
/font><br><font size=3D"2" face=3D"sans-serif">NOTE: Tasks Summary: Attempt=
ed 4091 tasks of which 4089 didn't need to be rerun and 1 failed.</font><br=
><br><font size=3D"2" face=3D"sans-serif">Summary: 1 task failed:</font><br=
><font size=3D"2" face=3D"sans-serif">&nbsp; ${REPO=5FDIR}/fips-build/meta/=
recipes-devtools/valgrind/valgrind=5F3.14.0.bb:do=5Fcompile</font><br><font=
 size=3D"2" face=3D"sans-serif">Summary: There were 2 ERROR messages shown,=
 returning a non-zero exit code.</font><br><font size=3D"2" face=3D"sans-se=
rif">*********************************************</font><br><br><font size=
=3D"2" face=3D"sans-serif">Many link failure...</font><br><font size=3D"2" =
face=3D"sans-serif">**********************************</font><br><font size=
=3D"1" color=3D"#1D1C1D" face=3D"Consolas">&nbsp;undefined reference to `=
=5F=5Ffloatsidf'<br> undefined reference to `=5F=5Fmuldf3'<br> undefined re=
ference to `=5F=5Fltdf2'<br> undefined reference to `=5F=5Ffixdfsi'<br> und=
efined reference to `=5F=5Fdivdf3'<br> undefined reference to `=5F=5Ffloatu=
nsidf'<br> undefined reference to `=5F=5Ffloatundidf'<br> undefined referen=
ce to `=5F=5Fadddf3'<br> undefined reference to `=5F=5Ffixunsdfdi'<br> unde=
fined reference to `=5F=5Fnedf2'<br> undefined reference to `=5F=5Fgtdf2'<b=
r> undefined reference to `=5F=5Fsubdf3'<br> undefined reference to `=5F=5F=
eqsf2'<br> undefined reference to `=5F=5Feqdf2'<br> undefined reference to =
`=5F=5Ffloatunsisf'<br> undefined reference to `=5F=5Fdivsf3'</font><br><fo=
nt size=3D"2" face=3D"sans-serif">***********************</font><br><br><fo=
nt size=3D"2" face=3D"sans-serif">Seems like many people were running into =
this issue for many reason. &nbsp;Saw a lot of suggestion in google, but se=
em like there is no real solution...</font><br><font size=3D"2" face=3D"san=
s-serif">I try to create valgrind=5F%.bbappen with the following contents. =
&nbsp;And did not help...</font><br><font size=3D"2" face=3D"sans-serif">##=
###################</font><br><font size=3D"2" face=3D"sans-serif">#valgrin=
d will not compile even with below changes</font><br><font size=3D"2" face=
=3D"sans-serif">CFLAGS=5Fprepend =3D &quot; -lc -lm &quot;</font><br><font =
size=3D"2" face=3D"sans-serif">CFLAGS=5Fappend =3D &quot; -ffast-math -stat=
ic-libgcc -lgcc -ffreestanding -lc -lm &quot;</font><br><font size=3D"2" fa=
ce=3D"sans-serif">#BASE=5FWORKDIR=3D&quot;/tmp/youhour/fips-build/m20210707=
a/fips-ppcnf/build/tmp/work&quot;</font><br><font size=3D"2" face=3D"sans-s=
erif">#./powerpc-nf-poky-linux/valgrind/3.14.0-r0/recipe-sysroot/usr/lib/po=
werpc-poky-linux/8.3.0/libgcc.a</font><br><font size=3D"2" face=3D"sans-ser=
if">BUILD=5FLDFLAGS=5Fappend =3D &quot; -L${BASE=5FWORKDIR}/powerpc-nf-poky=
-linux/valgrind/3.14.0-r0/recipe-sysroot/usr/lib/powerpc-poky-linux/8.3.0 &=
quot;</font><br><font size=3D"2" face=3D"sans-serif">#####################<=
/font><br><br><font size=3D"2" face=3D"sans-serif">Any suggestion is apprec=
iated.</font><br><BR>
<BR>
</body></html>

--0__=8FBB0D9FDFE4AB9E8f9e8a93df938690918c8FBB0D9FDFE4AB9E--
