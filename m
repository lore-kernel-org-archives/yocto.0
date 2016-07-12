Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C897AE00F39; Tue, 12 Jul 2016 09:20:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.124 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0124.outbound.protection.outlook.com [104.47.38.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C84CE00F38
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 09:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Honeywell.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=HfrqbrS4R2e1ZxSHiYGLl52FLnF42RZBD28qX7dFLdg=;
	b=ivsZpQ5ehszIQysb8Liyh/OXm1PaDqcoongSkdTuKubZ9yDh9fyN5KxPiD7ebE4BQDNYSNAv9KeEqrQ1z1dcqljrVCXUmGSGMQNVRYQy+X6RvHpxZnEM0RHOLNVRgjJwmU93p3b1aVaWEq1oTWz9bESeK+kvQzfkYxqrC3aQ1yk=
Received: from BLUPR07CA0048.namprd07.prod.outlook.com (10.255.223.161) by
	BY1PR0701MB1144.namprd07.prod.outlook.com (10.160.105.12) with
	Microsoft SMTP
	Server (TLS) id 15.1.534.14; Tue, 12 Jul 2016 16:20:14 +0000
Received: from BN1BFFO11FD010.protection.gbl (2a01:111:f400:7c10::1:146) by
	BLUPR07CA0048.outlook.office365.com (2a01:111:e400:841::33) with
	Microsoft SMTP Server (TLS) id 15.1.539.14 via Frontend Transport;
	Tue, 12 Jul 2016 16:20:13 +0000
Authentication-Results: spf=neutral (sender IP is 199.61.26.154)
	smtp.mailfrom=Honeywell.com; intel.com; dkim=none (message not signed)
	header.d=none; intel.com;
	dmarc=fail action=none header.from=Honeywell.com; 
Received-SPF: Neutral (protection.outlook.com: 199.61.26.154 is neither
	permitted nor denied by domain of Honeywell.com)
Received: from DE08W1026.honeywell.com (199.61.26.154) by
	BN1BFFO11FD010.mail.protection.outlook.com (10.58.144.73) with
	Microsoft SMTP Server (TLS) id 15.1.523.9 via Frontend Transport;
	Tue, 12 Jul 2016 16:20:12 +0000
Received: from de08ex5004.global.ds.honeywell.com (10.216.34.42) by
	DE08W1026.honeywell.com (10.221.248.37) with Microsoft SMTP Server id
	14.3.266.1; Tue, 12 Jul 2016 12:19:46 -0400
Received: from DE08W1305.global.ds.honeywell.com ([169.254.1.58]) by
	de08ex5004.global.ds.honeywell.com ([10.216.14.77]) with mapi id
	14.03.0266.001; Tue, 12 Jul 2016 12:19:46 -0400
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: akuster808 <akuster808@gmail.com>, =?iso-8859-1?Q?Dominic_Sacr=E9?=
	<dominic.sacre@gmx.de>, "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] backport of a fix in master to krogoth
Thread-Index: AdHcGwbCUoDmTGULQI6qn3vBenCdhAALIekOAARXYLA=
Date: Tue, 12 Jul 2016 16:19:45 +0000
Message-ID: <F6CD090A69E64C4289DC608E1C5D202425404876@DE08W1305.global.ds.honeywell.com>
References: <F6CD090A69E64C4289DC608E1C5D2024254046D0@DE08W1305.global.ds.honeywell.com>
	<CAJTo0LZaU8AOSMe6k9whe=_A6hYgf8Lg1MLmUFs=2SXxypKtGA@mail.gmail.com>
	<5784DE88.3060605@gmx.de> <5784FAFA.1070501@gmail.com>
In-Reply-To: <5784FAFA.1070501@gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.19.144.171]
MIME-Version: 1.0
X-CFilter-Loop: Forwarded
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:199.61.26.154; IPV:CAL; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(2980300002)(3190300001)(199003)(55784002)(189002)(54164003)(377454003)(24454002)(377424004)(51914003)(6116002)(102836003)(586003)(189998001)(77096005)(92566002)(106466001)(3846002)(105586002)(33656002)(11100500001)(50466002)(8746002)(2950100001)(2920100001)(2900100001)(19580405001)(19580395003)(68736007)(50986999)(7846002)(54356999)(87936001)(7736002)(5003600100003)(7696003)(305945005)(15975445007)(85806002)(69596002)(16796002)(86362001)(55846006)(76176999)(97736004)(8666005)(5001770100001)(47776003)(2906002)(93886004)(81166006)(6806005)(4326007)(356003)(23756003)(8676002)(26826002)(81156014)(8936002)(7059030);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY1PR0701MB1144;
	H:DE08W1026.honeywell.com; FPR:; SPF:Neutral;
	PTR:InfoDomainNonexistent; A:1; MX:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1BFFO11FD010;
	1:9lrB9xODvM9tW48FAuoXu3mtPtC5NTLR+gtjIaxAXEfZFrytvsvfRW/Tu8H9m8JL19NbAO3szzZM9qNizu+sHO47JbwCsD7g7GQ6jdMrnDThxyFZM8MIVlWvwvnFaEcTOfYgfafK9vtt9e2DH+0Yqc5tFwmlDRbZMx0TunVGkhf1vEgpYvAXLIEzR9IRdTUlbuSYbTGJU1B5p6YwvMv55bP36Lu505HiWwVX0RP7EmsTvE/r5DfUBQWW7UHzW1oGLdqxNVQD846K+gTXJiH30++76xERtX5pK4l4mqXJ2mG+FW3Cu0Wg1f4RGvb/9B507waZxf9hETKPaI5bWit5OIIkIV0EoxFs4+yMyUQi8+OxpkYxhinrvbDoir5M3HxFF1fJ/EG0N/Z9OQaYq9EfJrHBkeb08305peJzu3elei+gtwiJMQi1+J9dkQN+rtiulPSOBqGtbhOZKiingoK0z3cIXna2B+St8HmStMnNttUPesnTPx4syvH8ABIP968fNp8dhIkU00rIlNscI4e9Sur8REnL4B4pWp/9KZhk0RRtLCRpN0PK3F1YnESFrsUcls8TOOzkyjaSTSofHdeO/p+BaqvOKiTSGIerjHGB6Bc=
