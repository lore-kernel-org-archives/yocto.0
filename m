Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35318E00D35; Tue, 10 May 2016 06:31:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.142 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 12132 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 May 2016 06:30:59 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0142.outbound.protection.outlook.com [157.56.111.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B2D7E00D2E
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 06:30:59 -0700 (PDT)
Received: from SN1PR07CA0004.namprd07.prod.outlook.com (10.162.170.142) by
	BY2PR07MB616.namprd07.prod.outlook.com (10.141.222.156) with Microsoft
	SMTP Server (TLS) id 15.1.485.9; Tue, 10 May 2016 13:30:56 +0000
Received: from BY2FFO11OLC005.protection.gbl (2a01:111:f400:7c0c::166) by
	SN1PR07CA0004.outlook.office365.com (2a01:111:e400:3000::14) with
	Microsoft SMTP Server (TLS) id 15.1.492.11 via Frontend Transport;
	Tue, 10 May 2016 13:30:56 +0000
Authentication-Results: spf=neutral (sender IP is 199.61.26.153)
	smtp.mailfrom=Honeywell.com; hotmail.com; dkim=none (message not signed)
	header.d=none; hotmail.com;
	dmarc=none action=none header.from=Honeywell.com; 
Received-SPF: Neutral (protection.outlook.com: 199.61.26.153 is neither
	permitted nor denied by domain of Honeywell.com)
Received: from DE08W1025.honeywell.com (199.61.26.153) by
	BY2FFO11OLC005.mail.protection.outlook.com (10.1.14.145) with Microsoft
	SMTP Server (TLS) id 15.1.492.8 via Frontend Transport;
	Tue, 10 May 2016 13:30:55 +0000
Received: from de08ex5004.global.ds.honeywell.com (10.216.34.43) by
	DE08W1025.honeywell.com (10.221.248.36) with Microsoft SMTP Server id
	14.3.266.1; Tue, 10 May 2016 09:29:30 -0400
Received: from DE08W1319.global.ds.honeywell.com (10.216.14.121) by
	DE08EX5004.global.ds.honeywell.com (10.216.14.77) with Microsoft SMTP
	Server (TLS) id 14.3.266.1; Tue, 10 May 2016 09:29:32 -0400
Received: from DE08W1305.global.ds.honeywell.com ([169.254.1.182]) by
	DE08W1319.global.ds.honeywell.com ([10.216.14.121]) with mapi id
	14.03.0266.001; Tue, 10 May 2016 09:29:32 -0400
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: Chris Trobridge <christrobridge@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Formulating Recipe for out-of-tree kernel module
Thread-Index: AQHRqomPnR2HR1J0mUmoZHXsvdUXs5+x7wLggABdCoD//9Cn0A==
Date: Tue, 10 May 2016 13:29:30 +0000
Message-ID: <F6CD090A69E64C4289DC608E1C5D2024253EE422@DE08W1305.global.ds.honeywell.com>
References: <DUB130-W50FCEBE5B5238A97737A77DA700@phx.gbl>,
	<DUB130-W83F603206C6CE9B5D84029DA710@phx.gbl>,
	<F6CD090A69E64C4289DC608E1C5D2024253EE345@DE08W1305.global.ds.honeywell.com>
	<DUB130-W57477F296DFD10B36D06BDA710@phx.gbl>
In-Reply-To: <DUB130-W57477F296DFD10B36D06BDA710@phx.gbl>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.19.130.199]
MIME-Version: 1.0
X-CFilter-Loop: Forwarded
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:199.61.26.153; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(2980300002)(199003)(52314003)(189002)(9170700002)(5001770100001)(81166005)(230783001)(33656002)(5003600100002)(19625215002)(54356999)(77096005)(6806005)(15395725005)(16236675004)(1720100001)(102836003)(189998001)(19580395003)(6116002)(1220700001)(2906002)(8936002)(3846002)(19580405001)(107886002)(790700001)(84326002)(19617315012)(31430400001)(586003)(55846006)(11100500001)(2501003)(105586002)(87936001)(106116001)(106466001)(19300405004)(50986999)(15975445007)(2900100001)(2950100001)(5004730100002)(92566002)(76176999)(86362001)(575784001)(5008740100001)(2920100001)(93886004)(512934002)(562404015);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY2PR07MB616;
	H:DE08W1025.honeywell.com; FPR:; SPF:Neutral; MLV:sfv; A:1; MX:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BY2FFO11OLC005;
	1:3OoLbpQwZIXJatboEaJJHqL9r2lCvuSiw2tNlChkUzlhWQxjbGXOqncxyi5lfF3g6hLHLsvS+znFOcKAd8cTq2GeUIgyHELo9Y95I+YXUHBQ2xZgH6jcgacxXkCXQ3rMBSiX24VNNsRIVN4bV3fi829wwE4i2BwoqGr3NeKn4UsmO9IduSo/tJ7110C5LNsTaSiwWf5wOtfTRxc/5ph1pHhWd07pKSXqpT5U80SoYUJmIiIfiZ9cYNU1VBW+wVby7YsGtnfwTsMfxxCPam9NIu0POx9yxUWT9H92H5ka4kc1wWHSLy87oQXNNYKkoMU6S+Ca6KzPW5shp/spOTNHPJ/pm/BNDfDxXwBMa9O/vJDGZWLBNff4fBezu2JzfNDBs9KffcEGwz+5tpFr3DnOrZHEzN19151znn5P9j0pHLngcqkc6j58oSqEtExgeSFA7oNlb2ss5NHENSnyHasymifCyarfRh5W60Kk3BWgfc+JgD0j86AkG29yIuf6Nrt5NxQPMoCuP4wyaWBQLUJvUA==
