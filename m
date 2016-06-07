Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9047E00B7A; Tue,  7 Jun 2016 00:18:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.116 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0116.outbound.protection.outlook.com [207.46.100.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D691E009CD
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 00:18:44 -0700 (PDT)
Received: from BLUPR07CA0047.namprd07.prod.outlook.com (10.255.223.160) by
	BLUPR07MB612.namprd07.prod.outlook.com (10.141.207.27) with Microsoft
	SMTP Server (TLS) id 15.1.506.9; Tue, 7 Jun 2016 07:18:43 +0000
Received: from BN1AFFO11FD011.protection.gbl (2a01:111:f400:7c10::160) by
	BLUPR07CA0047.outlook.office365.com (2a01:111:e400:841::32) with
	Microsoft
	SMTP Server (TLS) id 15.1.511.8 via Frontend Transport; Tue, 7 Jun 2016
	07:18:43 +0000
Authentication-Results: spf=neutral (sender IP is 199.61.26.154)
	smtp.mailfrom=Honeywell.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=Honeywell.com;
Received-SPF: Neutral (protection.outlook.com: 199.61.26.154 is neither
	permitted nor denied by domain of Honeywell.com)
Received: from DE08W1026.honeywell.com (199.61.26.154) by
	BN1AFFO11FD011.mail.protection.outlook.com (10.58.52.71) with Microsoft
	SMTP Server (TLS) id 15.1.497.8 via Frontend Transport;
	Tue, 7 Jun 2016 07:18:42 +0000
Received: from de08ex5005.global.ds.honeywell.com (10.216.34.43) by
	DE08W1026.honeywell.com (10.221.248.37) with Microsoft SMTP Server id
	14.3.266.1; Tue, 7 Jun 2016 03:18:19 -0400
Received: from DE08W1305.global.ds.honeywell.com ([169.254.1.182]) by
	de08ex5005.global.ds.honeywell.com ([10.216.14.78]) with mapi id
	14.03.0266.001; Tue, 7 Jun 2016 03:18:20 -0400
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: Shaun Savage <savages@savages.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] yocto eclipse ADT for mars
Thread-Index: AQHRwFD/rJsIUymsM0OpauSDRXAgJ5/dl85Q
Date: Tue, 7 Jun 2016 07:18:19 +0000
Message-ID: <F6CD090A69E64C4289DC608E1C5D2024253F38B6@DE08W1305.global.ds.honeywell.com>
References: <57560F4D.5070307@savages.com>
In-Reply-To: <57560F4D.5070307@savages.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.19.148.45]
MIME-Version: 1.0
X-CFilter-Loop: Forwarded
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:199.61.26.154; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(2980300002)(189002)(53754006)(199003)(55784002)(790700001)(85806002)(8676002)(81156014)(81166006)(87936001)(3846002)(102836003)(6116002)(6806005)(92566002)(586003)(84326002)(86362001)(16236675004)(2906002)(189998001)(33656002)(2501003)(16796002)(107886002)(105586002)(5003600100002)(31430400001)(76176999)(54356999)(106116001)(5008740100001)(50986999)(15975445007)(68736007)(11100500001)(19617315012)(106466001)(2920100001)(2900100001)(8936002)(77096005)(69596002)(5004730100002)(97736004)(55846006)(19580405001)(5001770100001)(19580395003)(19273905006)(19300405004)(19625215002)(512934002)(2950100001)(1720100001)(563064011);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR07MB612;
	H:DE08W1026.honeywell.com; FPR:; SPF:Neutral;
	PTR:InfoDomainNonexistent; MX:1; A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1AFFO11FD011;
	1:RlrtBOJ2mNQS+CMPU58aFYFNjWutEQ6VueVmr5Egtwki11nlG/0HA0p3Mvb3eWuQveuLs5aWDO7PCuatJXCu2e74ftr3g7GE96lE2nQ/fwh6L6kYCFpTHpdcIlDypoBLvgIb00Y8NlcfheOY6gmyKHOmY1tf+CshFY2AyUL8Zi5s5VDkwf+qm4gbCGtQoOV57XKHLWjhj2xlusH1t3lzKH+pswLwRVOYCwPSBReostlHZpibke2t1SLw945ibxfYMP5HkrHg7Zge+RpKyeV5qyBsJ9qkJVj8c2jz3fBQaLrmit0lLBd4EcEYN9958Fdhifn+1V4AL/J73cKf0TX+KopFKwBUT/A2QBBA9KH8ozRLUBIL6mdLJ5IjfJqy0EL/fxo+CC4HjPX94jnEogEkJKNDzrvDNA3K1qC/5g5wlWlfBwATy7Lbzy4Vj9FWibGfYfJJfyxdbBsBIveuiA8S6v8E6k1R+Rdi7H4xz89bD5heieage8eLxU8XmPaBe0nMYf/43k0WOvXbV/Rh1Q/eMw==