X-MS-Office365-Filtering-Correlation-Id: 34841e51-fd93-47bc-c53c-08d3aa7066fb
X-Microsoft-Exchange-Diagnostics: 1; BY1PR0701MB1144;
	2:O++Xa/X8QafIasxOdDg6NH2poo7P49IRY5dNwkaKbnYgFy2iprsBWQx4M7rrW/ZE2Vrm+ohujmEbFFv5SqaNDtDwgLTNp5Nkk3Uc/qo/d6cL4z/GR/d/BhcgZHZebg0c54vBNa80ApqPIbP9/3IIHHtyPnDIG9rzuZ9G6CCwMJrvmg5CfxHran4xUiE5OMb0;
	3:zAwm6DHeUYoPkxlAZOqvhIAeIfVPw/2dzV5nweZXGE9qEYgbGLFPkqrgKMynmWrL9VyVdW8m50fU4Z+7mUytMufAkllgAT9buNJXl2KOUqWzJPUX5O4DLA+u8gvBYFx8x2XP7koF+PZ1P+4+6VhCion5A/L9K7f8tBCrtzgxN6WjzckYu4aifYuDr2XC5k8BETOSC1VXs4zf37RelFbifmYow40FdxbY2DdckCklOXw=;
	25:GupM0QJZ0v+c2/iUJfgL2c1HIqlKAEnlXWKVsgZ9+7aTphHUj7ABPf0MrbvL1IC+hln/kyAWzxkl4x2oo1R0PCt85l7TtF3e/lqQqE2bXJwIsmVfuyDA37FarIw9h2pjrdFKY6ymDJdBdyV2lW6y5/tM6xi0K20MG5QASb+ryRI0iMSMDBxyp4SP4FM7RRsJcizl8g3nqAjz7pTlY7LRb4MuRACJfq09o0EJOxapDy4EaD/QAZnLIOGOVjMeHxz9R5NjrwGEqYsd5zC6r+Y25UGwSduE3bURh0xYTvGfXGBgKC682ZXoJ4BoEdO12nGzrQ53KNVxqwzfwAjsfdbBM75yDs4wOF5MqdcYlY9sqtugRxyUvnWsYlhdAjKlKlJcqffBU29HOphl3KohK6D4HimZyCEJ8OcsnsqUo1rfCK4=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR0701MB1144;
