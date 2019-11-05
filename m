Return-Path: <christophe.priouzeau@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3752CE00DF1; Tue,  5 Nov 2019 06:16:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [62.209.51.94 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1890 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 Nov 2019 06:16:22 PST
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
	[62.209.51.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E66B0E0083C
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2019 06:16:21 -0800 (PST)
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
	xA5Dg2Qg007275
	for <yocto@yoctoproject.org>; Tue, 5 Nov 2019 14:44:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
	h=from : to : cc : subject
	: date : message-id : content-type : content-transfer-encoding :
	mime-version; s=STMicroelectronics;
	bh=NZiOHX/qXYszsXXwPnPFuF8MXCLqSWWHES0lXk9NdfA=;
	b=rh3yOzM2pdybBD7QQxcyVl2jf/DYTybjmEeXta6sg9l1PLCGP4S6bEn2CpMiKHP12KKX
	d3QE9D2D56InsDSG12tQgSgyQjo9kPyLI6x8cdVaCs2dF8sW2kkyNsPrNf7fStUzR8NP
	kIojbzaneO240MUmYYNbkloue8QpExdOYaUFjBcjr9OT4fizuKwpmiBTmBTQVXzeEX4w
	xUP1j4MhTn+k0tiLWZ+08OQsQIk5wFhJ2PsjGW9/2y1Ov0N4oErJTVNyd1UhUyNlKka4
	kPkkLPbTsZStwNgDENQ0jWapsRov+AoI3/Tx/1jffB7RGniYz5F1Zt1F9HIYt6Wjd2gQ
	IQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 2w10f1fk3y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 05 Nov 2019 14:44:51 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9E72A100039
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2019 14:44:50 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 924162BEC6B
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2019 14:44:50 +0100 (CET)
Received: from SFHDAG6NODE2.st.com (10.75.127.17) by SFHDAG6NODE1.st.com
	(10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
	Tue, 5 Nov 2019 14:44:50 +0100
Received: from SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6]) by
	SFHDAG6NODE2.st.com ([fe80::a56f:c186:bab7:13d6%20]) with mapi id
	15.00.1347.000; Tue, 5 Nov 2019 14:44:50 +0100
From: Christophe PRIOUZEAU <christophe.priouzeau@st.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-security][PATCH] cryptsetup tpm incubator: fix installed
	vs shipped
Thread-Index: AQHVk98xYHjzRNWQ9k2yFADgWoBnJw==
Date: Tue, 5 Nov 2019 13:44:50 +0000
Message-ID: <20191105134448.24403-1-christophe.priouzeau@st.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
	definitions=2019-11-05_04:2019-11-05,2019-11-05 signatures=0
Cc: Christophe PRIOUZEAU <christophe.priouzeau@st.com>
Subject: [meta-security][PATCH] cryptsetup tpm incubator: fix installed vs shipped
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
X-List-Received-Date: Tue, 05 Nov 2019 14:16:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Fix [installed-vs-shipped] by adding /usr/lib/tmpfiles.d
on FILES.

Signed-off-by: Christophe Priouzeau <christophe.priouzeau@st.com>
---
 .../cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-=
incubator_0.9.9.bb b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptse=
tup-tpm-incubator_0.9.9.bb
index 8385c94..b706d15 100644
--- a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubat=
or_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubat=
or_0.9.9.bb
@@ -32,6 +32,7 @@ RRECOMMENDS_${PN} =3D "kernel-module-aes-generic \
                      kernel-module-xts \
                     "
=20
+FILES_${PN} +=3D "${libdir}/tmpfiles.d"
 RDEPENDS_${PN} +=3D "lvm2 libdevmapper"
 RRECOMMENDS_${PN} +=3D "lvm2-udevrules"
=20
--=20
2.17.1