X-MS-Office365-Filtering-Correlation-Id: 358bc123-ff23-43e7-2f4e-08d38ea3f4f5
X-Microsoft-Exchange-Diagnostics: 1; BLUPR07MB612;
	2:CRml+dDuFDzEMch7we53ElPN83b1+gA4h4whRYQDFacD79AB9xN7VfYHvQdTyo3qTZXemyPVGzU5yZ9JxT92QFPAkMquzxL+VFvkJcCZy4TpWX7AUgDuiknAoIkBwqVxS2WghOoVoG0snyHzqzkg902jy57uwuFLaLWOoZjKnfZTB878oT1Ku7uKpxbU0lwl;
	3:9WwXYR8/LNaa+6gtkRasGCoaRHr76kj14FOBNjByhX5oZT1B6DZrJzNiIs75ZXFUDxw0orgU4SM5od/DX/yIG3qPEWL3DsRvjKaII9m28wSGRFVa0K/E2NkBZYDKL+RXPRJFwHdfQMr+SJxC+20Te8ovnxywg9zsPSc0SLBmuK95TQmaoxtValWi25AOs3i05xmYHhE+NcSmQekmzuZcersDndmbSxvaj5Ps5XFMOuo=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR07MB612;
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BLUPR07MB612;
	25:UfOjq/8VFEjLtW83iTP0RHfqEJgPyFAovULf3XqLFQ?=
	=?us-ascii?Q?K7gqivuNIFX5DPTnSkIkkK9uIVlqvStx8FeTyWyRu9d7ScuJwZ1smO1xnVKZ?=
	=?us-ascii?Q?LN4HlXDDhgK6L2wyvRrOL2wTVuaNwol6ZtGaAu1SMLIe43o5L37l6vggz5cR?=
	=?us-ascii?Q?ivftBB7zVbwbNgVymdQfDov8OinO5Hs3C5D2TEnVmU2SG+Yr/w5OAPMfQFs8?=
	=?us-ascii?Q?YExmXYtmUX5n0Om768ihKBT5czeAC5EKNymxJK7OBDh/cHzJ/GWIsoji9KlP?=
	=?us-ascii?Q?UDeSn031Gw9OemBAH1p/ED1GCvQVx8UQ6TPe8gmH88prOnIwsetpLSngLWgb?=
	=?us-ascii?Q?ACOzwFO8CqxZHBd5+swBWt2Q4q1QkeWAlsCdCz1o38JYHov5cCakVakjhASg?=
	=?us-ascii?Q?RqMCR1OjjwzmtfQ9gJ7aQrdUnNbeYtZtZTVsyLkv4akgoAcvRknb3ITStfH8?=
	=?us-ascii?Q?DQnSuq7un3af78K1OCerDrD/zsMBFb6nT7LxUv/Bq9qkLXYyXyYYvzUy1BzU?=
	=?us-ascii?Q?EBoz9LX1lCswAO6MQjo+rtHnzrM1cxY0GVIb3WZ0BqGMlvOF5bVC76hwrNH8?=
	=?us-ascii?Q?RJcrcEX0vvWe+qwVcjiPE16A5GxYH50Qzz+1RyMycr1ncnEoy6VmVraCzBqK?=
	=?us-ascii?Q?tJ11qxhVlGBzyHPg3lBQZccBv7WJs64BF0gAwiTMayh4+w6Bs/X/0U93RWqf?=
	=?us-ascii?Q?LS9JlczsdzAYjVv1bGZ2GdTO4mfB1ehuAX/E+HYpRYKXKBV4NdTgDLjA+HzK?=
	=?us-ascii?Q?PUJxrOK9BPAsfp23r17In0FMsQYpc8LSZx9JtA1ReCO4BCOOmEISJeZpu5oZ?=
	=?us-ascii?Q?s3kSAlS8Wy+SQX1Wv/1B9/fzs1YozAyrdHzlXYf7Mm13Zby7Kvo8aIgRCbXF?=
	=?us-ascii?Q?IqL32jlAaxGx6Dz2g5Gaky5G1Gh89LcuyLVCcXK62lyTO3MlAZu+vQ/RT59h?=
	=?us-ascii?Q?9fGo9CvROun0QehXbrGMvMNvw2J/q9ISmm9u59zKYlaXvSGIfMYAOVjTx9Ev?=
	=?us-ascii?Q?Q=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR07MB612;
	20:n1rjsIw+phRXxU3lIPeybJCGDNaAWhyurbfJZzO9i2PiEAGvzAak9O2klVik/Uqvh28UEKTYuXYN0evi+r2YqCUGtDeD5yaUrpVgNRlVUqTdse13PrzKcr5mJolXHH55kp3nDREVZSKXtFiTB3VdyeHx2/Af+OPuDqQrFTA17HLgBc6sPomFOATCcRGfRfgy6HL6uXjMrEoDcN9NjIFrX4SvaodVZzzWHy2s9xWeCm0rU26nBteTU7rnCDhiKA8oeg4wWA0j01ox7jGMCgvWuVA1glab/Dfw1+A2kHjC2+Di4NFzNOYvIpy638Vzu3ec+zqSLiBiy4d+K3S77b0dLV1oEGMltepQMLdidQGtXIIuCgNucHPrY4LwKMdMw0Dh0i6ufvJqIXZ+GSvgxKOGMQpwYfRBhqRym2Mn6GAdgHedl+F6znmjfrpsvxrYX0faRp/zLJWVKrCjTQGHMGWLAbFNUhxpwk20RFuk6J09ANFa/czbWlHJPz5Bv9VtUUpU
