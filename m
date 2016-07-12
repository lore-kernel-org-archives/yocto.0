Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7929E00ED2; Tue, 12 Jul 2016 02:36:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.128 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1077 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Jul 2016 02:36:25 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0128.outbound.protection.outlook.com [104.47.38.128])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA751E00EAE
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 02:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Honeywell.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=Mafzsv26Upw8cFy7X+KVyB7A44N2GnCLKrl4I63Mc0I=;
	b=y4RnDETnji0rOk3e4eFICR4UVIi7Wz88MtI+JeKBKI2Ucxe8TuYWaTvtMCd8Od6bIWjDiSQDVJSReNBKQCxHZrcpBnbTUiPNU/dru6Wz9XRMeFhO2i2gRYE7UKeX6aX9+46haNld1k4yin6eQdiaec8DNuE2SASpCVfffgkq2sY=
Received: from SN1PR0701CA0020.namprd07.prod.outlook.com (10.162.96.30) by
	BY1PR0701MB1143.namprd07.prod.outlook.com (10.160.105.11) with
	Microsoft SMTP
	Server (TLS) id 15.1.534.14; Tue, 12 Jul 2016 09:04:12 +0000
Received: from BL2FFO11OLC001.protection.gbl (2a01:111:f400:7c09::153) by
	SN1PR0701CA0020.outlook.office365.com (2a01:111:e400:5173::30) with
	Microsoft SMTP Server (TLS) id 15.1.528.16 via Frontend Transport;
	Tue, 12 Jul 2016 09:04:11 +0000
Authentication-Results: spf=neutral (sender IP is 199.61.26.155)
	smtp.mailfrom=Honeywell.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=Honeywell.com;
Received-SPF: Neutral (protection.outlook.com: 199.61.26.155 is neither
	permitted nor denied by domain of Honeywell.com)
Received: from DE08W1027.honeywell.com (199.61.26.155) by
	BL2FFO11OLC001.mail.protection.outlook.com (10.173.161.185) with
	Microsoft
	SMTP Server (TLS) id 15.1.534.7 via Frontend Transport; Tue, 12 Jul 2016
	09:04:11 +0000
Received: from de08ex5003.global.ds.honeywell.com (10.216.34.43) by
	DE08W1027.honeywell.com (10.221.248.38) with Microsoft SMTP Server id
	14.3.266.1; Tue, 12 Jul 2016 02:03:32 -0700
