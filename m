Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF307E00D08; Fri, 18 Jan 2019 06:35:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 566 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Jan 2019 06:35:08 PST
Received: from Mail1.woodward.com (mail1.woodward.com [216.17.208.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70CB3E00CED
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 06:35:08 -0800 (PST)
Received: from pps.filterd (CoCo-PMSGA1.woodward.com [127.0.0.1])
	by CoCo-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x0IEMANW001307
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 08:25:42 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : date :
	subject : message-id : content-type : content-transfer-encoding :
	mime-version; s=20190114Woodward;
	bh=V3wleaCEulczQH+DumfzuOVKhwUtRaUNECwPCdftUAg=;
	b=298Esl1NzKBAqBZUcNgIDDzxjn0ois7Ibp9GOrReDAxNt/is2LN6mmv4G8qWDXrQRE9j
	d7wXWL5kg5CAQHdghSGjO1PDWItWc6QHbxnmw8DL1zsQy3h5YoKL+I4GYUU2eiqkxzT6
	1cdhT8orFnyzRuUIupWhnWFADsH4ChRW1PT9cERuwagmpZKOsPTRntJZ+Katpx/1Y63r
	d64g2gekJfYXb99ZuPvQzeoeShIMem0BhTWrtw8Sa6br5HdCpRcKjn22+GAk6/DhefZL
	KIKgP2j7MEzSdunTsCPAQuns3Va5oK4SpIIoRrdY3V7VhTyc/XYMUBixFd5VtSuvJ8Gy
	PA== 
Received: from coil-exmb3.woodward.com ([10.51.100.66])
	by CoCo-PMSGA1.woodward.com with ESMTP id 2q129asrra-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 08:25:41 -0600
Received: from KempHC2.woodward.com (10.25.100.52) by COIL-ExMb3.woodward.com
	(10.51.100.66) with Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Fri, 18 Jan 2019 08:25:39 -0600
Received: from KempMail2.woodward.com ([169.254.2.217]) by
	KempHC2.woodward.com ([172.20.1.2]) with mapi; Fri, 18 Jan 2019 15:25:38
	+0100
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Date: Fri, 18 Jan 2019 15:25:36 +0100
Thread-Topic: [yocto] Fetch from git every bitbake
Thread-Index: AdSvOZLDGI2XkFw5Q52EkuLuquHH8A==
Message-ID: <CE2E43470FE5444A811B580382FE5EDF5246677201@KEMPMAIL2.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=435 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1901180104
Subject: Re: Fetch from git every bitbake
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
X-List-Received-Date: Fri, 18 Jan 2019 14:35:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> I try AUTOREV in the recipe app_1.0.bb


> SRCREV :=3D "${AUTOREV}"

> But it doesn't work.

> Which other variables could inhibit AUTOREV?

Could you share complete recipe, please?
I would give it a try:

SRCREV =3D "${AUTOREV}"

Best regards,
Lukasz Zemla


