Return-Path: <Jate.Sujjavanich@myfuelmaster.com>
Received: from stspspam.syntech.org (exchsrvr.syntech-fuelmaster.com
	[199.44.250.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23313E015D6
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 11:48:25 -0700 (PDT)
Received: from pps.filterd (stspspam [127.0.0.1])
	by stspspam.syntech.org (8.14.5/8.14.5) with SMTP id r8QIlNV6031194
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 14:48:24 -0400
Received: from courier.syntech-fuelmaster.com (courier.syntech.org
	[172.16.10.30]) by stspspam.syntech.org with ESMTP id 1euk2cfbu0-1
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 14:48:24 -0400
Received: from Courier.syntech.org ([::1]) by Courier.syntech.org ([::1]) with
	mapi; Thu, 26 Sep 2013 14:48:24 -0400
From: Jate Sujjavanich <Jate.Sujjavanich@myfuelmaster.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Date: Thu, 26 Sep 2013 14:48:23 -0400
Thread-Topic: Yocto Bitbake Commander New Project Bug
Thread-Index: Ac666N4fx6mXRgzkQUqpM4cJDzRrYw==
Message-ID: <6C2434209962DC46B88345CA85C334A201CAB0AB2006@Courier.syntech.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 1216186E00554E121619BB
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=0 phishscore=0
	adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=7.0.1-1305240000 definitions=main-1309260104
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.10.8794, 1.0.431,
	0.0.0000
	definitions=2013-09-26_08:2013-09-26, 2013-09-26,
	1970-01-01 signatures=0
Subject: Yocto Bitbake Commander New Project Bug
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
X-List-Received-Date: Thu, 26 Sep 2013 18:48:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Creating a Yocto Bitbake Commander project using an existing poky directory=
 is a little buggy. I usually do this to avoid downloading poky from the In=
ternet.

The plugin wizard implies that you can use a poky directory in your workspa=
ce with its clone from yocto repository option.

Attempting to use a cloned poky in workspace/poky results in the wizard rep=
orting that ".../workspace/poky overlaps the location of another project: p=
oky." Changing the name of the project merely results in the error "Directo=
ry ...workspace/poky2 does not exist, please select git clone".

The workaround is to open a separate dummy workspace, and then run the wiza=
rd with Project Location pointing to your desired Project Location. You wil=
l then be able to hit Finish. Eclipse will create the .metadata and .eclips=
e-data files.

You can then switch to your desired workspace and use "Import an Existing P=
roject."

Is this a bug?


-Jate S.