Received: from DE08W1305.global.ds.honeywell.com ([169.254.1.58]) by
	de08ex5003.global.ds.honeywell.com ([10.216.14.76]) with mapi id
	14.03.0266.001; Tue, 12 Jul 2016 05:03:32 -0400
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] backport of a fix in master to krogoth
Thread-Index: AdHcGwbCUoDmTGULQI6qn3vBenCdhA==
Date: Tue, 12 Jul 2016 09:03:32 +0000
Message-ID: <F6CD090A69E64C4289DC608E1C5D2024254046D0@DE08W1305.global.ds.honeywell.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.19.144.171]
MIME-Version: 1.0
X-CFilter-Loop: Forwarded
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:199.61.26.155; IPV:CAL; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(7916002)(2980300002)(189002)(199003)(2351001)(107886002)(7846002)(105586002)(33656002)(68736007)(6806005)(92566002)(5000100001)(97736004)(5640700001)(7906003)(5003600100003)(69596002)(19580395003)(356003)(81156014)(229853001)(19300405004)(1730700003)(55846006)(8676002)(81166006)(106466001)(19617315012)(7736002)(512934002)(7696003)(110136002)(189998001)(8936002)(15975445007)(2900100001)(84326002)(2920100001)(2930100002)(87936001)(26826002)(2906002)(85806002)(16796002)(77096005)(2501003)(450100001)(16236675004)(86362001)(11100500001)(19625215002)(102836003)(3846002)(790700001)(6116002)(50986999)(586003)(54356999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY1PR0701MB1143;
	H:DE08W1027.honeywell.com; FPR:; SPF:Neutral;
	PTR:InfoDomainNonexistent; MX:1; A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BL2FFO11OLC001;
	1:lmVZkPhOarVkzTH1amL/vbZupnbtKe6LDrLUc276zIbRsxd+Cnxl5Lm2h6Gve3fvyfodkuoLWanxcK4yBrHV4/b0X4IDtjgLjLlZZrKd8bvRk/6lblw9xH+nPVazJ6U8cfY8Yu9LsZ5g8fxmRAukB0IAjF7UV020BLN+R1+3cxtyr5kbIYXH8I5Wctl+YsiTy/N2n6d+fZvvxXz0iZSpQaK9iO0vdBLTZc0REtwFkVYw4u4V7o9iiIPaxLL1HhAsqoYy0yVhW5VEvo93eK5GvOsXfZRCbydDcUORFMj1BNwIUn2RNe29S+rHStKMFbqbos25/BxyVC/o7LVAlciM0K8yGEo/4T5+tym50ucfKpjqoiGFUMlLxNuuTG3MsGXjXdFPjxqXDRtA3RPL9y2cToWroGdAHkF2vHWrIpYT+vMpbG1pdLntWb/4aZfgluG4aBakekM4Qb6uOXxmY6QO6sWh+U0KUv1U430aOyNAD0CYbrZ4GTftQkuy5uy98MTk
X-MS-Office365-Filtering-Correlation-Id: 0258e32d-ec0d-4654-017a-08d3aa337d7b
X-Microsoft-Exchange-Diagnostics: 1; BY1PR0701MB1143;
	2:VSdWN/OLpbHVvYMP9QBpkaNes5nUTkXtwlQr8K2/cPAb5Ykcr1GUWYPCdg+BC7IfF+1g2scoennAw0ygxap0JJAf+047zXL8UwK8Zfk1puCnwZBl8xHalJo6N84oNcUzKGASKSnB7/JBiqjFx0XqtVkloD4W/5SPE1ghmGDLhn+rqahQQW7ZY5QbO1JiAkw+;
	3:BO/52Pp/4xnNoWeX2Yw6Wf5Qm6ZVco5cmw3bHboY3MyjbBwZqF4+Vluwp1jUAyWmZ6tFVoO1IzqeA8GsgsuZYD+1V1qlwK9v8dMVD1WMWousOkvnfsGRi5sN+miY8heRjIMU6pSC1Ig+aW8KysF9X+6yElwcbcnAnm1HVA28Mv2UjO2W+TYyqVzHemlOekjt9GJUxcYo0o1qOhPlr7LcTvkktHJi2gOXIoEJJc00e9Y=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR0701MB1143;
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BY1PR0701MB1143;
	25:YA4XJI2Z1hLu71QwmdmA8LSSvsIjaqaptJCaPrX?=
	=?us-ascii?Q?tpgPtuxX/6ImnYVkVpLAKAJlZNGR7gqzTNrZCgTgwBxB0LGeAIhCoB0afaBY?=
	=?us-ascii?Q?ZErWyHCzwB3v2rQscAMxnJboSjVsEC3a6GH4vfEqF6GnTZ9pcUqKru27AePb?=
	=?us-ascii?Q?2kJhjRMUMg53MzRwdr9r2b1iEVD9DqWPxNMyj/f+gRSamhw/gEgHhCLw2+wL?=
	=?us-ascii?Q?Cr9KTys/CuBsjOPzshKURCiNhVNM8i8XIvAdYneLRHJAqa/QvjOG/QACQ+59?=
	=?us-ascii?Q?/AKopQLZnLZH3s2GsdHSNWRpZU7epviNvOAE53TqUIhtOkYaE9hLklMXdpFz?=
	=?us-ascii?Q?X6XY/q2KGKFZgYqxaxZuWxcTuDWez84RW+SlI6P8YdIZve+NYJASYeroF5U2?=
	=?us-ascii?Q?cmksMO7Se/N41D7EwHyf76bwld3hu4kAmBt9mfQf/BKzMpi0HRz2rQrkR9+A?=
	=?us-ascii?Q?jDy+Kl8lrN3zMMIzPiB9lRgJHkn6M43TvgNuLhOnHJo4aSuTKrXi+UNqLNc0?=
	=?us-ascii?Q?BFP2fH+y69Y7r2kRTqkgb4QFJh+PvbVQwMIE4pWQRs9VU42+J3L+aHL3wIG9?=
	=?us-ascii?Q?NjXQVoEpatXQou7JgMwj48o0IHZ2CxB+XHsN/ssCDGSv8KnhgHMiVcgKTYst?=
	=?us-ascii?Q?0FZZ69frB+R3wcmoDo0KmYirEZWO4rbqqzooG+kjG/xPyVPF1nmt5DvT/apk?=
	=?us-ascii?Q?MmVBfALzcZyUbHMHBNBOslx/6iI074BdAucFvRbNsBlR1S19Oi3GX0jTAM4G?=
	=?us-ascii?Q?e8u1UlNhI8X7/WhkoSZBpG0B6t6gCirlZGDd3GLMwCkEIlQjHzUhkroel553?=
	=?us-ascii?Q?byCvGuL90Cey4Wt1XvR0t4rNbUmvv7eYPcT2/3RWWJ9Hf5MGsJQ/o557HF2d?=
	=?us-ascii?Q?nSO62OYbhnTr7c39Us5HEhOPOTsKQ76R4vq6UEHnFVYL/TgaB9W78QoULsmz?=
	=?us-ascii?Q?PBD12HWGM0/p33VPoLFToiSr/wKixJ3oKl3gAlQzhleyvxGnIE/tnZ7+ggL5?=
	=?us-ascii?Q?DEMk=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BY1PR0701MB1143;
	31:y5LbsILSFi1vCPto4GMEqhG84K2nlmqC+jeSdL26DLAlERO5abJyGkcJqKhX9dshTJ/K0UV2vOjM1qST4vKIATeZl81gLwPQCuhZZJqVIkIXqu/oZ65H+SYciICqJzczh2M38nWmpNYZDmsn3u7OSKT4Uj74/7Yp6oCr+ZbhX7zgumiwF0QCEyAsC1G2eQwS/516BTOmEKroHORfzBF6iA==;
	20:ua4VLeghXoSswz7bBZkWo0zXEyHa8YWvJBt6dJEtnZKLW9l88Lxhvm/RbdXsH+Wx5NJd3S2tGAHJVbln4JygEiSNFuzb6dZlr88BvkaPta3QLjykBQ2pJqGTyz+lP1gxUUXCg2GnXlYCcyPEAJoJOpyDZq9ubdJdgsaZgElLB38bujThxWCjJy7WN0Xxi9sNB/LnX231UAPq5YyUzNiN6bNNLelZysTcvRYRznwUd6ooqVKdB9o9xvbpH0di8GodkJbbLYfNDeQ6FLfPH6IxATSjUBTq9XUhQ4WUazStPFTcngNKbsKHNbCaz2NNBC9nz1yuM9rQvDjau6d55KTedvODK5elreMo4zQKvAap70wSfl21uW+Fe/iaBlbVX79nZLgu9OUR999+l/cmqqJb9BkVCmgcGdpCPHO19PMo+5X5V439LI+eJZJ7FSeG4EeiZ6JPs2TczJDB/nzJdkxxq+eEb569GNkLPJ4Zz/2AWHiDEpJLk5GR7u6ueWf9DUtM6Dr82+eEEMUv52gIy8Ny3dJ0A+DJinVqwyDecRSZeCn59FxsZPL4wzFv1awfdcHq2d7gS2lFasU7rHgDALcfknnUU2XgNLsGl7L/kscUC2c=
X-Microsoft-Antispam-PRVS: <BY1PR0701MB114318F7430CECA667F311FA96300@BY1PR0701MB1143.namprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(21748063052155);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13023025)(13021025)(13013025)(5005006)(8121501046)(10201501046)(3002001)(6055026);
	SRVR:BY1PR0701MB1143; BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0701MB1143; 
