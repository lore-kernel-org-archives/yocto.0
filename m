Return-Path: <Michael.Fainstein@ecitele.com>
Received: from mail1.bemta4.messagelabs.com (mail1.bemta4.messagelabs.com
	[85.158.143.249])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34806E013C9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 23:10:17 -0700 (PDT)
Received: from [85.158.143.99:24521] by server-2.bemta-4.messagelabs.com id
	07/98-12656-8C526715; Tue, 23 Apr 2013 06:10:16 +0000
X-Env-Sender: Michael.Fainstein@ecitele.com
X-Msg-Ref: server-16.tower-216.messagelabs.com!1366697397!18032434!3
X-Originating-IP: [147.234.242.234]
X-StarScan-Received: 
X-StarScan-Version: 6.8.6.1; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 12960 invoked from network); 23 Apr 2013 06:10:06 -0000
Received: from ilptbmg01-out.ecitele.com (HELO ilptbmg01-out.ecitele.com)
	(147.234.242.234)
	by server-16.tower-216.messagelabs.com with DHE-RSA-AES256-SHA
	encrypted SMTP; 23 Apr 2013 06:10:06 -0000
X-AuditID: 93eaf2e7-b7f6a6d000007c81-6a-517625bee2a8
Received: from ilptexch01.ecitele.com ( [172.31.244.40])
	by ilptbmg01-out.ecitele.com (Symantec Messaging Gateway) with SMTP id
	2B.B5.31873.EB526715; Tue, 23 Apr 2013 09:10:06 +0300 (IDT)
Received: from ILPTWPVEXCA01.ecitele.com (172.31.244.224) by
	ilptexch01.ecitele.com (172.31.244.40) with Microsoft SMTP Server (TLS)
	id 8.3.264.0; Tue, 23 Apr 2013 09:10:06 +0300
Received: from ILPTWPVEXMB02.ecitele.com ([fe80::5979:ca8d:419f:56df]) by
	ILPTWPVEXCA01.ecitele.com ([fe80::ac15:43ab:d541:dfa7%12]) with mapi id
	14.02.0328.009; Tue, 23 Apr 2013 09:10:05 +0300
From: Michael Fainstein <Michael.Fainstein@ecitele.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: do_clean failure on NFS drive
Thread-Index: Ac4/6S/LKMdZbeZVQK62rW64eH+Mqw==
Date: Tue, 23 Apr 2013 06:10:05 +0000
Message-ID: <62673661A504604B856269DAADA8BC281DE40AAC@ILPTWPVEXMB02.ecitele.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.4.58.22]
content-transfer-encoding: quoted-printable
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA3VTfUgTYRzm3Z3rnJ6d82OvI+J4LcFysmGSoZMIypJCJSv6IL1tb9vRdpu7
	c7j+yYJM7ds+qBGYEH2IJGhZkQVZhopQQVn09UcK6gxNWQiF1Z2XJkTvX8/v63keXn4/itB/
	1hopXpCwX+DcSKsjz4anIqZHywMl5vNvU3IaRlu0a8HGoz0ntcVgVzXI4wTBK3ESZh1YtFtR
	sZ8PcPYgYnmHFVkQ63NzduzBgmRFnM+HBQfK17H/vDy5jRdYLNi9Dl5wWtGmrUWmnJzsNSYL
	yk9LtWTl6kpdvMhik4fj3awHiyLnxKycKb9NuA6Nh6N8T2KqLr+eAtXgZnQ9iKYgswo2DL8C
	Kk6GLz61auuBjtIzDwF8WXNnkRp0APgjfIJQg24AQ41NsyNaZjV83jSxSMGJTDYceRbRKjiB
	SYM3u77IeUrOr4R3u81qSybsmOwlFUwyy+FI6+TsKM0Uw6czzbN5ILuY7mvRKJhgDPDdUKNG
	dcfAq53PCRUnwdHBn1EqXgpP9dcBtT8DXnkwpVXxSnitaYxQ+eNh76WhWX49swKOR679mU2B
	j2+8JU+D5NACudACqtACqtACqiuAbAZJvNsn2TxOsyUT23kJu3Gm3etpA+o6DN8D3xuXdQGG
	AiiWZgoqS/RRXEAMerpACqVBSfR9FCjRx9m8jqCLE11l/ko3FrsApAiUSA8Y5Rrt4IIHsN87
	V1ov/9oZwhhj98qLJ0hlWWbz/wNkoK9X7yjSM0557fZj7MP+OZ4lFIUgvXeZLBHvx05ctY93
	S3/LGipasREr29iWqtgQfZxH5J1qvQ9kUaE7Q2OAutE+Ogb0pOAVsNFA5yp0jNLqqhTm2eZO
	IwwM8jck0IVKV6x8OPN8YVlKI0vx5ZIiJR/JfMlYDUacZ+ozauNYQ93kwGboLkwWajec6xu0
	6Np6HB3k8aAnYhh4Z+yc2q5547wkrvvc89Fko+MnStP3pFX1Vxy++2vxdGBkn7GN3x2pvWhL
	TM47aKZKv83QvbvKs2JebKkoy9t4KzN9wppe8+uC7UN7SVvp++jOwYdrECa/His4shORoouz
	rCD8Ivcb4tv+0fUDAAA=
Subject: do_clean failure on NFS drive
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
X-List-Received-Date: Tue, 23 Apr 2013 06:10:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"

Recently I moved my working environment from local drive to NFS and since th=
en do_clean task is failing all the time with error:
ERROR: Error executing a python function in ......:
OSError: [Errno 39] Directory not empty: '....../temp'

However, when I look at temp directory it is empty!

I put the following watcher on this directory:
SNAP0=3D"xx";while [ 1 ]; do SNAP=3D`ls -a tmp/work/ppce500v2-fsl-linux-gnus=
pe/elfutils-0.125-r4/temp/`;if [ x"${SNAP}" !=3D x"${SNAP0}" ];then echo "`d=
ate`";echo "${SNAP}";fi;SNAP0=3D"${SNAP}";done

And got the following:
Tue Apr 23 08:28:38 IDT 2013
./
../
Tue Apr 23 08:28:51 IDT 2013
./
../
log.do_clean@
log.do_clean.572
Tue Apr 23 08:28:51 IDT 2013
./
../
log.do_clean.572
run.do_clean.572
Tue Apr 23 08:28:51 IDT 2013
./
../
.nfs000000000210f27700000eb6
Tue Apr 23 08:28:51 IDT 2013
./
../
  

It looks like do_clean have a log file open when it tries to remove temp dir=
ectory. It doesn't interfere with removing directory on local drive, however=
 on NFS it does. If you remove open file on NFS, the file stays in the direc=
tory with .nfsXXXXXX name till it is closed and only then it is removed (i.e=
. when do_clean exits). This file triggers the exception "Directory not empt=
y".
Any suggestions how to solve this? Is this solved in latest version?
I am using Freescale's SDK 1.3 QorIQ-SDK-V1.3-20121114-yocto that is based o=
n Yocto version 1.2.1

Thanks,
Michael



This e-mail message is intended for the recipient only and contains informat=
ion which is CONFIDENTIAL and which may be proprietary to ECI Telecom. If yo=
u have received this transmission in error, please inform us by e-mail, phon=
e or fax, and then delete the original and all copies thereof.