X-Microsoft-Antispam-PRVS: <BLUPR07MB6121D0E46EA46434365FE44965D0@BLUPR07MB612.namprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(21748063052155);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13018025)(8121501046)(5005006)(13015025)(13024025)(13023025)(13017025)(10201501046)(3002001)(6055026);
	SRVR:BLUPR07MB612; BCL:0; PCL:0; RULEID:; SRVR:BLUPR07MB612; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR07MB612;
	4:t0qfF/sRdC/XE1jEtqbR68CyrWpXePw5nv+hm608cZmbfJdC3A+RYbeR2TT37GIIXg7IhH+S2j7KOgbjSbLhh5i46Psk0ouiWn8pdOvbJBxFDpLh5RojSxAvmddC0AkRAH5+kWXGAR+Bh9y2jiDeIFpzaBL63iyEPSsuJ8HCrS8FQ6kGjq2zC4vyFjuoYrxhvAhNZFlUHe6fyFSOlNR0h7ermWqbl+bCpdzOF0Rp4yF35NQA/n3atrLcQQvKXQSInHNpqWRhBhUhyot2gSYbuaPLcyRIdoCadL/HfQ17ksYqKJh5vt8h7F1Ma+/W1bFtsy9uc3WUrGWtSf/gYOW1By9kACRJzl7RSN6XCCPIDAgIlw4UJ+k2rw1pkUMMbaaqWyFsfS/tTL+xXEPnaMOS/zfAVIp0GYXCyImNs12EjCTncq8OQUEKaIuDP4OOVqML057H8eRAlMdB57wgp23mtA7BAMv+Ekmjq+BhNAR69dtI0B32wCmI00ftw9FnchDyVlrUjyA2+MR6HRxGxkquUQ==
