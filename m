Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C407E00F14; Fri,  1 Jul 2016 05:21:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4796 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Jul 2016 05:21:31 PDT
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0118.outbound.protection.outlook.com
	[104.47.37.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9A57E00E7D
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 05:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=frDYaaD1s2uQOhNKNjyB0WY+p3ZL8v/ROt+cNv4YipA=;
	b=gEj2m4hfMUqVvlJEgFgt1R0VXGxh/xwptjGCR1TBtBNOzozaiq9D8I1lOlGJ9/E1uNbtuVRCihbZ2zp5/ajApaLjn0HthBQkBtU1wOVgWPPMuVjjYofuLdCdq/DlPSTXj/fXCiDTRIs3VPqcZashdg9IU73wrd3LO1X/H0zs0QY=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
Received: from [10.168.1.200] (124.193.174.202) by
	CY1PR1201MB0969.namprd12.prod.outlook.com (10.169.18.25) with Microsoft
	SMTP Server (TLS) id 15.1.528.16; Fri, 1 Jul 2016 10:46:37 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Richard Zhang <richard.zhang@pica8.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <f995943e-7b14-bed7-406c-7fc3ad5b102e@pica8.com>
Date: Fri, 1 Jul 2016 18:46:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.1.0
MIME-Version: 1.0
X-Originating-IP: [124.193.174.202]
X-ClientProxiedBy: HKXPR02CA0026.apcprd02.prod.outlook.com (10.161.48.11) To
	CY1PR1201MB0969.namprd12.prod.outlook.com (10.169.18.25)
X-MS-Office365-Filtering-Correlation-Id: 1b6a68f2-fcfa-4edc-df4a-08d3a19cfa9d
X-Microsoft-Exchange-Diagnostics: 1; CY1PR1201MB0969;
	2:WH2AOtfiaThvgZPQMSjF6AVVO+KTb2TfWZWJZ1kfg1bAnanblMSrzDK0IiYGUWH46/WZHHB1gx7myVmw0vz8yPJT57g1Pb4o0hxfzRAj/T2LK99K0ICVYX3AdgOfh2W6dh/zzg2CKjQz0r+5VFEzcB/D9CH1P27BCIAtj9A7F05XOcndJILcTG6uS2f6DjPq;
	3:59wjY8kFTr/R8IQWY0hjDNWo6Fle/n4AEUjLB6BoeNiA7jY82Q3vGKzSnDAzpj7psj+uKttmQ+TSpblp6veAbXzzDMzrTlo4z9WBN8kkgYiGxD9BSXtNJS4LMcgemyNB
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR1201MB0969;
X-Microsoft-Exchange-Diagnostics: 1; CY1PR1201MB0969;
	25:3MikEJMRCcdSJnb+ID3uKa/uS2kfQUiKQOq/Jg+ZAMzzA3sbQpoE/nY7Jlah+QrEYUBNE7U2BmEdE6u73JyOmNOs2OyMlrzOSqLUJPrAGOvTr/mzf+uPvnvwWtCRuM/O/U2ZvhWj9QUSHGqHcBXP+V2pwzfARZAsHNM8gXX+XP3VZ2d1QbVCTG1HWj8esPdlvQQsw9+vO8RWlim95REWTyCVSuoCBHnP4j9v8DF/24mGgYYk/8VMEglDsCr4dC70RShd1LyJnI7rw6+RMlm6YO5Eivmw3qN30HEZ4MP0GHzPbmiNTA6f+DhDOoQu2HRHKvZRlcM1JNDFVmbjZZ7jMh4ZfPULEEKwz4uVGJLq6pwxzKaE42C3Pnujz1YC8SuweoQJzB02Ngk+aDpcIaw346nW+WXgMWDv0N47NLs/6If2JcWnxLBuR7evYdLIcTia9Q05y+GRErRZ93msw6wk+lB7kcsfwaJMsJkemt9HMENZDsA/bbgMkHHtlMukgamlODJ88naIWkBvvATet2rpDRWYvnHF79ymn+QyYbybj6UKXNAaKtzQK66P1tujHdjwAfr80CggOomtQ8kKYydzAnSWptC/vCfhNWDdmZhNUuFHlGW/JdMYmVLyP5//qhmlmy/gHYDfqRVu0UeZLzseubxl+L2Us3lzuwh8C9m/QCnQoyRJsg4DjwMiYnJIpAXSwuDQMlM/9+igaNQaOAefrtLPwt0l6nad9PdlsedSdjU=;
	31:RmD20Tzjgpy+UlfK6ppZSN8hgMuOpTQmYZ083hbNQk3CJVjHi9dO4fofjA1bpk4BgumWKw2fqPg5/siqjsZVMnz2p++PaSyYkdwB8gXN9VdqBJwQHLy0HMuzwt+rs7cM26Th9tdhD24UGLvellbN02ZsJzSLkbaPR2BbGnYb9Lu+ZiYb5Tpr/uYWj9D4rI0mHy6gN8iTREgPiGtFpYgugw==
X-Microsoft-Antispam-PRVS: <CY1PR1201MB09695013FFC4268DE9A193E6A5250@CY1PR1201MB0969.namprd12.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040130)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041072)(6043046);
	SRVR:CY1PR1201MB0969; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR1201MB0969; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR1201MB0969;
	4:1SWT0YFBTji3/0hMblWYuq4QQt9x3E+Ss7IigVQ4w8BmJVs1IoFyn3ap/y5txAieoStEmgaa8BQFnf5XqRj1PYG5JDXVWuS1AeiIs7+8uwlGyVaC6Am90zsDp6cTTo5IPGoLmWFCn4D1/EoO2ismnfQcgOCkUpBmGdFOHTK2YOwr2yT7jYw2VhKnJlJqOqoV+i1CMh7APjnZTqsCfeMOUnupHItkmYof4tO4j3qQAIVTdiUbfMBhaUp9sPei1p9UZtf+K+RQSJ074CxX1u6RTpLtKlqoGi2GLnn5qdLuuK2UKxnt2ykxE0aBwxnJJgCLtUoOscEiGq54sJJaiBmXlaQ+zTilHoCN+R0sjRMgRTHHvuf/MnwH+jwLH6bxnp5RwqlpvFmrUC7p1pDcGo59rjqcwU85CO9XByzF9lZY1ms=
