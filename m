Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17299E006EA; Wed,  9 Nov 2016 13:37:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.119 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0119.outbound.protection.outlook.com [104.47.2.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CA98E0050B
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2016 13:37:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ZTYXErWt3cfIisb+AFBIYR6eauVQ+dMz8i+sl6K1GAc=;
	b=LoFxxDhNLEeoJ20iNP1q80BX3mBJDOH7cd6jJve10C76+f+uOKtqNcwhlHZTxZUhcvZWRRJhdO0YGUyDV+NOqw4RjdWoD83xrqbMU836dmQSJIV1Kb9zDbROJcZs62/YNZoZ2ySxOYiWZ6EBRf7MmYfpVLqnMrU3pp0IpQrx0wQ=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=Thomas.Thorne@net2edge.com; 
Received: from [172.16.20.67] (81.128.174.58) by
	DB6PR0701MB1879.eurprd07.prod.outlook.com (10.168.10.151) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.721.4; Wed, 9 Nov 2016 14:03:55 +0000
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Organization: Net2Edge Limited
To: <yocto@yoctoproject.org>
Message-ID: <4738ef0c-151e-236f-8722-494e0a573fb6@Net2Edge.com>
Date: Wed, 9 Nov 2016 14:03:47 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
X-Originating-IP: [81.128.174.58]
X-ClientProxiedBy: AM5PR0701CA0050.eurprd07.prod.outlook.com (10.169.145.140)
	To DB6PR0701MB1879.eurprd07.prod.outlook.com (10.168.10.151)
X-MS-Office365-Filtering-Correlation-Id: c017ca84-37dc-4103-6f7b-08d408a93ea2
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0701MB1879;
	2:4Xw56SqFm1asaoUV7zbfU9FZX8vj4kUHmWvqGAY6S0dj8CyNHGYIp2/9Fl4xpqHkIXUre4zyplDT3HwoHWgssawyDSynJpM2D+JQXtC6Oc/ey61t3vaXiz8UgURKfDkFRFHDjl4G1KUow4bDLuPTx9lookplzOXBJOR/12j5xq70bwAc7whiCB0i3S7JC3L0B0B6IHv8Od9/jF2ajj/HVQ==;
	3:I32BQGpFUrJAa21kSFFABGCZ71L+c5JKal/0voJePRoI1jhoBATc/KhRHHD+bvCKTMc97gYRZUO+/R30oUqkkE0RyYdbysD1rY1eLCPlXpu1Gov+p3f77q4jtGRNtV5JD813yO/s3IYwxkH4WZSKCA==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0701MB1879;
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DB6PR0701MB1879;
	25:9GWSC0maVPOwFNWpUxpk+l6ZnQtg2WRlI7Xin1l?=
	=?us-ascii?Q?rojeEjz8zd37iAeDwf9ft0egM3zdstCzKkHIrkIWjjobF8Gv9b865/o3QJkj?=
	=?us-ascii?Q?vBR819Pw4g4W8mrZdbymR3732+Qo0HJ+2pcG/xZGprQyBuLjJyRSlmw/REFn?=
	=?us-ascii?Q?Vk8x+UFtenb1K0YV+OObCNBTi9W4dkNSntnzSYOQDn5wAGo5wL7uzSeHDIX7?=
	=?us-ascii?Q?s4EgjlRTBFwhVUEfgA8wPg4dKohfK2LMrsJGYSDbOiI83lOOLt+mHsUPSpRk?=
	=?us-ascii?Q?ZSKX2526XGNkk0zX/WQtaI6Z9AfmDHDkBt7/n8oASu91GQicoX2gRCkJpYGO?=
	=?us-ascii?Q?m4KxypSv2H69Od7OzBZwLEhEYyXX85Q7cjT59DFMJoUWE8staijqQPbrS4+I?=
	=?us-ascii?Q?pvdS4wRboqbzLyMHLi7ppM6I4xypN+vXvVYGlAxiwz/1kU5pCj+7ioSSNZmJ?=
	=?us-ascii?Q?JohOMADikUo6bEEJamDNYzLUzes7x27f2x8BTWpmUvkmXQr2xP5Dn7oEJZFh?=
	=?us-ascii?Q?zGXSxzc4pLFo71LjNhFUB4n5v/d3I0kG9G3MzGgyv7CCn2wMa6FI5BRTeCdr?=
	=?us-ascii?Q?Dn3lljtokZ5PTHJoTJL3QskfNvqiWfwrW1j6XqL44BvL+pSMxy6xxdeksDyw?=
	=?us-ascii?Q?5NQK0x/Rz4gzYhYogVJe6gY8+2XY7KzCUSZDg5f6Htu+XqGx61BT1+77K9+Q?=
	=?us-ascii?Q?4C0TfwZPrcvFqgKVPlYIKYKketnlsYG1LBR4B2YfMlYH4pmIUzpG0KHERXFl?=
	=?us-ascii?Q?OtvjKg38/jGqFj5HLkJ3Av13zgwJCXPN4RRmoFBIc/AoNT9TVywhbeCf7NFo?=
	=?us-ascii?Q?ayAbJHp7oh8riqV5vZyETqLejsP02YxbC2K5H1eyAYlaT5kv12QtL8GfkbXw?=
	=?us-ascii?Q?+NexYYWUp70BdHhX8X1RterhKwvca8J/YdeL1EX4cHmOT7Op2qNZPpCEIr02?=
	=?us-ascii?Q?FY2H67cwNuRz20H8fqUUELL26qeaYw0VX7Em6YC8A+BmaKSn0tqG224NPZ9Y?=
	=?us-ascii?Q?9TK6vGcjspoGFwB/0XUP8ergP?=
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0701MB1879;
	31:dIWknceDQTJ/mEbhYnxcJsnkpE+SSxMyJtkOee6fe4wz5dUvEzibolTgnJeBDhUS71mfEGC23OEKeueSduC/KvJPJuPjwPSch7XZ/ioibXWUOusdJ4cqn5XUXX4Bfv1x6pIDdR2w24NB0swo/PWxZ2N5EaHfz7L3nOVzuKQkqOwdBsrwMGDRowSlvCHto6Sz4d6ArxvHet9Ik5aSNaciIftBFBkBXH3EbKehwoHnoPuF2n5E8OOBazwXqy8ltk8tUnm8UlNPHuSCCxJqYDoiYg==;
	4:OQbTQ9toZNoK2WcmrfdvDFGCes16Hg38Zd4K4MpYoEItklZghhVuCwGmw+aB0OhQmG1HVnI24/vgIu820/Y/xKSNhVAzZXm3glVPAzCDw1PmjceVBsxnE4dbu+n/QvLHQXjcNVB0GYGAOtAP3O6C/tzdT/EUbdnQz62kD38FgiUU1afQ+ysmukH/Bx5PCc8z4nPxS4ZM+ezk2ebZIntJ/SuAJwMqPI/DtuMp0QTczoMz+SmxAcTfvW7owGAyYkuJQ72PuPzXoo5TeXadnV+rUWRQqzBhFKmCUN0/5tw9E0mZCAbjh4k/OtOeU0WWUXZBSCA6gAz2BjxVRjMhOK9nvqc0EplTRBbGWgNBWp5iwPSzrIMxdFab+ckR29EdNS4YH/IlvIKADmjSyyYxo2ZRgl3hkn53LoAwqpC735smul0uRB4xL9vFu3pp3r2ka2NQ
X-Microsoft-Antispam-PRVS: <DB6PR0701MB1879F4E083EF188E3A7C013BD3B90@DB6PR0701MB1879.eurprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6042046)(6043046);
	SRVR:DB6PR0701MB1879; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0701MB1879; 