X-MS-Office365-Filtering-Correlation-Id: 8cb4b416-d924-44b3-2692-08d378d750cc
X-Microsoft-Exchange-Diagnostics: 1; BY2PR07MB616;
	2:K/3WhyFHZ5Eyyi/+nbqg5ea/MfAQko90WV9nEFdDDr6JYgptmkkO4JJ82EpDBsw+v9PIiayXVCkaZA5FOpSjxlKKWmXvyJYwoA0343z/jSe/Ph11SBAaZZgaObZvteli+Kn/hGeXPwJtWUSHT3aM1warsIDMJMbD/hmzkgA+yddTbNAfZhsr6UHk4wzDh9Dp;
	3:0j0dzBrrc117k2UxvsR3ejcS9NMrdYZG7tFDWDOyEcUJFnEF4vSlAXcC+QbjBS8FyYR3kSLXrKJSGu7kW7XWQ684/4fVRPzsGTI3tPVx+CfyK0kK8TnR6jQAs40HwMxGCdyXovOAelatbK7LhwagB6+4V2ma6sY4kLl/uLpZgkSMJupNDgQL1RpwzCjnHNa3yH9NrIGvRtVVL7iFgRJRZ9AuCjOG0jXDnttkw8JoL0g=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR07MB616;
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BY2PR07MB616;
	25:bh87cEPhnZ+yuwDUBKGhWfX6GMfGtBZGK5DvV32Fx5?=
	=?us-ascii?Q?aS9q50YpeNfzeIRtqMqh+9+XtcRqvGvWAMBHqFA69aBKhUFerPwq+uCV6lmg?=
	=?us-ascii?Q?yOF7+64wAxZ5tAqwx2AhpL8fOmFIhq5b+q6Te2sDi6GbW4GNCH3M7n469s5n?=
	=?us-ascii?Q?1+AbI6c6wnvdhtdDRkKltyibNtyXfX0m9PneJUdt6xHTerpL4mYdSADal4O3?=
	=?us-ascii?Q?ekmYNd8S8VjJ9dl4yu+kf8R0dZb/m5isDMXagS1oOL6oUm+voknBRp0s1BrO?=
	=?us-ascii?Q?Pp9ellJVhl5MGiVf/OJJkSGquLpKtHcA15D5uoqD3iKbbXsNm4GbmQrxz0kC?=
	=?us-ascii?Q?tIW9clgguO05inpP5QDP4aAn9h3NRQMRPZfQeVfbhct07hDucvBf8P9NiMAW?=
	=?us-ascii?Q?cJ5IICtPGBHdD6qY66jP1W0jqtJ+jOpml4snkyxod9UaXbG+RZS80qEwuXR1?=
	=?us-ascii?Q?S9N+HWgGuh92FIjDMbQVpFhl9I1oh+r0hk+HHa44dPLQt7TUkkBYYhwSPzjs?=
	=?us-ascii?Q?KDVmh2zA407nyvkBzdHEiYKvTaKdaPRWTDr0GjOrjS9oty42en31uKck3mVY?=
	=?us-ascii?Q?e0fafihlr+jrXj2+jJGrqNWs5AQUEV5HHR4FwK3KYPEd4NWlIrnsu0djHtZ2?=
	=?us-ascii?Q?cg6y8zr6CGJuowurjotaY2bChl0PIRrVFhh8GKKo2EFGOnpJF1klovZcWZFi?=
	=?us-ascii?Q?gNQnenBc67b81kxi4BHIL1p/myHKuQ57wc3jIKoQTgHkOdOBjIzbc3B3Bj3W?=
	=?us-ascii?Q?6FZVu0u4WNiHuPvCX82BmGw8Q3bPENi62XpDT3b62rCAOhd1vb/WZRcaw1YT?=
	=?us-ascii?Q?fP2sz0wVEPBtZp/qgacFnBl/SEQJ0AElyTp/sLM/AiHqW99neNtWAOKVV3bc?=
	=?us-ascii?Q?/Uj5sfWo9pf9QJvbQxFeqEYU2T56+1djlZPSQxvui5BaFBlQvY1kY5LEOcOz?=
	=?us-ascii?Q?2NYZDnERhePP1cPCS3/wKfLvuyLskdKMYaP5hEbXhBTvPV396vXOmnEXDncc?=
	=?us-ascii?Q?+kl50jLR3tUdfwEDqUK4IBC4Zd9QVHPBa3GEP2Yy5SraJCKD1dSsXxDa9rrb?=
	=?us-ascii?Q?QfDE3fbCP9mV8DcYkf9yNLxS2Q?=
