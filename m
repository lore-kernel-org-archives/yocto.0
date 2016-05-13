Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CA1BE00C44; Fri, 13 May 2016 02:15:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0130.outbound.protection.outlook.com [157.56.111.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5416BE00C1E
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 02:15:36 -0700 (PDT)
Received: from CO2PR07CA0040.namprd07.prod.outlook.com (10.141.194.178) by
	CY1PR07MB2120.namprd07.prod.outlook.com (10.164.73.158) with Microsoft
	SMTP Server (TLS) id 15.1.492.11; Fri, 13 May 2016 09:15:33 +0000
Received: from BN1AFFO11FD023.protection.gbl (2a01:111:f400:7c10::124) by
	CO2PR07CA0040.outlook.office365.com (2a01:111:e400:1414::50) with
	Microsoft SMTP Server (TLS) id 15.1.497.12 via Frontend Transport;
	Fri, 13 May 2016 09:15:33 +0000
Authentication-Results: spf=neutral (sender IP is 199.61.26.153)
	smtp.mailfrom=Honeywell.com; esa-grimma.de;
	dkim=none (message not signed)
	header.d=none;esa-grimma.de; dmarc=none action=none
	header.from=Honeywell.com;
Received-SPF: Neutral (protection.outlook.com: 199.61.26.153 is neither
	permitted nor denied by domain of Honeywell.com)
Received: from DE08W1025.honeywell.com (199.61.26.153) by
	BN1AFFO11FD023.mail.protection.outlook.com (10.58.52.83) with Microsoft
	SMTP Server (TLS) id 15.1.492.8 via Frontend Transport;
	Fri, 13 May 2016 09:15:32 +0000
Received: from de08ex5003.global.ds.honeywell.com (10.216.34.42) by
	DE08W1025.honeywell.com (10.221.248.36) with Microsoft SMTP Server id
	14.3.266.1; Fri, 13 May 2016 05:15:12 -0400
Received: from DE08W1318.global.ds.honeywell.com (10.216.14.120) by
	DE08EX5003.global.ds.honeywell.com (10.216.14.76) with Microsoft SMTP
	Server (TLS) id 14.3.266.1; Fri, 13 May 2016 05:15:12 -0400
Received: from DE08W1305.global.ds.honeywell.com ([169.254.1.182]) by
	DE08W1318.global.ds.honeywell.com ([10.216.14.120]) with mapi id
	14.03.0266.001; Fri, 13 May 2016 05:15:12 -0400
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: "S.Jaritz@esa-grimma.de" <S.Jaritz@esa-grimma.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] how to install a kernel module
Thread-Index: AQHRrFsw5CrciuSRj0CwfWCZrUk59J+2lH7A
Date: Fri, 13 May 2016 09:15:11 +0000
Message-ID: <F6CD090A69E64C4289DC608E1C5D2024253EEC83@DE08W1305.global.ds.honeywell.com>
References: <OF5A7F2133.CD24CBDC-ONC1257FB1.004DAD37-C1257FB1.004FD28D@esa-grimma.de>
In-Reply-To: <OF5A7F2133.CD24CBDC-ONC1257FB1.004DAD37-C1257FB1.004FD28D@esa-grimma.de>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [158.138.38.25]
MIME-Version: 1.0
X-CFilter-Loop: Forwarded
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:199.61.26.153; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(2980300002)(189002)(252514010)(199003)(69234005)(9170700003)(5001770100001)(1220700001)(2906002)(19625215002)(16236675004)(92566002)(8936002)(87936001)(19580405001)(86362001)(54356999)(76176999)(15975445007)(19580395003)(77096005)(15974865002)(50986999)(85806002)(84326002)(2900100001)(2920100001)(2950100001)(106466001)(106116001)(5003600100002)(33656002)(55846006)(2501003)(105586002)(6806005)(512934002)(8676002)(81166006)(107886002)(5004730100002)(19617315012)(189998001)(102836003)(586003)(19300405004)(6116002)(3846002)(790700001)(11100500001)(66066001)(5008740100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR07MB2120;
	H:DE08W1025.honeywell.com; FPR:; SPF:Neutral; MLV:sfv; MX:1; A:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1AFFO11FD023;
	1:UXihYWETUFxBp/9xvb7i7pIUZMrw+trgbdXnN9LAKEIIYDBmHvQ6NrMEr4uEtEvfwt/CPCSjzLWzFbq3EeSnuWxpHuKSzugFQdMN77PY80CHfg0UyBnIPzWFTsZv/noeuvYMG+evC/CCnHRyV+3dVlYlDu4tp7FF8AE0uw/yxeunaZ0SgpNPsdD+his/f/PmEOZTNhMAqwbjsf0K/a8Sji4H4S9a1O9llhTpo7jwOgNp18s/yJisvT1tMhTtRXxj2mxckrTcH7NNGxwQoogplSueLAfJPkUrftYXwJOdvfZ6F2kTb7SaHLRh/LAXpv45ay4LQKOt8N84GEJpwB0WWXosWiGhk+M27vhde78ZseX4rsDH5JR4rx5RjxhMPNz78rVX0Yb7Y/xM6eRiDIgGmq441XGCk4v1f14+++inirfoz4cbc4QLAWbE+Z/mHorK8G74EJkaAA28/7wFASGkOqQlJ3pQIisCRGjK5x+WJfcokh7e+GtPKnU88zTowbNE
X-MS-Office365-Filtering-Correlation-Id: 6329e950-1484-4c2a-82d0-08d37b0f229b
X-Microsoft-Exchange-Diagnostics: 1; CY1PR07MB2120;
	2:m7b+C0Z9q19NFHeZj6Gfnt838tjYZRST+WurRoKNm51Nai5vCVBWiTJKdXolxc+JzLnnxYU4dWqF6VbaZwErQfMcqCboSik4iapUULmU4bqmS5glf6xRVris7kyEFRR+61fzhkPh7Eq+Ub/IE/GhIU98BPoQsK62Ph+XubLjLxk1FWBKrSoAjhzpOpkVzAkW;
	3:SP+fjWvJ/ijc5K3XNYJEm7i0JV5a5Nc0D6TifFlc1zbkawfKf/9gwaR0Ucg1+pYsULWF7xfD8Ki7uKWpn14s57nH92C8pbFLMbfGvwvsbSarITSwn0kQ5ssBTUt7rmcKuKz9bnbiBX3crj5roMLM16eg/IfVKgdHc6XfJljarIdzwNJ6Ma+MMGYPToIkghvxinjJ//t374z6iM+IexrRze2ImUcjqEI/eWTYSa7a6KI=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR07MB2120;
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CY1PR07MB2120;
	25:AXQIXJYmKjmEI/Hslc2KJ/IaIxQTvzU64FL6lXdRT?=
	=?us-ascii?Q?VcPVxcNKZC7/o8nIxYxgf7Y2jeQtfmGSWsQqS43Ac0bbxAIcN0kZaGclUjTb?=
	=?us-ascii?Q?gM0+TbmrCGfp6ub8wqN+kdQVlmnxVXKgM1RFqAaOTV9EIylzfae92nCL9Ni/?=
	=?us-ascii?Q?fdK/Ddsd7JgSb9mWe75A6qzvGkHx3jIXVvaeMc7yCzgKf53JnEIHj1WSrj/1?=
	=?us-ascii?Q?dx1+oV/foCmwA4Du/ZYmRUAchLwPmQjRHD2yOJB8dpI/yOzcLvv8yXPmwk7N?=
	=?us-ascii?Q?5Y+4nFUcaFnTMCl8yub2e8m1jx1Wvfxf8/PvgXUQOTHa/FR/ft7xUNV4HeYB?=
	=?us-ascii?Q?ko+/2BEziicOwS8RPYnu+WAVVI0H101Yl/l5F4lffaDuRIIG8iOHOT9t3nIv?=
	=?us-ascii?Q?hVu7kekEtG78VVMbR+geyJcO1cfU15SORmoQBlFmlThR/hrLkH6s+Ur1dpuo?=
	=?us-ascii?Q?LEzwAEeO6adPtP31+6pESEllDdVTT20ryBPMVncrxmozW6MJZdrxJSb0pehU?=
	=?us-ascii?Q?ZYk0Y1sEAR5QvC0cmGtGSvKxa6ei66YXmqs6zkhdSjzIFVUmIHXnsO9c0N+h?=
	=?us-ascii?Q?8CpM3wS+kDEayDki220AQVb5HabTgpFuuCbDoweA3Nv7sIcxa8EQgT5H4vs3?=
	=?us-ascii?Q?jqZxQw8jCMjgVrW2JltLCI6ZwaZgHHxiD/OofHm/acHT0pJoZ7pBtR1yg6UO?=
	=?us-ascii?Q?8PRVRtajVGCpLa7sjMvzMfTm3ubq2Oo87IDNLxKUb1VsNESWBnqGAjNKcwwg?=
	=?us-ascii?Q?gqpT0hcr2Wkj2Z6eI/cNE8A2F+9YK2NueZUTfTSB67z3Dpzu1rjO+4Sfj2I0?=
	=?us-ascii?Q?x/I871gKLMC6wxMbMEURoRmaSZlFY0/vQDS11sZzslHv9FRn6/JrNS4MSTgc?=
	=?us-ascii?Q?YELTXZ0JevNQnH7TWrOmUw85Vf4gLe6RnaxSowG+Etwp65lrNkCR/+YSesSu?=
	=?us-ascii?Q?3YGWKGEd5eAJ8aJzXgrKeOwTT3F7WYSYEFHZReW34k4Tg/AQVgD+4yoAM8E7?=
	=?us-ascii?Q?Buwall6TmvNLRaVZ90Qx5kdG9nq/8kfg1rGP8rQQenUJg=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY1PR07MB2120;
	20:PMhrpdrwVCtl1jOIsXmvrA0x3kWVyXGvpP+F8W2SssZZCbcAaDMH6ZvuiID7GdeLFe+c81qW9LP9FK3u8wbufAvtTyOXbc6BQunUISp8UvlmPBqb8PqySt0WA8cKFR0KjGJhGKvYdIV8fMZo9vKh3dTuZ7IDXX3D7xdCODk+Nclvz4QUVoxPM/hLlZNgTxLMmIshN5phgKQAh5QGR3yay7A+IkUjt8GuytnGjVczl5vyPI79Z+hXQrfy2FmCyVsiBUIqzlBsGSEqzED/XAmqv3UCK4vf2+6lNje1uViI552UiJYBLGi6+qJOf1poIX5CfGLLNC515k34DJplg3aGQsqos+dhdH/fhXyVc5lQpjfVWjYV9Jslffv6wRHEfCNq8+BPpQ3uggByEDeeQP4J0oM2OHfjbvG3h5whPt5hITiLc3WwoYr4pnZQaFGXtYyJxmlSxGowtiWp3IUgX//8FMbzCd18wjt7uKW6gmDOUYgY8wyBOYfAMP+KBOI8I3OB
X-Microsoft-Antispam-PRVS: <CY1PR07MB2120B61E964075BB56E4BD6196740@CY1PR07MB2120.namprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(13015025)(13023025)(13024025)(13018025)(13017025)(10201501046)(3002001)(6055026);
	SRVR:CY1PR07MB2120; BCL:0; PCL:0; RULEID:; SRVR:CY1PR07MB2120; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR07MB2120;
	4:eYvpPOe1jGPrRDCJwhEvDQPx+yHKEWOrZZ2o3aZSdtfcm3sUkTK6lH3i29RJHvyf0fK5v21Vij5EzOifOezsPO3jGD7eW6UtHxlI3GBT/gXuQe0mCbsw4Yj5F8IBByLwgKs4JGHcvUprgEIEPxJRDg/ui7MIgvFNRkwHpCLqwvr4QQXnetX4c0kpB6svjPV4f8pFgXu402MzXk0wESyiVDCWK3xd9NbBCYZUAPBRAJ+XmIbeGeiF2cvUh570netKfpAPGoW4asaXFXCXZ+2bZsmeZGw0fo5nzzXFJ5/NV1JZ11C0Gl2Jq51FdbyjC3xJ4Cvey9pd1MTQy2pYNKubsAbwsXdVtO6rCWw5DYwC4z847+k+9I0wK6033keLyRnYfJ+ANkdM0m0a1tZgQ3eAN8NNZiL/GQ9c4rhxcMWIszPRXeRHXmYZuEKNds3RHVa1jYAuDl7ym+0fZVkf3sjwyUyiTJZT4jEioQTJNbgVMVY=
X-Forefront-PRVS: 0941B96580
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CY1PR07MB2120;
	23:7WXJASIkGECK/stGultbUZlLWyyumL4hFgfPkGFEd?=
	=?us-ascii?Q?UTdoOUXHaKT3jDaWkZzAnsKqF7XB819x69F6m4RvfvLg3YRpmaO4vW0g8gnA?=
	=?us-ascii?Q?ocYrjj163kdSXgiBzYCCjs4vAiIY+8iRI8gZDKD0Khhy8hDzmd0S+fxzRHpc?=
	=?us-ascii?Q?eRSi4DpBhpYCy8MbNyDvhLjozsVrzNAjD5pJMDtQiaty08qbP0BGexzFJHyY?=
	=?us-ascii?Q?0PcleUe65paBWKwLawvQOwJFSSn7K0PT8fMg6O8r1d9ZkorGys4qh9W/6MNf?=
	=?us-ascii?Q?bJqNbhXwyUt5++/z/TV6Fw6banwZeqeGzpfxZLFEoDseKppr8WnUfIXczc8B?=
	=?us-ascii?Q?rB+OUJBusVnZeD3LDCzkNaQMHXYfw1ROplZcTlwvKqpo4WaX1JvuiKzz/3lY?=
	=?us-ascii?Q?jB93xLgcDZDrJrO9YYAZZESYsXa2bNhWwFgOvR22visrTK8KFPlYjFv0oMP1?=
	=?us-ascii?Q?iNc5UlU9m/rKTusV7Tyu+mals0yL2KX/Ybmw80hhGgf/x18Ev7VREv0tlq/p?=
	=?us-ascii?Q?gLNY4KfXL3IGJBP4Vgd4E272Cw8l+chzVRaVLs41I6LqWhmSjSReezvly7AX?=
	=?us-ascii?Q?N7/VTa2q0DCIiIFHtZn7q5YpiYRF2w/rBljjW8K0uKjNZ2sXurHlczjoZtvM?=
	=?us-ascii?Q?u/MB0FWSb9t5sXZLuIlLiHVoNCTZyN++gi+n/1cygWJXPixQAy3EHwsucG4E?=
	=?us-ascii?Q?0J0i0YudOfKwT4csXQjoGADVrhF6M1Vznv4xCSQVi+v9yC8o5xvLBm4FYayE?=
	=?us-ascii?Q?Rcz+Rtune2rJQlUzKukiNY0wMFTQmogaA1XX29bvwcJlbOGxpKaRfe8ARpS1?=
	=?us-ascii?Q?x6ohNk4qsOUmvn93mxsqJDS8dA6YylwBPjq4MD9xZhyVoiWCPta6WfWKb03/?=
	=?us-ascii?Q?hFUi2o0DTaMoJz+6UrimGll3NcHkl9dDLqoOJwTwg53WR4LZs61sHnvAsu/s?=
	=?us-ascii?Q?Z26ej8ZL7sHyoPC/zMRD/3U1QxH6iMpGKye/eEwzmVClo6LHCH2eMN/eggd4?=
	=?us-ascii?Q?/EvanNxgk/1BmID5CMqDVPTGxaVwiAGzq4l+uNUYpFhT2ECWIuXZCgoh5M8p?=
	=?us-ascii?Q?cK6k+m2xlfTydwcG0+UN2UaiZ/VpKcs7zyYdJTSApfVx9zoc0Ux0Sx9webRo?=
	=?us-ascii?Q?l1gUBkzK/9w8HYNL3urMGlUhBc99AdtAGbuqRqZbO5dPaeUXywGhMGuKumRf?=
	=?us-ascii?Q?gyxSHYHVmrM5AhwWqjifFN6Xu1zPzI8H/0k7TGlTsPWrrs2+lGivoMr6PYMQ?=
	=?us-ascii?Q?SZbxaX62UGlKlFcE+fgYWuNvCh7XgGBuDTVeY48I9r2yBQEfSy3kkK8XYsCH?=
	=?us-ascii?Q?ro6j75SpZ1PNnKHsCMYoC6xw60OIqsbtfT4U94LHbmRpYitGHHj6gCptTHUp?=
	=?us-ascii?Q?r69w8aqyPseQLY5NJvpSJHT3GY=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY1PR07MB2120;
	5:cT4JspV95/Oz7QVeyU+xLwoHRyE2HkpxYbyL2IBZHq+BdwjD5nn6ij23GG1oBFb/08TgdNzJ7RXqx4PJqthahy8LhLdKXyXH/DpOGWioWLe25aOApteu3SGG2SQWgBdnoHQAsKjxr3kxl2vCXZk8eA==;
	24:OeqX3kuxN4GD0bGxzfarruj3fhFBqmBi6vOuJ+4XjU7QhdvVZqTVdFt6VI7FHtwjkaQdRMFuE1N6eMedwOYrZ30BL13B9ujxJF/6AM8g2I8=;
	7:4enFafGD90RnAzYZbT/Vuxsom1bgqCkeIK59CuIysBr20yOO6dygli+K05jMKthNVbfqt8IZDJeAB3W4lvyXa242Y8l4WPSUIy8wvxYcSq/97nslPa62d+c6pSTiFONt7flik2Vyv8M479GaCNZFeowjnXAslqZhtBZlkmVvu+yxIKQCTIJfvu0YelUoLRcd
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2016 09:15:32.2374 (UTC)
X-MS-Exchange-CrossTenant-Id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=96ece526-9c7d-48b0-8daf-8b93c90a5d18;
	Ip=[199.61.26.153]; Helo=[DE08W1025.honeywell.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR07MB2120
Subject: Re: how to install a kernel module
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
X-List-Received-Date: Fri, 13 May 2016 09:15:42 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_F6CD090A69E64C4289DC608E1C5D2024253EEC83DE08W1305global_"

--_000_F6CD090A69E64C4289DC608E1C5D2024253EEC83DE08W1305global_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

FYI, image recipes are in recipes-core/images folders.
So if you created your own image recipe, my previous mail should answer you=
r need.

Otherwise, I don't know if you could just add this line to your local.conf =
file...

IMAGE_INSTALL_append =3D " ledmodule"

The best way to know that your IMAGE_INSTALL variable is correctly set is t=
o call this bitbake command:

$ bitbake <image> -e

Bitbake will output all the build environment variables and functions relat=
ed to your image recipe.
So you will be able to check with this command that IMAGE_INSTALL has effec=
tively your module name added to the list.

bitbake -e is a very important command when working with Yocto.

Regards,

Jo=EBl Esponde
Honeywell | Sensing and Productivity Solutions

De : yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]=
 De la part de S.Jaritz@esa-grimma.de
Envoy=E9 : jeudi 12 mai 2016 16:32
=C0 : yocto@yoctoproject.org
Objet : [yocto] how to install a kernel module

Hej

I created a recipe for a own modul. It's similar to the example given at:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-k=
ernel/hello-mod

I checked the bitbake process. A "kernel-module-<module name>" package is c=
reated and filled with the ko-file.

Actually I am failing to bring the module into my image and run it. Are the=
re a special command for the "local.conf" or so?

How and where to include the module?

Regards!

Stefan Jaritz

------------------------------------------------------------
ESA Elektroschaltanlagen Grimma GmbH
Broner Ring 30
04668 Grimma
Telefon: +49 3437 9211 176
Telefax: +49 3437 9211 26
E-Mail: s.jaritz@esa-grimma.de<mailto:s.jaritz@esa-grimma.de>
Internet: www.esa-grimma.de


Gesch=E4ftsf=FChrer:
Dipl.-Ing. J=F6rg Gaitzsch
J=F6rg Reinker

Sitz der Gesellschaft: Grimma
Ust.-ID: DE 141784437
Amtsgericht: Leipzig, HRB 5159
Steuernummer: 238/108/00755


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen.
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich er=
halten
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Ma=
il
ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are
not the intended recipient (or have received this e-mail in error) please
notify the sender immediately and destroy this e-mail. Any unauthorized
copying, disclosure or distribution of the material in this e-mail is stric=
tly
forbidden.

--_000_F6CD090A69E64C4289DC608E1C5D2024253EEC83DE08W1305global_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
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
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#400000;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">FYI, image recipes are in
<i>recipes-core/images</i> folders.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">So if you created your own image recipe, my previous mail should answe=
r your need.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">Otherwise, I don&#8217;t know if you could just add this line to your =
local.conf file&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:Consolas;mso-fareast-language:EN-US"><o=
:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:Consolas;mso-fareast-language:EN-US">IM=
AGE_INSTALL_append =3D &quot;
</span><span style=3D"font-size:10.0pt;font-family:Consolas">ledmodule</spa=
n><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:Consolas;mso-f=
areast-language:EN-US">&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">The best way to know that your
<i>IMAGE_INSTALL</i> variable is correctly set is to call this bitbake comm=
and:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:35.4pt"><span lang=3D"EN-US" st=
yle=3D"font-size:10.0pt;font-family:Consolas;mso-fareast-language:EN-US">$ =
bitbake &lt;image&gt; -e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">Bitbake will output all the build environment variables and functions =
related to your image recipe.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">So you will be able to check with this command that
<i>IMAGE_INSTALL</i> has effectively your module name added to the list.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:Consolas;mso-fareast-language:EN-US"><o:p>&nbsp;</o:p></span></b>=
</p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:Consolas;mso-fareast-language:EN-US">bitbake -e</span></b><span l=
ang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,san=
s-serif;color:#400000;mso-fareast-language:EN-US"> is
 a very important command when working with Yocto.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">Regards,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#707070">Jo=EBl Esponde<o:p></=
o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:9.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif;color:#707070">Honeywell
</span></b><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#707070">| Sensing and Productivity Solutions<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">De&nbsp;:</span></b><span style=3D"font-size:11.=
0pt;font-family:&quot;Calibri&quot;,sans-serif"> yocto-bounces@yoctoproject=
.org [mailto:yocto-bounces@yoctoproject.org]
<b>De la part de</b> S.Jaritz@esa-grimma.de<br>
<b>Envoy=E9&nbsp;:</b> jeudi 12 mai 2016 16:32<br>
<b>=C0&nbsp;:</b> yocto@yoctoproject.org<br>
<b>Objet&nbsp;:</b> [yocto] how to install a kernel module<o:p></o:p></span=
></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif">Hej</span><span lang=3D"EN-US">
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">I created a recipe for a own modul. It's similar to th=
e example given at:</span><span lang=3D"EN-US">
<br>
<br>
</span><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-=
skeleton/recipes-kernel/hello-mod"><span lang=3D"EN-US" style=3D"font-size:=
10.0pt;font-family:&quot;Arial&quot;,sans-serif">http://git.yoctoproject.or=
g/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-kernel/hello-mod</span></a>=
<span lang=3D"EN-US">
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">I checked the bitbake process. A &quot;kernel-module-&=
lt;module name&gt;&quot; package is created and filled with the ko-file.</s=
pan><span lang=3D"EN-US">
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">Actually I am failing to bring the module into my imag=
e and run it. Are there a special command for the &quot;local.conf&quot; or=
 so?</span><span lang=3D"EN-US">
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">How and where to include the module?</span><span lang=
=3D"EN-US">
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,sans-serif">Regards!<br>
<br>
Stefan Jaritz<br>
<br>
------------------------------------------------------------<br>
ESA Elektroschaltanlagen Grimma GmbH<br>
Broner Ring 30<br>
04668 Grimma<br>
Telefon: &#43;49 3437 9211 176<br>
Telefax: &#43;49 3437 9211 26<br>
E-Mail: </span><a href=3D"mailto:s.jaritz@esa-grimma.de"><span lang=3D"EN-U=
S" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">s.ja=
ritz@esa-grimma.de</span></a><span lang=3D"EN-US" style=3D"font-size:10.0pt=
;font-family:&quot;Arial&quot;,sans-serif"><br>
Internet: </span><a href=3D"www.esa-grimma.de"><span lang=3D"EN-US" style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif">www.esa-grim=
ma.de</span></a><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:=
&quot;Arial&quot;,sans-serif"><br>
<br>
<br>
Gesch=E4ftsf=FChrer:<br>
Dipl.-Ing. J=F6rg Gaitzsch<br>
J=F6rg Reinker<br>
<br>
Sitz der Gesellschaft: Grimma<br>
Ust.-ID: DE 141784437<br>
Amtsgericht: Leipzig, HRB 5159<br>
Steuernummer: 238/108/00755<br>
<br>
<br>
Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen. <br>
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich er=
halten <br>
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese <b=
r>
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Ma=
il <br>
ist nicht gestattet.<br>
<br>
This e-mail may contain confidential and/or privileged information. If you =
are <br>
not the intended recipient (or have received this e-mail in error) please <=
br>
notify the sender immediately and destroy this e-mail. Any unauthorized <br=
>
copying, disclosure or distribution of the material in this e-mail is stric=
tly <br>
forbidden.</span><span lang=3D"EN-US"><o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_F6CD090A69E64C4289DC608E1C5D2024253EEC83DE08W1305global_--
