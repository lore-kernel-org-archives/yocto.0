Return-Path: <prvs=15709ac06b=alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CAF3E00DE2; Thu,  1 Feb 2018 09:58:27 -0800 (PST)
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
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4612FE00D1C
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 09:58:25 -0800 (PST)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w11HusKa003597; Thu, 1 Feb 2018 11:58:24 -0600
Received: from nam01-bn3-obe.outbound.protection.outlook.com
	(mail-bn3nam01lp0184.outbound.protection.outlook.com
	[216.32.180.184])
	by mx0a-00010702.pphosted.com with ESMTP id 2fv2t6j1e8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Thu, 01 Feb 2018 11:58:24 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=GqGIqnBNYp7b+F3MSZmYmz/piFgbq6W+LzC5/0w1AK8=;
	b=k60+mNIg8IxldWK6H7IauMGj19e6HALTpLIZdKGNyGeLTohc8Nwp8+BUqzqGrzfP4l0+vvxEMiaJocKMf3kzLqeR975ysI4xXjpUuF6V845wkjq2PKwb2VwqcoeZ2UwCiX803XJT1YDd9Blk9ubGdYgrjHGWg4Vz4tZdXAMG54k=
Received: from CY1PR0401MB1324.namprd04.prod.outlook.com (10.161.213.16) by
	CY1PR0401MB1372.namprd04.prod.outlook.com (10.161.213.28) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.444.14; Thu, 1 Feb 2018 17:58:21 +0000
Received: from CY1PR0401MB1324.namprd04.prod.outlook.com ([10.161.213.16]) by
	CY1PR0401MB1324.namprd04.prod.outlook.com ([10.161.213.16]) with
	mapi id 15.20.0444.016; Thu, 1 Feb 2018 17:58:22 +0000
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
To: "opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH] opkg-build: improve package reproducibility
Thread-Index: AQHTmOsicCU6R30o3Ue1waps9c7zd6OP2qQs
Date: Thu, 1 Feb 2018 17:58:22 +0000
Message-ID: <CY1PR0401MB13247457F0D22692E686580486FA0@CY1PR0401MB1324.namprd04.prod.outlook.com>
References: <20180129102315.29220-1-alejandro.delcastillo@ni.com>
In-Reply-To: <20180129102315.29220-1-alejandro.delcastillo@ni.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [130.164.62.70]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY1PR0401MB1372;
	6:7qwDA16kzsCmupDDXXIvMXq0BqznrHbsOUJDpSoNObIJmro9tTXvsINaEt4hf8oxBFA4uHfTihpefHJ7Ay/Krj1Qw8iQzO8IHJygv/ceQNqMn/OpFO+ygs32EUmyyoJgzSNknzkd1OlprTzNCY3omtWiM6m65QqSmRlOg/Alsz27tRtk5JtBiedlOtyKH5L1P1DeeEWuWLYM0EbnqWGb0lmq+mpTrKAjMAwaqHWPszSXep8ZHMbf4JxAJM6uZD0wJAI18Q5BnL1kyAhfli9T0W0Z7ICX/H/HKno+gXeIaFJape/3OQb4IMLRldXWVr1d3hRHqJM2oMU4lQQQop1SlWzqaSUEFMT7Cl5t+mfnIi1GqJLE8+AKTF52xijztBtA;
	5:XkWK8FFFIUIHqUv+IOfH1DL54konmu+eqUJVH1vWE77jZlmbOb64LEC9vqSTMYJOoSkXsmIs8VpiOjBpkL3VHHR16KC4xulOuOQM7k24wteJcT83SN+wCel68hTT2kIv1055j6nzYlKiIZ2SpOeChfB5vLKnCFKmB9NbND06C9M=;
	24:2rw1OQkcgilLVuWyUg1g92QRnNHDpv0+5TZ4dtPF7rTQLl/FJvKQ4dTTvBtrBtxJuMLk9weiIHXWmlCNEjk8RK4V/yo5EsZxtzX+suIigVI=;
	7:98kVA5X2KwSeEpF3xE4hjYtvv6TuE9x/R3ElX1ZHd4e5OxWrPLQ+NiBelrV47zBVHcsKliQnLUllADy6IipUKkFy5AIrVJanik2kPYgFYDMp/7XI0nRP9Fhocd2PkTLcywYJVzHNsH7NGz386i4XUH6pt0wOotQ+nNBrOhMy9K12vzTjtF0z53E3o3bWhKpFfsU92SGpR+3Vul6LKz0jX0/y8QbdepzKW/1jK5D3LeerW9FZo8adeBsJQ4QLyX/X
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 0a23c4a2-30ae-4772-133b-08d5699d623c
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:CY1PR0401MB1372; 
x-ms-traffictypediagnostic: CY1PR0401MB1372:
x-microsoft-antispam-prvs: <CY1PR0401MB137216E2E5DAA469C5FEFD8886FA0@CY1PR0401MB1372.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(215639381216008)(145744241990776);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(8121501046)(5005006)(3002001)(3231101)(2400082)(944501161)(93006095)(93001095)(10201501046)(6041288)(20161123558120)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123564045)(6072148)(201708071742011);
	SRVR:CY1PR0401MB1372; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0401MB1372; 