X-Microsoft-Exchange-Diagnostics: 1; BY1PR0701MB1144;
	31:Iwo2ScTJNXoLEzYY2SkOlqJfSZmG2+jCCA+MnGBQ2Vje5Rc+gV2yUlLsO0flengI3Hcn1oJKR/RkLfvL1UQBSCxCrpKqZunT4aHPcH6VLrHOuWg17lKJzphiMnLIZUdHk1OlHf4MvRvFJ6xAVmJ7EZlADCnLZaYBR3f7PwUfc/6Uh8/4KSENbCzFn+/04xIdaGQT4eyvXQkITNijv47HWA==;
	20:YKW6HGavc7/mH9F206sAiOW62mhEaYuwAccKHLBaQ77BCBPtIaj74heauqzrn6n+W6zRiPoqTLuj9PnwGkrPNVpfUMB+9+9udXS+Xof+Kq1LPPzbscOtddv1cJvIei4fHtqU0MvgvJf4/70WDIjRTKv4rpnXVvNQT0mkG81GGUQST8mOojbIowlTwOjfHk9hrjfHiyEOku2iKq1ANRSajoiZOoTxUUQGXQpwbnwQaIsMW06N0nWXexzb1aL4l9ONjQAveOoQWyHqeHPs/KyShBLsLtTX6o2RAKHv6c4WtLylXUSzL4CXCLUodyiWvmfqj/sTHz1gySW1UVp7kiNKMvfwW4g7Oi1Iwp5bZV7HrBzl1mLNBFE9SnddkeMjyg3CVFSdOvGvwQrVfcOuPF6raJiKSnRN1nuvy/3mHosT7P/aleWLYhatsfV8+26sv1v/eB5FBjxGcRqbzgHISicSKC6iDNUw6Q1Z+XsLdNWm9tfmrt7bn/Q9r8inhBex4diWQhyEu+j7+vYOg7eYjzHNif1YTpQYS6tq0n6bpfZ5kFxQ2oSNyTPwG5Rdoak8gDe7q4ZiaTv6XXBcVqtkI4jFVPoeeKLeQvYTvIDogfJfMrg=
X-Microsoft-Antispam-PRVS: <BY1PR0701MB1144101F44DA937C04A8520796300@BY1PR0701MB1144.namprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(93747276172241);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13023025)(13013025)(13021025)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:BY1PR0701MB1144; BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0701MB1144; 
X-Microsoft-Exchange-Diagnostics: 1; BY1PR0701MB1144;
	4:lhZ/0se4LiI40CXc38PSVAJ3dEVL5w1G/VC9D4uyqxrsONB60fu4NJutUb0s9Uq5AYiBP5Yy70OneQmVMPmRsZAda42hRIGVD93tX/jTTe/yVjWMbEurMVq7PaszVSDTii1FVZ4/4WMcgWzWXRSzLrj24QxaZg34TIGT2GxdroQJkWhbqXGf9ZtkmmdBJNXOhcwSAWYyprhPBCimQ7iIf7zC32YMnZd9xj7DMrvgNudBRD0DLiTobCJ/sqdmN4m/PNeeo9zfHUIYLM5gmFrufQDHsDafRTxVZBJMpuMqrCd1isHCUPS28D7MWb0MLxTnHAsoZVmLR+e+hl8bQUmmAKR75dlK0laLNfdkjNDmDmD1z/wGE/gU4Ry7AZTtB8lX2UPtJLPsKFEOCs8EqkWWDg8DgLOhRZNSXcyqtoBZAqFvqUm9v3S4B5YTaaXuNJODfpLLcPxxOo9B424USQ2tRg0o9LjKHlUFzIYCOVSI5y4=
