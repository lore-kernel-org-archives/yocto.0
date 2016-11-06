Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5390CE009D8; Sun,  6 Nov 2016 09:15:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.42.67 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1096 seconds by postgrey-1.32 at yocto-www;
	Sun, 06 Nov 2016 09:15:19 PST
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0067.outbound.protection.outlook.com [104.47.42.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6854E00563
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 09:15:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=SierraWirelessInc.onmicrosoft.com; s=selector1-sierrawireless-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=JksXw1Ki7iIpvMWZ7W8jqdW3ZMo7LsgUMq2/qyb/woQ=;
	b=Q6WHOthDcFhiNNXt8Y2VF9XIwGpw1+ChlRjIjMZSbU0pXVDfNirGrDDmzF738c9kIJq6mNAsIP7O/VFSVcOfE5bUpj3XXkD/jXz9qMK113104/IIHRrURu5PLzphNe9yDhc1qFi6SyWJTUduSPsPx7ga598V79msjz+8pMOVB0Y=
Received: from BY2PR02CA0073.namprd02.prod.outlook.com (10.242.32.31) by
	BLUPR02MB295.namprd02.prod.outlook.com (10.141.77.23) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.707.6; Sun, 6 Nov 2016 16:41:31 +0000
Received: from BL2FFO11OLC002.protection.gbl (2a01:111:f400:7c09::157) by
	BY2PR02CA0073.outlook.office365.com (2a01:111:e400:2c2a::31) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.679.12 via
	Frontend Transport; Sun, 6 Nov 2016 16:41:30 +0000
Authentication-Results: spf=pass (sender IP is 208.81.121.44)
	smtp.mailfrom=sierrawireless.com; yoctoproject.org;
	dkim=none (message not
	signed) header.d=none; yoctoproject.org; dmarc=bestguesspass action=none
	header.from=sierrawireless.com;
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.44 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.44;
	helo=mail.sierrawireless.com;
Received: from mail.sierrawireless.com (208.81.121.44) by
	BL2FFO11OLC002.mail.protection.outlook.com (10.173.161.186) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384)
	id 15.1.693.6 via Frontend Transport; Sun, 6 Nov 2016 16:41:29 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:; UpperCasedChecksum:;
	SizeAsReceived:984; Count:18
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	CARMD-EXCHHUB01.sierrawireless.local ([::1]) with mapi; Sun, 6 Nov 2016
	08:41:28 -0800
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Sun, 6 Nov 2016 08:41:24 -0800
Thread-Topic: [yocto] Yocto "Long Term Support"
Thread-Index: AdI4TJ7hheiZsH+IT5iNMEhB8OANCg==
Message-ID: <E1193EF6-ACFB-48A0-A39B-58B9F90C1F01@sierrawireless.com>
References: <30C2D590D16A5C46ADFE6521910377987FF710E3@AZ-US1EXMB02.global.avaya.com>
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF710E3@AZ-US1EXMB02.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-IncomingHeaderCount: 18
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:208.81.121.44; IPV:NLI; CTRY:CA; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(7916002)(2980300002)(438002)(51444003)(377454003)(189002)(199003)(24454002)(626004)(246002)(33656002)(8676002)(8936002)(19625215002)(6666003)(6916009)(2950100002)(16601075003)(19617315012)(586003)(102836003)(790700001)(76176999)(50986999)(2906002)(106466001)(2900100001)(36756003)(104016004)(15975445007)(77096005)(30436002)(54356999)(92566002)(4546004)(5660300001)(8666005)(87936001)(7846002)(84326002)(7906003)(82746002)(110136003)(7636002)(189998001)(83716003)(16236675004)(4326007)(512874002)(356003)(19580395003)(86362001)(19580405001)(7099028)(7059030)(5001870100001)(104396002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR02MB295;
	H:mail.sierrawireless.com; FPR:; SPF:Pass;
	PTR:spf.sierrawireless.com,carmdsmtp.sierrawireless.com; MX:1;
	A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BL2FFO11OLC002;
	1:G+Po6V37K0cGiHfojf5rL3ze/m/9Vu5f9Wl8V82QUvrGRd+Ha6O1KV8+ctwHjLeEqyZu6IORwIcw0x2zBo53CLceIuRiWWehaP0NDbllTgXalBNkzumjqTLxv67zP8P4WwDtaKhNB5m7o9fPgBcMGsG4+/Y1lORAR1mnPpJiNXKGe5L09hDwWqRfUgxc7DSQa04Mso95OhyGB63P4bdszyvtPirRtdn6vkwZ5G/Yjwm9vN/hy4kT0CvqvF8vCbBTHJw2/mURuUupQwErpQ2V2N3WoSrck6d+Pb7k6cCDu4zxOY7+n97jQTrYZL6/8h5mGt1xZkZdEmNgD45Dtrwzisj+SLt+ZPXwkcZcLOtmmKBJoS1YVX+pWlz8l2dbU+nEFCy4QbntU3Pc1EdgiFzDhbyJKmcvZepXs8taYCzh4NTJQ5pj1ffBFXXOX7D1wPzT+vjsljJUgIhg+wi4at7muaKrGnWiFHTyfHNJDWJP4/XykgP5LdNMaQrqMoOK17aNRvGNE7m7DuqR64i46TwLrqsLL46OSdXpfXYxtCI0ehU6ClphCcL/6/nxr5koOM1wilXNVbRRzZ4LwszYG5YJ5KjsdNJWwwDR0rc5ykK2V+s=
X-MS-Office365-Filtering-Correlation-Id: 7f62ebfa-69bb-474f-5d4b-08d40663c2bb
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB295;
	2:88HMEQhx9NBTGaGcoUHSLS2JW9GyKTmi95cuD3wndvX2qWXI1+hyT9QGcSVMqAPpJby0FIjalRRUFvHL93lH+ZuA7wvgPoF9MMt+062zPpRiV7YzmOgtgekJK72Cz9ji1iN/3oUdvzW3eqWbgH62UeF/dNBSLljs8JP+Lg3EVouQOEYS5hbCV730Anl2qr/MpU7ov1RWnQnPqyqkC/L0mg==;
	3:L4QlvmbrKLHog87INpm2uCuUGib+u+8jhLjJNsYgnJT2raJPULTQGJlfFbNG/fruq/FJ+xX8CfC2GxkNG7Q3ukb/unO3rRP+MZe2/lG2iMQ1ffVQT+4JRF3ad5+Sn2sSfGuBw7FvGOK7+z8JRHEA35ahyrarL4557fNQJxbGgIHAB2JZF7jow/FHbjCDZL6ZG9+XaSqNHJwdfjtP3b99PxBjfxZYlHrc2fUprzagoTV3E2Q7QP0cUaqlSQs4T/bRUP3hpU3OI1gQcA6UZMJuywOfhISPtkjS6oRFUNC1/h0=
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:BLUPR02MB295; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BLUPR02MB295;
	25:paYHeC/9bkutZ4ujxwExh2fr6R1ATa7QDWn+AVFpzo?=
	=?us-ascii?Q?G2V2k+r4SRPemMFFcNKfwmaVoIlgwI/tZLFExKJeKPJFhjdFrdXAQgDYWwOM?=
	=?us-ascii?Q?0UDB2Am1HKShboob+j3F4Uu7HmNHBTR6Rv1gX9mRe/OT4maGZsoWSjn+SsBl?=
	=?us-ascii?Q?6EdSEb1Q177cARIpOY0DpN/gWMgDQwY+zqrawmuLPrcxRIRpoGsk9xKpRphe?=
	=?us-ascii?Q?z1REyaa9ii+pw3OheWGdbHhIj/EZKVtDts3Z33zgthbbHzFX5KJNUEIzmcns?=
	=?us-ascii?Q?rZ85r2I209Z6GNiErJ/gze62xlrAiQ96sx5LHzVvZHcEL2z0QkXo75RsiwjE?=
	=?us-ascii?Q?Ex6sbD9IUmxwHPaaBM5xA03gesZx3kQ7wRL/p1SN1yUSo3jJvh0JqC0KLe57?=
	=?us-ascii?Q?3/1anWuMymKZYaMlNEEh+UU9iRNExOr+HCBh4Kb1XALPXTdsUqvOhwZXlFCc?=
	=?us-ascii?Q?x36gbg9I/rXLAwzBhhvKvW11RDxix1yZvX2feF6Qvy5AMwq/uiwYZg9vaAWC?=
	=?us-ascii?Q?vtln9k3XEUjKfZsWwjGH7qa4It7LgxsmmqEkkjWfeYhvyIT9y+r93edjDs12?=
	=?us-ascii?Q?l1XBrtfdVFFcZrmoHW4AUn3ZM5cHRgpAk5/PjmLUFlF6ymCvCQuzrEFLykRg?=
	=?us-ascii?Q?KE6LJziiIkD3FzO9Etd8wD+rjbGgER0WmJ2y9TgZYou3/drEneTZIkkY9j9/?=
	=?us-ascii?Q?xNYWj9vLzdqaeCOmQ6Gg4cHYRCcJbof8n088mW84f+IczgUhblXHdfKzt5NN?=
	=?us-ascii?Q?+w7J17xfSCm5KqI8fKLXekXZ0pbqpypCfD9+sZ9J/ShcEPpS2NEIRDu7xV//?=
	=?us-ascii?Q?HIB10AI7JtJNgBkHXYYPxuHkSf56vp3UZmOp2CDvynIOuFrbl+K7V9Lz29Bo?=
	=?us-ascii?Q?FMDtcIsIA5tfZLVd70rkrS+4hS0BchjndNFBrk/gVwLQjS0vwMASgALiBc38?=
	=?us-ascii?Q?3P0Yqo/WaqHn+sK6wUXegroyIGb6cdy6BnS07h8AJtKjrLLjlJ60SQZ7mvY2?=
	=?us-ascii?Q?qRv5OBzwgvM9PN35verRfzjXHS/tUS2bz2sBbw0xIlTjOEEYfXIExaEi+pCi?=
	=?us-ascii?Q?WY/oWhhQ4wpY+I4rzWtIrkzF8X?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB295;
	31:lZuAMmD4uGzHCdJgNMbLBFXoj59e9tv28nS4cHU0X8o+y8j8mNViogkkeGyjDx58XzsufjuyVjumNt00XAj9h6hTuAS/I40iSyRwANUZq4xYXGcmctr5him3/L6H60EXGWloSeCBjMxWIVSCz6pMhCj32CCe4/Dvd0EYAL525IO8oM6GvHDOi55J//ECgQCVXqXwbM5zbT9LEGRmi4/Fkn1Kfi9UWWFQQJnoJDniozXgRmXDMatlQD7g6++AsR/gqRwkGIPxd0vsYWmIKgCaESO29gASsSg2iC1wXqSFoYQ=;
	20:iqBSEvqyGy8Dl8oBZwMIYZXeZ11qE3QiJ0OpJ5ZLYmkENAzX4ebHHH2HvzCEgNnruXYt6DaX25mAWY9BUwkfH8Buv44waApN4Sd3DE/nsHf6/XdNnq5sDG72dhCWMWG6CAvpIs3LwgcdWpugH3eklY10CIouDAt9zStsyoWcC8smqBjyORnoeGbkzeqaHpQ5yWhTEfuxWoGd25SeIW2ZBzntfbDfVx0Jg8PP+5E6xNs7Tg6BO/N4fATsj7IZUFp5afzNM/w6rMD8ZhUpPybpD9QOidIP0Dd+EXpk2ZPsHlWf0x+VVGaF0c2/6cDFGNfHXemyOi6zj9TfOe36VE9dZoRYlI66iSUVXRxNXudW7StdNXPiBT26V7JX3CfGQB5grssC1ziRxNwvbNR9DzorM1DlLeQZpfhxASJkPWjUU4WC/SanN/CD4K0a+g2oq8Gl/hFDIqZkce5T6szd9W+uYrFt7ramFXP1fI5DZTVjWZFj2oNNkzUtzjl/Hv+Mn6/o
X-Microsoft-Antispam-PRVS: <BLUPR02MB2953C51EE47E033C523E0DDB2A40@BLUPR02MB295.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(60795455431006)(17755550239193);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(13018025)(13017025)(13015025)(13024025)(13023025)(8121501046)(5005006)(10201501046)(3002001)(6055026);
	SRVR:BLUPR02MB295; BCL:0; PCL:0; RULEID:; SRVR:BLUPR02MB295; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB295;
	4:d9UuAeVAgS41fInKNng71Wh7Dcfhe90iR2buM8qAlYajIDYmWLejReLJgTE3bjLBybgcYbuciZ456UXpr9SsiDVASzHZlbbX846t4EanoxHOqgE80hQb/XlnWm2J92Lm3QS97PvLAPz6wfwtln21jQyt/93RuZENzUnuVET/5zgolVPTLJg5qYfFjipTDyVqDp9JDe231dzF2aW0lVm0+q0h0TeRiwAwrqnQoDzlm6mCaq5CjZVl6qdWhyNzNugsFpjAy00khqKN66K1XdruLl8ezU46GukEM4YawHOKjUiWBvTKNOjpVzL7QQB8saxdAqG6Z6e/WRxfq39qxXeXeWHmTHoEyJrgCKU1oLm68hA9swRGxMnZ2ehdk+gMx8r5b7mI8N3yXQLQTf/0aFl08bvAnzdoKfrIBWZfbmHvxZ4T1QdBFotjVt8hlGznaUJtngj1pA8/rG3JIIoEhpm4RhZSf4Hhhqodxh9tfXBmTiiZT4lvWPOr+pyXrE3bL0SmRSDMKx5zE527HfP0G291krEA5sstxCekfIk9RG0DKb4xzxWqylKLSffd7NUBaiNFT/l6sxB1oblWF6uKs3X2ag==
X-Forefront-PRVS: 0118CD8765
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BLUPR02MB295;
	23:dfOI41VJ02oVifZywnU34XHtxqcDVZx2fx++7jo/3e?=
	=?us-ascii?Q?MiR6Td0bhLzZ+dlnzy+aFvLHA49W/ClJhB2KzQTq/JEND4u/pXzFR8Uagar+?=
	=?us-ascii?Q?1BhovXEvx3cVCptjXU0+xJVqn8kp03EWi+AAJqmTzCn/s9zFBZqmZ7Ko03st?=
	=?us-ascii?Q?NW1l9+VitgWXJfI2kbO3nqsdiVA41xesk7rRzwEybZtRGtHWTJQZ0xxwmtoS?=
	=?us-ascii?Q?6Vp0KBEZoxkuTQEJ2lrfReFgXhpHqfXdnam1pZrlh/5ltpS8nycooQM2m1S+?=
	=?us-ascii?Q?iJ3WjVMAgQeqll7FkqiNpu+wP1G3Yj4NcM6eGZrblpMWzg9SwGSF8McfplSV?=
	=?us-ascii?Q?URJxc2B3hXlkvRYJsYUaSUEok8yzSjRuKkIcP6XC8bb8U8QVQfv0bNlLscHZ?=
	=?us-ascii?Q?mdQBZVBUi1keSwfRUdEfMeHIvOauxUqjmmByeIxHJAEMbj4rHi8Q60D6Xsf/?=
	=?us-ascii?Q?Wgcndvfe/xTmWJG58ctwT5gbtOTKlztvnCMPDwQ+OO3uPYWc89SHEo0R7bJK?=
	=?us-ascii?Q?gSa+AsAKOIAnlPpRwHNBETZH3zjthHqQGmwLK4IYa2Avf8uUFYPmnP0kSY9g?=
	=?us-ascii?Q?/Mq4qLOtsBeBH31nLo1zbq0LzSCkK/9zEnk139G7Z0wvxyXaZ0zCFoMNWoA/?=
	=?us-ascii?Q?p99jCppbdgJ0fOKx2cz2hSrrvPhHmxD1tYf1w0LXA//qMGP3OX5PpuF5xWS4?=
	=?us-ascii?Q?0ieYEXGbz7U4MArY4XGazCpJBayImXm+9OhNY33rsncizQGHRA4tHQ5l9baJ?=
	=?us-ascii?Q?S000jtVlA7SX3NfGz/SPAVbva37E25wKT/IytiyBAJrR75sb5LAZH+7AUlV+?=
	=?us-ascii?Q?Wrx+5+6JZzq9NqnOe7t2c1P9p3Cfe7wu9I27x6RZlr6DgrjfUGbK3QhyF7bS?=
	=?us-ascii?Q?Wbuut7T3CfXNfGsQCwRfp2HwjqUEM/YBA38jAlCdqlm5KELDMsVF1iB5IB6/?=
	=?us-ascii?Q?JF7ZQ8vInF8ybo+uqDPxvEUB79ZoELKSc7HaSrns2sObjZ0LszRqV+ThkRUg?=
	=?us-ascii?Q?qznghRmm8r5eG1feoYeeGlrFupAaLNMvA1wPHBfkJ6d+vojkYHWMqpjRPWk5?=
	=?us-ascii?Q?a9Sw1K38+XkYNVMBv9LXIXu2smXc8JWgQx1ebvokMuXNeuTuypt844XC1x/Y?=
	=?us-ascii?Q?6qezR5kjP7Grj3Yed2aHSIlm78t99eT3CP463RVLOuxOxa9rYSRNUsrRni8g?=
	=?us-ascii?Q?SrlCUv9oM7f+i2MRe33bYZRFZ1O9Aj72kyf4wLArKvFsFvg9PjO+7OzGPcdB?=
	=?us-ascii?Q?zejN6/442PJnek6apDZXuIh6hsMQAr6fnnpVehoCrH3JvBXmu0SI/K3icwiM?=
	=?us-ascii?Q?Nzbw1EUF5BDxaXbMO0wPBV2l0yX+5I2ASm3L2X1it5Uqht+FcAy+kUf5XNbC?=
	=?us-ascii?Q?vW6g=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB295;
	6:EvfwDLMlmoqjesSyjkZn2/j47gCxyo7ajXZsn5C7dLUZtlaQ/lM2r4S+M2QxW1npHAdtkcrHjoCiEBaQ3pwe4wwamW84cEq/aW0HYBoJJlTOOAi1tjpgCZCIgJXLKzPj/9rwKmdE89ux/3kWYpSfvt/6YWRXN0wI4hcjJ/F7E1sCz9Yiql/1+KDFzkYmL01lgu4lOR0sMNW82WtsouqSl3vfmzjziwLdZZpxZ5MFtu+/DYwlZIO+VwyBXq+f1/PsKZKu6Zf9Ez7T1Fg3s2f8fItTDJm7EhtXS0pgsEt3Sa+fqgDSd5NwJa8RorfLyWJE35QaOQQ9cLfrQ4UeV/2NoiJ5v4xERbIrHYVMutlY8f0=;
	5:WFtxNKOm52DDevY0AZiC/nGlRlI369TdroJJ9vGkkoT0YKa53x05uiCeLmQnwD+KwmLbHTstcDh1NbIemkS8gaJwL8GDIgSeg01Lu98muD/aqMWn2Jmdgmb/TpPdHI/hWTXYsfRc2fcUe5XFAoLANA==;
	24:sfBB2xspIDWz85rF8cF+XA1pKLv+ok8YVDkPkNjygS9ydQHEjJgi3DxWq+Tpencij8oDKGqAxHd+H3ZMP1SPyT1T9GkRXyT1/FrA+zgg5AA=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB295;
	7:hasz8tqY4ungBJP+UzeOnVd+89vyWLZK0D0YaT3sCKHwraMdc465s8oiTho89cwSQP9ojUGUDf/uCogPnJGePEGOmtcV+4/+1Ixvu2WdaBvl9aTWdNxsbsb94moCenMlJ1reTuXDtd/yoviewb3Ia1YXOrgzd79Obg6/XeSAtPfgt64LNDVu8NAQk3dYdZFuRiIlT42MvjNBa0ezT9nUPhX2dfWIaHtt8fk+aD6Tt0lCyDCiUnUy0NLB+Qxtm/ZG4bncsmM7BLtvQMoeRYKQzSzfnp2UPdWZ7qRUdp4JdSkU+qaJeoMjA8BsxVk/IRc9CklPPxyJwr9e99Ounjd5mWJm2JOd4WQd2eDqdMfzP1A=
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2016 16:41:29.8742 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR02MB295
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto "Long Term Support"
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
X-List-Received-Date: Sun, 06 Nov 2016 17:15:25 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_E1193EF6ACFB48A0A39B58B9F90C1F01sierrawirelesscom_"

--_000_E1193EF6ACFB48A0A39B58B9F90C1F01sierrawirelesscom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB0aGluayB0aGF0IExUUyBpcyBzb21ldGhpbmcgdGhhdCB5b3Ugd291bGQgdXN1YWxseSBnbyB0
byBvbmUgb2YgdGhlIG1hbnkgImZvciBoaXJlIiBzb2Z0d2FyZSBob3VzZXMgdGhhdCBhcmUgcGFy
dCBvZiB0aGUgeW9jdG8gY29tbXVuaXR5LiAuLi4gb3IgeW91IGhhdmUgdG8gZG8gaXQgeW91cnNl
bGYuDQoNClRoZXNlIGFyZSB1c3VhbGx5IGJhc2VkIG9uIGEgc3Vic2NyaXB0aW9uIG1vZGVsIG9m
IHN1cHBvcnQgZm9yIGRpc3Ryb3MgYXMgc3VwcG9ydGVkIGJ5IHRoZSB2ZW5kb3IuDQoNCkp1c3Qg
bXkgb3BpbmlvbiwgbmV3IHlvY3RvIHJlbGVhc2VzIHdpdGggZXZlcnl0aGluZyBhdCB0aGUgYmxl
ZWRpbmcgZWRnZSBpcyBsaWtlIGEgY29tbW9kaXR5IHByb2R1Y3QuICBIYXZpbmcgYSByZWxlYXNl
IG1haW50YWluZWQgd2l0aCBhbGwgdGhlIENWRXMgYW5kIGNyaXRpY2FsIGJ1ZyBmaXhlcyBpcyBh
IHZhbHVlIGFkZC4NCg0KRm9yIGV4YW1wbGUsIGEgcm91dGVyIHlvdSBidXkgYXQgYSBjb21wdXRl
ciBzdG9yZSBpcyBhIGNvbW1vZGl0eSBwcm9kdWN0LCBidXQgYSBnYXRld2F5IHByb2R1Y3QgZGVz
aWduZWQgdG8gb3BlcmF0ZSBpbnNpZGUgYSB2ZWhpY2xlIGVudmlyb25tZW50IGlzIGEgdmFsdWUg
YWRkLg0KDQpBbnlvbmUgd2hvc2UgYnVzaW5lc3MgbW9kZWwgZGVwZW5kcyBvbiBzdWNoIGhpZ2hl
ciBiYXIgb2YgcXVhbGl0eSwgc2hvdWxkIGJlIHByZXBhcmVkIHRvIHBheSBhdCBsZWFzdCBhIHNo
YXJlIG9mIHRoZSBjb3N0IGl0IHdvdWxkIHRha2UgdG8gRElZLg0KDQpZb3UgYXJlbid0IHNvIG11
Y2ggcGF5aW5nIGZvciBhIHNwZWNpZmljIHNuYXBzaG90IChhcyB0ZWNobmljYWxseSB5b3UgY2Fu
IGdldCBpdCBmb3IgZnJlZSB1bmRlciB0ZXJtcyBvZiBtb3N0IEZPUyBsaWNlbnNlcyksIGJ1dCB5
b3UgYXJlIHBheWluZyBmb3IgYSBkeW5hbWljIGZlZWQsIGFuZCBhIG1vZGVsIG9mIHN5bmNocm9u
aXppbmcgeW91ciB3b3JrIHdpdGggc3VjaCBhIGZlZWQuDQoNCkkgc3BlbmQgYSBjZXJ0YWluIGFt
b3VudCBvZiB0aW1lIGFwcGx5aW5nIENWRSBmaXhlcyB0byBwYWNrYWdlcywgYW5kIGluIHNvbWUg
Y2FzZXMgSSBldmVuIHVwZ3JhZGUgdGhlIHZlcnNpb24uICBJIHRyeSB0byBrZWVwIHRoaXMgc2Vw
YXJhdGUgZnJvbSB3aGF0IHRoZSB0ZWFtIHVzZXMgdG8gY3VzdG9taXplIHRoZSBkaXN0cm8gZm9y
IG91ciBhcHBsaWNhdGlvbiB1c2luZyBsYXllcnMgYW5kIGJiYXBwZW5kcy4gU3RpbGwgcGVvcGxl
IHNvbWV0aW1lcyB0YWtlIHNob3J0Y3V0cywgbW9kaWZ5aW5nIGEgYmJhcHBlbmQgKG9yIGJiKSBp
biB0aGUgd3JvbmcgbGF5ZXIgYW5kIHRoZW4gdGhleSB3b25kZXIgd2h5IHRoZWlyIGNoYW5nZSBn
b3QgYWJhbmRvbmVkIGR1cmluZyBhbiB1cGdyYWRlLg0KDQpJdCB0YWtlcyBhIGZhaXIgYW1vdW50
IG9mIGVmZm9ydCB0byBrZWVwIG9uIHRvcCBvZiB0aGlzLiAgSW4gdGhlIGVuZCwgZWFjaCBvcmdh
bml6YXRpb24gbXVzdCB0YWtlIG93bmVyc2hpcCBmb3IgcXVhbGl0eS4gIFRoaXMgbm90IHNvbWV0
aGluZyB5b3UgY2FuIGFiZGljYXRlIGV2ZW4gdG8gdGhlIGJlc3Qgb2YgdmFsdWUgYWRkIHZlbmRv
cnMuDQoNClRoYXQgc2FpZCwgbWF5YmUgdGhlcmUgYXJlIHNvbWUgYmV0dGVyIHdheXMgb2YgcGFy
dG5lcmluZyB0aGF0IGNhbiBiZSBleHBsb3JlZC4NCg0KDQotLS0NCg0KUmVnYXJkcywNCg0KRGFy
Y3kNCg0KRGFyY3kgV2F0a2lucw0KU3RhZmYgRW5naW5lZXIsIEZpcm13YXJlDQpTaWVycmEgV2ly
ZWxlc3MNCmh0dHA6Ly9zaWVycmF3aXJlbGVzcy5jb20NCltNNF0NCg0KT24gTm92IDYsIDIwMTYs
IGF0IDc6MzUgQU0sIFZ1aWxsZSwgTWFydGluIChNYXJ0aW4pIDx2bWFydGluQGF2YXlhLmNvbTxt
YWlsdG86dm1hcnRpbkBhdmF5YS5jb20+PiB3cm90ZToNCg0KSGFzIHRoZXJlIGV2ZXIgYmVlbiBh
bnkgZGlzY3Vzc2lvbiBvZiBtYWtpbmcgc2VsZWN0IHJlbGVhc2VzDQrigJxMb25nIFRlcm0gU3Vw
cG9ydOKAnSByZWxlYXNlcywgaS5lLiwgY29tbWl0dGluZyB0byBzdXBwb3J0IHRoZW0NCmZvciBh
IG51bWJlciBvZiB5ZWFycz8NCg0KUHJlc3VtYWJseSB0aGF0IHdvdWxkIGVudGFpbCBoYXZpbmcg
dGhlIHJlc291cmNlcyB0byBjb21taXQNCmEgbWFpbnRhaW5lciB0byB0aGF0IHJlbGVhc2UgZm9y
IHRoZSBMVFMgaW50ZXJ2YWwuDQoNCk91dCBvZiBjdXJpb3NpdHksIGhvdyBtdWNoIGVmZm9ydCBp
cyByZXF1aXJlZCAob24gYXZlcmFnZSkgdG8NCm1haW50YWluIGEgbm9uLWN1cnJlbnQgcmVsZWFz
ZSB3aXRoIGF0IGxlYXN0IENWRXMgYW5kIG1heWJlDQpjcml0aWNhbCBidWcgZml4ZXMgZnJvbSB1
cHN0cmVhbT8NCg0KTVYNCi0tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KeW9jdG8gbWFpbGluZyBsaXN0DQp5b2N0b0B5b2N0b3Byb2plY3Qub3JnPG1h
aWx0bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnPg0KaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qu
b3JnL2xpc3RpbmZvL3lvY3RvDQo=

--_000_E1193EF6ACFB48A0A39B58B9F90C1F01sierrawirelesscom_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PG1ldGEgaHR0cC1lcXVpdj0iY29udGVudC10eXBlIiBjb250ZW50PSJ0ZXh0
L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPjwvaGVhZD48Ym9keSBkaXI9ImF1dG8iPjxkaXY+SSB0aGlu
ayB0aGF0IExUUyBpcyBzb21ldGhpbmcgdGhhdCB5b3Ugd291bGQgdXN1YWxseSBnbyB0byBvbmUg
b2YgdGhlIG1hbnkgImZvciBoaXJlIiBzb2Z0d2FyZSBob3VzZXMgdGhhdCBhcmUgcGFydCBvZiB0
aGUgeW9jdG8gY29tbXVuaXR5LiAuLi4gb3IgeW91IGhhdmUgdG8gZG8gaXQgeW91cnNlbGYuPC9k
aXY+PGRpdiBpZD0iQXBwbGVNYWlsU2lnbmF0dXJlIj48YnI+PC9kaXY+PGRpdiBpZD0iQXBwbGVN
YWlsU2lnbmF0dXJlIj5UaGVzZSBhcmUgdXN1YWxseSBiYXNlZCBvbiBhIHN1YnNjcmlwdGlvbiBt
b2RlbCBvZiBzdXBwb3J0IGZvciBkaXN0cm9zIGFzIHN1cHBvcnRlZCBieSB0aGUgdmVuZG9yLjwv
ZGl2PjxkaXYgaWQ9IkFwcGxlTWFpbFNpZ25hdHVyZSI+PGJyPjwvZGl2PjxkaXYgaWQ9IkFwcGxl
TWFpbFNpZ25hdHVyZSI+SnVzdCBteSBvcGluaW9uLCBuZXcgeW9jdG8gcmVsZWFzZXMgd2l0aCBl
dmVyeXRoaW5nIGF0IHRoZSBibGVlZGluZyBlZGdlIGlzIGxpa2UgYSBjb21tb2RpdHkgcHJvZHVj
dC4gJm5ic3A7SGF2aW5nIGEgcmVsZWFzZSBtYWludGFpbmVkIHdpdGggYWxsIHRoZSBDVkVzIGFu
ZCBjcml0aWNhbCBidWcgZml4ZXMgaXMgYSB2YWx1ZSBhZGQuPC9kaXY+PGRpdiBpZD0iQXBwbGVN
YWlsU2lnbmF0dXJlIj48YnI+PC9kaXY+PGRpdiBpZD0iQXBwbGVNYWlsU2lnbmF0dXJlIj5Gb3Ig
ZXhhbXBsZSwgYSByb3V0ZXIgeW91IGJ1eSBhdCBhIGNvbXB1dGVyIHN0b3JlIGlzIGEgY29tbW9k
aXR5IHByb2R1Y3QsIGJ1dCBhIGdhdGV3YXkgcHJvZHVjdCBkZXNpZ25lZCB0byBvcGVyYXRlIGlu
c2lkZSBhIHZlaGljbGUgZW52aXJvbm1lbnQgaXMgYSB2YWx1ZSBhZGQuPC9kaXY+PGRpdiBpZD0i
QXBwbGVNYWlsU2lnbmF0dXJlIj48YnI+PC9kaXY+PGRpdiBpZD0iQXBwbGVNYWlsU2lnbmF0dXJl
Ij5BbnlvbmUgd2hvc2UgYnVzaW5lc3MgbW9kZWwgZGVwZW5kcyBvbiBzdWNoIGhpZ2hlciBiYXIg
b2YgcXVhbGl0eSwgc2hvdWxkIGJlIHByZXBhcmVkIHRvIHBheSBhdCBsZWFzdCBhIHNoYXJlIG9m
IHRoZSBjb3N0IGl0IHdvdWxkIHRha2UgdG8gRElZLjwvZGl2PjxkaXYgaWQ9IkFwcGxlTWFpbFNp
Z25hdHVyZSI+PGJyPjwvZGl2PjxkaXYgaWQ9IkFwcGxlTWFpbFNpZ25hdHVyZSI+WW91IGFyZW4n
dCBzbyBtdWNoIHBheWluZyBmb3IgYSBzcGVjaWZpYyBzbmFwc2hvdCAoYXMgdGVjaG5pY2FsbHkg
eW91IGNhbiBnZXQgaXQgZm9yIGZyZWUgdW5kZXIgdGVybXMgb2YgbW9zdCBGT1MgbGljZW5zZXMp
LCBidXQgeW91IGFyZSBwYXlpbmcgZm9yIGEgZHluYW1pYyBmZWVkLCBhbmQgYSBtb2RlbCBvZiBz
eW5jaHJvbml6aW5nIHlvdXIgd29yayB3aXRoIHN1Y2ggYSBmZWVkLjwvZGl2PjxkaXYgaWQ9IkFw
cGxlTWFpbFNpZ25hdHVyZSI+PGJyPjwvZGl2PjxkaXYgaWQ9IkFwcGxlTWFpbFNpZ25hdHVyZSI+
SSBzcGVuZCBhIGNlcnRhaW4gYW1vdW50IG9mIHRpbWUgYXBwbHlpbmcgQ1ZFIGZpeGVzIHRvIHBh
Y2thZ2VzLCBhbmQgaW4gc29tZSBjYXNlcyBJIGV2ZW4gdXBncmFkZSB0aGUgdmVyc2lvbi4gJm5i
c3A7SSB0cnkgdG8ga2VlcCB0aGlzIHNlcGFyYXRlIGZyb20gd2hhdCB0aGUgdGVhbSB1c2VzIHRv
IGN1c3RvbWl6ZSB0aGUgZGlzdHJvIGZvciBvdXIgYXBwbGljYXRpb24gdXNpbmcgbGF5ZXJzIGFu
ZCBiYmFwcGVuZHMuIFN0aWxsIHBlb3BsZSBzb21ldGltZXMgdGFrZSBzaG9ydGN1dHMsIG1vZGlm
eWluZyBhIGJiYXBwZW5kIChvciBiYikgaW4gdGhlIHdyb25nIGxheWVyIGFuZCB0aGVuIHRoZXkg
d29uZGVyIHdoeSB0aGVpciBjaGFuZ2UgZ290IGFiYW5kb25lZCBkdXJpbmcgYW4gdXBncmFkZS48
L2Rpdj48ZGl2IGlkPSJBcHBsZU1haWxTaWduYXR1cmUiPjxicj48L2Rpdj48ZGl2IGlkPSJBcHBs
ZU1haWxTaWduYXR1cmUiPkl0IHRha2VzIGEgZmFpciBhbW91bnQgb2YgZWZmb3J0IHRvIGtlZXAg
b24gdG9wIG9mIHRoaXMuICZuYnNwO0luIHRoZSBlbmQsIGVhY2ggb3JnYW5pemF0aW9uIG11c3Qg
dGFrZSBvd25lcnNoaXAgZm9yIHF1YWxpdHkuICZuYnNwO1RoaXMgbm90IHNvbWV0aGluZyB5b3Ug
Y2FuIGFiZGljYXRlIGV2ZW4gdG8gdGhlIGJlc3Qgb2YgdmFsdWUgYWRkIHZlbmRvcnMuPC9kaXY+
PGRpdiBpZD0iQXBwbGVNYWlsU2lnbmF0dXJlIj48YnI+PC9kaXY+PGRpdiBpZD0iQXBwbGVNYWls
U2lnbmF0dXJlIj5UaGF0IHNhaWQsIG1heWJlIHRoZXJlIGFyZSBzb21lIGJldHRlciB3YXlzIG9m
IHBhcnRuZXJpbmcgdGhhdCBjYW4gYmUgZXhwbG9yZWQuPGJyPjxicj48YnI+PGRpdj48ZGl2Pjxz
cGFuIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOiByZ2JhKDI1NSwgMjU1LCAyNTUsIDApOyI+LS0t
PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYmEoMjU1
LCAyNTUsIDI1NSwgMCk7Ij48YnI+PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4gc3R5bGU9ImJhY2tn
cm91bmQtY29sb3I6IHJnYmEoMjU1LCAyNTUsIDI1NSwgMCk7Ij5SZWdhcmRzLDwvc3Bhbj48L2Rp
dj48ZGl2PjxzcGFuIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOiByZ2JhKDI1NSwgMjU1LCAyNTUs
IDApOyI+PGJyPjwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9y
OiByZ2JhKDI1NSwgMjU1LCAyNTUsIDApOyI+RGFyY3k8L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBz
dHlsZT0iYmFja2dyb3VuZC1jb2xvcjogcmdiYSgyNTUsIDI1NSwgMjU1LCAwKTsiPjxicj48L3Nw
YW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjogcmdiYSgyNTUsIDI1
NSwgMjU1LCAwKTsiPkRhcmN5IFdhdGtpbnM8L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0i
YmFja2dyb3VuZC1jb2xvcjogcmdiYSgyNTUsIDI1NSwgMjU1LCAwKTsiPlN0YWZmIEVuZ2luZWVy
LCBGaXJtd2FyZTwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9y
OiByZ2JhKDI1NSwgMjU1LCAyNTUsIDApOyI+U2llcnJhIFdpcmVsZXNzPC9zcGFuPjwvZGl2Pjxk
aXY+PHNwYW4gc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYmEoMjU1LCAyNTUsIDI1NSwgMCk7
Ij48YSBocmVmPSJodHRwOi8vc2llcnJhd2lyZWxlc3MuY29tIj5odHRwOi8vc2llcnJhd2lyZWxl
c3MuY29tPC9hPjwvc3Bhbj48L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9y
OiByZ2JhKDI1NSwgMjU1LCAyNTUsIDApOyI+W000XTwvc3Bhbj48L2Rpdj48L2Rpdj48L2Rpdj48
ZGl2Pjxicj5PbiBOb3YgNiwgMjAxNiwgYXQgNzozNSBBTSwgVnVpbGxlLCBNYXJ0aW4gKE1hcnRp
bikgJmx0OzxhIGhyZWY9Im1haWx0bzp2bWFydGluQGF2YXlhLmNvbSI+dm1hcnRpbkBhdmF5YS5j
b208L2E+Jmd0OyB3cm90ZTo8YnI+PGJyPjwvZGl2PjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPjxk
aXY+DQo8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsg
Y2hhcnNldD1XaW5kb3dzLTEyNTIiPg0KPG1ldGEgbmFtZT0iR2VuZXJhdG9yIiBjb250ZW50PSJN
aWNyb3NvZnQgV29yZCAxNCAoZmlsdGVyZWQgbWVkaXVtKSI+DQo8c3R5bGU+PCEtLQ0KLyogRm9u
dCBEZWZpbml0aW9ucyAqLw0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDYWxpYnJpOw0KCXBh
bm9zZS0xOjIgMTUgNSAyIDIgMiA0IDMgMiA0O30NCi8qIFN0eWxlIERlZmluaXRpb25zICovDQpw
Lk1zb05vcm1hbCwgbGkuTXNvTm9ybWFsLCBkaXYuTXNvTm9ybWFsDQoJe21hcmdpbjowaW47DQoJ
bWFyZ2luLWJvdHRvbTouMDAwMXB0Ow0KCWZvbnQtc2l6ZToxMS4wcHQ7DQoJZm9udC1mYW1pbHk6
IkNhbGlicmkiLCJzYW5zLXNlcmlmIjsNCgltc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUzt9DQph
OmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xv
cjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFuLk1z
b0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpwdXJw
bGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpzcGFuLkVtYWlsU3R5bGUxNw0KCXtt
c28tc3R5bGUtdHlwZTpwZXJzb25hbC1jb21wb3NlOw0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIiwi
c2Fucy1zZXJpZiI7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28t
c3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsInNhbnMtc2Vy
aWYiOw0KCW1zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTO30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0K
CXtzaXplOjguNWluIDExLjBpbjsNCgltYXJnaW46MS4waW4gMS4waW4gMS4waW4gMS4waW47fQ0K
ZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1b
aWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1h
eD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0K
PG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9
IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQoNCg0KPGRpdiBjbGFz
cz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVT
Ij5IYXMgdGhlcmUgZXZlciBiZWVuIGFueSBkaXNjdXNzaW9uIG9mIG1ha2luZyBzZWxlY3QgcmVs
ZWFzZXM8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBs
YW5nPSJFTi1VUyI+4oCcTG9uZyBUZXJtIFN1cHBvcnTigJ0gcmVsZWFzZXMsIGkuZS4sIGNvbW1p
dHRpbmcgdG8gc3VwcG9ydCB0aGVtPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPmZvciBhIG51bWJlciBvZiB5ZWFycz88bzpwPjwv
bzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4g
bGFuZz0iRU4tVVMiPlByZXN1bWFibHkgdGhhdCB3b3VsZCBlbnRhaWwgaGF2aW5nIHRoZSByZXNv
dXJjZXMgdG8gY29tbWl0PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPmEgbWFpbnRhaW5lciB0byB0aGF0IHJlbGVhc2UgZm9yIHRo
ZSBMVFMgaW50ZXJ2YWwuPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gbGFuZz0iRU4tVVMiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5PdXQgb2YgY3VyaW9zaXR5LCBob3cg
bXVjaCBlZmZvcnQgaXMgcmVxdWlyZWQgKG9uIGF2ZXJhZ2UpIHRvPG86cD48L286cD48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPm1haW50YWluIGEg
bm9uLWN1cnJlbnQgcmVsZWFzZSB3aXRoIGF0IGxlYXN0IENWRXMgYW5kIG1heWJlPG86cD48L286
cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPmNy
aXRpY2FsIGJ1ZyBmaXhlcyBmcm9tIHVwc3RyZWFtPzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj48bzpwPiZuYnNwOzwvbzpwPjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+TVY8bzpw
PjwvbzpwPjwvc3Bhbj48L3A+DQo8L2Rpdj4NCg0KDQo8L2Rpdj48L2Jsb2NrcXVvdGU+PGJsb2Nr
cXVvdGUgdHlwZT0iY2l0ZSI+PGRpdj48c3Bhbj4tLSA8L3NwYW4+PGJyPjxzcGFuPl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjxicj48c3Bhbj55
b2N0byBtYWlsaW5nIGxpc3Q8L3NwYW4+PGJyPjxzcGFuPjxhIGhyZWY9Im1haWx0bzp5b2N0b0B5
b2N0b3Byb2plY3Qub3JnIj55b2N0b0B5b2N0b3Byb2plY3Qub3JnPC9hPjwvc3Bhbj48YnI+PHNw
YW4+PGEgaHJlZj0iaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3Rv
Ij5odHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG88L2E+PC9zcGFu
Pjxicj48L2Rpdj48L2Jsb2NrcXVvdGU+PC9ib2R5PjwvaHRtbD4=

--_000_E1193EF6ACFB48A0A39B58B9F90C1F01sierrawirelesscom_--
