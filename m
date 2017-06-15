Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C241BE00B9E; Thu, 15 Jun 2017 12:24:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.131 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7220 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Jun 2017 12:24:52 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0131.outbound.protection.outlook.com [104.47.2.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12F63E00B99
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 12:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=GP7T2Qe3GtTDBrnY0PhsjHRH7yH03hBBnblLbEL4fDs=;
	b=e9bSHyXxDfmFZgjy2vR9PUIMnIm53XR86jmpJAwEWpdXmw6ptQNHFyY/GveMr0FfwoAU9Niu2i17ag3+6CTYkmugzxbwLTwF54i9/n+YD+V4SvMnjq60wehTVDKV6KslLGBD/dr+IP/GO0/kO+ROjd6wugl2HayRJYmRkPAcDtM=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=Net2Edge.com;
Received: from [172.16.20.67] (81.128.174.58) by
	AM5PR0701MB1876.eurprd07.prod.outlook.com (2603:10a6:203:1d::25) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1178.10;
	Thu, 15 Jun 2017 14:52:14 +0000
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Organization: Net2Edge Limited
To: yocto@yoctoproject.org
Message-ID: <75eaa4ef-ddd4-198e-4299-a5cad9ed570c@Net2Edge.com>
Date: Thu, 15 Jun 2017 15:52:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
X-Originating-IP: [81.128.174.58]
X-ClientProxiedBy: VI1PR0902CA0003.eurprd09.prod.outlook.com
	(2603:10a6:800:d7::13) To AM5PR0701MB1876.eurprd07.prod.outlook.com
	(2603:10a6:203:1d::25)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dfe3566d-a0f8-45ad-c253-08d4b3fe1c6b
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(201703131423075);
	SRVR:AM5PR0701MB1876; 
X-Microsoft-Exchange-Diagnostics: 1; AM5PR0701MB1876;
	3:TLnZlB/t/Xi8nN4KbFrnhQKLGt4iKTJgeqi6c7QOAKPfjedRGr72OzJQX0VEjRcvJ206NkoAEl7KkOujCbdo+ztkHwpRyRN97qCJ/RvHnIFZY1fMIPbKpVYcLtP57q8vCOdBx1kjxk7PVE8pKNVGwSCXevvz4bLlhfFWfJf6W/8i+VSiRJyhNWHizOjInqIp0sDX6/GnXYsuCvuoSlvxABwCkTKjOlFdjneJtUpTA7720vuY7v2LlVbdKZpjiqbiCWobm/jSKfVYYdKFTAXVfTXl1EE2dFdsqWFnXMT5VyOnhrCV2QWuFuazSqPSa0CA;
	25:AmQvAXCQnfxM2syO3CzFKTQRhI73MlbFQHpEp9ghU+7xUHt7I2cYdM2YXHJ2wh2xQD6UPOdp26ZgNIQ6xWl9jmFs4NXp/jOFHUN9ldkfA8PRW2ypfcdpdokq4j/vvS2nGe3+VOlS3f//BsGEsLD3Rb4VtVGDUIwERLFe7ikUIX2qO4sXDGWoWf4CRvwO2y2p9WkLxVIsMMf0m65YYtKKpC/9FcWZrIFn1uzLk5lxqZpEXX8I03D+aTQj+Xg8/B3sqYpICSipRjGlsM7a3j7NqboM+jN3BWZa9E6oGs3IHrgIhYwU4rmAK6vpqtr10KaIXwNfbNYWYXee/JOtRM3FDynjhyYFKiM2xP7rHqkdz65APWHUNR+sJGUV6JV4/fRQ+OMOIjhn+viYdFjxcegxpP9mt0w5cjOkD8cmQfKtyvKYQAhPtEnfxqaOzvGKXr2CUAD2nYtDYaT93kvNarDxeoF7712GYzzYk9gowwI8Yxc=
X-MS-TrafficTypeDiagnostic: AM5PR0701MB1876:
X-Microsoft-Exchange-Diagnostics: 1; AM5PR0701MB1876;
	31:KsPbaGvkds41047g7uApu6ekD9j2+sykbs4RUgmEKbWhYok2HywXu4vr1bqDHB1Wq/jBnfxPFXVZCDnDKzEIsNhtl5nFcNbTvgRsVz5biCvWDcyEn1/Bu9APD+8x6ntVhzukYu48F51wxUncnu/qwFsLaFVRryNaUzDIeq6cRjVrD9MVAj0ZS3g73WBtLsYJJQSB41hB62V9e3cwQJi4tzYpFYeSWvM9BF03KqMs0cJV1WyouVRHgDVHyj4dTqvwn9LGaNB1+RFpI+q3+tQqfA==;
	20:AQhkBfJ94qSf3th5ZpBcpSbRvNyhT+fuUX+xG3XEKBYZK2WwPQ+QvovOuv0yY1HWO0zXoA00mTmpvaohDAnS5bx1LyPFIS22xSQLJgGeRgetx9imQqEked9FQTGeLMUQmy6ZGgekMuUEqETEnb+NNi1is8DCe9tcOuwdQXR9oz4=
X-Microsoft-Antispam-PRVS: <AM5PR0701MB1876E5399E5EEB6076A2FE6DD3C00@AM5PR0701MB1876.eurprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(278428928389397)(17755550239193);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(100000703101)(100105400095)(3002001)(6041248)(20161123558100)(20161123555025)(20161123562025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(2016111802025)(6043046)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:AM5PR0701MB1876; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:AM5PR0701MB1876; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; AM5PR0701MB1876;
	4:tcqXZfu973rpj/eJ9SRpG18Dcr/mP4jYzlSakhXL?=
	=?us-ascii?Q?eL+rPbRgXAKSjFU7yTcL01YfIiiYljSAwNtNlK8/WtRtBEYwYUvTLmY1xVhO?=
	=?us-ascii?Q?V0XTEw5/Iki4P9eZLL8SivzYhRs5kkziy20spewhecdNA+64/GnAfll6RPmV?=
	=?us-ascii?Q?cz7z/KDzGQBKHGMpiqo/t/A1RR8Kwopfnfpxd4MzvzbHOCdp3b1Z/rzOy0+o?=
	=?us-ascii?Q?Y0htV7DA0lZhH1ZxRInQfoP1jO2O/e1sBPjcWIudrdsLeEB2+M+qj1KhTW3B?=
	=?us-ascii?Q?a/Ng7fmje7UBne3P2bXZzDAm8fXTkqZNMY3ocK0ri2nxjCkEYqzwWvvXcrwu?=
	=?us-ascii?Q?0cZnAloB3dmp2YnQBcl0o0aNjOMOcObuD83lS0b4KXGzGj+XgJt3X/peBbnp?=
	=?us-ascii?Q?nAL0ovUWCxNnaqn4YYtm7GOEDh9zJShQ37Gz5NrH47xEpCCJeWAiBMjdLND1?=
	=?us-ascii?Q?pQtRNLglxuoov4P3d4YiujJ1/vlOuHDwZtXjJthzza0vJJx02yN7ZRbsYBVp?=
	=?us-ascii?Q?u2+yMeP+Uh3md5e7IpEPZdOhC/+7mvO0EYmHI3Pn7HPCkvM9AmaNU5oPqeES?=
	=?us-ascii?Q?saF/rsbTjvlqNIbK/VZJeM8+Aa0+SCpJgDtUaxGv6Z6VFVgIEKhMyv+Eio61?=
	=?us-ascii?Q?zUq5Cf3YGGjVUXQyjWtL+ec1OMe8flvcH32CqyEyFBWSKP5lYr31Pr6lWNED?=
	=?us-ascii?Q?ZYpxMNuO34G3w92okl0aX6KxAyNJJSfhfvdekLHDGkUYXpAfhWZdhvgYuDxJ?=
	=?us-ascii?Q?P3g5jt/8wu6bSVpDwO5S8J+yFeKijvKNpFI2SI2rthNmtCWeu2JOdKqJx3m/?=
	=?us-ascii?Q?eaXU6JqAivZtJxex0/MH/XlnAiBi9MpKmc4ESZLu+tQR+jz1ws7LzvEkqN5u?=
	=?us-ascii?Q?S0HlbgSwSTuOAFHINXIOoW3xkHB/k2Jedw1pK4JzDllD4kK3Ujl9/yixpKwU?=
	=?us-ascii?Q?Hr64r1w4TXnp8fNBXGABLz0jVEyrOvZ+r2qbTozARbinMQ9CTOWWS6/ZlIj/?=
	=?us-ascii?Q?+SMC7Kne7Gm4tjkxvqcJ6MKBr+4qz4BoWeh+B8CuZhiDHkZX3TRnPBFCXZVp?=
	=?us-ascii?Q?mNZ3HTyRKEfuSUz10ELTGW3s5B1tyvV1Z4PjpDe2Ro5rhqc78WoxF2ZuNPqp?=
	=?us-ascii?Q?Jz2eHMePmuOnzcrEla+bGzqBGdnhwUkRcFPR4WmH46jWBCwqTKXGDFEnluKM?=
	=?us-ascii?Q?X4cz7RGiyYGRWPzsHkYm9n1rMOv27fKChd0T20ng0OFHA+jAt9UR2sDup1ZE?=
	=?us-ascii?Q?0Tu2lUqAwtB1twrbVXydMuHm3f1iJQET0dZo5TGa?=
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(6049001)(39410400002)(39450400003)(39830400002)(39400400002)(84326002)(2906002)(53936002)(110136004)(54356999)(83506001)(3846002)(31686004)(50986999)(8676002)(478600001)(81166006)(6116002)(38730400002)(2351001)(77096006)(6916009)(25786009)(7736002)(42186005)(189998001)(86362001)(6666003)(33646002)(36756003)(3450700001)(4001350100001)(5890100001)(31696002)(21480400002)(568964002)(5660300001)(43066003)(72206003)(6486002)(66066001)(305945005)(24704002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5PR0701MB1876; H:[172.16.20.67];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; AM5PR0701MB1876;
	23:3r26NPN2BoQZ/chzcMfGcQTDarbVkrIijVS07d3?=
	=?us-ascii?Q?dNX5TDvJpq3Nx12dHWXc+OZ+LYvZyIDwpSiscR5j084GDxxBZw2VyXXVR8I3?=
	=?us-ascii?Q?JIOUL9e2oh7rKXpmRh6ACRvCQwErE5pIQGKWA9kgccldibCOWKh4DngUeMwu?=
	=?us-ascii?Q?DcVc5vBlpbuqCdBlmvFjFpJne/jpnk0akOZozViK9wJ23Hov9/WNgsHkIFAj?=
	=?us-ascii?Q?9BNbbK4FWF+XcdB32kCo+wThjQT0MgGCCpG6695uxJTuaN92ItejVnTPDfBt?=
	=?us-ascii?Q?8NFUZ+8mSBRj/m4GH5Fe2Ned7FjeYzXWbrLYZ8B7lw1U/EBwYE5jWMDKe9EH?=
	=?us-ascii?Q?cHv6uPCTGaeYZeJHcczZXbntyXeSbZ96gJqItnT4YR0Hy2rjp4ovgeWhn6Q5?=
	=?us-ascii?Q?EVThaF6aRHRCOFtBMgkLMFGsuEtUwt0PnS8+HtGKEJMl66lUp3w1Bd2L/ZN/?=
	=?us-ascii?Q?1lVLvh0ZEN8ae1T6R6qHjFkVgtsWyUb1GlskZkiiQ0KmshUC/fWZVD44MK1w?=
	=?us-ascii?Q?aTpKd19AeDZOWVi7imiMoECkPQDdbmhq2VOI+xjmPEojQOUWRdvv/fuACewx?=
	=?us-ascii?Q?X/4btSRANkW8Jl9b4VuDW5C/YXX1jiPRdepJ/ruzq4OXH71dUDvQqZi33MeD?=
	=?us-ascii?Q?d+KXc3F8fRFsHPfEXpWVOYW6TIg29GPonRukRnUhpj9XOGtsj8r2PUSLVrpc?=
	=?us-ascii?Q?tctcrHaCLOBg9FXI9M8Dmlv4gUcHJIZBRGDI6uUDsZ7TLm1HNO3BiBpcjCKO?=
	=?us-ascii?Q?f4KRcZSP+OE+jYBYFkl2H0mP0OytudJjfOlAMzXcbvRXFGug1sd0yyNrDE5k?=
	=?us-ascii?Q?svUJ0CwAJLJOS46OIfSwXXre8syoE4fCqxHtn9h58h76yxkbbgK1l+Nt1Dba?=
	=?us-ascii?Q?VoKMdtUmTHelJug28n9M5Bs+x4mWglq5J1qoQlcR0u+9bl5RFIRmU/U/8ixr?=
	=?us-ascii?Q?Qwed2mZxCGaHcirm+iBF7gyehtz58fZEOQW3rfMvUD8t+EjicUEpyRmmA49g?=
	=?us-ascii?Q?ZxyFx34OjVRxe59l1Nv026Jne1l0xiltNCjjv2E+WDoarB0tTZOK+48WvHci?=
	=?us-ascii?Q?Sz0ytth5Iocf01pWeC+/96gkObQ8BMxZzACOChfj83tGAR39MD2ZJpxk7nHZ?=
	=?us-ascii?Q?KdT1+Uax35SmIksd3rHdkIV3zVobmTiY1?=
X-Microsoft-Exchange-Diagnostics: 1; AM5PR0701MB1876;
	6:gsGb41Dv9Kz08i6X6M19icO9znkA5TiqFTXE8qn6YUUzx8KBEKfk48FFT7aqHiHyUzuH4RyPd/+GEnDnz7DOgOfjjwkh+RwBq1hNZ9nu1c9WH4reX8aLeUJsfWP0rfNQ4/4hGjeWuPtBfeytRh11JcBWEdrm4mZeXuV+HhT4qikVfepvEtpfj7tqru4vtNnvAsI1ojplysDmNFcKwLA6RaOheRGRp+flo69SzgBnTx0ZwUNNcp7OMZqRF5owVCXdEg0WTpkl9Qw4ZDAR+cUfr0sM45ky8jrhn3Q41/afzaUJrpXnv14xAZhNaid7VVcGe0PXJ2B3r5B0Qv2NHGgibLWrY8aHY3lQyxkhzC9i7wri8sNiKgbzaRWXtxPBLKnJJ5dpYo4HFTSsMu6Pl4uZ1a75WSZ73La+L7fO6607Hl/Vx5gLPN2Dx0hN45+Fh9Epr7MLqdkZgBydYcJ2cnWB/PhwEkcWkSATklGKzMbrPz03F44CubtNgEm1d/uo6W89RS70TFeQX+JZYgqkLlRH+w==
X-Microsoft-Exchange-Diagnostics: 1; AM5PR0701MB1876;
	5:cxbLwSMDbuwnS8xPcjCZzKEMLP41FAp1tkMhTZAZ+AXzkcqeo02KOFdTGuo+ujILb/2BGdHgqFOV6xkJejIzLhzSCzxoLsKrUXL71YRNCUGL45G2bFwKQe1boLW+jbKuiMnbvblPDWHCHbleIYB+cZmVgzGFIHZsEfQ049wvJjF4EDU2AMNXF4U0VHc6Aa7yncGzZFwLHFfKj1pa8KQqyZr9CDjCb/XRm9RmUbgaTq+AHxZk+Bc5Vv35NRPD3EzUaDYGDXoJzGkpdcDGoAAw5YNbkZTk+BN1yfVyTYVbXdqFBeFtNDpegU0cNpSV/kVfRKoH8SjL4TY0Vn7Q9g18fYhX8I4k54KH4wO+35HdvGLLoy5thtmoHM7tXrfqFTZIY6EXpdYCsoeP0n3I4OlZq4lGwY02HNNyuu09Ytp9z4DCxUcInwr+058fIF29Wr64hv5S4paRYsULYREJIbUhEGDVU7UTfGqgkDwkC+FJfFSUJ50Nt8X6oxfJM9BWIfVq;
	24:wRImYyPQh6IpAP9xH8KfxrhjpMbkde8/ZEApA55zO9bor6N6j2+fdSUlG9iY5wSHogS0ZQ2p9jP91Lfi9paXmOICBCSLEN9HdbDYwEvJv/k=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; AM5PR0701MB1876;
	7:Kzd0SgMY2p7fWX4pWk7g4z4QWFG/Rl3jXAqi291XDi6KNhfqolL9Jf9tPXwRxzcsj03tikbOA/UR2gIIZLwjRDmKZ/mxGygSIvnuLcLEIsa03lXp9VcmCdo15lAItqgKsORfin3WavJo1UBNp77iyPCUa2F1Ti56cw+1MTMimwhXd0TbqXX521P9dfrjYaXmLfz8whkSl6nuCj8sGmsAOnfwrd2siEmL9B2lv+vOcEP7TENcYkoIJgyYYjMft6VTw0uHQ7HYbGFRhE2cK55df7OXUi1srPlce+M6BQm6ZOw+XF85ZmkT+rdFGEWLjbuuJ20J0O0YGuTwTe4L9KArcg==
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2017 14:52:14.4320 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0701MB1876
Subject: Using A Proprietary Closed License Inside A Layer & Its Recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Thomas.Thorne@Net2Edge.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Jun 2017 19:24:56 -0000
X-Groupsio-MsgNum: 36593
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="j0r7WOJBnvGB7nBohfSifBUtAWxAthUm0"

--j0r7WOJBnvGB7nBohfSifBUtAWxAthUm0
Content-Type: multipart/mixed; boundary="QG59AWfHEPuevp5psKH63QFCfDdB07do5";
 protected-headers="v1"
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Reply-To: Thomas.Thorne@Net2Edge.com
To: yocto@yoctoproject.org
Message-ID: <75eaa4ef-ddd4-198e-4299-a5cad9ed570c@Net2Edge.com>
Subject: [yocto] Using A Proprietary Closed License Inside A Layer & Its
 Recipes

--QG59AWfHEPuevp5psKH63QFCfDdB07do5
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB

Good afternoon,

I am putting together a meta-company-name layer to hold some internal
code.  This will contain a few BSPs for our units, some internally
developed applications and a few config file patches.  I am having
trouble getting recipes to be related to the proprietary license. =20

I have added "LICENSE" file to the root of the layer.  I have also added
a "licenses" directory that contains a single "companyname" file that
has our standard copyright boiler plate in it.  In the layer.conf file I
have added
LICENSE_PATH +=3D "${LAYERDIR}/licenses"

When inside a recipe.bb file set:
LICENSE =3D "companyname"
LIC_FILES_CHKSUM =3D "file://companyname;md5=3D260e42b87d2e3235853331775b=
597ad3"

I get set of errors from bitbake:
NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: recipe-0.1-r0 do_configure: QA Issue: recipe: LIC_FILES_CHKSUM
points to an invalid file:
/home/thomasthorne/work/yocto/build-lib/tmp/work/all-poky-linux/recipe/0.=
1-r0/companyname
[license-checksum]
ERROR: recipe-0.1-r0 do_configure: Fatal QA errors found, failing task.
ERROR: recipe-0.1-r0 do_configure: Function failed: do_qa_configure
ERROR: Logfile of failure stored in:
/home/thomasthorne/work/yocto/build/tmp/work/all-poky-linux/recipe/0.1-r0=
/temp/log.do_configure.13583
ERROR: Task 487
(/home/thomasthorne/work/yocto/meta-companyname/recipes-companyname/recip=
e/recipe_0.1.bb,
do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1557 tasks of which 1556 didn't need to
be rerun and 1 failed.

Should I be including a copy of the license in each recipe separately
instead and then using LIC_FILES_CHKSUM =3D
"file://companyname;md5=3D260e42b87d2e3235853331775b597ad3" (or pointing
at a header with the beginline=3D5; endline=3D10 syntax)?=20

Is it only possible to use the special
LICENSE =3D "CLOSED"
license for licenses not already placed in the main license directory?=20

Any help or pointers would be very gratefully received.  I have been
having a confusing couple of hours with this so far.=20

Regards,

--=20
Thomas Thorne  Software Engineer  Net2Edge Limited



--QG59AWfHEPuevp5psKH63QFCfDdB07do5--

--j0r7WOJBnvGB7nBohfSifBUtAWxAthUm0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJZQp8bAAoJEPXLKKkUazGAZswH/2COKBTYIvOKIebwTQzuAPPh
lhC6zB6m2h5D0depVuHGC9u8BFGNxY5zjMYy9ow0XLIberYcMEXvx10rki8YaHB1
0kfVbACz+7fRmHigBJtILW46MB9m/Wf85oNCpozpUHVBysGcRKBGlDlPhAdYOREY
7hpOvMNbcJpx/dqux2wgtvhdLs1BnY1olCS+KpIMmdzEeTXYti6pXoHeNSX0tf7R
nPmUPbLDga8E7lOXhvjLACjIbERMPoYQlYq1OFZSwXyJlmb0cqX0rPsRBMtwl+Y0
9rS+PiPERR/l3B5JhlpyrccIozraEZODOlA/Yrz62wqgyKUTVggTlDVLQyZ4xRU=
=gF1/
-----END PGP SIGNATURE-----

--j0r7WOJBnvGB7nBohfSifBUtAWxAthUm0--
