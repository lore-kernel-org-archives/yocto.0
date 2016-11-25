Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E2D4E00D35; Fri, 25 Nov 2016 03:42:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0135.outbound.protection.outlook.com [104.47.2.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7525CE00C80
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 03:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=j7j8Hj4zqL2zF8g+R7HIUPIpb/HRQKm0IzW2QYbz9cE=;
	b=cKeuhxIUKBwd2GBgoNJA+oz0Huvo/IRaBU7NYpFu57selayNdI9s78hxzhxIrpVkJdEtm8YVPkWfEfssF3EaKbwJVA+KgDOpA2IbFSfln/BAm3lrohJB46OH69nAhlNUsT/lpSQ69ARBZusD2yEXk0OvCFYXBRHWs+KRHs1dNJI=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=Thomas.Thorne@net2edge.com; 
Received: from [172.16.20.67] (81.128.174.58) by
	VI1PR0701MB1887.eurprd07.prod.outlook.com (10.167.197.23) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.747.5; Fri, 25 Nov 2016 11:26:39 +0000
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Organization: Net2Edge Limited
To: <yocto@yoctoproject.org>
Message-ID: <63b4bb45-7ba8-f3c7-dd9d-8eb16f3a5e51@Net2Edge.com>
Date: Fri, 25 Nov 2016 11:26:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
X-Originating-IP: [81.128.174.58]
X-ClientProxiedBy: DB6PR0202CA0002.eurprd02.prod.outlook.com (10.169.218.12)
	To VI1PR0701MB1887.eurprd07.prod.outlook.com (10.167.197.23)
X-MS-Office365-Filtering-Correlation-Id: 292f2484-362b-4907-83fa-08d41525ecfb
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:VI1PR0701MB1887; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR0701MB1887;
	3:5CJ+c5OxrBNM9c8eo2V8Dz1JHmnz2vU/mAkMlXMzvsMIaZ1rKD5YTPD1MjxyHDvN7J1Gb9kWYq7UJN6vDvHwrxqV9q9HEPU7avFY2X3sIpgwnx2amTFBtphpW2L8Ovgaj0EIkPHo+nkxue8wV4oSOep9Wktb/VJjKJaWjs91A2uBQZ8/IyWp5I3Evp+U0dyfwcGII10t4yiqediBHF0qOyzCqF3QWnilJ9NSPiRnSX0B9OlUjMvQeYpzsEt6VXfX5XytYTg6AZ5Zg26nKGXlBg==
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; VI1PR0701MB1887;
	25:TL5WWw0PwLaWiOR4IAZku+sTLTGiD5XyHuS0jWk?=
	=?us-ascii?Q?PBWh1sakjk0EC21ypxN+gSEa6T9pGhgJpotDBpesbAKocOi8z9dQZiMpgmKV?=
	=?us-ascii?Q?iOSgVl9e3m2f5u5P7g9t1XxNH8EIMuKholHXULOWRqvVkUTU4l5cnj0E8cLT?=
	=?us-ascii?Q?9cm5Npcwy/P0dOsB2XtAhlu8ua479uvhbjuCw9n/ORwkM9OlZaq4lZVrhtv1?=
	=?us-ascii?Q?tDjZogpIWxG92kK4SkmaWVXkuRrDpkBGDNo3aS3WlT9KuPMQjeunu1mxMy21?=
	=?us-ascii?Q?INpBZTTN3a3YI9K8WsYQYU7uO/BakA1lOOT037Wwq41hisBH4bUHdAvFDbNB?=
	=?us-ascii?Q?Quh84UAQWPaF7taVFSTaJrpyDPwL9WLLeN4HOiHeikWxBxWu829f4XMRpZN7?=
	=?us-ascii?Q?NoKonBhJ/BEzi0L5SOymeICvXCX8cHMvwzUCZqSO5RCmuLfDJ1/pRzRvQ7Ca?=
	=?us-ascii?Q?c0qjIlWSacB7o95uSBMh9LAc7sZHXpS00THy8xHfB2xz+5/h7OyC0dNC86gW?=
	=?us-ascii?Q?pbOwpXVhwYWNjEi3o9TCVqjBWESkW0NCwo1a/Vmk8p9+ORg54X434NESZiQo?=
	=?us-ascii?Q?ViD5XQDL1o9zjvS+clM2CiI2aXZgsNm+KtJDxiSyl25e6T5c5fgP7O5+Ya/F?=
	=?us-ascii?Q?dFCPmeI+fII1IQKyC82aNr/sGoWCmmzxccZrURO4sDZDX9/dtoeRDAbq5aVv?=
	=?us-ascii?Q?evTJ+sUdL1Xbm9SLMgADHaNTB/gB6FQoCGNIcHpsxD10pFlvMPp9Q7tdHB5n?=
	=?us-ascii?Q?13wrMfrY/yQi8HRX9Hduqnaurz1XX4SCJO6nEZmMwavZfa0lkAf5ej1+Sjcq?=
	=?us-ascii?Q?9fuxIvtpzvzrqC1+LWapuDCuho7SN4nTN1Epne5cUig2uqNCx4EtZ+e/fhhy?=
	=?us-ascii?Q?dpbbkJgUDKIaynLUJdgFBqJYEyibpdsmwjCJdSwbhZy6i42BeMDAF/06BTn8?=
	=?us-ascii?Q?exQAf37WcPCDCpCqRwLBkwUjiH/bsvjFfKiBvoP6kQr+o6eQGf6aVqgHQo22?=
	=?us-ascii?Q?fKQaO9nZ/lYLZcwd4gODcFv4p5a/GFCCWPAc3sI/DtwmoCyXakwoDHlOlylR?=
	=?us-ascii?Q?p5zherJXbxq3OOg84y9mkYDra6uwL?=
X-Microsoft-Exchange-Diagnostics: 1; VI1PR0701MB1887;
	31:N/j2VY4BdkcuF4GuO6X8kDizu2gMNHe3xNAkB2uK+HAb3MKnQ74W4vo0KQAAo5CaFQkOEy7AUQsGBZ9Mxp+rOm423Y6pn4BA17YE59xUdrGSi3EhmcMwjMs60gSEopGSA23JyrjssADT9bVgwMKqVgSUe6k2LmXYkx2Qd9WpKnW3CxYLN7rl8bmTaxG7jNNlmbbIHR0yEZpnooc+7h+5zhfJq7GqiJ4EDgtbvgqyLpQR3fFczLiKfHPErsvQE5Tyf2+iR5kJ2Tr52wf/178AuQ==
X-Microsoft-Antispam-PRVS: <VI1PR0701MB1887605AC2A3EB2E36159DA0D3890@VI1PR0701MB1887.eurprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6045199)(6060326)(6040361)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6061324)(6041248)(20161123562025)(20161123564025)(2016111802025)(20161123555025)(20161123560025)(20161123558021)(6043046);
	SRVR:VI1PR0701MB1887; BCL:0; PCL:0; RULEID:;
	SRVR:VI1PR0701MB1887; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR0701MB1887;
	4:Tg9S26lW9OghBQEGod0ppvARc8ZnKx29LZnQ56IBNRt+o/s9l+4FY+N4VT6J3fDQowSuuwcLA3fjcZCGDfffxwEbTJb5bMW797YdBp+FCKL1CJdRQc10T3fBwUzLGr/Yj1iIrEIvhi9DnOlv9YWf4hh5ingkw7+3iqUJwRcKmCsID36YQw3iYggE2hcpGQ33lJPXXTXzV+X6qme9cE0Mc/sOz0nhBSgncmW8sRn3lEclIpyROSFgmApCToF0WZJot6V7O7TGqwBLYe1hK8p1SOHGyVJi9XEnT4wj04ErlGnkeNNGPA6OQK7d1+64HSY63ekZ98EiazoUYUvGPpE8IZXYcOJFsGte0ipoYzuhsHkUQ1hhiqdNr/xeD9VWwVxqhy4Clo3EwM1De/9wBUIC0Wz60cTXMuFg2gxDsUBJkADj/DD9dZJX6CSkwHd/jI7xkL/5JszdoSjvPPSAybu3t8eOaYKy+c+w1ho1ICDU7T1FuDYMD+sGFJSnUkrW8ir54XQlzUr9xV2zrh21LCHKPuCsz2PZSzbxlkUHxJ24gPJqtaB3zQ2ekd/CZg7mv6ULVNqM1kgWRZqeODYE5sK1OSblZM3OMfxED9usjsB+TRrOz21QHyUCIlPZJl1KWpSWa0mIQWFyMq7kBQc58xGQc+G7bcDkIoJTa9cGyZfhwMafkPclGj4KMgD4Lv84dCS4
