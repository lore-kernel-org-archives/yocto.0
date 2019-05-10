Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3958FE00D6B; Thu,  9 May 2019 23:55:23 -0700 (PDT)
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
Received: from Mail1.woodward.com (mail1.woodward.com [216.17.208.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 790A5E00A7D
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 23:55:22 -0700 (PDT)
Received: from pps.filterd (CoCo-PMSGA1.woodward.com [127.0.0.1])
	by CoCo-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x4A6t5N9024169; Fri, 10 May 2019 01:55:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : date :
	subject : message-id : content-transfer-encoding : mime-version :
	content-type; s=20190114Woodward;
	bh=bOqIjD0H6jvWN0VjGS2R/TYU46o3q6/Wh5WR/e0i5Ug=;
	b=IM9TMmU6xTlSL8XZpS8Edeh0dOi+CqChr/BK1cWU5NpJAH733zduSi4wc26ymIQct6+C
	7SPPTAHPwZoi2cVmSVp/IlfWRgoPZOf3J6RuNnqAPnqzm6nugYWNhLbd9t6z+Lt9y9iI
	i+pW+pATvrtYHLRJIGeDlEnjZAJ9a8fV9nmJJMUtlHlbTMaoUuDU0vagkLXyOi4G9/JG
	0RknOKtstHiicknJXKgCRBR2NL3UDwAh/MoFutPJMly4SZZec1ca7y1hmtlb+N2Yd2lZ
	Wph7P4qwLtDLoKjkYJud6BExvtUOVYWPklpksN3AwhYjlT0VMSOMf9fcUqAZdTyuEkI8
	nw== 
Received: from rkfdhc1.woodward.com ([10.1.100.158])
	by CoCo-PMSGA1.woodward.com with ESMTP id 2sd4dpg03q-41
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=NOT);
	Fri, 10 May 2019 01:55:21 -0500
Received: from KempHC2.woodward.com (10.25.100.52) by RKFDHC1.woodward.com
	(10.1.100.158) with Microsoft SMTP Server (TLS) id 8.3.485.1;
	Fri, 10 May 2019 01:50:03 -0500
Received: from KempMail2.woodward.com ([169.254.2.201]) by
	KempHC2.woodward.com ([172.20.1.2]) with mapi; Fri, 10 May 2019 08:50:02
	+0200
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
Date: Fri, 10 May 2019 08:50:00 +0200
Thread-Topic: [yocto] Yocto image systemd debugging
Thread-Index: AdUG+/sYPTj6t8EfSNqQl54I2r/gAw==
Message-ID: <CE2E43470FE5444A811B580382FE5EDF55CB31764F@KEMPMAIL2.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=689 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1905100047
Subject: Yocto image systemd debugging
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
X-List-Received-Date: Fri, 10 May 2019 06:55:23 -0000
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Friday, May 10, 2019 8:00 AM JH wrote:
> How did you debug systemd running Yocto image on embedded system
> when services or cron jobs  failed to run?

What do you mean by debug?
In most cases 'systemctl status <service>', 'systemctl --failed', system-an=
alyze=20
and journalctl are efficient. Sometimes I set 'StandardOutput=3Djournal+con=
sole'=20
in service file to just see output during booting.

Best regards,
Lukasz Zemla

***
The information in this email is confidential and intended solely for the i=
ndividual or entity to whom it is addressed.=C2=A0=C2=A0If you have receive=
d this email in error please notify the sender by return e-mail, delete thi=
s email, and refrain from any disclosure or action based on the information.
***

