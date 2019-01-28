Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E00DEE00CE0; Mon, 28 Jan 2019 11:23:14 -0800 (PST)
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
Received: from Mail4.woodward.com (mail4.woodward.com [204.27.169.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DCCAE00BD5
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 11:23:14 -0800 (PST)
Received: from pps.filterd (COIL-PMSGA1.woodward.com [127.0.0.1])
	by COIL-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x0SJLocv022954
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 13:23:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : date :
	subject : message-id : references : in-reply-to : content-type :
	content-transfer-encoding : mime-version; s=20190114Woodward;
	bh=SUZczYkHRPjDyU3Vf2OqqnDP726ycVHu1rmGX9E3Acc=;
	b=A8+uIjABZcmuK1/P2PYOku3INtGCrTxAtZqofc3zbP/tXLMnZph7PuxA//W5oNFkuKI8
	XjGKwseTmkG2LVahGDPzXHhFg8opxNgWyVZveaeGaaweIXoGDZxjJIw+/bL75bkxTD01
	TN3ZTB0CmeoaMcuRwVwGd32XEqPp3G7Oz5QJa34OcVm6WYO5Y/BKoMwvjRE39+MB5fL1
	v8ZuVL0fK4zrmNsVT5dEhRBqtLH5AsbIowd5Bm5hr0jZDPo8wGwFk/BKGkvWR/FlcGGr
	V32jegGgJfg+3HLhwFiZ1sm269R8dv1HCKxIZlDhl/2we2alf6Kg99AMb8PrBUBRAwvL
	eQ== 
Received: from coil-exmb4.woodward.com ([10.51.100.67])
	by COIL-PMSGA1.woodward.com with ESMTP id 2q8mn63g1e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 13:23:13 -0600
Received: from KempHC1.woodward.com (10.25.100.51) by COIL-ExMb4.woodward.com
	(10.51.100.67) with Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Mon, 28 Jan 2019 13:23:12 -0600
Received: from KempMail2.woodward.com ([169.254.2.151]) by
	KempHC1.woodward.com ([172.20.1.103]) with mapi;
	Mon, 28 Jan 2019 20:23:11 +0100
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 28 Jan 2019 20:23:09 +0100
Thread-Topic: [EXTERNAL] [yocto] SRC URI checksums
Thread-Index: AdS3NX+8TSwHWHpNS7WnN++0f5VGGAACQTsA
Message-ID: <CE2E43470FE5444A811B580382FE5EDF5247BAAE08@KEMPMAIL2.woodward.com>
References: <CAGMdoFm=08uPEFYp+wXOvzzfwbZHPom1pU3ASDmDtVQ9vGsXvg@mail.gmail.com>
In-Reply-To: <CAGMdoFm=08uPEFYp+wXOvzzfwbZHPom1pU3ASDmDtVQ9vGsXvg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=958 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1901280143
Subject: Re: [EXTERNAL] SRC URI checksums
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
X-List-Received-Date: Mon, 28 Jan 2019 19:23:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> I have a recipe that has a SRC_URI retrieving from a mercurial repo:
> SRC_URI =3D "hg://server/project;module=3Dname;rev=3Dtip"
> SRC_URI[md5sum] =3D "xxx"
> SRC_URI[sha256sum] =3D "yyy"
>=20
> I changed the SRC_URL to retreive from a specific revision instead of tip=
:
> SRC_URI =3D "hg://server/project;module=3Dname;rev=3D1234567890"
>=20
> I went ahead and did a bitbake, expecting it to complain about the SRC_UR=
I
> checksums not matching, and I would go ahead and update the checksums
> from the error output.
>=20
> But it succeeded, building with the correct revision.  I thought the SRC_=
URI
> checksums had to be updated when the SRC_URI changes?

Checksums were introduced to ensure data consistency. They are not checked =
if SRC_URI points to repository (svn, git, hg..., it is assumed that  repos=
itory provides its own mechanism to ensure data correctness).

Best regards,
Lukasz

