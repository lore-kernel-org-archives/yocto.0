Return-Path: <macon@us.ibm.com>
Received: from e39.co.us.ibm.com (e39.co.us.ibm.com [32.97.110.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0D50E01385
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 10:35:38 -0700 (PDT)
Received: from /spool/local
	by e39.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <yocto@yoctoproject.org> from <macon@us.ibm.com>;
	Wed, 5 Sep 2012 11:35:38 -0600
Received: from d03dlp02.boulder.ibm.com (9.17.202.178)
	by e39.co.us.ibm.com (192.168.1.139) with IBM ESMTP SMTP Gateway:
	Authorized Use Only! Violators will be prosecuted; 
	Wed, 5 Sep 2012 11:35:36 -0600
Received: from d03relay04.boulder.ibm.com (d03relay04.boulder.ibm.com
	[9.17.195.106])
	by d03dlp02.boulder.ibm.com (Postfix) with ESMTP id 914043E4003C
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 11:35:34 -0600 (MDT)
Received: from d03av05.boulder.ibm.com (d03av05.boulder.ibm.com [9.17.195.85])
	by d03relay04.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with ESMTP
	id q85HZYJ0242904
	for <yocto@yoctoproject.org>; Wed, 5 Sep 2012 11:35:34 -0600
Received: from d03av05.boulder.ibm.com (loopback [127.0.0.1])
	by d03av05.boulder.ibm.com (8.14.4/8.13.1/NCO v10.0 AVout) with ESMTP
	id q85HZPSv003736
	for <yocto@yoctoproject.org>; Wed, 5 Sep 2012 11:35:25 -0600
Received: from d03nm114.boulder.ibm.com (d03nm114.boulder.ibm.com
	[9.63.40.221])
	by d03av05.boulder.ibm.com (8.14.4/8.13.1/NCO v10.0 AVin) with ESMTP id
	q85HZOBY003673
	for <yocto@yoctoproject.org>; Wed, 5 Sep 2012 11:35:24 -0600
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 1A48EC70:8ED5AD8D-87257A70:006076C0;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.1FP5 SHF29 November 12, 2010
Message-ID: <OF1A48EC70.8ED5AD8D-ON87257A70.006076C0-85257A70.0060A027@us.ibm.com>
From: James Macon <macon@us.ibm.com>
Date: Wed, 5 Sep 2012 13:35:23 -0400
X-MIMETrack: Serialize by Router on D03NM114/03/M/IBM(Release 8.5.3FP2IF1|July
	25, 2012) at 09/05/2012 11:35:24,
	Serialize complete at 09/05/2012 11:35:24
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 12090517-4242-0000-0000-000002CB0826
Subject: core-image-minimal linux kernel version
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
X-List-Received-Date: Wed, 05 Sep 2012 17:35:39 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0060A02685257A70_="

--=_alternative 0060A02685257A70_=
Content-Type: text/plain; charset="US-ASCII"

I successfully built core-image-minimal.  I now what to understand how the 
build determine what linux kernel it will be using because the next step I 
will want to do is add my own recipe that references my own kernel.  I 
have not been able to find where the linkage to specific kernel is. Can 
someone  provide an answer.


Thanks,

Jim Macon
Toshiba Global Commerce Solutions
voice +1 919-543-7490 
mailto: macon@us.ibm.com

--=_alternative 0060A02685257A70_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">I successfully built core-image-minimal.
&nbsp;I now what to understand how the build determine what linux kernel
it will be using because the next step I will want to do is add my own
recipe that references my own kernel. &nbsp;I have not been able to find
where the linkage to specific kernel is. Can someone &nbsp;provide an answer.</font>
<br>
<br>
<br><font size=2 face="sans-serif">Thanks,</font>
<br><font size=2 face="sans-serif"><br>
Jim Macon<br>
Toshiba Global Commerce Solutions<br>
voice +1 919-543-7490 <br>
mailto: macon@us.ibm.com</font>

--=_alternative 0060A02685257A70_=--
