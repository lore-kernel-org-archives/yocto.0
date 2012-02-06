Return-Path: <sean_liming@sjjmicro.com>
Received: from mail30c40.carrierzone.com (mail30c40.carrierzone.com
	[209.235.156.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FD57E0123F
	for <yocto@yoctoproject.org>; Sun,  5 Feb 2012 20:13:45 -0800 (PST)
X-Authenticated-User: sean_liming.sjjmicro.com
Received: from Sean7 (cpe-75-82-59-168.socal.res.rr.com [75.82.59.168])
	(authenticated bits=0)
	by mail30c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	q164DhGN008037
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Mon, 6 Feb 2012 04:13:44 +0000
From: "Sean Liming" <sean_liming@sjjmicro.com>
To: <yocto@yoctoproject.org>
References: <90741FE9B50D654690EB940EDB456C8E057631@SHSMSX101.ccr.corp.intel.com>
	<000601cce47f$50caf6c0$f260e440$@sjjmicro.com>
In-Reply-To: <000601cce47f$50caf6c0$f260e440$@sjjmicro.com>
Date: Sun, 5 Feb 2012 20:13:43 -0800
Message-ID: <000801cce485$b7976f40$26c64dc0$@sjjmicro.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQJ5a7rMwKXUoCJR8hNZpX5Wgh40cAE1rzdPlMyF5sA=
X-Antivirus: avast! (VPS 120205-3, 02/05/2012), Outbound message
X-Antivirus-Status: Clean
X-CSC: 0
X-CHA: v=1.1 cv=4Pq4DKZTL3ljfxpuMk4z6QiCGMBGedZp4jx2BIXYRVg= c=1 sm=1
	a=yD_LW18ichgA:10 a=aJh391NtreIA:10 a=kj9zAlcOel0A:10
	a=z5g8Jwv4kxix1x/21EjHVg==:17 a=iGHA9ds3AAAA:8 a=6MITth62HpsR00K5ORAA:9
	a=tZ027yb8dY1SiHel8NIA:7 a=CjuIK1q_8ugA:10 a=XDKM753qmDAA:10
	a=AwWktVOnw6JDElWk:21 a=oM_dtYu6agYZ4Wxs:21
	a=z5g8Jwv4kxix1x/21EjHVg==:117
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A020208.4F2F5378.00BD,ss=1,re=0.000,fgs=0
Subject: Re: Yocto weekly bug trend charts -- WW05
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
X-List-Received-Date: Mon, 06 Feb 2012 04:13:46 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

The intltool.inc file has the detail called out in the file patch. I am
still seeing the error:

checking for XML::Parser... configure: error: XML::Parser perl module is
required for intltool
ERROR: oe_runconf failed
ERROR: Function 'do_configure' failed (see
/home/sean/edison-6.0-build/tmp/work/i586-poky-linux/xkeyboard-config-2.1-r1
/temp/log.do_configure.24525 for further information)

Regards,

Sean 


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Sean Liming
Sent: Sunday, February 05, 2012 7:28 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] Yocto weekly bug trend charts -- WW05


Thank you all. Let me work on this and get back to you.

Regards,

Sean 

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Xu, Jiajun
Sent: Sunday, February 05, 2012 6:19 PM
To: yocto@yoctoproject.org
Subject: [yocto] Yocto weekly bug trend charts -- WW05

Hi all,
	The overall open bug trend did not change a lot in last 3 weeks. WDD
number and Open Bug number are 702 and 141. Bug status of WW03 could be
found on https://wiki.yoctoproject.org/wiki/Yocto_Bug_Trend.

Best Regards,
Jiajun

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