X-Forefront-PRVS: 0990C54589
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6049001)(6009001)(7916002)(199003)(189002)(36756003)(64126003)(2501003)(2351001)(2906002)(50986999)(81166006)(86362001)(5640700001)(77096005)(512874002)(4001350100001)(42186005)(229853001)(33646002)(97736004)(106356001)(105586002)(564344004)(107886002)(81156014)(110136002)(450100001)(31686004)(8676002)(21480400002)(7736002)(7846002)(189998001)(3846002)(6116002)(305945005)(1730700003)(54356999)(586003)(5000100001)(66066001)(568964002)(84326002)(101416001)(5890100001)(92566002)(19580395003)(68736007)(83506001)(31696002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR1201MB0969; H:[10.168.1.200];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CY1PR1201MB0969;
	23:rulobmjAQ/DGycW4iSeNQ6u2qPmhXNFh4UWwBWY?=
	=?us-ascii?Q?+IC8ya0w4wwKPd8GzdBiPU1Pj3Lhy8PVr3f1+X3B8L9UEhvKhN1laWgvDpWV?=
	=?us-ascii?Q?gXzigxTmpmreinnyMh0RbhkRTkt1cxGqWZMQkcK8ijimzuZsDeh8JDKxFU2n?=
	=?us-ascii?Q?k3fTDP+kwc2LYhdA2tOX9dAi68KkROBah7Zis+bYIYwgT5d1epg7n8s0cyxe?=
	=?us-ascii?Q?OrWnPM8cyDdgsAxJRKhMmn6kmmvYqEJxUavfI36B3YbiRBwi/Z4zYf9uDkMV?=
	=?us-ascii?Q?fMoEhBpMMz0/KZCj1xWlU1nrqVQcMQoCeaRvXjA79RtOq/JIUx3DJupTK9fG?=
	=?us-ascii?Q?YnbDlJSYF2Lxz1WIlb8qrAQhnprHgS5tAWAE/3RLZL2FMwLs6ERJbOpOqgMK?=
	=?us-ascii?Q?BWqL3xJS4QSydmWOhhbet3i2/V8pvM0ISRrCQjRqWi/djkJeoTLv8uaPXI2A?=
	=?us-ascii?Q?iKWj7XvJo6oA7Lo+lxSRFHtzdDmkhRPa1P7/6FmRAjZpMNal+CPvHBOvjDkB?=
	=?us-ascii?Q?U75pQcGDkLZDSPAvF7xFeAi7eW72iDFm0eJyaqwEsJD3qza4t/3L97Uim5oJ?=
	=?us-ascii?Q?2B8tUOLLBkuUynxVBNtBuMEid7JkFe1Vw3QM1+585GQ4e0IQ4KPNukOfiDvJ?=
	=?us-ascii?Q?0O1i7jdU/yXdaRhJmA5XGrSfEyAxiNO75a6sw1fTSddC5X8A84IAPYKLKZ0y?=
	=?us-ascii?Q?f/c6ri+2eK+8Z/lzIqcmxGtzOCRkplIDrvitisUtBbjECwJw1cJcVVtveHlE?=
	=?us-ascii?Q?PaLhtmOuYUAlikQc2NERJr8sz6tzATn1QcHHyljxtJHXEkK/0PFte3Z0iSnu?=
	=?us-ascii?Q?XpkhFN3tLo9IR0VRayl05oswZBbqMpaXmVYbvPQUJFCmhzJ5f161pM/A8ieL?=
	=?us-ascii?Q?JzAaM7G33IEEx8NngfDfVDWp4GJ1wa0mbHEvg9Za0Avl/Nd4N+DKxGqb/2hU?=
	=?us-ascii?Q?9bse3rMACKs1pJ4fz2WqBNpPZr393tCQr2FdHXr/ZA7fiTMZf9TFNGcgJqhR?=
	=?us-ascii?Q?JcnjL3Rhyk68pfTe9Tk7TkbZ6B0GaPAznL0h/2oS5qWOyOXvODZSdY0U/E0O?=
	=?us-ascii?Q?+rEOGpYEbnea97iuOZbCXOHzx+MB6ZjlD/MhDPTHoIvU7uUe9ahy2cx+Hn1s?=
	=?us-ascii?Q?8GmvBkwfFxKFAyZFpikIDcG+zs31MJEMRQMB0VOS4NvH700oYC5n85j2eX5t?=
	=?us-ascii?Q?QsWROfNjNqSpxWIlKWiS36Lzrsy+de4Sedm9tkU+EXpXOP0J3QlOitjffFo2?=
	=?us-ascii?Q?zjf1ZbUai0hd4S9JsobH0Z2gsf1ddIfQuopiP2kIYPKwEEAaksLUXo3XGNxe?=
	=?us-ascii?Q?rG6zFGfgks7CyvAgz+jP8K3I=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY1PR1201MB0969;
	6:Vb/1m48DOoIVYsHtsgHob4YA5PpesyxghVXajJXFzoBscr81b/xabfKkEy/UM9U5ihweE4Y8MNcO0SiPL3OEZRF3SCoXWn0no9WB6zHkZD6Y0+SnScH3wWAFkUC5Spji80BV9k1yFKbi7nyGkW016/KAwJ/M6cTY3gFRI5BSuqDWTSBPhYqXhYelObNcN3eprsbbFN85pTVQTUr8Qm2yM6j5XDUjI5ZXORLujfrbqXM2bS+6e2UlXodCJnAwBs6YyrxdqK+Lq8092yoz8kUJGgIhX0LDF47UAfh7HklFH4CNqRnSriisodHWaDiqPXD+;
	5:QxEgMwaI/5H0FvtLwxxsspvvYfWh3EexEDPzTUFIprmFCHNdJeIrMzyXrpYTsjpD5jr88qhRtsH7eBJo7o8F/dG4TGG/O15dYNOUl46ewNpc/moDV2o4r3M0aMzgafAEKdWyR9KdEe9P9JCiehC7iA==;
	24:H+mhuNX74uaiK4zaRY8vxEsPH9fMPoq6iyuMEZb78M8tQgVmHJaA+mY+bN9j0GcjbblO/crzeiXMwsntSnQcVS1sabKhOQisaDiayo31tiE=;
	7:zEspd1rFWO/877LATrujvx2N5/yTO1MnRWhsocvf1eqWQc16p/gmxkPOqnK89BKZ8CQPlUNTX4Uq1aWHa3IexjWYKbsLW/W425GoLbZ1Cu0suXMaDS6wMOqYlH8WN9cDprYUwK2sPPU0ltaDcvf1A0xA2DstrzD+VwHkF+mjSIpcbRiDZy1x8+KAkmjRz/L/2TgcGbJ+waFYfnHPVSADNHzL9g8+o/Qw3tfBP2iWSzV1a0UZTRzz0Oy6i7u7PNry
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2016 10:46:37.4506 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR1201MB0969
Subject: Toaster fail to luanch bitbake
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
X-List-Received-Date: Fri, 01 Jul 2016 12:21:33 -0000
X-Groupsio-MsgNum: 30841
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="3XHkCo5ugRBeMFG29c8kut8Ti49P43gjF"

--3XHkCo5ugRBeMFG29c8kut8Ti49P43gjF
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi:

    After setup toaster I can't finish build progress with bitbake.

  =20

some ERROR log into :

/opt/yocto/poky/build-toaster-4/toaster_ui.log    =20

ERROR: can't set event mask: None


Is this ERROR come with Environment variant?


Thanks.


Richard Zhang






--3XHkCo5ugRBeMFG29c8kut8Ti49P43gjF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXdkoNAAoJECBsUmMkk2qBkWEP/35sLV6t7dtv0uAqnhWjj8mK
5AIt1wJBgyXig6lhCXensl8cvDvxAUK+hWWk5RC896zIuaGznGq/ZWc32bvRboBh
pBB9JNnw/t1CLDZ3GTR6S+vfz9KaAA/a7PMwrxOWyKXeBUunraDQiJGxuJiPj6cc
ODXx0d7iQmzQntv0j2bFfl5ZRs0NqfDDKAMhkzlXOuJwdX5D3ZT0YJ2sOr5ew5d6
8vDqd1pLAv++/lmXM0EfBRxlJ1eVR7MT1lv8VFn6DYT4aE5WZ6iGRXHUiK1IXw8q
oo3h8fbGqaXDm2S0llnDaGxHiUCAuc6hAUzQzxSb4XdKgKslZ91yoxR6DD2v2xq2
wVsOQErGzUT49g/4LUU4z3nzmWC6DprJhguVFJIOBRdjht4PrKXWrWvDn5ZNH43p
pSDzfvbDqKyU0fxpYmDiNYH49AynM23BSmxBQZZZwRi5qq6o6DJV7/QctymStqeN
rJYbzhpNQUeIzXULZpfD9JVcHIDlDtzjE8JtVFFzF7cccUDUAGoWKOikPgJ/gYCF
quR6+zBl+Nb8seDbeSHR71wRKE4HMlgPAqMAWDnBo6d5mgakUDXGyAhsgnxR8UK9
9M/yEhyGXe6tnjvnMxx3ey8/ly+LuKv9QqX/p1QhDu9g15r50fXCAUUqTbhcepp1
n2vC7RVpjG4sTDGCmaqG
=Rf9c
-----END PGP SIGNATURE-----

--3XHkCo5ugRBeMFG29c8kut8Ti49P43gjF--
