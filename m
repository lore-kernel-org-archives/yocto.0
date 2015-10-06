Return-Path: <ian.ray@ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A9AAE006F1; Mon,  5 Oct 2015 22:39:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [67.231.157.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx0b-00176a03.pphosted.com (mx0b-00176a03.pphosted.com
	[67.231.157.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5100E0050E
	for <yocto@yoctoproject.org>; Mon,  5 Oct 2015 22:39:47 -0700 (PDT)
Received: from pps.filterd (m0048204.ppops.net [127.0.0.1])
	by m0048204.ppops.net-00176a03. (8.15.0.59/8.15.0.59) with SMTP id
	t965ZkKw012021
	for <yocto@yoctoproject.org>; Tue, 6 Oct 2015 01:39:47 -0400
Received: from alpmlip13.e2k.ad.ge.com ([12.43.191.1])
	by m0048204.ppops.net-00176a03. with ESMTP id 1xa83tanwc-17
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 06 Oct 2015 01:39:47 -0400
Received: from unknown (HELO CINMBHT03.e2k.ad.ge.com) ([3.159.212.196])
	by alpmlip13.e2k.ad.ge.com with ESMTP/TLS/AES128-SHA;
	06 Oct 2015 01:39:40 -0400
Received: from BUDURLND07.e2k.ad.ge.com (3.159.54.57) by
	CINMBHT03.e2k.ad.ge.com (3.159.212.196) with Microsoft SMTP Server
	(TLS) id 14.3.224.2; Tue, 6 Oct 2015 01:39:40 -0400
Received: from BUDURBPA11.e2k.ad.ge.com ([169.254.5.78]) by
	BUDURLND07.e2k.ad.ge.com ([169.254.9.181]) with mapi id 14.03.0224.002;
	Tue, 6 Oct 2015 07:39:39 +0200
From: "Ray, Ian (GE Healthcare)" <ian.ray@ge.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto][yocto-docs][PATCH 0/1] new PTEST_RUN_SCRIPT_PATH
Thread-Index: AQHQ8hiBTZDba1sFwkuuutV6MbFkA55eDofw
Date: Tue, 6 Oct 2015 05:39:38 +0000
Message-ID: <30E719D66AEA914CBB7DAB303B1C722D174873@BUDURBPA11.e2k.ad.ge.com>
References: <1442583738-21852-1-git-send-email-ian.ray@ge.com>
In-Reply-To: <1442583738-21852-1-git-send-email-ian.ray@ge.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [3.159.54.223]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-10-06_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=0
	malwarescore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam
	adjust=0 reason=mlx scancount=1 engine=8.0.1-1507310000
	definitions=main-1510060097
Subject: Re: [yocto-docs][PATCH 0/1] new PTEST_RUN_SCRIPT_PATH
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
X-List-Received-Date: Tue, 06 Oct 2015 05:39:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> New PTEST_RUN_SCRIPT_PATH allows recipes to override the default
> location of the run-ptest script.

Please disregard, open-embedded was patched in a simpler way.

Ian=20