X-Forefront-PRVS: 01371B902F
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6049001)(7916002)(252514010)(199003)(189002)(31696002)(7846002)(7906003)(4001350100001)(7736002)(2906002)(42186005)(31686004)(97736004)(512874002)(43066003)(101416001)(3846002)(6116002)(5890100001)(3450700001)(36756003)(107886002)(50986999)(54356999)(53806999)(84326002)(105586002)(6916009)(6666003)(189998001)(5660300001)(64126003)(16601075003)(39410400001)(39380400001)(110136003)(77096005)(39400400001)(65826007)(606004)(81166006)(81156014)(8676002)(39450400002)(568964002)(450100001)(83506001)(86362001)(65806001)(21480400002)(33646002)(106356001)(66066001)(575784001)(2351001)(38730400001)(68736007)(65956001)(24704002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0701MB1887; H:[172.16.20.67];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: net2edge.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; VI1PR0701MB1887;
	23:zVwQtTi16S7Jh6q5fy2LSYXQitL+hQE9ecCFeRy?=
	=?us-ascii?Q?ZceMJeGjLlVa3lOG0EryNQA1i4KgZtRoC+CxeHaz59Qmo0+vkhjDf5kCp501?=
	=?us-ascii?Q?7nPcZU9pwISxyb1zORR1INw3kHk1anfSRRzcTrzVQYOm7Y9GCqSfCuZWgPzs?=
	=?us-ascii?Q?9BDHL5szKn08lInIs7C2Y8/Enm0xgsUIvVha7HRppBltRCBmiyhMrCO96WoI?=
	=?us-ascii?Q?trs3JPJFbsBii9NnLgUb+7Rjj9kbyaHx7u+3d7JV5jGneM3Nv8Kqbf5wL5DM?=
	=?us-ascii?Q?ALURsxGggPTarIZATL/UobWZe9Xs9JyikfJ30a+h8LT5TNpqAf6iDP6hmhWl?=
	=?us-ascii?Q?Qngfq9DswNHS/cSP4jhOyUd/7Eqs5T3bkBJcDQu0Rklt3UWi7WVZhYpf0Oti?=
	=?us-ascii?Q?FF0RGVyF+nGw2yU81LeSGptP5txSdGhqnDaiJYg9sBtBuyMxwKZMNWs+wWUh?=
	=?us-ascii?Q?iXoZj3l6lXARv+F5De0QF0epwVvd9OBthdjauUxaWawG3Xkrf26+Jv7xH2js?=
	=?us-ascii?Q?tTgn/12cM944qUERZKfGeDf7p+LY4f+WqN7j3XeGniQLWh6gdJiNhu61mGI0?=
	=?us-ascii?Q?aDeVYwyoltIPPA1FOQpcfD7sEboUGMVWHslxt40Uc2fq6JQc93oQ5vDJs1fh?=
	=?us-ascii?Q?CyG5YA8YwPlso9bJekdj51XsvIDmNneHigg8u7MWiQmrYgHKLQqwSUVlEfED?=
	=?us-ascii?Q?JpYgHzv9qj8/prT/5acWLabK2S+I91vkl/MRHbR+1P0bbd1GJf9p2Zfbu8CB?=
	=?us-ascii?Q?bv69MQliGTl4BRvq9zJxUviOFXg9Ri2qcvB/OhFcJu1MeeQkGRFHKy6fyhCW?=
	=?us-ascii?Q?OnY9eGLIDCZwH2pRZyVtq1iVoyA6m9mwLxapv/SvrHdGboWmZt62FKZILk3r?=
	=?us-ascii?Q?tHCfL+zLkJO72rwLigKQN03awx39n63tGZN3V+P6bJm+Sdks7+vIT4ns3F3b?=
	=?us-ascii?Q?VcW9Jd+DlZ3g2eT/AtvrL2q3rJDrXxndRAt24qyOkopgSw2VnkJCw3PJFSaP?=
	=?us-ascii?Q?10u/7HlKY9NGhGWWsg4jzHrVdJDcVEx/dlIsw/re/U1wdOkO0pnDonL3EmHJ?=
	=?us-ascii?Q?RK5tbKz1v51iD3zxp65kSx3r5bmGohye0jaOmoZL8h5FjkbbGxCTnrT8I1B0?=
	=?us-ascii?Q?wmBj4KUj/OjB1iGSeI8wiMy2JJdDhT/+9Iwf5iBn1gyGfgYMFnXd1bURT3u1?=
	=?us-ascii?Q?aKRr9AwAW/b+UwRN9OQ0sP44mnfkFXVuOegcD7/QpKE9+/fWZQoCGgAalMV7?=
	=?us-ascii?Q?33BexOI0kJZxvzX38kj59U3Ix2z+4KIrZhmOTiLNZNtFv9SYXa1NmsJ89w3j?=
	=?us-ascii?Q?yVrJu/62teNBvR1qGyTrtk5ss6iAT9jctR7oQwgOwM1KG+f6fJ7WcSjdb1+y?=
	=?us-ascii?Q?dacY5O764GLwHkBvBjeQ2OvW5AvqPibXepxhR+oyoYNjnhGDxRWRa+e/hP2N?=
	=?us-ascii?Q?goJC1qBkzO9hmCY6YddP2dpOXb/KxuQeyb48Cllohu4ywCDccRI6aFtyNy+a?=
	=?us-ascii?Q?Lk54xGxWL78ootg=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; VI1PR0701MB1887;
	6:7EWSIFMEEctKarK7ZU8s171GlMu+ShwTTzj5QTEKnNL7MhsTU2jBQRS/eyEzmGpaoixnrIMaECokCgvn61U94RSGhQVkGUSJEeh2iHWOCSbd5yI9V0I543jg0SiWxAkzuUHslL3Wos9LpX6V/wfbLZapV2CE7mX6P79q0cEDeeUq0FhG7plDUOeGcEP6B8mk30JI6xZiRRljbN4gDvlt9ENOu0LZnQEsuVcTsvOU8/hyZHCBvjEq6q8Qt+xawo50ybZ+Os2xA7EMvge8ZT0GNERZYI87PFq5U7JGDsQNdrycWGvjpuzLo41KvDduuebAFutKTcA6eoZKIK5rE3khpXJXGG6aQ8eAeVG/AJmdlyLtUgcyN0qbR7Ik4zPxSxBSzVxxOQt4n8NF7iR6kSOqj4JHdqIDTOvlwrRvN0XRUSxUIwB3thy/EifExMPKeuajLvGJnsFPnByTllLF1NIAP7NjzKB/JDcsm4qCeB5ZcU4=;
	5:kdGp1tHFyydT+XPxnxpW3+eV/8MCPLvDQjQqFQqbqVJQ/BZugvqBn+f6wRNIBZySzo6YOfBugGACoXz+yzofQ75PCkwBpT3ND7TIDRG+63em2XVgZCdTS+zqU5Ojn6oEexPz5sAoPPiMMCD+i2eH74lPsuo6gJfVTihhs3NWfvk=;
	24:0mb0pnYmeMDTs0bEyTMTKR2TfELg98yHmP4a840n5iG6hgtIDhLccY+KAQ1/7CTELBwXdc+eLuHkfUAAfr6c89bAavQPMoL7gYyOOKLrL3k=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; VI1PR0701MB1887;
	7:w71Bk4D9JQgcO31XApbnxvNE6Hf7sLVyEL8KN2K7/tghfCHZ9XwIp/4kuuCnq4ptii9zYPmDtVn/iiDsjLDXnh24WhRrmyZTh2SNx4+DI9qhYX9bzWBZbXLKIZkREiR7Ut9f8Lhimp6t/Y2XgkGprKOR9ZyuDDOwTGRXhARwMsxHAAfNSycBE1iHo/BooX+iOZReC6lLX04459VnA3hpuXKU+2CA/BCV8MunMdQOvp6LZ/LogPHH4r8Rk7CuBjPu29TgJPhnxYVG++jsOoyGnCBIkJZ5NPZqmP0ubb3LnnJ/B7AfKm8enq/ktjVQj4Nm1SqN7A8So749rRN7WTdOrqRl2Gor+9QmuLYGUCV6qb8Xutj6CfRwNfl5oS44rihuOFgynpJCZijv/4YcishZVNb8qPw+wN3Q5ibEbpE1HWo7je4GLFAf+ZuPJ7QiT258JIlBNA/9sTsEXRr9hQB1SQ==
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2016 11:26:39.8200 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0701MB1887
Subject: [meta-raspberrypi] Recipe To Add 3 Script Files To /etc/ppp/peers/<provider-name>
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
X-List-Received-Date: Fri, 25 Nov 2016 11:42:28 -0000
X-Groupsio-MsgNum: 33136
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="j6I2cLRUm2MHlFCuBS9nIS4oSRhVdgHMH"

--j6I2cLRUm2MHlFCuBS9nIS4oSRhVdgHMH
Content-Type: multipart/mixed; boundary="Ic39CNCA0sagkcSapQcP6A3B09qChOvEP"
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Reply-To: Thomas.Thorne@Net2Edge.com
To: yocto@yoctoproject.org
Message-ID: <63b4bb45-7ba8-f3c7-dd9d-8eb16f3a5e51@Net2Edge.com>
Subject: [meta-raspberrypi] Recipe To Add 3 Script Files To
 /etc/ppp/peers/<provider-name>

--Ic39CNCA0sagkcSapQcP6A3B09qChOvEP
Content-Type: multipart/alternative;
 boundary="------------D9927D7AB6F38A078AF3BA12"

--------------D9927D7AB6F38A078AF3BA12
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I want to add 3 script files /ppp/peers/<provider-name>.  I am targeting
a Raspberry Pi 3 but I would have though that adding non-compiled files
to the root file-system was a fairly generic thing to do.=20

Is there an example of how to do this somewhere?  Either a How To write
up or an existing recipie that takes a set of text files and places them
onto the target's rootfs.=20


I must be missing something because I cannot get the file files onto the
system.=20

I tried using do_deploy, but that puts files into my
=2E./tmp/deploy/images/raspberrypi3/etc/ppp/ which would be helpful for
scripts to aid in image deployment.  It is not what I want though as the
scripts need to be on the target.=20

Running a do_install() with or without a blank do_compile() has not
resulted in things getting onto the target either.  Unless there is
something about using ${sysconfdir} or ${IMAGE_ROOTFS} or ${S} or ${D}
or ${DEPLOYDIR} or ${WORKDIR} which is particular to the Pi.  I'd
provide an example of my script but having changed it so many times in
the last two days there is not much worth of sharing just one iteration. =


Anything that resembles the following with;
 ${IMAGE_ROOTFS} possibly substituted for ${D} or missing
 do_install replaced with do_deploy.=20
There are probably other permutations that I have tried.=20

#
# Copy the ppp script files for <vendor> chips to the target filesystem
# These files are based on the details provided in
#

SUMMARY =3D "PPP Scripts for ..."
SECTION =3D "net"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D
"file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302"=

DESCRIPTION =3D "A set of Linux PPP scripts blar blar"

RDEPENDS_${PN} =3D "ppp"

SRC_URI +=3D "file://<provider>-ppp"
SRC_URI +=3D "file://<provider>-chat-connect"
SRC_URI +=3D "file://<provider>-chat-disconnect"

S =3D "${WORKDIR}"

#PACKAGES =3D+ "${PN} ${PN}-staticdev"

#DEPLOYDIR =3D "${WORKDIR}/deploy-${PN}"

#D =3D "${DEPLOYDIR}"

inherit allarch

# Install script on target's root file-system
do_install () {
    # Install init script and default settings
    #install -d ${IMAGE_ROOTFS}${sysconfdir}
    #install -d ${IMAGE_ROOTFS}${sysconfdir}/ppp/
    install -d ${IMAGE_ROOTFS}${sysconfdir}/ppp/peers/
    install -m 0755 ${S}/<provider>-ppp
${IMAGE_ROOTFS}${sysconfdir}/ppp/peers/
    install -m 0755 ${S}/<provider>-chat-connect
${IMAGE_ROOTFS}${sysconfdir}/ppp/peers/
    install -m 0755 ${S}/<provider>-chat-disconnect
${IMAGE_ROOTFS}${sysconfdir}/ppp/peers/
}

# Mark the files which are part of this package
FILES_${PN} +=3D "${sysconfdir}/ppp/"
FILES_${PN} +=3D "${sysconfdir}/ppp/peers/"
FILES_${PN} +=3D "${sysconfdir}/ppp/peers/<provider>-ppp"
FILES_${PN} +=3D "${sysconfdir}/ppp/peers/<provider>-chat-connect"
FILES_${PN} +=3D "${sysconfdir}/ppp/peers/<provider>-chat-disconnect"



I can find a lot of helloworld.c and automate examples.  There must be
some basic ones for adding scripts somewhere?  My googlefu is very weak,
I blame a lingering cold.=20

Any help will be very gratefully received.=20
Regards,

--=20
Thomas A. F. Thorne MEng. AUS MIET
*Software Engineer*

*NET2EDGE*

Tel: +44 3450 130 030 <tel:+443450130030>
Email: Thomas.Thorne@Net2Edge.com <mailto:Thomas.Thorne@Net2Edge.com>
Web: http://www.Net2Edge.com/ <http://www.Net2Edge.com>

Net2Edge Limited is a company registered in England & Wales (Company No.
2438435, VAT No. GB 537553821) Passfield Oak, Liphook, Hampshire, GU30
7RL. This email transmission is confidential and intended solely for the
person or organisation to whom it is addressed. If you are not the
intended recipient, you must not copy, distribute or disseminate the
information, or take any action in reliance of it. Any views expressed
in this message are those of the individual sender, except where the
sender specifically states them to be the views of any organisation or
employer. If you have received this message in error, do not open any
attachment but please notify the sender (above) and delete this message
from your system. Please rely on your own virus check. Although all
outbound mail is checked for viruses, no responsibility is taken by the
sender for any damage rising out of any bug or virus infection.


--------------D9927D7AB6F38A078AF3BA12
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>I want to add 3 script files /ppp/peers/&lt;provider-name&gt;.=C2=A0=
 I
      am targeting a Raspberry Pi 3 but I would have though that adding
      non-compiled files to the root file-system was a fairly generic
      thing to do.=C2=A0 <br>
    </p>
    <p>Is there an example of how to do this somewhere?=C2=A0 Either a Ho=
w To
      write up or an existing recipie that takes a set of text files and
      places them onto the target's rootfs.=C2=A0 <br>
    </p>
    <p><br>
    </p>
    <p>I must be missing something because I cannot get the file files
      onto the system.=C2=A0 <br>
    </p>
    I tried using do_deploy, but that puts files into my
    ../tmp/deploy/images/raspberrypi3/etc/ppp/ which would be helpful
    for scripts to aid in image deployment.=C2=A0 It is not what I want
    though as the scripts need to be on the target.=C2=A0 <br>
    <br>
    Running a do_install() with or without a blank do_compile() has not
    resulted in things getting onto the target either.=C2=A0 Unless there=
 is
    something about using ${sysconfdir} or ${IMAGE_ROOTFS} or ${S} or
    ${D} or ${DEPLOYDIR} or ${WORKDIR} which is particular to the Pi.=C2=A0=

    I'd provide an example of my script but having changed it so many
    times in the last two days there is not much worth of sharing just
    one iteration.=C2=A0 <br>
    <br>
    Anything that resembles the following with; <br>
    =C2=A0${IMAGE_ROOTFS} possibly substituted for ${D} or missing<br>
    =C2=A0do_install replaced with do_deploy.=C2=A0 <br>
    There are probably other permutations that I have tried.=C2=A0 <br>
    <br>
    #<br>
    # Copy the ppp script files for &lt;vendor&gt; chips to the target
    filesystem<br>
    # These files are based on the details provided in <br>
    #<br>
    <br>
    SUMMARY =3D "PPP Scripts for ..."<br>
    SECTION =3D "net"<br>
    LICENSE =3D "MIT"<br>
    LIC_FILES_CHKSUM =3D
    <a class=3D"moz-txt-link-rfc2396E" href=3D"file://${COMMON_LICENSE_DI=
R}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302">"file://${COMMON_LICENSE_D=
IR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302"</a><br>
    DESCRIPTION =3D "A set of Linux PPP scripts blar blar"<br>
    <br>
    RDEPENDS_${PN} =3D "ppp"<br>
    <br>
    SRC_URI +=3D "<a class=3D"moz-txt-link-freetext" href=3D"file://">fil=
