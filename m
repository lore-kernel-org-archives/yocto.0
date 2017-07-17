Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC83EE00C25; Mon, 17 Jul 2017 03:41:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.2.127 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr20127.outbound.protection.outlook.com [40.107.2.127])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1373E00BBF
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 03:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=wx/VB55kQ3GypZkbRbU0PHiiEDby1eZvKl9p6QjrIgc=;
	b=UJnIUCu8yte3qd8O/y+3XYIQ5oE7e3CeI1/n1mZGes0A4wHeSKHKG1QmFZxriTu3BPxbFYwh6Mvk1bpmdHZsLV1+KzHtyuexkQYS7SW86XfF85wS4Dnh0ZpDghP7iJbRmB1Ar51p5kHw+7zeKRDABwvGFvpGcs8ang/RrV4/6Ko=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=Net2Edge.com;
Received: from [172.16.20.67] (81.128.174.58) by
	HE1PR0701MB1881.eurprd07.prod.outlook.com (2603:10a6:3:38::21) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1261.4;
	Mon, 17 Jul 2017 10:25:38 +0000
To: Pierre FICHEUX <pierre.ficheux@smile.fr>, yocto@yoctoproject.org
References: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Organization: Net2Edge Limited
Message-ID: <3defd71b-ab6d-6281-943c-7864dc76633f@Net2Edge.com>
Date: Mon, 17 Jul 2017 11:25:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
X-Originating-IP: [81.128.174.58]
X-ClientProxiedBy: DB6P192CA0019.EURP192.PROD.OUTLOOK.COM (2603:10a6:4:b8::29)
	To HE1PR0701MB1881.eurprd07.prod.outlook.com
	(2603:10a6:3:38::21)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fa246acb-8123-4e60-ab95-08d4ccfe2b97
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(201703131423075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:HE1PR0701MB1881; 
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0701MB1881;
	3:uEThmrEz7JjVXOfZ7MlUPIgM8g4LsHH/XkqLveC3fEFObv0h7OdtnKszHUhUfXrB8L4NFR8yZ2MqRfIn/qYPVMaUGMi4bTeCdIRQnC/NzMHBjTxbxp73r3TBD01vK4H10fqofJMX0ymgmIbdKs2xNEmoDfWwe0PcA81Zo+sJ4eov9THmeZ4wI+uB6Ew29Ncu6MZdo4ky+jSAVALxbKwRLJaqDsdk9TYBIBhw+LPtVfN3JJBq97xrqwqIZGH+DIj6zY7IIwD8/GSIY+K2c2T2wmOjMs3rwzSSO8rhcJBF+8YLVrU3AeGFtKKYDiikaZMYB91EixbzkEyiZpdk4xT8Oiyo1cKxcoCbMmXJMTROwQYqJNFabstI2pGHtdVEQVdUJ+7Bp/aYPtYRdLKMsCqqehfvCK9dnTa1ZLCAo73x+QAqoq+qESGkWvyO/It/78LCGF6PCeGQhAeoG71WamFEKuyxom562XAZ/FgL2Hwy6DOCQe1A+IE9l6aVToiWUzGrcsz3N1q2/CtoD3mQV0iEvMEGkgZozpGT+pUWdFsTaO/9yqRuX5LFMbwFMpDL0iospQTiHi+h+pEobG/e01jeB2kvbhdGeGG6GQf44xRJYIyCFhnFz1pdmNTPTprwaPhW9TyAMcF7/oiqDbAaaKX45/JHTLNDePsk4IDfnbs15Nr9mb/+roxEglUHJzVeVGYFtIfzshn/+NVUt8bDGbWPzQ==
X-MS-TrafficTypeDiagnostic: HE1PR0701MB1881:
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0701MB1881;
	25:SIRNsy/48M4zY8bfRbcxcqh7kr5HIdX/lCwKQg8BaxJs5NpowQy+7G0/LHeqIagSLU8keEE0nDio+ub5P78eBh2pu4XcIn8dJnHPcVnuJ+Asb87RjAHcZ3aboSXb5XPzsz24sAF9S69JzAxWhD+KWG6jpCx4EZBJ9FJKyA90kUpKL9jghnSBrBDJ5qZjIq1hdkEkHWFc4/BNiXw/buNQ/f6wvlegV2kffu5MtyQ9lKDsJCJ7raAGocxwx6jvuF6RtihWcIJRVwMQPCQIdgArG2aU9dhEatE9isqzuSVAU6JRRV5yJ0Jwp5tWRYE/OpTrr8U16hEJLi0W430rqeb1+1RLb9E1XXw7FsdO2yYldU8h8Siz1ww/Zqbd3zAE+wM1hlU5XvT7U3IHvNyczViRMfg2vqx/tShaRiiD3d4QO+piWhHZzovcIK02MKvyunl3H2rJtBHXJ0vHhLILzUKTeCYlgYHId1efFDXA0XlJpZLv2yJNUgPHyWC1NyWLI0y+bNjWJ/W2TzK7LCALPrn2u8zwUW5/yEU9Meh1anJ/Hsnx2pEErxte7i2plbHV7sMb/NBb+RO77y5/LFdeLUyTO/LLS5lPZzyjc09M3VKFt/SaM+5pMMVnL3BrWD2bRZ7/Y8h86bal4u0gb7Aw/4iBsxVgs9rGXlVQV6tWpXrqWdG8hWx2ES47IewzAlG3U1/6Yq/eG9eo4wSgLGvt+d8IR4iNYGaBUz7USq974uaxRwBBx/fyOsuRNRgeNTizE6ArEPENbonrbXt5z/zrAt3BBYZU2nef9NMxxrIIjwHZbNGbCCMOZzhY2zTtyl1tB2uB8Uf5pQ/IGjEKFIMTzLU/FSZBgzBdN6qm4JZ4KK6ABlFW+cPnFxzmpWp2u3LQgzHdH7y94USmO96rEi2Pif/OegsXnjY2VX5MerEbGgzrCNY=
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0701MB1881;
	31:rD0WoOf8dfIdf34dF0O5R7t2mr9hf/fLzYpdYAguQWgHq5cT6YhRi4BGR2FwNvzdgUGeRpGNwAvLKAiW1GImze4BoE8TV5l/xTqJn1BrRUbLOuVfYWWHjEhIkx2ozUoG5LAo4V6Mctzs3vuLttskPi8f3gfV/f8a0IGCp2Ywmb+ILz0X6iiqAOaNHgaW6ycVoBnp09i05Zsf7bQgl6kwiokIRi91ubXc1fvq+zCkcVWOTHxmSm/DYCETJkZ02IUXa5vebK2HreWVEClHTi0+3vY66nFQhTwA0BwSrMk1o2fEJ+CWlWAPR1UM32SmJ4icI5BjTQaja6ttYhOi2wXeRav6JANh279GG8RGc2GKthrzO/6AtZvjaGLbxnLDUTgVcYrm+Emjj5nqbPdKNblrD9xora/p+BlsZO7y04LSdE3/Ycw5WuVqKupYXLP/mPW9EUkIsWvD2XLsiO6pMXyixTPspRCjbcSKo//JUAQi518O91Jy1UsykCcjqQHUj92sglTnQg9F+WzHi2y7nM+ddzqAZXerKlLKOmSCNizJ/tMT4a3h+b5YHaMN4GHpWScBvgEYqJle45vP+OSKmJpSkAEI4CRlzAOOKLoHkf+W/yDGHDK/3NcZjTqJFlReZvfheV43/fSv9DaQ8FAuFfRIQAlTbQFV3apdRLy6j1aU+K04X8+gqmRchmUEXTLIVshaV9q6N/x7TI+yL/9xc/+Q2w==;
	20:DDNjNXZEIXKZHFQjGWxMBT8fCPOZ2KlOR0ewbIkOO2Ob79rXLXeES+biZhDtGnipC7kqnWgQofiLaUESleELxtbGYT9UgwwQFWCqoqtEimCbKyhlmNz2hHEXaYYV9OABohIvj3E2uXvitcPVMcYhLMN+1nGgKJOX8/azEo630b0=
X-Exchange-Antispam-Report-Test: UriScan:(236129657087228);
X-Microsoft-Antispam-PRVS: <HE1PR0701MB18812E79461F921E09DFEC81D3A00@HE1PR0701MB1881.eurprd07.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(2017060910075)(93006095)(93001095)(10201501046)(100000703101)(100105400095)(3002001)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(20161123558100)(20161123562025)(2016111802025)(20161123564025)(20161123560025)(6072148)(6043046)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:HE1PR0701MB1881; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HE1PR0701MB1881; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; HE1PR0701MB1881;
	4:U9yz4f3y3VCla6L8j5ZijQVo5bMTLFa313G/Iqvi?=
	=?us-ascii?Q?SKfcZQtRxd2upV/IfBfJY/maWNOn7njWgB36rTO6GzN8NadJ9dVMbqotmunN?=
	=?us-ascii?Q?1FNcY/lYMM6WZIFS6rBwRY7Fd+nMLjz1NOc/UaY8HLMphNYcKjMYrM8NhnxR?=
	=?us-ascii?Q?QOlMvqeeEDNhwxCgjGGvRgDtoCqFiFn3jZgdzTOi9cx+y5hHolG/H7w6h7w7?=
	=?us-ascii?Q?dK+fKywGyFUwxZi8bZbZEaEjNVns9XTgCAa65nryBml5dhof9lKME/6hIoY+?=
	=?us-ascii?Q?PLnakXk7vxvlUHegdLANCoQw/mNSZ+UGoOjtUcGdeIdvjBNE5UM+KwDh4cAy?=
	=?us-ascii?Q?y9Pi+HTdncE/iznRpaPF2UKmxwYz9E6CdAI8k9Ah/2g3OwpZ9yrFyIRBT3fY?=
	=?us-ascii?Q?k3i9c+uikmynusqAnOOP7Uo380hrGALKYqz46ey+eNYm+chNw29S1YrWrtmA?=
	=?us-ascii?Q?djRL4gZw4Jt9Il7On0dDjZE/p3Wt1c9yOljxNlVgDjhGxjyjc7HaWDqwi8db?=
	=?us-ascii?Q?ZP5md2WMvSl2jQoSauYeAoV8bVQ495R5Cdqz3ACne6YpgJ6OIIU22O9M6g/n?=
	=?us-ascii?Q?jaIQavzjMf/NGE6cx8FnbJZ3v42UdRTJQT7+kwpAQAE6L97PTHtrruOmJGFa?=
	=?us-ascii?Q?TeFokvcxnvUJMc36Zy8bA+znF4IuM5CTS0U5sWHbTcVYp81tdOKJ54MplWB+?=
	=?us-ascii?Q?wKaOmTkFyeMeStER4XIEasMnyz70At7aUSVMcs76G05o53K8LWKwI3bX/8kE?=
	=?us-ascii?Q?xjuL9imO4eXhXVT0xbHUQPzio6NfgYHUwvQMaHlMQpZfU8Ov8LdTo5ISTQKD?=
	=?us-ascii?Q?yH3t3uYJ9qfe6UcZsudd0fyqfNb1hg8dH0ljmVAwaF2ecn7qv+JLTVLntpDt?=
	=?us-ascii?Q?QOx33nbmPbL6+S/rj6wDuMbuMiY4NBV1FSW5Mui0yWdebp4+NL1eV4Qp8IDu?=
	=?us-ascii?Q?HQbveCl3AovL1uCZ+RfImT8rd2zDlEyPW6sN90TYQqCdzp0xblczopRz2oEX?=
	=?us-ascii?Q?MCao2PtrFatMsCMCX7nunPQXlP/Hp+q4xUjXQ5l5O95hJU3dCf00/Eg05QuM?=
	=?us-ascii?Q?aA8VTWNBK6Jdf1TPdSHikCS0pBfjD455H0y5JA51qr9xn3+5cttfAthVcG5J?=
	=?us-ascii?Q?7h7RJAibLZWqMJJkfdWJLH0yypvwG/AiW85SoqcULg6kad4+HWFYz8wrSIbz?=
	=?us-ascii?Q?bM32HiBUfO4z++9bfvz9DDkV8A3hcjIaZv8wcFg1sHAtQTpBc9EYC9VvJlEL?=
	=?us-ascii?Q?wQvjzQkJpVtL7AcqGoT/9zy8qbOb3KQI2AOaBkvd?=
X-Forefront-PRVS: 0371762FE7
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(7370300001)(4630300001)(6009001)(6049001)(39410400002)(39400400002)(39830400002)(39450400003)(24454002)(5890100001)(54356999)(4001350100001)(76176999)(50986999)(478600001)(189998001)(31686004)(42186005)(72206003)(568964002)(36756003)(43066003)(6246003)(53936002)(38730400002)(110136004)(77096006)(33646002)(6486002)(31696002)(6116002)(3846002)(53546010)(2950100002)(6666003)(21480400002)(229853002)(3450700001)(66066001)(65806001)(5660300001)(83506001)(65826007)(305945005)(25786009)(7350300001)(7736002)(2906002)(84326002)(8676002)(81166006)(64126003)(86362001)(575784001)(24704002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0701MB1881; H:[172.16.20.67];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; HE1PR0701MB1881;
	23:snQ+EMMWfZjS9HyHflyBfuZWNl/NaZ3paVIpynd?=
	=?us-ascii?Q?kT3+7eSxi1SFZ4/gunVlqulO1DoGOyqIjF/eeglrpu7QiVwhwkRNgSFbADgN?=
	=?us-ascii?Q?T9JgVMhyVLrjeIzun7Xd0nkJuGHmCC3IHzpqWdlXwJb3ijeLFomJqNafdUmf?=
	=?us-ascii?Q?lgJxGR3Vq/+20hF3C+xhO2iMnrcEh59rgn2kDizlTyPVq3x6hj9rKf9xHZiZ?=
	=?us-ascii?Q?73VCHQvQyOlsdtJos63jrj/tcTlw00EGkWKMuf17OXt6SxitHCDzjGAeWM0C?=
	=?us-ascii?Q?RueC0s2p/4iQa+pY7skpcZO1TzBHE/96RHFVnKZyj8EaSVXJLGXioAbCvfJe?=
	=?us-ascii?Q?Z5ksHxY5eZ59esfSLwe9khvEyJBXlDNHYSpHh3fy6tjvunS3gw87hmsuinNP?=
	=?us-ascii?Q?igO9xCej6NYe8mtIwg8OyoJEAeJ7aKOyJjpRzJyoIc4Hlsoc9j2UlxyKUcsK?=
	=?us-ascii?Q?nkg0c4L2nXbbUszDi+CwZc8yg8f6I2gDBdAPFnZJ9uigSwd/e/79djJEv3te?=
	=?us-ascii?Q?pJVRT31BltHd6gvJBbQxSAZp2Zek6EEa3eTKNiUxmh7N9IDDRBRMx8JeG8we?=
	=?us-ascii?Q?iEPIbd9pwvYADcMZ3NyHabVcGJp43jjbQUsQ8b3fWYfEZdCu/jcO+7aSpBrP?=
	=?us-ascii?Q?AKBPemA7d2X+VmRWDF2xmJcwFv9PedJSuTu3/JIcrKkbb/ijfvkL/Yi/rFtA?=
	=?us-ascii?Q?l2lxKWdMA4NI7kLgNwJKlvSGQoAmaai5uuEkSEUyGiPZ6w0L46rSaYWQL8Tn?=
	=?us-ascii?Q?CnEThl7QJoV04cigxJgm8odks79ZkUvX9pTzzFd4fLDLP+x3XHmgcuwe5GwV?=
	=?us-ascii?Q?fhq1j0ClUrQmKemizPT//2PTdHwNBBDV7pKzTBxghtuwFFQ/upDblSKtid0b?=
	=?us-ascii?Q?i0hDSGJEVhDd8Qjesa0AXb9oHFPf5U/qu3SFNfWmZBCFnin57wBpOiUa+EOb?=
	=?us-ascii?Q?Q1KHSRqKEJm3VL0fYV470rzhnTyUor1lJWPQ4aBFq3gtdWIGSPct+dqSfCTW?=
	=?us-ascii?Q?itFMmsfumRCuqk0yjAFhvArvzBSbrjsHulwxRJpd5pYGxKOmK3oESbncTtEF?=
	=?us-ascii?Q?BEtfTTsRy7QO8UFV6pgPWLquxnfq+xozBsXUPyVHkJ6GF2ZCbnzHihpGhGL+?=
	=?us-ascii?Q?OBho9JTzgecKode7SHutYFa6m5LcZkYN960GJRQ/9K3vN4As4YJUenCXDWnz?=
	=?us-ascii?Q?3YR0FJaYfKL5leHskYEeXPx74i0Z1Cr/w7Cz0ierhNCMX9BAfQaLbwtu97of?=
	=?us-ascii?Q?buV/CNfe3eBoKiC0C4PRoK4CjDXYoGExdH3AWfbyl8U0efUzJWUBXAzl+TWN?=
	=?us-ascii?Q?QFJ40ztm2uQ7m45lAY2RGBi9HSNWLU7SyPpqd+YaZThFVHwjvTAQElQgCZJ3?=
	=?us-ascii?Q?QmpxkxL/mtH03jtZV3wR95UOLuxg=3D?=
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; HE1PR0701MB1881;
	6:LnH5zJVOctmVdfyb1vKT39pXIcvclN8T0UW91+B7?=
	=?us-ascii?Q?Sv3Dn0MGsvBCOOEfyXtfCbUFhGDsDbeAPyrpOAo7A9ZhkwJfpSQM88AUj5xb?=
	=?us-ascii?Q?Bwi5jTmsVU6YKYHos44gphvJsJNfcf6IbG93rHnZHlG/mMroQVgtQ8b0RE6Z?=
	=?us-ascii?Q?hJ+na8001g4g5I6fXQhhwHS8KrOIuESIn//wmO4O24TozxIwRsmJdlbGbh3I?=
	=?us-ascii?Q?84xizRx5JQt33geV6t6VDjzViYSGQhYRG9R+P9Pu3eLMRK9/nw/CicUoYPJX?=
	=?us-ascii?Q?6Sh+YpfDlxowPtPSzT76oGeg8NYL3LYt/qTFiRKNtO2VgDcsdYexs96UClRG?=
	=?us-ascii?Q?eGNwWZQoAl4QThIrC5ltqvt5WnTmMcnqXcKULQsQkf8Y46wK6vQgaZpe6nzt?=
	=?us-ascii?Q?8xGrjn+kjXBKFniOGTuOgySfLhDI9/T3ZmXqu2BmE7tQJMTdIYNTapgR/Yei?=
	=?us-ascii?Q?gEHfjMjwn4Nsw76ZqS8ApUGciojMxyJk41tS8MvorU1BY9NdylyP8Md9tthE?=
	=?us-ascii?Q?7frSAHWDUVK37gVqDwDMApbRaamKzE7IFWQXDJXeE5bd7oyM5sT1y2OGwEFQ?=
	=?us-ascii?Q?TDPxP6d251c7UtKGu5nv+d08CR1mTEOkAfL/I4878UDFKMXUXxZmRLbIajtK?=
	=?us-ascii?Q?v0SOuOXouVZnQjfNR3ygiMDo8B7bi0x0ZQ7tV7Et+pkPKTHuzyD+Ec8bmiK7?=
	=?us-ascii?Q?LOWGvETuG7brV4s5RATW5ZJnGMuhMi9ppdiqAWsQLgqZM9QfzvqFxnmMbs3/?=
	=?us-ascii?Q?rAoh5R8b4bFd7U0Qnp5Fof9GZiGDXeAacbJq0ZdoiwIMBwWL/mlKftDMYeSv?=
	=?us-ascii?Q?dctjVWNHzyWGWlIGFhtIKen6OwsCc9hWcOFDdF91m/wbUl7Vx6IFeeOQgEyS?=
	=?us-ascii?Q?aIhz/nbJquLgHlibczMEuNELADfN4RdXsQUFKEuiZOyqtbhERx8nUTX2XRhS?=
	=?us-ascii?Q?MRPZFUyUi1MuEpqioU6NtaoaUhU6UcU8kGiQOe0EGb80gebrlTr/LQ3Ou9ah?=
	=?us-ascii?Q?qQA=3D?=
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0701MB1881;
	5:sQNu9RmC0XgDbn9zEt/bIRgglcuG/X66LlehgdOdj8uwhJWyNVZMjL/7Ii90gi8A2Yew3JRBAgMA/k2viWyOp+aWBpJK31/CXPVbX4mIfWmD/uE+fx4NF1srwaDQyjYXs/eokcsP18oDbzv+/c4S8X03BIrS0k9gY4WqJ1fRwAx11pMYEsCdMfB7SIba+i4/MfFv1tS+/cQmtEUiLUpGfnu97xTdcOht/3nBfazDkLtcjMosk/qFFYNYyB+qJwro4/rVNGYzoGJ11yUXpfye5CzBtH0M4zgoNdyGcRO3eMxCYOvfTY3iXh/yMGVl8jCMc5IqjrCu7ZKJTzxGUP/qTs0TlTEcx3YdZpwRg2Y99kRf+3PDD21aFiZmqFKgAngnPg8zTNJGQFNqVchi3AauO8y1GphlEBOb3QCOzdJKdbcnS8ImWw5edwJqtg/wmOGEpSA+TxDJ9gs7R9yJbeSsl3wsEzPPeY2FCPYr//sFjrU61RWxe+BXCgzOu1RS46bu;
	24:Kzn242GntZ6qmmk6SQdnHu5wGLRhFeqpNw9oneqBD+sVKuPb5JMlSXvGWP4Q1xLELj3mp3R67HAveM8eEkqFBcE3x97cdTpar3rokUKpsxg=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0701MB1881;
	7:35hI3WJv9EzuJ/qmHXFGB0ZVh6gws1w7GoH7bYo88YErev8XrSD8c7TdiBcDHOFp+NdcLBIACJbtpsN1YUb+9bM/I1fKZkhN/N0iwG4i46nGX33BjhMBomcU12lc/DZ6MmKcuqQpCHr4DI5aKO1gjg4h8mxyVIc0WMdGexPu6Az3lXhM3KC3Z8rcRnA75aSVaBfQhAfLa6xeC+HkfkN7CK/Hv80nuw5mTUOybnhtZULfmV4wjSD/50vn4OU4QYGMCZ3XCp5Z2sZyn+6A7fuqzX1OuAuwyXPQWetm5B0MzwMmXaIkO2WVCqfa9c8TFyQ3UNXHMiG1f0c0VtxzTPLU1ScCqzcPjyhQmqk5/f9/o5/DAbVfs5RahFqp5SAj9zjyun3efDLoAil1OgMxQdagfN0Q285vWFQelI8VJOqznWQR0HIGvNs4HVdyT94iOjbnnDWFipuYkb7FUqSdkpzoT2L3fuadFGaikeZ4ywsaow/7emVELzzWa64Jjm45xWexIUbB1UuMp0KcFw4TEEYkyvN2Ymp7iCU3jSbmlvOiz6m1PADL/d4l/IReasHzavF/C5AjILKaUflXnRo4s+vlSMnmQP4oDboB7N6jWLHtt9Ms8MyBVjmpataTulMnah3S5r3gcZwMFCqoqir5XLot4IppCqgJGnilYedqBPMm/hOKarKAlJrqnouNpQx/ZRj0NbnKqDVnHEDwOW9CL0Dj/S2+7GRjHs0E85fr9gqUC2KxpeBA2h9RnfG96o4GjrQCQVdVhFqziE+Cvc8DoGDCOLRjGb/kgaZU2GqKPpZ3CNo=
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2017 10:25:38.8545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0701MB1881
Subject: Re: [PATCH] Added missing CPPFLAGS/CFLAGS/LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Mon, 17 Jul 2017 10:41:03 -0000
X-Groupsio-MsgNum: 37040
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="FlI03TXdsIfJ4bM2SqlFMnfd6RBmA3dmb"

--FlI03TXdsIfJ4bM2SqlFMnfd6RBmA3dmb
Content-Type: multipart/mixed; boundary="JVKhQW7HF9lbFKTHCmP0DADRlibTnK2S7";
 protected-headers="v1"
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Reply-To: Thomas.Thorne@Net2Edge.com
To: Pierre FICHEUX <pierre.ficheux@smile.fr>, yocto@yoctoproject.org
Message-ID: <3defd71b-ab6d-6281-943c-7864dc76633f@Net2Edge.com>
Subject: Re: [yocto] [PATCH] Added missing CPPFLAGS/CFLAGS/LDFLAGS in sample
 recipe for morty branch
References: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
In-Reply-To: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>

--JVKhQW7HF9lbFKTHCmP0DADRlibTnK2S7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB

I am not sure about this change:

On 17/07/17 09:00, Pierre FICHEUX wrote:
> This problem causes the following error :
>
> ERROR: example-0.1-r0 do_package_qa: QA Issue: No GNU_HASH in the elf b=
inary
>
>
> Signed-off-by: Pierre FICHEUX <pierre.ficheux@smile.fr>
> ---
>  .../target/arch/layer/recipes-example/example/example-recipe-0.1.bb   =
 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/scripts/lib/bsp/substrate/target/arch/layer/recipes-exampl=
e/example/example-recipe-0.1.bb b/scripts/lib/bsp/substrate/target/arch/l=
ayer/recipes-example/example/example-recipe-0.1.bb
> index 5fbf594..2c478ad 100644
> --- a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/examp=
le/example-recipe-0.1.bb
> +++ b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/examp=
le/example-recipe-0.1.bb
> @@ -14,7 +14,8 @@ SRC_URI =3D "file://helloworld.c"
>  S =3D "${WORKDIR}"
> =20
>  do_compile() {
> -	     ${CC} helloworld.c -o helloworld
> +	     ${CC} ${CPPFLAGS} ${CFLAGS} -c helloworld.c -o helloworld.o
> +	     ${CC} ${LDFLAGS} helloworld.o -o helloworld
>  }
> =20
>  do_install() {
helloworld.c is a C file, not a C++ file.  ${CC} should give you a C
Compiler.  CPPFLAGS should not be used or necessary for a C compilation. =


Thomas Thorne  Software Engineer  Net2Edge Limited



--JVKhQW7HF9lbFKTHCmP0DADRlibTnK2S7--

--FlI03TXdsIfJ4bM2SqlFMnfd6RBmA3dmb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJZbJCfAAoJEPXLKKkUazGAbi0H/jSe35j6foQLAKXbSPulJdLV
jS8Xp0E9Qtn4pObtCGW2WC7wW/BZpT924tAZSHFZVWuufRpTOwbbxuRfY+Qrj8Ib
qb4V4oTrHD742wI58Y2qE6M8xRiKXKuxNeZr0mrGHLDpbpqFHfFCitTgfRfNeZVP
gvHSq1nGgSwBuC4GTJ61PaDEO7NcMMvJbUbZbJd2C3TU39bIiBxX8kof3BGb2JHc
BvQeBVJ2HX57FwE6lQ0PwGJaleKdQNyMj7iMzbxiBKca+uTUy2vwDWa5dzxU9aY+
Z16hnbPGoSDbKja1VRkorChdAxW3wlLULW/v0GVY9E9dXKyalT7EFDjNmB1vY3U=
=Sd+p
-----END PGP SIGNATURE-----

--FlI03TXdsIfJ4bM2SqlFMnfd6RBmA3dmb--