X-Forefront-PRVS: 09669DB681
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BLUPR07MB612;
	23:yOhs003OgJQm0INKxdog+Cb9fh5rptaasvevFIRYq8?=
	=?us-ascii?Q?szdNzOoiu4UFGrnjuSMaGkYZsrlS3O6yE4yrVkDGyhCIdegNB93uigMpyd1T?=
	=?us-ascii?Q?hu+vz5gvfbp4UgFrZyTTE3tFwSY0Dtmo974ijNioTuU5UaFseigat8l2c43A?=
	=?us-ascii?Q?Dm+5c7MaC22y46pm9Ko5R0S1EYdpZU6I6Q3yvsClECmL8+F3z1Zg8MPJW7TM?=
	=?us-ascii?Q?gJT7+3JLSQ4vvzg/zbBtT/YF6lbjhojSoWChlMXt55pPF9vsyr9YVeOpQ7yF?=
	=?us-ascii?Q?JTyWsRnT72m2O+odiOlltLbm/KGa1/URr9LBA8+nqsql1dfF52jSZSKuYId5?=
	=?us-ascii?Q?JMqOpPsgfBILD61BltfISCT3QkIaXpTF2H9jSXvzlCH/dSY3Wnc1VCi/vxHs?=
	=?us-ascii?Q?jTCKsgPG8Du4wQLKVfW9RcbUVfrMbH6x+RvqrXLup42dpwzDFs7in6v+fmn1?=
	=?us-ascii?Q?Vk76577vWHxWNYY71pFRw1ytZuNsksXIBPRDeeTfvRKfyuyE6mK1LApOdi9A?=
	=?us-ascii?Q?3MCGgNaqVcfYoEIPVkrUwOH9YaSi7hkNwxUDz2pYpCOhE7uv3BE810ySUqrO?=
	=?us-ascii?Q?ZZO4TKPYub7OFLUHtA2HcXzuDRRYVFiPRCFYaTF/gtcLTOrfkSN0zHgOTbz5?=
	=?us-ascii?Q?ryoeEYKFUf0DW0HYaH1vjzIjgHcCxCGuabqDKZyRTm8EP8bC+gfoKTApioeo?=
	=?us-ascii?Q?yRFtKGkscV8uFzuJOPeXyqdxcvS13hABWmPfPSy2Yvqtu9NjdRNc/XK3pNEV?=
	=?us-ascii?Q?3l8GeJw77sAoFVV+w7hIa74uYfzO7vzotMDgyD8esTpx+QhsIP7JbL8n8Y1H?=
	=?us-ascii?Q?ondBTrWejgB97O0NtgP31AgHqyCyGTqD5hZIYD7RDGmIdpOC9HI9Voi/dTWX?=
	=?us-ascii?Q?TyjZFixBG0JkJcUBs31sV1rvrFYgSMc0bHrntT5sdoAFi0Yh1jHrOcD4068B?=
	=?us-ascii?Q?W7S4L4ZeNbUPj/zE2Gew+VlkY93WXN9mGjlNunApkPvUjVlGH6rMUYIF6UGV?=
	=?us-ascii?Q?fQNkQA/4jl0qqOhpRlkmPqASA7VOxMhXLsKeyhiVuPGVLJTaXeavF1eopx5o?=
	=?us-ascii?Q?zPTvEdDEvb/bj8z0+wVkyhlL0NWwEm3Wlua3yBzueS2qEpUO2mghXoguf5CF?=
	=?us-ascii?Q?apbycRYLk3omcKBPuL3MvRQlCqoEE4nxecFjbJhKO39yeEXa69dG7nWhvwVV?=
	=?us-ascii?Q?BPk0nK3U6H1SRTKtOvF0R25JGCQ3acC1zuttALgKuVYrW/4kPN1H5dJWlDGs?=
	=?us-ascii?Q?kWBZyewSFj7FParnGD5qYjY4qPy8bi4utxVlms9+HEXS0du/kwUHwCG6Hmim?=
	=?us-ascii?Q?m16lW99/R/imzkyrJV44q7XwleQKWSUbd9BWjRisI5+TL2isRJWkMzr0UMVo?=
	=?us-ascii?Q?aVK/kVcbar65VS/wCcP0g18Mbz0pYiiB6Yi6YKE/2z0Wg/DyXK0MFKzPnh2q?=
	=?us-ascii?Q?lOsPwlnnILEGldVywYmg9GPPvA5XXTOIanATn2kDhwoG4PG7FyCA7b9iuX26?=
	=?us-ascii?Q?Q+fXmSK8/h0w=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR07MB612;
	5:YzcTCdkm3fwpaFA4Fvak8tNqFNnQ2yv+wRZlAAxJs41aNm08MPr9SU5Jp6Y4DrPtZ3jTlyseA+WnhYUxXUZVBHbeQYhOfhUatY53IQptIHo3hGKm+gLToP4rh0jV5Qq/daeyfa2ecSp0KkdW8N+Vng==;
	24:xG9JBZ+jz0mnMCEaGA0tE+61ZwLm0gsDp/Y4qOYMjnvHI3myeG1y0yCXfrHBacQ7O/tID7xKjtb/NdTqrF7AJokEEJDxCZHLKdDlF1IxT7E=;
	7:G1igs9JPEINrOPs+OwENs+zty/EbKH7YwTZzjVK7j/8+enqZMXrh2oaOm1Gettf0DADuyrjxHbZq+wVkcTFl4eXtM86wJggljQ0xUzvCoTLBbM/9MGaq+skgLl6MxaTxx0kvMk3zJOQ8VeNezS9WoZJaZrSe8P0GhOWesp1HrK/8DOqKJuLKdisEygcqGw1IuPcQwSSDUrCQ5ub5Yy4wR2Kgzp0M9SHgn6gtRa2SpZI=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2016 07:18:42.7554 (UTC)