X-Microsoft-Exchange-Diagnostics: 1; BY1PR0701MB1143;
	4:MyqMn/gaIlvv3lYIGTPrJObU9u9RRhjZbTP6/BEKrTjnEh07CqHIfyr8g21UHjwTIjiOpWf1wqvA/dUHrtgzt73nw8JVlwSEHBsHu9vd5s6cdgPUls7xy0i3dC7cWIuXVaoCLK9VJ4JUiTizJB0Q9k3sS4Bos5QsikSAxDbGTw4cE9vhxXDZEjIbb3oySYjFASajuG91a/OfIi6dhTqhf00fEefBPg40WXCX4KxJzlLq0HSNvKZuqTfP9uiddaNespJw8gh5DhdSMFtp6phxQV/Raqc/R8KcJ3Pb+WtwPS5w3ighQ16WKE0TNufPP5ymFE8RiAALfYRUuUsa3rqUrtxKlFGRkdq/dskWNMGG4cPWkRPwv4I3pxzXvAcTqpUlXZerx4BKLqR9dFewm8i/2uCThPBDKLRNzPUsenEqX76WA/ZjnJqrLiGnql/i32Mkh4rVZukSVG8MQoCJkM/F1RPQddho5zp60Ey7qvuVxMA=
X-Forefront-PRVS: 0001227049
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BY1PR0701MB1143;
	23:ZE7PK1oc1Z/GRVVabc3oKUA01R6+OxNCMMhcZ68?=
	=?us-ascii?Q?C2f19uwP8/behoslXMnCu6OADXJzaiopO+fzicP3Ux4dNLunSi6yJq0A8jp1?=
	=?us-ascii?Q?ubHvmGAn2TLvnqt6g3sneirwZt9+Y+P0ECgJcIWh0SPGcXysHhtAuieGPDvt?=
	=?us-ascii?Q?wEsyDBgOPTetsYDNVw58axMK2lLD7eUBy2vlke8tn92rBXBh0bK5N/+tS6xI?=
	=?us-ascii?Q?ocN/VYqKP0fsTOWBv9YR9MCCm1h2JyEQMQFoMTt89pc0/D58PLPZU6XG6rXI?=
	=?us-ascii?Q?AAlXVSG+7DvuHaGZPZAH7zQOjFtB8uN5J0cPOqPpzd+4H1PNAOHVkSJ6E3tb?=
	=?us-ascii?Q?J6I9Mv2Fgb6LY72tvpfpk4ACMR4Rl6sutSOkQpQarwbbO1wW4iLq74NhAomf?=
	=?us-ascii?Q?XfCT/7xANsh7ptI4LOaUD0nPJcFbUOKb+hVe0vMIRVQHQZWG0O19lN/GjqPR?=
	=?us-ascii?Q?xdngsxf2om1H/0TJMFTzLWXxPc1zkOcmWPyo+VLeaIlyuji8RE6HrIFevxRi?=
	=?us-ascii?Q?beMcgU9vS2IzK6dTv95ltx1H9P8OM3EkZGQ/k8spwlBvQZFOZGE/X5pzD+5G?=
	=?us-ascii?Q?s9fJveG7q4/NYM1kt6I3DFeqwGT8tNA673sxL+zkAvaIkzHgok2uWWrEmFt6?=
	=?us-ascii?Q?5Iat8OD/xEFtC9CYxI9M2p51vDWPS4yKJUt+C5RpwzGT9uJPzkcdCLwjm8Tb?=
	=?us-ascii?Q?mduvRSXRQUAGZCVX4k2uRWzbszU25YuG5WmJEwjYLuRYEvsYPdIkBXV90YCW?=
	=?us-ascii?Q?ETiDHJISG51fA0LXm6adhIsN6kUUFvYxaNPOQ6hj9elPYABJhRmhM/9s62NK?=
	=?us-ascii?Q?1lPnFmiqurZ8PlDi5QiVzpLF0nUDR5eInueBxp4nEgrJbvBzLEt/nYxt2Wrw?=
	=?us-ascii?Q?KmeYRmUWQNSaLkNLJoY+Thn4SpLU1meF4RBAiFoAg5sgxV/PaZX2wyRgBXo6?=
	=?us-ascii?Q?IwSqPqcFPsYXiqZFowZfq1I3VhXvBjEKGgdc7c7HlifJYg6V9fu4EnpdKvzH?=
	=?us-ascii?Q?/TIPzifwqQjvZJe5lxCqXDE3sU7HuDTeB4lS6+6osGLHfRxpZLVsEBmbmtl+?=
	=?us-ascii?Q?7HkktzusRAG4rYmtmdMTJkpOR7AfA1VteAfOs55elhgJvT7HMKNwU6cBG+F4?=
	=?us-ascii?Q?LDZdXvNVXT/qRa73zrhsQn45Rx6PdfWtpAMI83xmgBDF5HkXkrtAP0DaiUTx?=
	=?us-ascii?Q?a6pLvHhzTclHrZ/8Z0LPPJTk2qWtAaEW+FyuG9qhX+amPgzYfPKFj1OHv6J0?=
	=?us-ascii?Q?NIwwt9N86YlZkLmsgu0uDk7PGtCZQK/iganniaDrG9LKlTO6zHKMlco8J0FN?=
	=?us-ascii?Q?9u3vCEgudqvkWnRHDDqZ5LypEsf2RQ9wNLbaBcPLjuS7XGQRm/Wk3rXgLmOw?=
	=?us-ascii?Q?9Z7sT7jJ4ODJMUTnbXk7DuR1upeZrGJZPf6Ab7BCeLPMAIsD5BJ+DsmZmwtb?=
	=?us-ascii?Q?dW4Ptk+8HxBa1mXzQmnp3p64qaL52r5PX+YqyYhzgegGRiM5GA4if?=