X-Microsoft-Exchange-Diagnostics: 1; BY2PR07MB616;
	20:s5o2KabUJUh4HICx54GcLfvId6XoiDmGOEN1+ILy64oj/EbtbZjdOoPU4IeE4uHcQscltVDYtZHgRgBNtCNTZNgwee/rostQclFH1Sm2Cfz0vxHus5uRhq5HKWKw4fS4SLIbHtKDcDAMKEB8mQ7JpmcxdAX7ijXQYmo51NZ+YruTHaFO8OWxIgT8aTf6P/0ZHLNArgiEXhpfJk0GHIuygR+BMmWgOnP28zXlZiW0QYM75TR1YGUf+Yw3gH54inkA1F5J3E2PMUYWzOPmKZgnSizYfsx5Scf6RpgZG3M8dWbi0lP9IqU+g15YNiXHiY1Rs5WAUp02oi0m0X6oi/aQR6HEF8hy+kbEbQuzNAvnBT2xxZIKQJB1+N5lhpy9cvX56n0ngkMbN3GeP421E/dVfUq/BblqZ/qI6kxKhdu6xov7lezXxnkjm3cUWseEiSxvdC3BDrZOptvIzrp45i8UKFQaYM7n3owy+3MqLNPUhRz9NQnckMfY0L8hZ7HnINii
X-Microsoft-Antispam-PRVS: <BY2PR07MB616BC72C082FDB5664EE01196710@BY2PR07MB616.namprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13024025)(13023025)(13015025)(13018025)(13017025)(5005006)(8121501046)(3002001)(10201501046)(6055026);
	SRVR:BY2PR07MB616; BCL:0; PCL:0; RULEID:; SRVR:BY2PR07MB616; 
X-Microsoft-Exchange-Diagnostics: 1; BY2PR07MB616;
	4:IbpZ3YMdppDb2i1QHiguL9zoOEyZTas8w7TJQLcqY8+PMW1A33SET0M4/D5N4ihFFhl8uXfZjhlKYOYxId9Hnr2I+9qZSYQPvvH22TKsIGXpAXuwWnoAf8ZVRnsqIEAYTRfvFA6+uNqHv1Z5qMDXmp2S50dRXxOw1jYCbOJL3bTT31GoG4f6CuYcqxjpD46+A+O4q4uuviQadGMYWqgytGlxyK/cVB9TTvHVNOnA2DK/bpNdPS/Rzc95FihgNydJzdNlAVbc89szo7f2Yno1OF2Snm4jH9D0vQ+eeLNzcIWRkLRyz7uNMLyA9ELWV/wY+kquNJTCwi0EKJODVLAZZOCMZQq+KGe6nku+Zw25cXlzT2mPoGyFKDaBUVUv6vg/c/T5IMKl9g3n4NHtFACgLyXadeXMLQbz6GF0hEYYc74z1A00PuT8kUxmmhZNmx/06t7DcryH/lm6Kpbv15/2yxkurccInsDOpXPxi93eoaw=
