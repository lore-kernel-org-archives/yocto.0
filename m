Return-Path: <prvs=0559451169=alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74FB8E00E34; Sun, 21 Jan 2018 04:13:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 325 seconds by postgrey-1.32 at yocto-www;
	Sun, 21 Jan 2018 04:13:25 PST
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F7F8E00D99
	for <yocto@yoctoproject.org>; Sun, 21 Jan 2018 04:13:25 -0800 (PST)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w0LC6Cev004516; Sun, 21 Jan 2018 06:07:58 -0600
Received: from nam03-dm3-obe.outbound.protection.outlook.com
	(mail-dm3nam03lp0023.outbound.protection.outlook.com [207.46.163.23])
	by mx0a-00010702.pphosted.com with ESMTP id 2fm2p1j322-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Sun, 21 Jan 2018 06:07:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=50Q5hkVRa2asSWyI3HYiJ++Qnsiln2zoK2dikF1c344=;
	b=CFbJxwqMSAS3K4TtaybJ4xUEwP5odpXByoTF/dkj0dG+5e95aeSJIjT9I1+/7HAf8gBpa3kdg3RL7z0LXsTbM8qu9EM0KQzJk7eUNOKWtnZOu4QFff3aX9w6H9NR3D3hWz2o8+dM2U6LyDuQF6W4vm4t6p95dwvxywMjzOxjrI8=
Received: from DM2PR0401MB1326.namprd04.prod.outlook.com (10.160.220.13) by
	DM2PR0401MB1455.namprd04.prod.outlook.com (10.160.222.23) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.407.7; Sun, 21 Jan 2018 12:07:55 +0000
Received: from DM2PR0401MB1326.namprd04.prod.outlook.com
	([fe80::35f7:b3f2:bffe:73a8]) by
	DM2PR0401MB1326.namprd04.prod.outlook.com
	([fe80::35f7:b3f2:bffe:73a8%17]) with mapi id 15.20.0407.015;
	Sun, 21 Jan 2018 12:07:55 +0000
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>
Thread-Topic: [opkg-devel] [opkg-utils PATCH] update-alternatives: fix the sed
	pattern in remove_alt
Thread-Index: AQHTkNHxxFBSFfuU+0SSaPOzjLSP+aN+Py2M
Date: Sun, 21 Jan 2018 12:07:55 +0000
Message-ID: <DM2PR0401MB1326A38ED0631F146233C36286ED0@DM2PR0401MB1326.namprd04.prod.outlook.com>
References: <20180119025956.851-1-jackie.huang@windriver.com>
In-Reply-To: <20180119025956.851-1-jackie.huang@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [130.164.62.70]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM2PR0401MB1455;
	6:9saqCF1n+go6Q98fgmjJW/UalNVL85ky8+Ma2EBeEYNmCM381uhQFspqL/uii7YAlPVaEsskCSYRqcPUydQi7y/opQv7v8gUQGx5VJpoUQXueALNuiqbPe3KdKy7imEACDJdd/qrSz+869yo5I5rknvDK1XS5ceR9MlGaWPFqhIvaIxzIvOEJ4wZmOKy+p9qROn4re3jMujVzGZtVh0KqvkEZYh1p33NlZeUeEKsgtGYw7hdmw2R/qhwR+vYGbLwarsI8fhEtKmv2LEvIbjgS/HrsWipEIAGVjbk3mPzRR8R8qlEPj17gHan1cYUiTHr+HAtjujqIofLM2wjuHskNuQXlaOldjuNA/e/wfMy4+bwC3CfoCIrMet86roI2qFi;
	5:t0YN6xJEyLmkEzD+Os+Mp/E0D8XFw/bGEviVJLemNVwIJLwoLpr2EweUkjnFTXlS0RYPZ91tIOz3vkRZWgAXbCCY9MVyFZORZw8kKe4p6QWantWrjey+25MR1Kh1CpYX3RHfM43WS9R2YVUSq8oAXFqy6wcaxrQxLarwWt1QWB4=;
	24:D9azri8hANQwtqGn1yipbKWUTqp9P6JzBfyhdoxO+RZogqZqgSPY/IafgZ65y5mSLkIZVcBkRXw3hg2IhlH+aYr7lgsFLfR/T+vpgy4eY3s=;
	7:R1UYLwIDShoICn5M5AVQFGkRYIXrsjjuczpE/WtlblBr+NMpQCZLJhBU4zAw5tRHI8ukmKzCfdUCj5GQWWQH/grhbKxVJnABDI065Xbp/s36f7RXyPBqG8Z5fXYPSDgdB0FtS9AzsRN4pT9QzwRiP4J6RZcUN3ug5YSCJ/HgqiPahrjWP/BXCezLSi5lAdiUxT1DdSh3pV2W8H6QXPO20PHXyV17PsriF2jBt/NCl1o0d91nrp6crOkg7rT00uIN
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 4edcbcc0-8af1-4243-d2cc-08d560c79ab0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:DM2PR0401MB1455; 
x-ms-traffictypediagnostic: DM2PR0401MB1455:
x-microsoft-antispam-prvs: <DM2PR0401MB14554BA40513800F8952998486ED0@DM2PR0401MB1455.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(215639381216008)(10436049006162)(211936372134217); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(8121501046)(5005006)(3231023)(2400081)(944501161)(3002001)(93006095)(93001095)(10201501046)(6041288)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123564045)(20161123560045)(6072148)(201708071742011);
	SRVR:DM2PR0401MB1455; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:DM2PR0401MB1455; 