e://</a>&lt;provider&gt;-ppp"<br>
    SRC_URI +=3D "<a class=3D"moz-txt-link-freetext" href=3D"file://">fil=
e://</a>&lt;provider&gt;-chat-connect"<br>
    SRC_URI +=3D "<a class=3D"moz-txt-link-freetext" href=3D"file://">fil=
e://</a>&lt;provider&gt;-chat-disconnect"<br>
    <br>
    S =3D "${WORKDIR}"<br>
    <br>
    #PACKAGES =3D+ "${PN} ${PN}-staticdev"<br>
    <br>
    #DEPLOYDIR =3D "${WORKDIR}/deploy-${PN}"<br>
    <br>
    #D =3D "${DEPLOYDIR}"<br>
    <br>
    inherit allarch<br>
    <br>
    # Install script on target's root file-system<br>
    do_install () {<br>
    =C2=A0=C2=A0=C2=A0 # Install init script and default settings<br>
    =C2=A0=C2=A0=C2=A0 #install -d ${IMAGE_ROOTFS}${sysconfdir}<br>
    =C2=A0=C2=A0=C2=A0 #install -d ${IMAGE_ROOTFS}${sysconfdir}/ppp/<br>
    =C2=A0=C2=A0=C2=A0 install -d ${IMAGE_ROOTFS}${sysconfdir}/ppp/peers/=
<br>
    =C2=A0=C2=A0=C2=A0 install -m 0755 ${S}/&lt;provider&gt;-ppp
    ${IMAGE_ROOTFS}${sysconfdir}/ppp/peers/<br>
    =C2=A0=C2=A0=C2=A0 install -m 0755 ${S}/&lt;provider&gt;-chat-connect=

    ${IMAGE_ROOTFS}${sysconfdir}/ppp/peers/<br>
    =C2=A0=C2=A0=C2=A0 install -m 0755 ${S}/&lt;provider&gt;-chat-disconn=
ect
    ${IMAGE_ROOTFS}${sysconfdir}/ppp/peers/<br>
    }<br>
    <br>
    # Mark the files which are part of this package<br>
    FILES_${PN} +=3D "${sysconfdir}/ppp/"<br>
    FILES_${PN} +=3D "${sysconfdir}/ppp/peers/"<br>
    FILES_${PN} +=3D "${sysconfdir}/ppp/peers/&lt;provider&gt;-ppp"<br>
    FILES_${PN} +=3D
    "${sysconfdir}/ppp/peers/&lt;provider&gt;-chat-connect"<br>
    FILES_${PN} +=3D
    "${sysconfdir}/ppp/peers/&lt;provider&gt;-chat-disconnect"<br>
    <br>
    <br>
    <br>
    I can find a lot of helloworld.c and automate examples.=C2=A0 There m=