X-Forefront-PRVS: 0938781D02
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BY2PR07MB616;
	23:QXerGD6y5M3V49QV5ockvmEvb/Ms9IUfL3FGYcxLuI?=
	=?us-ascii?Q?RvJmxPSRLAgmSpCpceGlNLR3zVJqfxzs9YK2Icyz9JC2PbN2XhUXXCM02pIn?=
	=?us-ascii?Q?s5e/foQ+S5UGsxjDNhmRdrSuALHECEKRqA6n9mFFoT9LYoAZnag5zcmIMIM/?=
	=?us-ascii?Q?IiNKolP7/1p/ETXih9t8z2xsNk3Gwdj7OhwuaqDaFpVZHE+dRIxRqSamL5Nr?=
	=?us-ascii?Q?1Xqs2Mik2Y+wsG/veHONVLqeR55/ok0PTSVH7s87a6uQDonq66WFWhIBSfkE?=
	=?us-ascii?Q?1NMR1iNZ1JK/cPuXqAqbPOcuFsjuH2wOe85jmxSZ9qZ6FDvkDakgZz4xQ4Dn?=
	=?us-ascii?Q?WsJE2xWFjk3Zn2s4e/Z40KZae7WZqVm6YsQRuetoIQDYqc0XjGwLFbE0kXH/?=
	=?us-ascii?Q?M35/JlB8QUS7v32rUu3YHfOcfLPo8HIH9ds3Tz7+M6iBdR2hw5/RSRV3rYtL?=
	=?us-ascii?Q?reiGcaU+1MEUVG39PjARK1HFUOTdxuAQ3q2FuMrTUp2EGhHKg2NbHJ7wHwFk?=
	=?us-ascii?Q?9UYa1drwyAxKg0+E28qAGkQfntvOl2zV6bMvFds2zEnGl+6j6wnwlVqP+1pD?=
	=?us-ascii?Q?p8HOqTLarFrJau6b8fGY37UW4ovTKyZap2gYvZj9cfgD4D954AgdOiOiUp/T?=
	=?us-ascii?Q?42KBp+Rrg3smIfTD6gY6N8fquNfWAi4OI7H+Xamm3wAbiOITqGcLAYhNlFbn?=
	=?us-ascii?Q?uRDLOEKk9WF2jAwvm9bEWeErg3lCIXV9T4iOrr1v9OAY+C87JSAT78eDpikD?=
	=?us-ascii?Q?C6+Ug9hr5Dk5iBAeZUTIp7rjFQO8q4NU2Go0/kuzBXB97HAqMqH9sVcJ5yP+?=
	=?us-ascii?Q?5p/0OU2sS4omAk8DcTEqCs2EfEKsFTk8HtnKyV90Q1PpTFNOJfcHkwdbuE8Q?=
	=?us-ascii?Q?C3vTrWRp6CaN1DxwGHKFD3LaUqUHhy+MQtTWe4pVatmLerZIwuRbdWZ19x3y?=
	=?us-ascii?Q?/rhJZaTClTUP/SAxrmx3qzpZvVGeeLbMJyMejmofKZa27CrzOoBmzpI658QZ?=
	=?us-ascii?Q?2FS1ErzFNgV0lfjAvmEYY7iATgnclVX3JLkNQFD59Id0PTOeXBY43QxXKfPJ?=
	=?us-ascii?Q?gFl7gVJ0AO2uCOd5ve42Z/AZkoKxUW/qgNWKYSxwmf4x1NTS+8NGfE5f02eQ?=
	=?us-ascii?Q?w+C1YItNG4VP3h44a5GFV5mGVGk/1eSV+CDfBrNH+1D/Utn8PCkaltA9XhxR?=
	=?us-ascii?Q?vxV4y35FUwSNT+5PPSerz7iwlmsG/xGp9MOldnU5y8FytsgzySHza/7zYiax?=
	=?us-ascii?Q?NEkRv8bOF93FYVCpizPrg4WIdT+Glcpg0BKf29oK+whF2W8TfTHHpTkqF/zM?=
	=?us-ascii?Q?28aqdF/F6eyWx3s+MVG2nVvoGLFEM4dUvXQocjypoRN9hcTDjed9X9sB7jzJ?=
	=?us-ascii?Q?byWmJZ3DqbliqZ0uwHxMPoj1rqZ83vLW0Pc1GQxPAAPCbrKitqc8l8HukmwD?=
	=?us-ascii?Q?Ftf3OvuQqkye5ssKhmW8xFovYGW9k=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BY2PR07MB616;
	5:x8lTAwfihW7wHVR1KTofkf1DVESkIDDwbiudR+53R08Bd86DhE9qReTzA1svYfmujmBFQsxFUOW3fyfWUfR9hzn+98VczRarROqMwzt3ZuN6BUeYh4pYjYFaEJ9Qf5pysjYqyZGaOU2eorPeDsG8zw==;
	24:mAnzKPM9QdfNUBtL/XCZFwCaYyhKuZZ/mxHkieRN/BbHdEUJIaPmIgZGibC2j6OueLD+LUw1GS/CRxB0BYeeYMlPgm+bBD/xdT39/GHqvoo=;
	7:Hw594Wa8Ag4W+JYGZMfHoVQXQxnlpT1hNnwjhOXrfyz/JNvClK+RUmyk2NKLYct7ndH8txf6+HcVavKIp34NsAwUR7eTHVbHt2ZGjVRmJmelGmMC2zVYUn6KzZOvbJ/44QgpMrLGh7CVWxHIe3RNe0WEzlveZpXztenpcfQ72odMeD0yJXp81b3ypuZn5lRt
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2016 13:30:55.4642 (UTC)
X-MS-Exchange-CrossTenant-Id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=96ece526-9c7d-48b0-8daf-8b93c90a5d18;
	Ip=[199.61.26.153]; Helo=[DE08W1025.honeywell.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR07MB616
Subject: Re: Formulating Recipe for out-of-tree kernel module
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
X-List-Received-Date: Tue, 10 May 2016 13:31:05 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_F6CD090A69E64C4289DC608E1C5D2024253EE422DE08W1305global_"

--_000_F6CD090A69E64C4289DC608E1C5D2024253EE422DE08W1305global_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Ok! I better understand your need now.
The fix solves the case where an out of tree module is dependent of a kerne=
l module which is not built as a built-in module.

Just in case, did you have a look on these links?
http://stackoverflow.com/a/33718934/1729117
https://www.kernel.org/doc/Documentation/kbuild/modules.txt (Chapter 6.2 an=
d 6.3)

