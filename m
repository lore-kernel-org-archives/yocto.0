Return-Path: <paul_nathan@selinc.com>
Received: from duster.selinc.com (duster.selinc.com [74.117.214.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9412E00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 08:34:06 -0800 (PST)
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by duster.selinc.com (8.14.4/8.14.4) with ESMTP id q0UGY3sT010743
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 08:34:03 -0800
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 07B6379D:FDCBA64F-88257995:0059F0C8;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.1 FP1 January 06, 2010
Message-ID: <OF07B6379D.FDCBA64F-ON88257995.0059F0C8-88257995.005B0477@selinc.com>
From: paul_nathan@selinc.com
Date: Mon, 30 Jan 2012 08:34:02 -0800
X-MIMETrack: S/MIME Sign by Notes Client on Paul Nathan/SEL(Release 8.5.1
	FP1|January 06, 2010) at 01/30/2012 08:34:09 AM,
	Serialize by Notes Client on Paul Nathan/SEL(Release 8.5.1 FP1|January
	06, 2010) at 01/30/2012 08:34:09 AM,
	Serialize complete at 01/30/2012 08:34:09 AM,
	S/MIME Sign failed at 01/30/2012 08:34:09 AM: The cryptographic key was
	not found,
	Serialize by Router on Edison/SEL(Release 8.5.3|September 15,
	2011) at 01/30/2012 08:34:06 AM,
	Serialize complete at 01/30/2012 08:34:06 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.6.7361, 1.0.211,
	0.0.0000
	definitions=2012-01-30_04:2012-01-30, 2012-01-30,
	1970-01-01 signatures=0
Subject: Yocto & long-term reproducibility of rebuilds
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
X-List-Received-Date: Mon, 30 Jan 2012 16:34:07 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 005B047188257995_="

--=_alternative 005B047188257995_=
Content-Type: text/plain; charset="US-ASCII"

Hi,

I am investigating Yocto for a build system here. Part of my requirements 
for a build system is auditable/traceable builds that can be replicated 
long into the future (our company has a 10 year warranty on our products, 
and we build products for the multidecade term). Initial examination of 
Yocto shows that it builds packages from a number of different domains 
online, which will not meet our requirements - we'll have to store these 
packages to ensure these packages exist in the correct version long into 
the future.  I know we can manually edit the SRC_URI setting in .bb files, 
but the more general problem of package archiving exists. 

I am interested in any information or recommendations other users of the 
Yocto system have on how they have solved this sort of design constraint.

- - -
Regards,
Paul Nathan

--=_alternative 005B047188257995_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Hi,</font>
<br>
<br><font size=2 face="sans-serif">I am investigating Yocto for a build
system here. Part of my requirements for a build system is auditable/traceable
builds that can be replicated long into the future (our company has a 10
year warranty on our products, and we build products for the multidecade
term). Initial examination of Yocto shows that it builds packages from
a number of different domains online, which will not meet our requirements
- we'll have to store these packages to ensure these packages exist in
the correct version long into the future. &nbsp;I know we can manually
edit the SRC_URI setting in .bb files, but the more general problem of
package archiving exists. </font>
<br>
<br><font size=2 face="sans-serif">I am interested in any information or
recommendations other users of the Yocto system have on how they have solved
this sort of design constraint.</font>
<br>
<br><font size=2 face="sans-serif">- - -<br>
Regards,<br>
Paul Nathan</font>

--=_alternative 005B047188257995_=--
