Return-Path: <Georgi.Georgiev@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 054F1E00C4E; Fri,  7 Dec 2018 04:16:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from Mail1.woodward.com (mail1.woodward.com [216.17.208.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7365DE00C12
	for <yocto@yoctoproject.org>; Fri,  7 Dec 2018 04:16:54 -0800 (PST)
Received: from pps.filterd (CoCo-PMSGA1.woodward.com [127.0.0.1])
	by CoCo-PMSGA1.woodward.com (8.16.0.22/8.16.0.22) with SMTP id
	wB7As8J9016497; Fri, 7 Dec 2018 06:16:53 -0600
Received: from rkfdhc2.woodward.com ([10.1.100.159])
	by CoCo-PMSGA1.woodward.com with ESMTP id 2p76h7j42y-2
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=NOT);
	Fri, 07 Dec 2018 06:16:53 -0600
Received: from KempHC2.woodward.com (10.25.100.52) by rkfdhc2.woodward.com
	(10.1.100.159) with Microsoft SMTP Server (TLS) id 8.3.485.1;
	Fri, 7 Dec 2018 06:16:50 -0600
Received: from KempMail2.woodward.com ([169.254.2.232]) by
	KempHC2.woodward.com ([172.20.1.2]) with mapi;
	Fri, 7 Dec 2018 13:16:43 +0100
From: Georgi Georgiev <Georgi.Georgiev@woodward.com>
To: Edward Wingate <edwingate8@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 7 Dec 2018 13:16:42 +0100
Thread-Topic: [EXTERNAL] [yocto] Duplicating a build configuration
Thread-Index: AdSNw53YCA5CAPy2SuOSrMg4MPfUcwAYY3Qg
Message-ID: <B4ED84A4DCF0D84FB25CE972E5CF346A5D185E2F05@KEMPMAIL2.woodward.com>
References: <CAGMdoFmDg1ia5K06BUqK-yYZJW7wqMNyo66hK_SkBm5PWDZWWw@mail.gmail.com>
In-Reply-To: <CAGMdoFmDg1ia5K06BUqK-yYZJW7wqMNyo66hK_SkBm5PWDZWWw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	suspectscore=0 malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
	adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.0.1-1810050000 definitions=main-1812070095
Subject: Re: [EXTERNAL] Duplicating a build configuration
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
X-List-Received-Date: Fri, 07 Dec 2018 12:16:56 -0000
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi Edward,
As a non yocto professional I will answer :-)
The answer is yes to all questions. So it is up to you. Copying .git direct=
ories will copy also the repos.
Build/tmp is a subject to deletion on my setup on a regular time basis. Sst=
ate-cache will be good to keep it but...it this will be nonworking machine =
you can delete it also...And don't forget to setup cron or another command =
scheduler to pull the changes you commit from working machine to the backup=
 one.
I hope this will help :-)
Cordially

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Edward Wingate
Sent: Friday, December 07, 2018 2:24 AM
To: yocto@yoctoproject.org
Subject: [EXTERNAL] [yocto] Duplicating a build configuration

I have configured Yocto to build a jethro distribution that I've been using=
 for the past 3 years.  I want to duplicate this configuration on another c=
omputer as a backup build machine.  I could just copy over the poky directo=
ry and all my layers, but I think this would copy over unnecessary files (b=
uild/tmp, old build artifacts?).

What would be the best way to make this backup computer be capable of gener=
ating the same distribution?  Some of my layers are on the jethro branch, a=
nd others on the master branch. Should I just configure from scratch (git c=
lone all the layers, set all the right branches)?  Or is there a better way=
?  Could/should I reuse the download mirror or the sstate cache on the orig=
inal machine?

Thanks for your help/suggestions.

Ed
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.o=
rg_listinfo_yocto&d=3DDwICAg&c=3Dy6L7g950KfMp92YmLM0QlMdXcRn6b-Cq4AApnSJOen=
E&r=3DkHtJrQGzfH1ZmfsNkJpYuH-jtNpv8yMDkqAmsRP99mc&m=3DozCxgLVznssI_3a4uv4Ak=
I3pZTvN0peKDZA7cFi1GeM&s=3DscAexL7SDJB057jqphUz9lfOMGs1mGAXG-8ktRwclqo&e=3D

***
The information in this email is confidential and intended solely for the i=
ndividual or entity to whom it is addressed.=C2=A0=C2=A0If you have receive=
d this email in error please notify the sender by return e-mail, delete thi=
s email, and refrain from any disclosure or action based on the information.
***

