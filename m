Return-Path: <Jate.Sujjavanich@myfuelmaster.com>
Received: from stspspam.syntech.org (exchsrvr.syntech-fuelmaster.com
	[199.44.250.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71C5FE005B4
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 08:36:44 -0700 (PDT)
Received: from pps.filterd (stspspam [127.0.0.1])
	by stspspam.syntech.org (8.14.5/8.14.5) with SMTP id r7TFV4m6022541
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 11:36:42 -0400
Received: from courier.syntech-fuelmaster.com (courier.syntech.org
	[172.16.10.30]) by stspspam.syntech.org with ESMTP id 1eh3b7rv0v-1
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 11:36:42 -0400
Received: from Courier.syntech.org ([::1]) by Courier.syntech.org ([::1]) with
	mapi; Thu, 29 Aug 2013 11:36:42 -0400
From: Jate Sujjavanich <Jate.Sujjavanich@myfuelmaster.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Date: Thu, 29 Aug 2013 11:36:41 -0400
Thread-Topic: yocto-bsp and kconf-check
Thread-Index: Ac6kzY8TaFjziI/oSXG0UkxtvXAVTA==
Message-ID: <6C2434209962DC46B88345CA85C334A201CAAD7035ED@Courier.syntech.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 0FF4FEBC0051F20FF50009
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=0 phishscore=0
	adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=7.0.1-1305240000 definitions=main-1308290076
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.10.8794, 1.0.431,
	0.0.0000
	definitions=2013-08-29_05:2013-08-29, 2013-08-29,
	1970-01-01 signatures=0
Subject: yocto-bsp and kconf-check
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
X-List-Received-Date: Thu, 29 Aug 2013 15:36:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

It appears that the yocto-bsp script generates a kernel configuration that =
creates some warnings during kern-tools' kconf_check. The {{machine}}.cfg f=
ile has many non-hardware options, therefore the script warns.

It seems like many of these should be in the standard kernel configuration.=
 Is this correct, and does the yocto-bsp data need to be updated?

- Jate