x-forefront-prvs: 0570F1F193
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(346002)(376002)(39380400002)(396003)(39860400002)(199004)(189003)(86362001)(106356001)(76176011)(229853002)(66066001)(5660300001)(3846002)(6506007)(33656002)(53546011)(7696005)(102836004)(3660700001)(2950100002)(2906002)(3280700002)(6436002)(97736004)(25786009)(6116002)(7736002)(68736007)(105586002)(8936002)(110136005)(2900100001)(8676002)(81156014)(478600001)(26005)(81166006)(14454004)(316002)(9686003)(6246003)(305945005)(99286004)(77096007)(186003)(2501003)(966005)(6306002)(53936002)(55016002)(74316002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR0401MB1372;
	H:CY1PR0401MB1324.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: dfgqMPqmzb8Rp6mmzPkAyptrsvK04EJ/Y3RnKu34OlnWfma35bljaXfxQurO9hFvB8f5avU9zuzpEOPTHsIIoQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a23c4a2-30ae-4772-133b-08d5699d623c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2018 17:58:22.0741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0401MB1372
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2018-02-01_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=30 reason=mlx
	scancount=1 engine=8.0.1-1711220000 definitions=main-1802010230
Subject: Re: [PATCH] opkg-build: improve package reproducibility
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
X-List-Received-Date: Thu, 01 Feb 2018 17:58:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

merged

________________________________________
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Sent: Monday, January 29, 2018 4:23:15 AM
To: opkg-devel@googlegroups.com; yocto@yoctoproject.org
Cc: Alejandro del Castillo
Subject: [PATCH] opkg-build: improve package reproducibility

Implements some of the recommendations by reproducible-build.org [1]

- Set modification time to SOURCE_DATE_EPOCH env variable
- Enable deterministic sorting of directory entries
- Do not save timestamp on gzip compressed archive

bugzilla #11242

[1] https://reproducible-builds.org/docs/archives/

Signed-off-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
---
 opkg-build | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/opkg-build b/opkg-build
index 0fe513a..7bfdd99 100755
--- a/opkg-build
+++ b/opkg-build
@@ -149,6 +149,7 @@ outer=3Dar
 noclean=3D0
 opkext=3D0
 compressor=3Dgzip
+compressorargs=3D"-9n"

 # Determine if tar supports the --format argument by checking the help out=
put.
 #
@@ -222,6 +223,15 @@ done

 cext=3D$(compressor_ext $compressor)

+if [ $compressor =3D "gzip" ] ; then
+       # pgzip requires -T to avoid timestamps on the gzip archive
+       if gzip --help 2>&1 | grep -- "-T" > /dev/null; then
+               compressorargs=3D"-9nT"
+       fi
+else
+       compressorargs=3D""
+fi
+
 shift $(($OPTIND - 1))

 # continue on to process additional arguments
@@ -267,9 +277,11 @@ fi
 tmp_dir=3D$dest_dir/IPKG_BUILD.$$
 mkdir $tmp_dir

+build_date=3D"$(date --utc --date=3D"@${SOURCE_DATE_EPOCH:-$(date +%s)}" +=
%Y-%m-%d)"
+
 echo $CONTROL > $tmp_dir/tarX
-( cd $pkg_dir && tar $ogargs -X $tmp_dir/tarX -c --$compressor $tarformat =
-f $tmp_dir/data.tar.$cext . )
-( cd $pkg_dir/$CONTROL && tar $ogargs -cz $tarformat -f $tmp_dir/control.t=
ar.gz . )
+( cd $pkg_dir && tar $ogargs --sort=3Dname --mtime=3D$build_date -X $tmp_d=
ir/tarX -c $tarformat . | $compressor $compressorargs > $tmp_dir/data.tar.$=
cext )
+( cd $pkg_dir/$CONTROL && tar $ogargs --sort=3Dname --mtime=3D$build_date =
-c $tarformat . | gzip $compressorargs > $tmp_dir/control.tar.gz )
 rm $tmp_dir/tarX

 echo "2.0" > $tmp_dir/debian-binary
@@ -284,7 +296,7 @@ rm -f $pkg_file
 if [ "$outer" =3D "ar" ] ; then
   ( cd $tmp_dir && ar -crf $pkg_file ./debian-binary ./control.tar.gz ./da=
ta.tar.$cext )
 else
-  ( cd $tmp_dir && tar -cz $tarformat -f $pkg_file ./debian-binary ./contr=
ol.tar.gz ./data.tar.$cext )
+  ( cd $tmp_dir && tar -c --sort=3Dname --mtime=3D$build_date $tarformat .=
/debian-binary ./control.tar.gz ./data.tar.$cext | gzip $compressorargs > $=
pkg_file )
 fi

 rm $tmp_dir/debian-binary $tmp_dir/data.tar.$cext $tmp_dir/control.tar.gz
--
2.15.1