ust
    be some basic ones for adding scripts somewhere?=C2=A0 My googlefu is=

    very weak, I blame a lingering cold.=C2=A0 <br>
    <br>
    Any help will be very gratefully received.=C2=A0 <br>
    Regards, <br>
    <br>
    <div class=3D"moz-signature">-- <br>
      Thomas A. F. Thorne MEng. AUS MIET<br>
      <b>Software Engineer</b><br>
      <br>
      <b>NET2EDGE</b><br>
      <br>
      Tel: <a href=3D"tel:+443450130030">+44 3450 130 030</a><br>
      Email: <a href=3D"mailto:Thomas.Thorne@Net2Edge.com">Thomas.Thorne@=
Net2Edge.com</a><br>
      Web: <a href=3D"http://www.Net2Edge.com">http://www.Net2Edge.com/</=
a><br>
      <br>
      <p><small>Net2Edge Limited is a company registered in England
          &amp; Wales (Company No. 2438435, VAT No. GB 537553821)
          Passfield Oak, Liphook, Hampshire, GU30 7RL. This email
          transmission is confidential and intended solely for the
          person or organisation to whom it is addressed. If you are not
          the intended recipient, you must not copy, distribute or
          disseminate the information, or take any action in reliance of
          it. Any views expressed in this message are those of the
          individual sender, except where the sender specifically states
          them to be the views of any organisation or employer. If you
          have received this message in error, do not open any
          attachment but please notify the sender (above) and delete
          this message from your system. Please rely on your own virus
          check. Although all outbound mail is checked for viruses, no
          responsibility is taken by the sender for any damage rising
          out of any bug or virus infection.</small></p>
    </div>
  </body>
