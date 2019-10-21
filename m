Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CA53E0097C; Mon, 21 Oct 2019 08:58:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [216.17.208.201 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1262 seconds by postgrey-1.32 at yocto-www;
	Mon, 21 Oct 2019 08:58:11 PDT
Received: from Mail1.woodward.com (mail1.woodward.com [216.17.208.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62613E00874
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 08:58:11 -0700 (PDT)
Received: from pps.filterd (CoCo-PMSGA1.woodward.com [127.0.0.1])
	by CoCo-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x9LFaqor000818
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 10:37:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : subject
	: date : message-id : content-transfer-encoding : mime-version :
	content-type; s=20190114Woodward;
	bh=g0eWn/0GQz3+8eHIFoVachQe4eiO9Z55sNMkJnq79rc=;
	b=G9jR5+7toN9KuSKPGw8kJpdwu/bQ6H50ihELX/KPWjqfg/AEjnz/EeeSTTEa+AWae1xK
	AfBpD+RtSUpjSZ1hz55ZmLPWaIYtbIJ0Ijbu9XtqR6va67B/6LxCTUn3zOg2A3p7uv4R
	6TL1Tij+Vs0OvNNlNt/udaVtTn53O0ofV90f+ZJja3sVVg3rhJvapO6uUzap4yAnIb/P
	/u/9x1e85Ky5tKgL7VpfU1mkn+Cyw2eCIYQSLKHEZTxRum+pp54VTsVRYQldYcEd9l8r
	pvZ1XhnM6fvXh63fnG6xqHAHryrOQGjf+PAW0Yus6RGC3w3+Sz3mI+FxOvIDj+4HVhxY
	gA== 
Received: from rkfdhc1.woodward.com ([10.1.100.158])
	by CoCo-PMSGA1.woodward.com with ESMTP id 2vsfb3814k-4
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 10:37:08 -0500
Received: from Kemp-ExMb1.woodward.com (10.25.100.72) by RKFDHC1.woodward.com
	(10.1.100.158) with Microsoft SMTP Server (TLS) id 8.3.485.1;
	Mon, 21 Oct 2019 10:25:56 -0500
Received: from Kemp-ExMb1.woodward.com (10.25.100.72) by
	Kemp-ExMb1.woodward.com (10.25.100.72) with Microsoft SMTP Server (TLS)
	id 15.0.1395.4; Mon, 21 Oct 2019 17:25:55 +0200
Received: from Kemp-ExMb1.woodward.com ([10.25.100.72]) by
	Kemp-ExMb1.woodward.com ([10.25.100.72]) with mapi id 15.00.1395.000;
	Mon, 21 Oct 2019 17:25:55 +0200
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Useradd: crypted passwords longer than 8 characters
Thread-Index: AdWII8O83lIK/EaERgCISMV+Kd5MlA==
Date: Mon, 21 Oct 2019 15:25:55 +0000
Message-ID: <1a68270af44d45f98e7a1c6d80a1f783@Kemp-ExMb1.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.4.224.25]
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=670 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1908290000 definitions=main-1910210147
Subject: Useradd: crypted passwords longer than 8 characters
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
X-List-Received-Date: Mon, 21 Oct 2019 15:58:12 -0000
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

What is the best way in Yocto (warrior) to add crypted password to /etc/sha=
dow during buildtime?

Using useradd.bbclass in a standard way we may add only passwords <=3D 8 ch=
aracters.
"-p" parameterr followed by the output of "openssl passwd -crypt pAsswOrd" =
works fine.

I thought that class may be cheated by providing after "-p" string returned=
 by "openssl passwd -6 verylongpAsswOrd", but it does not work: the passwor=
d in /etc/shadow file is truncated:

myuser:/D163GofCVEpMgZ.w2Ro3Z.b5S8XT1:18190:0:99999:7:::

Any suggestions?

Thank you in advance.
Lukasz Zemla

***
The information in this email is confidential and intended solely for the i=
ndividual or entity to whom it is addressed.=C2=A0=C2=A0If you have receive=
d this email in error please notify the sender by return e-mail, delete thi=
s email, and refrain from any disclosure or action based on the information.
***

