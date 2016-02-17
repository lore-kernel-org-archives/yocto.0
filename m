Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9AD4E00BD0; Wed, 17 Feb 2016 09:10:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.146 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 878 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Feb 2016 09:10:31 PST
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0146.outbound.protection.outlook.com [65.55.169.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DB76E00BC1
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 09:10:31 -0800 (PST)
Received: from BLUPR07CA0042.namprd07.prod.outlook.com (10.255.223.155) by
	BY1PR0701MB1159.namprd07.prod.outlook.com (10.160.105.14) with
	Microsoft SMTP
	Server (TLS) id 15.1.409.15; Wed, 17 Feb 2016 16:55:51 +0000
Received: from BN1AFFO11FD028.protection.gbl (2a01:111:f400:7c10::134) by
	BLUPR07CA0042.outlook.office365.com (2a01:111:e400:841::27) with
	Microsoft SMTP Server (TLS) id 15.1.409.15 via Frontend Transport;
	Wed, 17 Feb 2016 16:55:51 +0000
Authentication-Results: spf=neutral (sender IP is 199.61.26.154)
	smtp.mailfrom=Honeywell.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=Honeywell.com;
Received-SPF: Neutral (protection.outlook.com: 199.61.26.154 is neither
	permitted nor denied by domain of Honeywell.com)
Received: from DE08W1026.honeywell.com (199.61.26.154) by
	BN1AFFO11FD028.mail.protection.outlook.com (10.58.52.88) with Microsoft
	SMTP Server (TLS) id 15.1.415.6 via Frontend Transport;
	Wed, 17 Feb 2016 16:55:51 +0000
Received: from de08ex5004.global.ds.honeywell.com (10.216.34.42) by
	DE08W1026.honeywell.com (10.221.248.37) with Microsoft SMTP Server id
	14.3.266.1; Wed, 17 Feb 2016 11:55:35 -0500
Received: from DE08W1305.global.ds.honeywell.com ([169.254.1.113]) by
	de08ex5004.global.ds.honeywell.com ([10.216.14.77]) with mapi id
	14.03.0266.001; Wed, 17 Feb 2016 11:55:36 -0500
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Problem add and removing files to filesystem
Thread-Index: AdFpkwepKipRYNqmQUCbHNDsCDLi1Q==
Date: Wed, 17 Feb 2016 16:55:35 +0000
Message-ID: <F6CD090A69E64C4289DC608E1C5D20240F78F830@DE08W1305.global.ds.honeywell.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [158.138.38.77]
MIME-Version: 1.0
X-CFilter-Loop: Forwarded
X-EOPAttributedMessage: 0
X-Microsoft-Exchange-Diagnostics: 1; BN1AFFO11FD028;
	1:LrXIAFh6tq0w6mQ0e86iDNnAKqIKlJWIBhE5i9XAaHOhhsDk8VBhLi29UeR9c9sCCYpznijXQJif/Jm2LLgoZmxqgm29UtpsKiPh/gp//TnoXKH+UrIXzlQ4ktilxTdHUImM18v8jnFRO0BHCLF1c54SRqx9O9/3nBun0SmIkmfzoWg+3C/R6VRn7B/wjbXUSNYk5iaw8I3McEl+D6CZh/n0o+36cgk4U4ksMCCJedkXvYZdBE+76JknzwkfkBZ74FGorGn3OLnljXw5lQnU7BW+7m4aqRbDV4H/sAQEj+WIYVzHw+hCETsY1RR/AQ1GedJ9IPMuUU+ahEYSY3MYcBRZtbKRwHXswzj5hHc2EIyHfYSdOI3GwC5n4eEh2DPOt42PhbE1RSj97z1kRoxkbA==
X-Forefront-Antispam-Report: CIP:199.61.26.154; CTRY:US; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(6009001)(2980300002)(24454002)(199003)(189002)(2920100001)(106466001)(55846006)(6806005)(105586002)(2900100001)(92566002)(5003600100002)(11100500001)(54356999)(19580395003)(77096005)(1730700002)(86362001)(5008740100001)(107886002)(2930100002)(85806002)(5001960100002)(87936001)(84326002)(551544002)(2351001)(110136002)(450100001)(33656002)(66066001)(19625215002)(2906002)(189998001)(2501003)(229853001)(586003)(6116002)(16796002)(1096002)(300700001)(512934002)(3846002)(1220700001)(102836003)(50986999)(5004730100002)(790700001)(16236675004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY1PR0701MB1159;
	H:DE08W1026.honeywell.com; FPR:; SPF:Neutral; MLV:sfv; A:1; MX:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BY1PR0701MB1159;
	2:63mPogaJSVo5Cea6db3GxRHnYfN3lAYxXT1aiKGQK6Zqs/w+53HUD+DYAn+tK4fqXrI0TljBKfzywFblXovejHqsIMvXlVjR5hZCUdhygaHdtoBIKpu/8Bdi3W5HCFhW9q+TOS6JHYpDcf6IGO2YrA==;
	3:TjEgwfhUuhwJpeeMulhbmbVyOEMNVRL0NsCpgxTwEH3doOhnLNCnHIDKSL1g44psku9OAyQE0p5sQSIR/Rs9NEGws4clq6vnPbsfXwH11dlYHoIqgyJzo6GrxRd3YTdvWqe3qoPEJnGVLsaNnwV+bmk32ECrGuZ99yTqvhEDDPpXuRJ24lCA4f167vBbuuzSPrg/tWBUTSa31Ge7sQDdP16jZlJFlOPv6I3Qycjjtb0=;
	25:pImRf1R59OkKNN0GIe3k1xxHr5qfDhC5G8tVaSi4+UX/iiCg4AxcRpiFiUQwyiHuAmCQqCyVSbY7vrVlkO6HB54U7cyXUruiPng7OPrPShAj7YhJYbdXYKEUIqyKfNizBq9hM6AvpfjvBfCE1Piko5/B9nBikjxSIz0YsKTe6gVkEQCrL7yzd0J/c8cCYs+iNwXDmFYJkKCgRVVHugNsQJZ7p4gSHjeExmy3LIqPctCpS7IKhlK6B07K+ChUp5DxzUBfZwA9Qoi1EWxyKJtO+rH/fb3ArEly7puVqHlbXMQymeEUFLSmfnDn5iyrqafX
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR0701MB1159;
X-MS-Office365-Filtering-Correlation-Id: c9df4941-707e-4728-f03d-08d337bb314b
X-Microsoft-Exchange-Diagnostics: 1; BY1PR0701MB1159;
	20:u/xE8XUL1wFjsRgUzBIzduKENLKtRa4onMxsIculrJsKx0hVN5uA1KSwOLwR7eaa6vIJtqQIG6TZInk4imKIqUVoXNNMWOZdtmadErpdKO+THo9nYm6mhCb/ILq5BmKUw5wDItTWLUnRzpOAtmAPBboRuyKnnektwwY/PhMQ6cib8Bz4PxcNG1WSTf92uMnikFtFU+R2ZhH5+KYEzXBiUg0TQ0gHs7/tFXWR1NZRN3vn6WxVetoYqiJLMv9XVvrTWgQJl5lXgNgTw3HrfCs4jy95eR0BoThChQFTIOhjJBg5ugpRN/Q7UjpB+JFKAdRc/WHB7eZMVwfRJr05PLSNGZHes/I/aMEZcCfpqfNWfRUZeE0I8fxqi1/ulfKXGJ/wrtbb1DBXgCmX2DfSPdUuP/qpj58nCok7pXMSN1ug4LxR/x80y3xA0fg1OHmuVFdF7CGoc9xSY8w062HcgHOBlmzAJZanh7XOCzThCjhyz6YE/swdKMISpAkaovENDOQI
X-Microsoft-Antispam-PRVS: <BY1PR0701MB115960E11C314E2C8DC643D996AE0@BY1PR0701MB1159.namprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(13024025)(13015025)(5005006)(13018025)(13017025)(13023025)(3002001)(10201501046);
	SRVR:BY1PR0701MB1159; BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0701MB1159; 
X-Microsoft-Exchange-Diagnostics: 1; BY1PR0701MB1159;
	4:Q/jvaKV1pyspW/z+OQCWae4Xu9sVd1juQP4xCuj3aPGE4IjNgu1qWCR9DJzfN0AWsnHtAb+x0yqhx52vHW1/Ng06n9do0nfsH6ZRLfzqbbGsXhe8j32jbjjne4kun14raFJdASPGGM56Bw17hD51AjwPoqzxfAAyAyHd5k2fadg34Y2lbEegtqzAk5OQqy1hhdTe361daF6BtaqgHBelcvXnqKNjnXkIoRqCzP4L2ZxP4qwA8ltEv5OQkk4LCNcn63XH7viSryAqJNQExMFDv3NyrBOSFNtgVIC6AzYzrXeYI/yUDngzF4jCANOCRtY881+8f622etcj6oqDl9xvMOd5Bn0J5nJOF2uxTNZXFr8ITFZwf6Lo32aX14CmEnUew1f4Sk3OLOwQ5E+9xb1MTlxshCbhocE2bg7rst7TnUuSuqbtDDzfFYveF6a7vfS4qK9oBsuhNHlVan4fIJN2oQ==
X-Forefront-PRVS: 085551F5A8
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BY1PR0701MB1159;
	23:/lJ1/zB2cJdHRJbYZshO77pYl05u9DncWrIZwNo?=
	=?us-ascii?Q?/ekVTx8QmUuglTUd7e2RxAaGib3EZUkBjIgVA5sEOwk53pbJOAFJNADatMep?=
	=?us-ascii?Q?HszJ8Sy43Vhjaqa5RCl4ilW+WYC41304F4MK51GGtgNx0s2dHpBPN2/rQify?=
	=?us-ascii?Q?aigdPqSqxshwVnSN5ODkPprmhSpe+tDKt+9S6oX7qyDq4/uKJ/Dff5uc5V1H?=
	=?us-ascii?Q?ucYGSF6wO/bBvJnw9Q92osCwEhWpVMQaGrgu9UcQKsWKjj1VakMWQonXMScc?=
	=?us-ascii?Q?Ps4MabFfvRZk6u43MQ83NJS9+gM5ZYkFbTcBQG+nxaREqczIKIdrZBVNA+q4?=
	=?us-ascii?Q?xZSIHVhFquUUIdDGEjf+FParhe/sSPp7ariZ7kA8FHfmLmACzyTRMTmhIfh4?=
	=?us-ascii?Q?qCjFFUGjEDgfOzfLprsOPK6yP0ZPyiLlLd9o0ExjHwZqX4HWQE4+dWvtbhsM?=
	=?us-ascii?Q?uUDuv95AXX6x0Or10fxbCtfOLq0GAdhhlTD9LxlWisaQnekru65gs9BFXHdQ?=
	=?us-ascii?Q?olprdz19tmhvR2wKviKctoQC5kCeWkZg3URFdvehqjm2qwwNs4oCqqUbG0uX?=
	=?us-ascii?Q?i3zX7XW6b2JrNP+uBlU19d2WOKFfUv7VKEWOpOJeXjaa9+jWNNwgyx7FRm5t?=
	=?us-ascii?Q?18KJ7jKe+81i3pfo+jLMOGLAtnQNk9vwWrVQ2G0Ar0i/LgzrZaP+/oc+ALCG?=
	=?us-ascii?Q?DBbRAxUcM6yf59YBfRzPqPL9FagwNnPhLzlDTy5UoIGmL5CsIAVwUtz8at6b?=
	=?us-ascii?Q?mIEFjMdoSx4e4ZWL6QqLCqYpLoSe5OgqqSswm60Jiiiz03ud/vHCVgEc7R8H?=
	=?us-ascii?Q?VSQ3kk51J1tVYMpaZdL5NdUxsSU0x7RFOuoAVuou1Vk+86nDdKx9XCjDJKDM?=
	=?us-ascii?Q?mG9DbdHj9EvL0K+S66ZFo6pqxIMTdbwrdMShVAjZ63N6Wi7Lik1bD7tUmAGz?=
	=?us-ascii?Q?K5BNPSH94AbOy/k0Qfp8Oa1e5ILeRV8sD9BTXVWI1YY9SqnMoSNN9gHH2Y6q?=
	=?us-ascii?Q?pJHb03J922t+SRh2qX/Cfn8gqQ/ELylVz0DE8fqlivJSjjdw4XWlKD6scxkQ?=
	=?us-ascii?Q?ci826YI3254LsCxyjagy+QkAUGyzbwBLYSCUpgnaHPmK6itfK0B1mmZp9UoW?=
	=?us-ascii?Q?hnnGE31G2VOAg1WZGLcospgOQ1aVzhaCze3cIJfIPn8FhAvltGJbJd/1/B6j?=
	=?us-ascii?Q?mvTyob13e1ultQm3cFo7eKiyjqBTs8fKGCHxeL+TP2VX8bBqizBNZut0t35J?=
	=?us-ascii?Q?ff85BZs/cMHfvE3yqH/V1VZrLdFJGAJfl0Jk6xPNXCwbX6gRn/7qalN2ucwm?=
	=?us-ascii?Q?O++sTvjZ4vA5wnyOdFCR7jrg=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BY1PR0701MB1159;
	5:+5l2RJuinZZvCr/XOf4dESN5CJP+Deh4CiJRxdmhyeNFXBB4gBbuKRMgMqtJqzu0Z5LhHvMmsx7jSFpXjAPTkpT8wVHVFGPLdSd02tJOwOiejyCPNACM2I6LywDZsT3ofUc+qtk+4QqjF8t8yp6Bfw==;
	24:lnEGtq8LHyJi14WxE10kM01B9qzOAnkwEkObj74AQfEjC/zLGa4rIO6ipqHp6FtTgpuLASEkz0Xg6cIt//0msvTeSBNMt3jZ4v3L9PMsRSw=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2016 16:55:51.2348 (UTC)
X-MS-Exchange-CrossTenant-Id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=96ece526-9c7d-48b0-8daf-8b93c90a5d18;
	Ip=[199.61.26.154]; Helo=[DE08W1026.honeywell.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0701MB1159
Subject: Problem add and removing files to filesystem
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
X-List-Received-Date: Wed, 17 Feb 2016 17:10:34 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_F6CD090A69E64C4289DC608E1C5D20240F78F830DE08W1305global_"

--_000_F6CD090A69E64C4289DC608E1C5D20240F78F830DE08W1305global_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> On Mon Jul 27 10:53:36 PDT 2015, Lorin Vandegrift vandegriftlorin at gmai=
l.com wrote:
>
> Hi there,
>
> Thanks for the response. Unfortunately we tried your suggestions with no
> luck. Below is the bb file for our package, do you see anything that we
> might of missed? The tar ball listed below is in a subdirectory called
> "files" in the same folder as the bb file.
>
> Thanks
>
> SUMMARY =3D "Extra filesystem files"
> SECTION =3D "rootfs"
> LICENSE =3D "CLOSED"
>
> SRC_URI =3D "file://extrafiles.tar.gz"
> S =3D "${WORKDIR}/files"
>
> ROOTFS_POSTPROCESS_COMMAND +=3D "set_root_passwd;"
> ROOTFS_POSTPROCESS_COMMAND +=3D "modify_filesystem;"
>
> do_install() {
>    install -m 0755 testFile.sh ${D}/home/root
>    rsync -avz wpa_supplicant ${D}${sysconfdir}
>    rsync -avz root ${D}${sysconfdir}
>    rsync -avz network ${D}${sysconfdir}
>    rsync -avz test.txt ${D}${sysconfdir}
>    rsync -avz syslog.conf ${D}${sysconfdir}
>    rsync -avz rules.d ${D}${sysconfdir}/udev/
>    rsync -avz sys_init.service ${D}${sysconfdir}/system/
> }
>
> modify_filesystem() {
>    rm ${IMAGE_ROOTFS}${sysconfdir}/wpa_supplicant.conf;
> }
>
> set_root_passwd() {
>         sed 's%^root:[^:]*:%root:$1$xyz$KSp5j8kx3cPgA3/ODPZ6E.:%' \
>         < ${IMAGE_ROOTFS}/etc/shadow \
>         > ${IMAGE_ROOTFS}/etc/shadow.new;
>        mv ${IMAGE_ROOTFS}/etc/shadow.new ${IMAGE_ROOTFS}/etc/shadow ;
> }
>
> EXTRA_IMAGE_FEATURES +=3D "read-only-rootfs"

Hi,

I guess my answer will happen too late but it may be useful for other devs =
asking themselves the same question.
I faced the same issue today and at the end I managed to solve it by moving=
 ROOTFS_POSTPROCESS_COMMAND directive and corresponding functions to the im=
age's recipe.

There is a way to check if ROOTFS_POSTPROCESS_COMMAND is correctly set with=
out having to build the image.
First call bitbake with the -e option and store the result in a file:
                bitbake core-image-minimal -e > core-image-minimal.env
Then edit core-image-minimal.env file, search for ROOTFS_POSTPROCESS_COMMAN=
D variable and check that it has your function(s) in the list.
You can also check that the body of your functions are correctly set in the=
 environment.

Jo=EBl




--_000_F6CD090A69E64C4289DC608E1C5D20240F78F830DE08W1305global_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:#400000;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1928029625;
	mso-list-type:hybrid;
	mso-list-template-ids:-1894330184 2080023048 67895299 67895301 67895297 67=
895299 67895301 67895297 67895299 67895301;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New",serif;}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New",serif;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New",serif;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; On=
 Mon Jul 27 10:53:36 PDT 2015, Lorin Vandegrift vandegriftlorin at gmail.co=
m wrote:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt;<o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; Hi=
 there,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt;<o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; Th=
anks for the response. Unfortunately we tried your suggestions with no<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; lu=
ck. Below is the bb file for our package, do you see anything that we<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; mi=
ght of missed? The tar ball listed below is in a subdirectory called<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; &q=
uot;files&quot; in the same folder as the bb file.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt;<o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; Th=
anks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt;<o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; SU=
MMARY =3D &quot;Extra filesystem files&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; SE=
CTION =3D &quot;rootfs&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; LI=
CENSE =3D &quot;CLOSED&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt;<o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; SR=
C_URI =3D &quot;file://extrafiles.tar.gz&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; S =
=3D &quot;${WORKDIR}/files&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt;<o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; RO=
OTFS_POSTPROCESS_COMMAND &#43;=3D &quot;set_root_passwd;&quot;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; RO=
OTFS_POSTPROCESS_COMMAND &#43;=3D &quot;modify_filesystem;&quot;<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt;<o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; do=
_install() {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; &n=
bsp;&nbsp;&nbsp;install -m 0755 testFile.sh ${D}/home/root<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&gt; &nbsp;&nbsp;&nbsp=
;rsync -avz wpa_supplicant ${D}${sysconfdir}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&gt; &nbsp;&nbsp;&nbsp=
;rsync -avz root ${D}${sysconfdir}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&gt; &nbsp;&nbsp;&nbsp=
;rsync -avz network ${D}${sysconfdir}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&gt; &nbsp;&nbsp;&nbsp=
;rsync -avz test.txt ${D}${sysconfdir}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&gt; &nbsp;&nbsp;&nbsp=
;rsync -avz syslog.conf ${D}${sysconfdir}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&gt; &nbsp;&nbsp;&nbsp=
;rsync -avz rules.d ${D}${sysconfdir}/udev/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">&gt; &nbsp;&nbsp;&nbsp=
;rsync -avz sys_init.service ${D}${sysconfdir}/system/<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; }<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt;<o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; mo=
dify_filesystem() {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; &n=
bsp;&nbsp;&nbsp;rm ${IMAGE_ROOTFS}${sysconfdir}/wpa_supplicant.conf;<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; }<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt;<o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; se=
t_root_passwd() {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; &n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sed 's%^root:[^:]*:%root:$1$x=
yz$KSp5j8kx3cPgA3/ODPZ6E.:%' \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; &n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt; ${IMAGE_ROOTFS}/etc/shad=
ow \<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; &n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&gt; ${IMAGE_ROOTFS}/etc/shad=
ow.new;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; &n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mv ${IMAGE_ROOTFS}/etc/shadow.new $=
{IMAGE_ROOTFS}/etc/shadow ;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; }<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt;<o:=
p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&gt; EX=
TRA_IMAGE_FEATURES &#43;=3D &quot;read-only-rootfs&quot;<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">Hi,<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">I guess=
 my answer will happen too late but it may be useful for other devs asking =
themselves the same question.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">I faced=
 the same issue today and at the end I managed to solve it by moving
<i>ROOTFS_POSTPROCESS_COMMAND</i> directive and corresponding functions to =
the image&#8217;s recipe.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">There i=
s a way to check if
<i>ROOTFS_POSTPROCESS_COMMAND</i> is correctly set without having to build =
the image.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">First c=
all bitbake with the &#8211;e option and store the result in a file:<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; </span>
<span lang=3D"EN-US" style=3D"font-family:Consolas;color:#400000">bitbake c=
ore-image-minimal -e &gt; core-image-minimal.env<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">Then ed=
it </span><i><span lang=3D"EN-US" style=3D"color:#400000">core-image-minima=
l.env</span></i><span lang=3D"EN-US" style=3D"color:#400000"> file, search =
for<i> ROOTFS_POSTPROCESS_COMMAND</i> variable
 and check that it has your function(s) in the list.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">You can=
 also check that the body of your functions are correctly set in the enviro=
nment.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">Jo=EBl<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><o:p>&n=
bsp;</o:p></span></p>
</div>
</body>
</html>

--_000_F6CD090A69E64C4289DC608E1C5D20240F78F830DE08W1305global_--