x-forefront-prvs: 0559FB9674
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(346002)(376002)(396003)(366004)(39850400004)(39380400002)(189003)(199004)(25786009)(3846002)(97736004)(105586002)(6306002)(9686003)(81166006)(81156014)(966005)(8676002)(6116002)(2900100001)(110136005)(478600001)(6436002)(15650500001)(86362001)(8936002)(53936002)(2906002)(316002)(305945005)(74316002)(575784001)(229853002)(66066001)(26005)(2501003)(6246003)(33656002)(68736007)(7736002)(53546011)(2950100002)(14454004)(102836004)(3660700001)(7696005)(6506007)(3280700002)(106356001)(76176011)(5660300001)(5250100002)(55016002)(99286004)(59450400001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0401MB1455;
	H:DM2PR0401MB1326.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: wFIk2KWCFvwJp0GQBeqnsOnLgJ9KHVbIGiPgeX5wzY6/Mx/sAVDYL8r4P5JLwJ/CoN87yGTMzJttl1i16ef5mw==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4edcbcc0-8af1-4243-d2cc-08d560c79ab0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2018 12:07:55.1424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0401MB1455
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2018-01-21_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=30 reason=mlx
	scancount=1 engine=8.0.1-1711220000 definitions=main-1801210178
Subject: Re: [opkg-devel] [opkg-utils PATCH] update-alternatives: fix the sed pattern in remove_alt
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
X-List-Received-Date: Sun, 21 Jan 2018 12:13:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

merged

________________________________________
From: opkg-devel@googlegroups.com <opkg-devel@googlegroups.com> on behalf o=
f jackie.huang@windriver.com <jackie.huang@windriver.com>
Sent: Thursday, January 18, 2018 8:59 PM
To: yocto@yoctoproject.org; opkg-devel@googlegroups.com
Subject: [opkg-devel] [opkg-utils PATCH] update-alternatives: fix the sed p=
attern in remove_alt

From: Jackie Huang <jackie.huang@windriver.com>

'\>' is to matches the end of a word, but the executable is
not always a 'word', e.g. /usr/lib64/busybox/usr/bin/[

then such alternatives can not be removed.

So change to use '\s' in the pattern since the following
character of the $path is whitespace.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 update-alternatives | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/update-alternatives b/update-alternatives
index ffad853..ce7d66c 100644
--- a/update-alternatives
+++ b/update-alternatives
@@ -80,7 +80,7 @@ remove_alt() {
        [ ! -f $ad/$name ] && return 0

        path=3D`echo $path | protect_slashes | protect_special_character`
-       sed -ne "/^$path\>.*/!p" $ad/$name > $ad/$name.new
+       sed -ne "/^$path\s.*/!p" $ad/$name > $ad/$name.new
        mv $ad/$name.new $ad/$name
 }

--
2.7.4

--
You received this message because you are subscribed to the Google Groups "=
opkg-devel" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to opkg-devel+unsubscribe@googlegroups.com.
For more options, visit https://urldefense.proofpoint.com/v2/url?u=3Dhttps-=
3A__groups.google.com_d_optout&d=3DDwIBaQ&c=3DI_0YwoKy7z5LMTVdyO6YCiE2uzI1j=
jZZuIPelcSjixA&r=3DwNcrL2akRn6jfxhHaKavUrJB_C9JAMXtynjLd8ZzgXQ&m=3DyP6B3nYh=
5DMMS7JjJioLfn3jVyH-4GTPElZp4VeNx-Q&s=3DzO7LsP7fVT0yerk7aCY5q3_lclpvVYcHsT8=
gWG3B29g&e=3D.

