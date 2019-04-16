Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4223E00D1E; Tue, 16 Apr 2019 05:47:35 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EB0DE00D08
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2019 05:47:34 -0700 (PDT)
Received: from pps.filterd (COIL-PMSGA1.woodward.com [127.0.0.1])
	by COIL-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x3GCgZQ3029806; Tue, 16 Apr 2019 07:47:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : date :
	subject : message-id : content-transfer-encoding : mime-version :
	content-type; s=20190114Woodward;
	bh=dmm2BcR+lck7g6eYpT5wIGeGnHKP4kFjcTP4hNzRZ+I=;
	b=1McBUr8TbySWplyjruxGV+fBoCk9GSSc7o4aprp527yuMgaDGVQDoZqq32b2ds+rGC5Q
	zC5Vh89sIv7YX4UfDeD3zD4FXGAjvjN0BbT8JajoPVO39i+29Zv5nn3qi2vOBt+ccS9w
	h3QWAGKaQRZaBoub+4qD2luWqyR35GhK9ShXjAJm5hwv/nF91USeoYMMGQ+DH9vLuAWK
	oT7ufw0iV83K4YD79BE3LnhmEPfcO+cWhyTvMHF2pg0+4ov6lRv/GCokmJmGgw4I75ie
	A9r58lC4UGL+sWp9NLOQvKO5TpWrQlG3E2/FLF+w5hj4zCxWAUE/T5ajPy5PezmKqiVr
	mA== 
Received: from rkfdhc2.woodward.com ([10.1.100.159])
	by COIL-PMSGA1.woodward.com with ESMTP id 2rw9wc8hk8-5
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=NOT);
	Tue, 16 Apr 2019 07:47:33 -0500
Received: from KempHC2.woodward.com (10.25.100.52) by rkfdhc2.woodward.com
	(10.1.100.159) with Microsoft SMTP Server (TLS) id 8.3.485.1;
	Tue, 16 Apr 2019 07:47:29 -0500
Received: from KempMail2.woodward.com ([169.254.2.253]) by
	KempHC2.woodward.com ([172.20.1.2]) with mapi; Tue, 16 Apr 2019 14:47:27
	+0200
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
Date: Tue, 16 Apr 2019 14:47:25 +0200
Thread-Topic: [yocto] Failed to execute GCC
Thread-Index: AdT0UorDrhJtnnWqQDKD+eNxYAE+wg==
Message-ID: <CE2E43470FE5444A811B580382FE5EDF55C9AEDBE2@KEMPMAIL2.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=821 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1904160086
Subject: Re: Failed to execute GCC
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
X-List-Received-Date: Tue, 16 Apr 2019 12:47:35 -0000
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Tuesday, April 16, 2019 3:10 AM JH wrote:

> I am building an image on Ubuntu 18.04 host, I got following error:

> unable to execute 'x86_64-linux-gnu-gcc': No such file or directory  | er=
ror: command 'x86_64-linux-gnu-gcc' failed with exit status 1

> I can see the x86_64-linux-gnu-gcc is available, but why it failed to fin=
d it?

> $ which x86_64-linux-gnu-gcc
> /usr/bin/x86_64-linux-gnu-gcc

Could you provide more details, please? Which Yocto version do you use? Cou=
ld you present some more context or logs?
What does following command does?
file /usr/bin/x86_64-linux-gnu-gcc

Best regards,
Lukasz Zemla

***
The information in this email is confidential and intended solely for the i=
ndividual or entity to whom it is addressed.=C2=A0=C2=A0If you have receive=
d this email in error please notify the sender by return e-mail, delete thi=
s email, and refrain from any disclosure or action based on the information.
***

