Return-Path: <Jate.Sujjavanich@myfuelmaster.com>
Received: from stspspam.syntech.org (exchsrvr.syntech-fuelmaster.com
	[199.44.250.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5DF9E016D7
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 15:35:47 -0700 (PDT)
Received: from pps.filterd (stspspam [127.0.0.1])
	by stspspam.syntech.org (8.14.5/8.14.5) with SMTP id rA1MZkSt009025
	for <yocto@yoctoproject.org>; Fri, 1 Nov 2013 18:35:46 -0400
Received: from courier.syntech-fuelmaster.com (courier.syntech.org
	[172.16.10.30]) by stspspam.syntech.org with ESMTP id 1fhan9rpj8-1
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2013 18:35:46 -0400
Received: from Courier.syntech.org ([::1]) by Courier.syntech.org ([::1]) with
	mapi; Fri, 1 Nov 2013 18:35:55 -0400
From: Jate Sujjavanich <Jate.Sujjavanich@myfuelmaster.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Date: Fri, 1 Nov 2013 18:35:55 -0400
Thread-Topic: xserver-xorg setuid bit
Thread-Index: Ac7XUrSl5DpW7MR/RIeZAZcBx3GnnQ==
Message-ID: <6C2434209962DC46B88345CA85C334A201CABA955A1F@Courier.syntech.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 180C862D00598C180C877A
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=0 phishscore=0
	adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=7.0.1-1305240000 definitions=main-1311010181
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.10.8794, 1.0.431,
	0.0.0000
	definitions=2013-11-01_05:2013-11-01, 2013-11-01,
	1970-01-01 signatures=0
Subject: xserver-xorg setuid bit
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
X-List-Received-Date: Fri, 01 Nov 2013 22:35:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have been getting a permissions error when starting X server as a non-roo=
t user. The setuid bit is not set on /usr/bin/Xorg, so I have added a recip=
es-graphics/xserver-xorg_1.14.0.bbappend file that contains the following:


# Setuid on Xorg server. Allows multiple users to run X
do_install_append () {
	chmod u+s ${D}${bindir}/Xorg
}


Perhaps this need to go upstream?


- Jate S.