</html>

--------------D9927D7AB6F38A078AF3BA12--

--Ic39CNCA0sagkcSapQcP6A3B09qChOvEP--

--j6I2cLRUm2MHlFCuBS9nIS4oSRhVdgHMH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJYOB/mAAoJEPXLKKkUazGA+FUIAIlMuHn1dHRJM6DvUu1a92LC
s4JtzEJUXlbO3nq/ZTf8LqBVSJ8qpCoNAoEytvHTkGOAtLwfuj3b1BISfDjH89wM
aUJlc0v7J2ffosfCfW3PO64t3l39XDQLuwOV8Th+ttieqvlN2wfa7hz2THVhWs3P
ubi3QbZMfIv/P5RweN6Hp5VXbg4lK+2RV97NXVh9bvIRAbGiw/tlOBlNsAH0QRy/
y3i5m6g8xgmKLrgeDOYJGStp3HYdnJVa+OZv6SP/UDr6MRz9YKBHt8TdY5z5FgMt
+QXrPgO1Dag0GghHGbBafUBR3ly7IwAWUW1BiKtSwyZDvnceq5BQKu9mZ+LPL5s=
=aNyT
-----END PGP SIGNATURE-----

--j6I2cLRUm2MHlFCuBS9nIS4oSRhVdgHMH--