Jo=EBl Esponde
Honeywell | Sensing and Productivity Solutions

De : Chris Trobridge [mailto:christrobridge@hotmail.com]
Envoy=E9 : mardi 10 mai 2016 13:28
=C0 : Esponde, Joel; yocto@yoctoproject.org
Objet : RE: [yocto] Formulating Recipe for out-of-tree kernel module

Thanks Joel,

I am on Krogoth.

My reading of that patch is that it allows out-of-tree modules to depend on=
 symbols from the kernel but I don't see how it would help with depending o=
n another out-of-tree module?  Those symbols are not added to the kernel Mo=
dule.symvers.

I've been following some other usage I read that 'out-of-tree' means compil=
ing outside/after the kernel build, which may not be 100% accurate?

Anyway, it suggests to me that copying the first module's Module.symvers to=
 the shared kernel staging area and then referencing that from the second m=
odule is probably better than my current solution, provided I don't break a=
ny conventions on using the staging area.

Cheers,
Chris
________________________________
From: Joel.Esponde@Honeywell.com<mailto:Joel.Esponde@Honeywell.com>
To: christrobridge@hotmail.com<mailto:christrobridge@hotmail.com>; yocto@yo=
ctoproject.org<mailto:yocto@yoctoproject.org>
Subject: RE: [yocto] Formulating Recipe for out-of-tree kernel module
Date: Tue, 10 May 2016 10:06:37 +0000
Hi,

There is a bitbake issue that prevents building an out-of-tree module that =
is dependent of another out-of-tree module.
This issue has been fixed recently:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dmaster-next&id=
=3Da9cc27e6916e5affe8b0cc431c3e89abd7681643

This fix has been released on yocto 2.1 (krogoth).
So if you are using an older Yocto project, you will have to fix two recipe=
s manually.

I hope this will help!

Jo=EBl Esponde
Honeywell | Sensing and Productivity Solutions

De : yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org> =
[mailto:yocto-bounces@yoctoproject.org] De la part de Chris Trobridge
Envoy=E9 : mardi 10 mai 2016 08:59
=C0 : yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Objet : Re: [yocto] Formulating Recipe for out-of-tree kernel module

At the risk of answering my own question...

Splitting a driver package into a module recipe and a separate recipe for u=
ser-mode utilities works in that each recipe uses the appropriate build pro=
cess and puts files in the appropriate subdirectory of /work/.

I still don't see a way to build one out-of-tree module against another.  I=
 am interested in opinion on this.  Should I try to get these drivers built=
 in tree?  They seem to be the only two out-of-tree drivers in the build at=
 present.  There is also some facility to add extra modules to the dahdi li=
nux build, although achieving this with bitbake could be challenging too.

Cheers,
Chris
________________________________
From: christrobridge@hotmail.com<mailto:christrobridge@hotmail.com>
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Date: Mon, 9 May 2016 12:15:26 +0100
Subject: [yocto] Formulating Recipe for out-of-tree kernel module
I am looking to produce a recipe for the amfeltec usb-fxs adaptor (http://a=
mfeltec.com/products/piranha-usb-fxs-adapter/), with the intention of contr=
ibuting this to the meta-telephony layer.