X-Forefront-PRVS: 0121F24F22
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6049001)(7916002)(252514010)(189002)(199003)(7906003)(7846002)(42186005)(7736002)(31686004)(568964002)(6916009)(97736004)(16601075003)(31696002)(4001350100001)(106356001)(105586002)(575784001)(86362001)(2351001)(36756003)(66066001)(6666003)(107886002)(229853001)(65956001)(77096005)(5890100001)(65826007)(8676002)(3450700001)(81156014)(81166006)(2906002)(68736007)(110136003)(450100001)(54356999)(5660300001)(50986999)(189998001)(53806999)(64126003)(3846002)(512874002)(83506001)(586003)(43066003)(6116002)(101416001)(65806001)(84326002)(21480400002)(33646002)(24704002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0701MB1879; H:[172.16.20.67];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: net2edge.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DB6PR0701MB1879;
	23:EyQjcElpvggZ2krZw5vkPG42b2Rc833K0HKFZgl?=
	=?us-ascii?Q?YkE6cSEWB9Sep0kWfaji9eNqS1lP6adUMOHQKKtZ2e4gbzZ3c6otVzFWa4ZD?=
	=?us-ascii?Q?/XyJ6YSxcbAeqMJozzVnP/ITUTYkIte0sP76bMqd+Jxgt4LXBM7YgPfj5CuU?=
	=?us-ascii?Q?qdRQbMyLl2svXTAwpBk90DFBF/npBHbj4zzN4RUjQuBbqprJlnwgn3UJNZch?=
	=?us-ascii?Q?XHL9buB/IlRY06GiRtcD1A5SMhzODzYW07nT1RlKClM4QcZRUPdp+OJyoSuF?=
	=?us-ascii?Q?l15d6VifsNnKU11UHvDkUVbY1iaK8i9RdN79zvPumluFRLE7moBGBrWikiwb?=
	=?us-ascii?Q?wA4hF5txQZgLUKM6awNirkN+oNR+5JBUFwWYJxAPcd5RqjhitPuOFdxCmQ7m?=
	=?us-ascii?Q?oQ7wLjOqNo1gKou8XxrnWvFzlt1644/mpBbXy+ok1xCEyCQ6tA/Qmy0Z/QUd?=
	=?us-ascii?Q?qLtroMxaKC3Sqqa1EpX5fFzOks9FbKDuvOz+hIO2sbZBKvK1a2ipsEGTUay+?=
	=?us-ascii?Q?UxhHj13mj37xTmoSCjR7EyV+hi0NlCPEtL8rAQQ6vUOVMW0nePg7COobpsze?=
	=?us-ascii?Q?/2QeCKonmrEGL/yRD9dqs4Lp48aulkeN6V4Yh4/vD0UhrLQZUjqGT7ht4I3r?=
	=?us-ascii?Q?bBb96Nqd4T4wxPWq6Q2+sKb/vmrB2YplMSXWQ2wB5T1gPbzUFrPDnGMJtqAK?=
	=?us-ascii?Q?PyC3lWeRMmvXaAzPoupGgoYZPMoATxrr0F177RSwhO8MTxd5JoExk4Cy1VNp?=
	=?us-ascii?Q?xnBgsrRPWp/n8lHlJZiaJ583yA2Of3ayFiSzTHYBVsKVRkhZFUjtJFiUA0yE?=
	=?us-ascii?Q?zQzMJr5xnpBxNG/rblXDUz9UJe3LxSX5C9AUSG6b0dZs/DKCIPSE6vqN1cvj?=
	=?us-ascii?Q?k2WurMJVgEQqTPxKOe9v8eZta907ZSf/gUFJbJNj7t4S045frr73TRDUcn8F?=
	=?us-ascii?Q?hpw8C+lS+txNlAfydvIZxfNj7BMRkhkoC3QQjv9v/g04OKggwZfPZzhIp9vT?=
	=?us-ascii?Q?L1U7DEsAX7q7QQJGkFPcsOm9UsIsuAS8zf7NWFMQ5NYLbWaadrBpfkV30gSV?=
	=?us-ascii?Q?tqBogmm06uhG+Ht4Bz3KvKMAKhCtSSq3VvU1FNSz3RCRoDC22izKIu6S4aqC?=
	=?us-ascii?Q?oy5fH1V0zmmgS6yAnWlCLZQfjZfrAXCiu/MY1xHs6ZOdi4XhxbmKk/PatRa+?=
	=?us-ascii?Q?K0O4Ui4b5CaqaIP05kOjGkDxbu9aKRdN8UZHZ7kbpRkpQI7dpJ8QtrZ1ew1L?=
	=?us-ascii?Q?lUCcevVQrcfwQBofm3+JsTUdrD5OUmCuqCUk2kx32StCKMOwRBZuHFGyqc/E?=
	=?us-ascii?Q?F8uO11g9taZEYL5siPPnnXWcgi863Uo0ni4woodqd0Ni6kNC3vHM/xIaWW1L?=
	=?us-ascii?Q?wJmrVQIydDA2fJUD1BEuwhtK+ngrNVMr8NsPUS2TnAvyCUM4z?=
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0701MB1879;
	6:cmXC+hU0zS26/31LkMWJk25z0V92NDbo69RL2+KFW+epY+aXBDqAdXc09fae3mruKlieL4YrxUbk2+Ud+OQo1j7BcBFpxieD8d0/2ZwkhtLhBJq46a3BmpRf+Jxvhpbu7OrIkMqruJF6ow7DW9QiDp4oosyYiuTnWXK2ovQJ7pSRwtCc4jxuQcV+l1Q/z3JtGk0LETZdkU3QBYXz1kBgOwgi8SHrCnbzomFfJLFw4dFdEd4Mmt1jPmYyy41+q+GHBnNmnWlWZMyqZoTdM1I7IZCiAVW/q7rXnlP+KNeoG7ywbGP+wxX8rWo5IOUukSxdQeVut/Lj3SjDudIEWjK1BQ==;
	5:3U33NhWBJ4O3IvQgtqe8eByfBbo8dDVQk/Yaqb30uaS+9V+lwTb/QDwyzvtEFl9gQs3x31q8v/GKEz20+Py0LjTv960SC/Uu8X0VpyXPVuxyzOmEWA+ABmJmJpFM/ecCMesCrwakiadvN1DyYyQbtGuk+DEeAiqao7f6zYEDNH4=;
	24:xJYyAwOfy5V/cCc6Fk5oyBUgIrqIWTRkMEy/BBknnwXk6rJRxbBwtHmSedP0ooMqouD4rEPFkAcdI+C3ZmLYdUddk8OSO8kjyPp+agnFYGM=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0701MB1879;
	7:kAmxydXyHJSqzCi0copjbc8Os9Oi3+WwHTT+KZXsDZ5oWVyl2PrpXAlJQSzZmENWYDJnUqS2IgV2A0f3IqYab2Z31Uyw0Vp9bkyt+Cy1nmn/cjed5lXGAqTPEXklaFQXnAmhDagWMuZckkoUQNM/2RInvxQl9wxMXUpZAgp0Zwz7N9E6+E1MpPQqiAu5bX2EIiW30a0IxhFlOGvJC70s4sOr/U76G1bYqnWtg9x3VtOJ0k0b+xdcsBq2VQRDDqSpvXiRzuA7aySpMqnNuv7jmfPpECXn9IYGjwN8DSAzq9SSXK7AFHBYxPOt3rZaB/yCOv3J8sSN0eco0zIBfSNKB78cqeOnyIsikFKEws+1/34=
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2016 14:03:55.8159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB1879
Subject: [meta-raspberrypi] Back-porting raspberrypi2 or raspberrypi3 support to Yocto 1.7 Dizzy
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
X-List-Received-Date: Wed, 09 Nov 2016 21:37:05 -0000
X-Groupsio-MsgNum: 32937
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="vhP8n0bMRsqsm7KhEPDm5Mx006RIGtNqn"

--vhP8n0bMRsqsm7KhEPDm5Mx006RIGtNqn
Content-Type: multipart/mixed; boundary="wG3lN9OkNCGm6kP67ouR2B3afhe3wGvmx"
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Reply-To: Thomas.Thorne@Net2Edge.com
To: yocto@yoctoproject.org
Message-ID: <4738ef0c-151e-236f-8722-494e0a573fb6@Net2Edge.com>
Subject: [meta-raspberrypi] Back-porting raspberrypi2 or raspberrypi3 support
 to Yocto 1.7 Dizzy

--wG3lN9OkNCGm6kP67ouR2B3afhe3wGvmx
Content-Type: multipart/alternative;
 boundary="------------8C423392D7C34D5121B798AE"

--------------8C423392D7C34D5121B798AE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I would like an idea of how much work it could be to backport support
for a raspberrypi2 or raspberrypi3 to Yocto 1.7.  I am relatively knew
to Raspberry Pis and not that experienced in Yocto either.=20

I can see that there is a raspberrypi Machine specification supplied in
the dizzy branch.  The raspberrypi2.conf and raspberrypi3.conf files do
not turn up till later on.  Is copying these two configuration files
back to a dizzy branch all that needs to happen?=20

If I can get a bitbake to complete successfully is that really all there
is to it or are there a handful of runtime issues I might encounter
later?  I would not like to create a minefield for myself.=20

The reason I am thinking about the feasibility of back-porting support
is that we have an existing product which is based on 1.7.  Either we:
develop everything on the older version of Yocto (which means
backporting Pi 2 or 3 support), develop on two versions of Yocto for
now, or try to port the existing product to something more modern line
Yocto 2.1 Krogoth.=20

If nothing else I thought someone here might be able to give an
authoritative answer to how big a job the backport was likely to be so
we could way up our options.  I am happy to muddle a long and do the
work in isolation, this is not a request for anyone else to perform the
backport or publish it to a public branch (though I would obvious love
to be told it is already done ;-)).=20

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