X-Microsoft-Exchange-Diagnostics: 1; BY1PR0701MB1143;
	6:z8N91nfgeCMqnxbRVXBV6qhfnWnGTP8aMJmj2VzKed4A2u093Oo1oYhpmMV8/T8OR7Ipn8+oKZR6dQHNvUZzJQ8pm3nOwFkyEvlOL+Bx0on307lljxqCS9hlRTFq/HLTf/lkndv9OAJ8R5Jm/KCBZVVp5/cOS//Q+SZSX7YKV+QKfyN+68K9EgITa8k6Qae3mu+ofrRsycnwmFx51cCyxXygV9+efirJdSaN8/hqwC6zxvP6vsdM9h164BLWskv1oP5viJT+LoxdVmWLVniMkhVnAhEppZpGzTJhEv6R+rtiuvZ/h/ztYW7Z5ljCAKoMtvoJzVMFOPOl7wDbMAtaOg==;
	5:WEzg59qDcMg9grqptV4kEjhYTDamWJt7sFILgFeVpwamEvyka9B+aRqdOoWuMpdrrZ43CZqUorYR5MrycdWtMU/nKh/LzqmXex9+sYN3LDPbnr7/9LBPFZwAK6MadzX65yhnOtFFRGeA20S0eo3ESw==;
	24:oT8uHxruAJtbEizMHR5/2XyOWoBbnbTxFgnEVhbPWXEqHmbC/oWtlgZVd8k3Dc/VUV82YtHyQCEAGAQSarUPj7vmeg6BkIjHL1bw453uU9I=;
	7:VCatjkA37vpzoUUFzXOZAdkn5gCPLbbJWDcumxfAdr0YNQ8SvNeLAzCfgoFz/JGL0tgA+cTZZVPSz81leQtRaAus7ilHP/5nTA4wb9LvwmFw3nMt879fD/9cGayvEKzLx1fxzkfR/1GovpfQPnmdBqcD2HLJJYd+xhkhY+XuKlHRO7TjGS/CK9pzY5JoRoQXR6N6Q+0xEHByeUDorRGHWWyTCPSlmsH6cKkf0fqNb1Y78IKToGZk3grAoV7ms7jO
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2016 09:04:11.1051 (UTC)
X-MS-Exchange-CrossTenant-Id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=96ece526-9c7d-48b0-8daf-8b93c90a5d18;
	Ip=[199.61.26.155]; Helo=[DE08W1027.honeywell.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0701MB1143
Subject: backport of a fix in master to krogoth
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
X-List-Received-Date: Tue, 12 Jul 2016 09:36:31 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_F6CD090A69E64C4289DC608E1C5D2024254046D0DE08W1305global_"

--_000_F6CD090A69E64C4289DC608E1C5D2024254046D0DE08W1305global_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

Some days ago, we updated poky layer from fido to krogoth and since then we=
 lost the sftp feature when using dropbear instead of openssh.
A commit has been done in the master branch to fix this issue:
http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D52d130d9e9735af569f0=
18fc9161a54ed198d2d4
This fix could perfectly apply to krogoth too.

Is there so a plan to backport it to krogoth?

Regards,

Jo=EBl Esponde
Embedded Software Engineer
Honeywell | Sensing and Productivity Solutions


--_000_F6CD090A69E64C4289DC608E1C5D2024254046D0DE08W1305global_
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">Hi,<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">Some da=
ys ago, we updated poky layer from fido to krogoth and since then we lost t=
he sftp feature when using dropbear instead of openssh.<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">A commi=
t has been done in the master branch to fix this issue:<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><a href=
=3D"http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=3D52d130d9e9735af5=
69f018fc9161a54ed198d2d4">http://git.yoctoproject.org/cgit.cgi/poky/commit/=
?id=3D52d130d9e9735af569f018fc9161a54ed198d2d4</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">This fi=
x could perfectly apply to krogoth too.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">Is ther=
e so a plan to backport it to krogoth?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000">Regards=
,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#400000"><o:p>&n=
bsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#707070;mso-fareast-language:F=
R">Jo=EBl Esponde<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-f=
amily:&quot;Arial&quot;,sans-serif;color:#707070;mso-fareast-language:FR">E=
mbedded Software Engineer<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:9.0pt;fon=
t-family:&quot;Arial&quot;,sans-serif;color:#707070;mso-fareast-language:FR=
">Honeywell
</span></b><span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#707070;mso-fareast-language:FR">| Sensing and=
 Productivity Solutions<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_F6CD090A69E64C4289DC608E1C5D2024254046D0DE08W1305global_--