However, I have found a few obstacles to getting a clean recipe:

  *   The makefile produces both a kernel module and a user utility, with t=
he latter being hard-coded to build with g++.  I can produce a recipe to pr=
oduce one or other of the components but not both.  Given the structure of =
the build directories, should this be be achievable, or should I be spittin=
g up the recipe in two?
  *   Dahdi header files and Modules.symvers are required.  A header file i=
s used to deduce the version of Dahdi, Modules.symvers is required for the =
module build process.  Hence, requires the location of the Dahdi source/bui=
ld directory.  This can be set relative to the amfeltec work directory but =
this feels wrong.

In more general terms my questions are:

  *   Should I split a recipe into kernel and non-kernel components?
  *   How should one out-of-tree recipe access the headers/Module.symvers f=
rom another (should that recipe be installing them in ${STAGING_KERNEL_DIR}=
 (or somewhere else)?)

Cheers,
Chris


-- _______________________________________________ yocto mailing list yocto=
@yoctoproject.org<mailto:yocto@yoctoproject.org> https://lists.yoctoproject=
.org/listinfo/yocto

--_000_F6CD090A69E64C4289DC608E1C5D2024253EE422DE08W1305global_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.ecxmsonormal, li.ecxmsonormal, div.ecxmsonormal
	{mso-style-name:ecxmsonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.ecxmsochpdefault, li.ecxmsochpdefault, div.ecxmsochpdefault
	{mso-style-name:ecxmsochpdefault;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.ecxmsonormal1, li.ecxmsonormal1, div.ecxmsonormal1
	{mso-style-name:ecxmsonormal1;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
p.ecxmsochpdefault1, li.ecxmsochpdefault1, div.ecxmsochpdefault1
	{mso-style-name:ecxmsochpdefault1;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:10.0pt;
	font-family:"Times New Roman",serif;}
span.ecxmsohyperlink
	{mso-style-name:ecxmsohyperlink;}
span.ecxmsohyperlinkfollowed
	{mso-style-name:ecxmsohyperlinkfollowed;}
span.ecxemailstyle18
	{mso-style-name:ecxemailstyle18;}
span.ecxemailstyle19
	{mso-style-name:ecxemailstyle19;}
span.ecxmsohyperlink1
	{mso-style-name:ecxmsohyperlink1;
	color:blue;
	text-decoration:underline;}
span.ecxmsohyperlinkfollowed1
	{mso-style-name:ecxmsohyperlinkfollowed1;
	color:purple;
	text-decoration:underline;}
span.ecxemailstyle181
	{mso-style-name:ecxemailstyle181;
	font-family:"Calibri",sans-serif;
	color:#400000;
	font-weight:normal;
	font-style:normal;}
span.ecxemailstyle191
	{mso-style-name:ecxemailstyle191;
	font-family:"Calibri",sans-serif;
	color:#400000;
	font-weight:normal;
	font-style:normal;}
span.EmailStyle30
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#400000;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:362172172;
	mso-list-template-ids:-2098296626;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1285769744;
	mso-list-template-ids:781244554;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2
	{mso-list-id:1434931522;
	mso-list-template-ids:1385608514;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3
	{mso-list-id:1552493866;
	mso-list-template-ids:-434972970;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:36.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
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
<body lang=3D"FR" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">Ok! I better understand your need now.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">The fix solves the case where an out of tree module is dependent of a =
kernel module which is not built as a built-in module.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US">Just in case, did you have a look on these links?<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><a href=3D"http://stackoverflow.com/a/33718934/1729117">http://stackov=
erflow.com/a/33718934/1729117</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><a href=3D"https://www.kernel.org/doc/Documentation/kbuild/modules.txt=
">https://www.kernel.org/doc/Documentation/kbuild/modules.txt</a>
 (Chapter 6.2 and 6.3)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000;mso-fareast-language:EN=
-US"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#707070">Jo=EBl Esponde<o:p></=
o:p></span></b></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:9.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif;color:#707070">Honeywell
</span></b><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#707070">| Sensing and Productivity Solutions<=
o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:E=
N-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">De&nbsp;:</span></b><span lang=3D=
"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f"> Chris Trobridge [mailto:christrobridge@hotmail.com]
<br>
<b>Envoy=E9&nbsp;:</b> mardi 10 mai 2016 13:28<br>
<b>=C0&nbsp;:</b> Esponde, Joel; yocto@yoctoproject.org<br>
<b>Objet&nbsp;:</b> RE: [yocto] Formulating Recipe for out-of-tree kernel m=
odule<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">Thanks Joel,<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">I am on Krogoth.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">My reading of that patch is that it allows out-of-tre=
e modules to depend on symbols from the kernel but I don't see how it would=
 help with depending on another out-of-tree module?
 &nbsp;Those symbols are not added to the kernel Module.symvers.<o:p></o:p>=
</span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">I've been following some other usage I read that 'out=
-of-tree' means compiling outside/after the kernel build, which may not be =
100% accurate?<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">Anyway, it suggests to me that copying the first modu=
le's Module.symvers to the shared kernel staging area and then referencing =
that from the second module is probably better than
 my current solution, provided I don't break any conventions on using the s=
taging area.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">Cheers,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-f=
amily:&quot;Calibri&quot;,sans-serif">Chris<o:p></o:p></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span lang=3D"EN-US" =
style=3D"font-family:&quot;Calibri&quot;,sans-serif">From:
</span><a href=3D"mailto:Joel.Esponde@Honeywell.com"><span lang=3D"EN-US" s=
tyle=3D"font-family:&quot;Calibri&quot;,sans-serif">Joel.Esponde@Honeywell.=
com</span></a><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;=
,sans-serif"><br>
To: </span><a href=3D"mailto:christrobridge@hotmail.com"><span lang=3D"EN-U=
S" style=3D"font-family:&quot;Calibri&quot;,sans-serif">christrobridge@hotm=
ail.com</span></a><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&q=
uot;,sans-serif">;
</span><a href=3D"mailto:yocto@yoctoproject.org"><span lang=3D"EN-US" style=
=3D"font-family:&quot;Calibri&quot;,sans-serif">yocto@yoctoproject.org</spa=
n></a><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-se=
rif"><br>
Subject: RE: [yocto] Formulating Recipe for out-of-tree kernel module<br>
Date: Tue, 10 May 2016 10:06:37 &#43;0000<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000">Hi,</span><span lang=
=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000">&nbsp;</span><span lan=
g=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000">There is a bitbake iss=
ue that prevents building an out-of-tree module that is dependent of anothe=
r out-of-tree module.</span><span lang=3D"EN-US" style=3D"font-family:&quot=
;Calibri&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000">This issue has been fi=
xed recently:</span><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri=
&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi=
/poky/commit/?h=3Dmaster-next&amp;id=3Da9cc27e6916e5affe8b0cc431c3e89abd768=
1643" target=3D"_blank"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font=
-family:&quot;Calibri&quot;,sans-serif">http://git.yoctoproject.org/cgit/cg=
it.cgi/poky/commit/?h=3Dmaster-next&amp;id=3Da9cc27e6916e5affe8b0cc431c3e89=
abd7681643</span></a><span lang=3D"EN-US" style=3D"font-family:&quot;Calibr=
i&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000">&nbsp;</span><span lan=
g=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000">This fix has been rele=
ased on yocto 2.1 (krogoth).</span><span lang=3D"EN-US" style=3D"font-famil=
y:&quot;Calibri&quot;,sans-serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000">So if you are using an=
 older Yocto project, you will have to fix two recipes manually.</span><spa=
n lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000">&nbsp;</span><span lan=
g=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000">I hope this will help!=
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-s=
erif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#400000">&nbsp;</span><span lan=
g=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p=
></span></p>
<div>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#707070">Jo=EBl Esponde</span>=
</b><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-seri=
f"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:9.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif;color:#707070">Honeywell
</span></b><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#707070">| Sensing and Productivity Solutions<=
/span><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-se=
rif"><o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">&nbsp;<o:p></o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">De&nbsp;:</span></b><span lang=3D=
"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-seri=
f">
</span><a href=3D"mailto:yocto-bounces@yoctoproject.org"><span lang=3D"EN-U=
S" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">yo=
cto-bounces@yoctoproject.org</span></a><span lang=3D"EN-US" style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> [</span><a href=3D"=
mailto:yocto-bounces@yoctoproject.org"><span lang=3D"EN-US" style=3D"font-s=
ize:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">mailto:yocto-bounces=
@yoctoproject.org</span></a><span lang=3D"EN-US" style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif">]
<b>De la part de</b> Chris Trobridge<br>
<b>Envoy=E9&nbsp;:</b> mardi 10 mai 2016 08:59<br>
<b>=C0&nbsp;:</b> </span><a href=3D"mailto:yocto@yoctoproject.org"><span la=
ng=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans=
-serif">yocto@yoctoproject.org</span></a><span lang=3D"EN-US" style=3D"font=
-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"><br>
<b>Objet&nbsp;:</b> Re: [yocto] Formulating Recipe for out-of-tree kernel m=
odule</span><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,s=
ans-serif"><o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">&nbsp;<o:p></o:p></span></p>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">At the risk of answering my own question...<o:p></o:p=
></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">&nbsp;<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">Splitting a driver package into a module recipe and a=
 separate recipe for user-mode utilities works in that each recipe uses the=
 appropriate build process and puts files in the
 appropriate subdirectory of /work/.<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">I still don't see a way to build one out-of-tree modu=
le against another. &nbsp;I am interested in opinion on this. &nbsp;Should =
I try to get these drivers built in tree? &nbsp;They seem to be
 the only two out-of-tree drivers in the build at present. &nbsp;There is a=
lso some facility to add extra modules to the dahdi linux build, although a=
chieving this with bitbake could be challenging too.<br>
<br>
</span><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">Cheers,<o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">Chris<o:p></o:p></span></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><span=
 style=3D"font-family:&quot;Calibri&quot;,sans-serif">
<hr size=3D"2" width=3D"100%" align=3D"center">
</span></div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">From:
</span><a href=3D"mailto:christrobridge@hotmail.com"><span lang=3D"EN-US" s=
tyle=3D"font-family:&quot;Calibri&quot;,sans-serif">christrobridge@hotmail.=
com</span></a><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;=
,sans-serif"><br>
To: </span><a href=3D"mailto:yocto@yoctoproject.org"><span lang=3D"EN-US" s=
tyle=3D"font-family:&quot;Calibri&quot;,sans-serif">yocto@yoctoproject.org<=
/span></a><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,san=
s-serif"><br>
Date: Mon, 9 May 2016 12:15:26 &#43;0100<br>
Subject: [yocto] Formulating Recipe for out-of-tree kernel module<o:p></o:p=
></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">I am looking to produce a recipe for the amfeltec usb=
-fxs adaptor (</span><a href=3D"http://amfeltec.com/products/piranha-usb-fx=
s-adapter/" target=3D"_blank"><span lang=3D"EN-US" style=3D"font-family:&qu=
ot;Calibri&quot;,sans-serif">http://amfeltec.com/products/piranha-usb-fxs-a=
dapter/</span></a><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&q=
uot;,sans-serif">),
 with the intention of contributing this to the meta-telephony layer.<o:p><=
/o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">However, I have found a few obstacles to getting a cl=
ean recipe:<o:p></o:p></span></p>
</div>
<div>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l1 level1 lfo3">
<span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif">T=
he makefile produces both a kernel module and a user utility, with the latt=
er being hard-coded to build with g&#43;&#43;. &nbsp;I can produce a recipe=
 to produce one or other of the components but not both. &nbsp;Given
 the structure of the build directories, should this be be achievable, or s=
hould I be spitting up the recipe in two?<o:p></o:p></span></li><li class=
=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;=
mso-list:l1 level1 lfo3">
<span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif">D=
ahdi header files and Modules.symvers are required. &nbsp;A header file is =
used to deduce the version of Dahdi,&nbsp;Modules.symvers&nbsp;is required =
for the&nbsp;module build process. &nbsp;Hence, requires the location of
 the Dahdi source/build directory. &nbsp;This can be set relative to the am=
feltec work directory but this feels wrong.<o:p></o:p></span></li></ul>
</div>
<div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">&nbsp;<o:p></o:p></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">In more general terms my questions are:<o:p></o:p></s=
pan></p>
</div>
<div>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto;mso-list:l0 level1 lfo6">
<span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif">S=
hould I split a recipe into kernel and non-kernel components?<o:p></o:p></s=
pan></li><li class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margi=
n-bottom-alt:auto;mso-list:l0 level1 lfo6">
<span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif">H=
ow should one out-of-tree recipe access the headers/Module.symvers from ano=
ther (should that recipe be installing them in ${STAGING_KERNEL_DIR} (or so=
mewhere else)?)<o:p></o:p></span></li></ul>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">Cheers,<o:p></o:p></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">Chris<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif">&nbsp;<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cali=
bri&quot;,sans-serif"><br>
-- _______________________________________________ yocto mailing list </spa=
n><a href=3D"mailto:yocto@yoctoproject.org"><span lang=3D"EN-US" style=3D"f=
ont-family:&quot;Calibri&quot;,sans-serif">yocto@yoctoproject.org</span></a=
><span style=3D"font-family:&quot;Calibri&quot;,sans-serif">
</span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"=
_blank"><span lang=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-=
serif">https://lists.yoctoproject.org/listinfo/yocto</span></a><span lang=
=3D"EN-US" style=3D"font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p>=
</span></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_F6CD090A69E64C4289DC608E1C5D2024253EE422DE08W1305global_--