--------------8C423392D7C34D5121B798AE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>I would like an idea of how much work it could be to backport
      support for a raspberrypi2 or raspberrypi3 to Yocto 1.7.=C2=A0 I am=

      relatively knew to Raspberry Pis and not that experienced in Yocto
      either.=C2=A0 <br>
    </p>
    <p>I can see that there is a raspberrypi Machine specification
      supplied in the dizzy branch.=C2=A0 The raspberrypi2.conf and
      raspberrypi3.conf files do not turn up till later on.=C2=A0 Is copy=
ing
      these two configuration files back to a dizzy branch all that
      needs to happen?=C2=A0 <br>
    </p>
    <p>If I can get a bitbake to complete successfully is that really
      all there is to it or are there a handful of runtime issues I
      might encounter later?=C2=A0 I would not like to create a minefield=
 for
      myself.=C2=A0 <br>
    </p>
    <p>The reason I am thinking about the feasibility of back-porting
      support is that we have an existing product which is based on
      1.7.=C2=A0 Either we: develop everything on the older version of Yo=
cto
      (which means backporting Pi 2 or 3 support), develop on two
      versions of Yocto for now, or try to port the existing product to
      something more modern line Yocto 2.1 Krogoth.=C2=A0 <br>
    </p>
    <p>If nothing else I thought someone here might be able to give an
      authoritative answer to how big a job the backport was likely to
      be so we could way up our options.=C2=A0 I am happy to muddle a lon=