X-MS-Exchange-CrossTenant-Id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=96ece526-9c7d-48b0-8daf-8b93c90a5d18;
	Ip=[199.61.26.154]; Helo=[DE08W1026.honeywell.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR07MB612
Subject: Re: yocto eclipse ADT for mars
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
X-List-Received-Date: Tue, 07 Jun 2016 07:18:49 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_F6CD090A69E64C4289DC608E1C5D2024253F38B6DE08W1305global_"

--_000_F6CD090A69E64C4289DC608E1C5D2024253F38B6DE08W1305global_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,



On my side, I had to add the luna site as a first step before being able to=
 install ADT with Eclipse Mars:

Luna - http://download.eclipse.org/releases/luna

ADT plugin is dependent of a version of plugin that is only available in Ec=
lipse Luna.

Once the site added, Eclipse should automatically manage dependencies and i=
nstall the components needed by ADT.



Jo=EBl Esponde

Honeywell | Sensing and Productivity Solutions



> -----Message d'origine-----

> De : yocto-bounces@yoctoproject.org [mailto:yocto-

> bounces@yoctoproject.org] De la part de Shaun Savage

> Envoy=E9 : mardi 7 juin 2016 02:03

> =C0 : yocto@yoctoproject.org

> Objet : [yocto] yocto eclipse ADT for mars

>

> Hi all

>

> I am trying to get eclipse working with eclipse mars.2 release 4.5.2.  I =
have

> patched yocto to build on Ubuntu 16.04. Now I am trying to install yocto =
ADT

> on eclipse.  The problem is rse.terminal has been deprecated.

> Now there is local-shell, telnet and ssh.

> I have tried to build adt from the mars-master branch, but the

> rse.internal.terminal is still there.

>

> What can I do?

>

> shaun

>

> --

> _______________________________________________

> yocto mailing list

> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

> https://lists.yoctoproject.org/listinfo/yocto

--_000_F6CD090A69E64C4289DC608E1C5D2024253F38B6DE08W1305global_
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Texte brut Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.TextebrutCar
	{mso-style-name:"Texte brut Car";
	mso-style-priority:99;
	mso-style-link:"Texte brut";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 129.75pt 70.85pt 129.7pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">On my side, I had to add the=
 luna site as a first step before being able to install ADT with Eclipse Ma=
rs:<o:p></o:p></span></p>
<p class=3D"MsoPlainText" style=3D"margin-left:35.4pt">Luna - <span lang=3D=
"EN-US"><a href=3D"http://download.eclipse.org/releases/luna"><span lang=3D=
"FR">http://download.eclipse.org/releases/luna</span></a></span><o:p></o:p>=
</p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">ADT plugin is dependent of a=
 version of plugin that is only available in Eclipse Luna.<o:p></o:p></span=
></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Once the site added, Eclipse=
 should automatically manage dependencies and install the components needed=
 by ADT.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Jo=EBl Esponde<o:p></o:p></s=
pan></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Honeywell | Sensing and Prod=
uctivity Solutions<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText">&gt; <span style=3D"mso-fareast-language:FR">----=
-Message d'origine-----</span></p>
<p class=3D"MsoPlainText">&gt; <span style=3D"mso-fareast-language:FR">De&n=
bsp;: yocto-bounces@yoctoproject.org [mailto:yocto-</span></p>
<p class=3D"MsoPlainText">&gt; <span style=3D"mso-fareast-language:FR">boun=
ces@yoctoproject.org] De la part de Shaun Savage</span></p>
<p class=3D"MsoPlainText">&gt; <span style=3D"mso-fareast-language:FR">Envo=
y=E9&nbsp;: mardi 7 juin 2016 02:03</span></p>
<p class=3D"MsoPlainText">&gt; <span style=3D"mso-fareast-language:FR">=C0&=
nbsp;: yocto@yoctoproject.org</span></p>
<p class=3D"MsoPlainText">&gt; <span style=3D"mso-fareast-language:FR">Obje=
t&nbsp;: [yocto] yocto eclipse ADT for mars</span></p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; Hi all</p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; I am trying to get eclipse working with ecli=
pse mars.2 release 4.5.2.&nbsp; I have</p>
<p class=3D"MsoPlainText">&gt; patched yocto to build on Ubuntu 16.04. Now =
I am trying to install yocto ADT</p>
<p class=3D"MsoPlainText">&gt; on eclipse.&nbsp; The problem is rse.termina=
l has been deprecated.</p>
<p class=3D"MsoPlainText">&gt; Now there is local-shell, telnet and ssh.</p=
>
<p class=3D"MsoPlainText">&gt; I have tried to build adt from the mars-mast=
er branch, but the</p>
<p class=3D"MsoPlainText">&gt; rse.internal.terminal is still there.</p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; What can I do?</p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; shaun</p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; --</p>
<p class=3D"MsoPlainText">&gt; ____________________________________________=
___</p>
<p class=3D"MsoPlainText">&gt; yocto mailing list</p>
<p class=3D"MsoPlainText">&gt; <a href=3D"mailto:yocto@yoctoproject.org"><s=
pan style=3D"color:windowtext;text-decoration:none">yocto@yoctoproject.org<=
/span></a></p>
<p class=3D"MsoPlainText">&gt; <a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto">
<span style=3D"color:windowtext;text-decoration:none">https://lists.yoctopr=
oject.org/listinfo/yocto</span></a></p>
</div>
</body>
</html>

--_000_F6CD090A69E64C4289DC608E1C5D2024253F38B6DE08W1305global_--