X-Forefront-PRVS: 0001227049
X-Microsoft-Exchange-Diagnostics: =?iso-8859-1?Q?1; BY1PR0701MB1144;
	23:Es1fUh5D1ljgr5BHla8xkuIdkA9oVGQq5zBuo?=
	=?iso-8859-1?Q?yNjbD2AD+rMNMqIpCFLuElLGMbxdhbzpo6HN+2P8Ivfjh5wTGXPNSOAnJO?=
	=?iso-8859-1?Q?TYofM0fFGynYfTcs3cwmAkR67FgndZt4ufH2e8NSvjE6YHSKUDd7roi0z5?=
	=?iso-8859-1?Q?Lm7nOUl7vurpEh7AHGJOFz+6J6Udh91SbnKksWG1NrAnG4UWKmgQp3Sz34?=
	=?iso-8859-1?Q?Jc8r/bGA/W2HPPwnrqZQyybvwCb0R9RSLEAzyyLOiXUUwtwMDcQ2v4N0kW?=
	=?iso-8859-1?Q?9XFxovnfJdFHkOANv5tXEiFpmZohC+OzyFoGb53nXrclobeh2At+Z4sAUz?=
	=?iso-8859-1?Q?I2dft4kZhkDqTctOGZIiS3odXoCslVK2Ih81Zw/yui0alk6EbwmpRjkxDp?=
	=?iso-8859-1?Q?ZSWve0wMZ1smxZQsW6XqyadPfvMo3sT+RJ8d8SIaNjKgzjxTZ4KEhqoSBk?=
	=?iso-8859-1?Q?B1tWjWn+STmVG+6TTLkcXobjF2WNgZoSVq7LtkPfREuDk5huuXiR5ALqaF?=
	=?iso-8859-1?Q?bUVrua2M5J7hmifgaKDd7rk6dqv5lEnDTVuO0u7WzKx4zEDi9KY3mfr/Uz?=
	=?iso-8859-1?Q?EXJpTLFfZy5dWTYm1tgq9JYgEGpNQffRnm5QmvN1HQphqg4Hp1g09K7xIH?=
	=?iso-8859-1?Q?As+ejo0BQopRnqIB/bZOUS9awVBK9GYSRIT6KS6nYqX5a7dPUxACJIz0UM?=
	=?iso-8859-1?Q?PfrfJF6y8cbqiuY2wUS1cyR9pbEyXN4Yo6y8rRGVlFJq1mv4ehIdyonqf6?=
	=?iso-8859-1?Q?JZmXMWx0N32KhcDju2U5IXo9hHwnrYzirfdz6P7jFzVZaIdjlqNcOXOmWA?=
	=?iso-8859-1?Q?L1lwgCHxHhf3iAd5SrDgBTyyNLyxRhHpRXYVRpAy0zQIN6BPk1vlhJeHDO?=
	=?iso-8859-1?Q?YNqL37aSHVlOKU/9WRn6e5N93GqWx2GRc1Lh1wLBetpm4hUzJzYEYdBe/M?=
	=?iso-8859-1?Q?PsDatS0DlzdW3GYrkZyUGs5J8ZIBwQys9eg9orimyFFcX2Vl3aJDTQ6zMy?=
	=?iso-8859-1?Q?Wa2URjNiLkR+YDQVytpKINSDTpYEr3O4/GFZOZc8sdVtUwo6zLxd92wp/d?=
	=?iso-8859-1?Q?Boib6uMHABscwsRlSySRQqCAP1KoENLtttA4+gPypRqfAZz0nv1tFccvJD?=
	=?iso-8859-1?Q?AYYYZa+cl3F46dnszw8olRDER/8ruxzjRB8e/EuzdukEvUtMuKiVQt7PsT?=
	=?iso-8859-1?Q?FclV3ZGK8jLJj5PdzBb+pU+rGEUEzFVoePmH5UIIiRq94iEUwiYIIGvsRJ?=
	=?iso-8859-1?Q?RHqN6Ot5cYRqqGe4xaHOubCfhqlH48mmZEiTH4QknQDunT9HoXonX/T54Y?=
	=?iso-8859-1?Q?33vGyTjLk6zxNn2Znq5wf/rYMIMI7JKsJhlehlwg3+Gse8VpdYAZnJu+Rd?=
	=?iso-8859-1?Q?+GbEp1guxuAYlZXC71rqB3KN/P6pFpTOSnQ9rnz1HzG7SGUp9E0sSWsZ9B?=
	=?iso-8859-1?Q?O/aB5/OZ9UNlYnhdb0rWLMEnJw1Sm/M+JBidVjV7/ySn5Kdj1Q+5eA6UkE?=
	=?iso-8859-1?Q?AVRjl9VZ8B+g1Wenj59nEQDOplLjD2x0r8PiZ2OYU7rd4aF6kDZZ3CS4wN?=
	=?iso-8859-1?Q?WA5Nc893iFORNxieMp4EmkEMRhRA=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BY1PR0701MB1144;
	6:hgiJu8dXjMTQ9MYVVpTewHZaYq1mU9TBamV1GRzgYFezG5px7dELH9SprG+ESJmFAzSJGBOHdpxphUS5DNPDRsjJJ+hLxT4vPyAsLkz6UCg0UsLAt58Tm7RzR0gbT9iBd2SRZgOOj/qkBPaNr17lSaZH2h9G6EBKwWjNrLt6NamKKhXUtesZZdLGkNoXA8gVF+E9T19H55jhfjNyLe6c+WyXEsUZgYVXbQLpliuxE35VVLg1lnuEbY+Oi7j5728JbJQ0Os9p2RFrstdMljLOd9qc0m8gpfhgsXAd++tWB47oPA13ZDBJ0NIaXfCAFjygwOWNBMQ9G1DjSo07APU1fQ==;
	5:B9VG9Xhl7OEPOa7sPvt4R/p+jKjcGAF6xydyCkwLgpM+/r0PeZLXQ6Tz3yCJ6chP59xSuRa+Vd3x4l2HJZ8+Khk4XE5J63c7cA3t5ZDE2L7JNG3ZGf1nfk7Z4hAgjua4dG/2Fn8f302ceQktrCkA2w==;
	24:ezwyFcqG7DtfVrCna9inmDnFFM1G6shmUL6CMiiboO5CUwbIOu8ntEmGF7w/ack+yRLOBygS3F/vQij6w+a5GuqyOfeaDWKv8fXxEwy+whg=;
	7:IQvJnldqAOYMr8HBc1lkPoTxYZuWcD1gtZx6cAxoVNP1fa2j06jrcDovOhRpVbHvAMd+kIGw/7sAiwzlfTLSwnC1tdeEAKM+NoVxRqFofJ6PJVALK/D9oaHzsFwaHZW38sxtrczrGnH8eXvquDmUrChQbqVuNRnlVx8zXB8QO97pbP2MGZ5jXw4w46rZDijYSXBQx6IVD6lw0lwUhW041Ux3pjLllcnc5LR3Vy4T2IqLAQax5gx26qF6VvefRwWs
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2016 16:20:12.7867 (UTC)
X-MS-Exchange-CrossTenant-Id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=96ece526-9c7d-48b0-8daf-8b93c90a5d18;
	Ip=[199.61.26.154]; Helo=[DE08W1026.honeywell.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0701MB1144
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: backport of a fix in master to krogoth
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
X-List-Received-Date: Tue, 12 Jul 2016 16:20:20 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> -----Message d'origine-----
> De=A0: akuster808 [mailto:akuster808@gmail.com]
> Envoy=E9=A0: mardi 12 juillet 2016 16:13
> =C0=A0: Dominic Sacr=E9; Burton, Ross; Esponde, Joel
> Cc=A0: yocto@yoctoproject.org
> Objet=A0: Re: [yocto] backport of a fix in master to krogoth
>=20
>=20
>=20
> On 07/12/2016 05:11 AM, Dominic Sacr=E9 wrote:
> > On 2016-07-12 11:45, Burton, Ross wrote:
> >> On 12 July 2016 at 10:03, Esponde, Joel <Joel.Esponde@honeywell.com
> >>
> >> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D52d130d9e9735af=
5
> >> 69f018fc9161a54ed198d2d4____
> >>
> >>      This fix could perfectly apply to krogoth too.____
> >>
> >>      __ __
> >>
> >>      Is there so a plan to backport it to krogoth?
> >>
> >>
> >> Certainly.  The fastest way for this to happen would be for you to
> >> verify that it applies and works in krogoth and send the patch
> >> yourself (with [krogoth] in the patch subject so the relevant maintain=
er
> spots it).
> > The patch works fine with krogoth, and I originally sent it with both
> > master and krogoth in the subject line:
> >
> > https://patchwork.openembedded.org/patch/123485/
> >
> > Should I resend the patch for krogoth?
>=20
> Nay. I got it. Its in my patch bundle but can not see it for some odd rea=
son.
>=20
> I just pulled it into akuster/krogoth-next.
>=20
> thanks for the reminder.
> - armin
>=20

Thanks to all!
This is good news!

Jo=EBl Esponde
Honeywell | Sensing and Productivity Solutions