g
      and do the work in isolation, this is not a request for anyone
      else to perform the backport or publish it to a public branch
      (though I would obvious love to be told it is already done ;-)).=C2=
=A0
      <br>
    </p>
    <p>Regards,<br>
    </p>
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

--------------8C423392D7C34D5121B798AE--

--wG3lN9OkNCGm6kP67ouR2B3afhe3wGvmx--

--vhP8n0bMRsqsm7KhEPDm5Mx006RIGtNqn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJYIyzDAAoJEPXLKKkUazGAH3UIAItpZasxA5iHlJXschsSTDFa
tvZHrP7JXEkhNN/aD2ReGEOsU+gcQKu86cmAhOvNoEMEHFeiI+QUuV2aCrGXNpG8
TK59q7hkJp1MV72Q5u8EtR6lLYF0M8vpWqfcbWT42Tcpc0C2Dc2qvTAdmE3mtd0K
qZZFnZ2Poab+7q11taTqLF9bZxmJybV0DhcKG9st1T5lJsRs9JI9AkRANGdMVALH
+5JnrWNn6Co87oB3VqPMDA2jJtJE3534hsWOVLFfCdu1Esp3ydOBK2MzV3/MBYyt
2UrB276ojkje9XhdqqE5jzCofLS0e6s2oVKajnw7UycCn2TBGRbef1AXk1OYjMQ=
=oru7
-----END PGP SIGNATURE-----

--vhP8n0bMRsqsm7KhEPDm5Mx006RIGtNqn--
