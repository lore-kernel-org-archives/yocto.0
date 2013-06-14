Return-Path: <Jate.Sujjavanich@myfuelmaster.com>
Received: from stspspam.syntech.org (exchsrvr.syntech-fuelmaster.com
	[199.44.250.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1D44E013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 15:53:53 -0700 (PDT)
Received: from pps.filterd (stspspam [127.0.0.1])
	by stspspam.syntech.org (8.14.5/8.14.5) with SMTP id r5EMrH6L009299
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 18:53:52 -0400
Received: from courier.syntech-fuelmaster.com (courier.syntech.org
	[172.16.10.30]) by stspspam.syntech.org with ESMTP id 1cykffrjy2-1
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 18:53:52 -0400
Received: from Courier.syntech.org ([::1]) by Courier.syntech.org ([::1]) with
	mapi; Fri, 14 Jun 2013 18:53:52 -0400
From: Jate Sujjavanich <Jate.Sujjavanich@myfuelmaster.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 14 Jun 2013 18:53:51 -0400
Thread-Topic: sstate-cache and local files causing invalidation
Thread-Index: AQHOaVIJ1L3TWAcBB02Q4O/Hrv3ooA==
Message-ID: <6C2434209962DC46B88345CA85C334A201C9F4A6EBE3@Courier.syntech.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=0 phishscore=0
	adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=7.0.1-1305240000 definitions=main-1306140234
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.10.8794, 1.0.431,
	0.0.0000
	definitions=2013-06-14_07:2013-06-14, 2013-06-14,
	1970-01-01 signatures=0
Subject: sstate-cache and local files causing invalidation
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
X-List-Received-Date: Fri, 14 Jun 2013 22:53:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am attempting to set up a shared sstate-cache directory. I added a SSTATE=
_MIRROS So far, it seems that recipes with local files in the SRC_URI are t=
riggering a rebuild. The filename/checksum is stored with the filename as t=
he full local path. Running bitbake-sigdiff on the fetch stamps yields simi=
lar results:

${POKY_CACHE}/poky/meta/recipe-devtools.../a.patch ...removed
${POKY_BUILD}/poky/meta/recipe-devtools.../a.patch ...added

Forgive that I don't have the exact output in front of me right now.

I believe it needs to store the path local to the recipe when saving the fi=
lename and checksum. Am I doing this right, and is this a bug?

