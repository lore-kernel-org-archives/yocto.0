Return-Path: <giordon.holtsberg.stark@cern.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26E4FE00E1E; Thu,  8 Feb 2018 09:39:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.47 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10830 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Feb 2018 09:39:10 PST
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0047.outbound.protection.outlook.com [104.47.2.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A45CE00D6A
	for <yocto@yoctoproject.org>; Thu,  8 Feb 2018 09:39:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cern.onmicrosoft.com; 
	s=selector1-cern-ch;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=NRBhOncOVOCeLVPzI6JsWbvGNN7W1WEXELpLdhtaI9s=;
	b=AQzGOHLhNrBQbqEVftg4n689Q1NiDvuR6lhE245bn4UGg4vZ9XrcBOqdzLJJIYSZtzH+/L6ZRGSWNT2arr4B5yNesF6Oi4m/diVC4VuQFfjIH7HZoblNWC9QcED4yNFTiFUdDmyy9rAMuyTEu7L+E+MhPEBl5JzUMKjkoRIpeLA=
Received: from AM5PR0602CA0005.eurprd06.prod.outlook.com
	(2603:10a6:203:a3::15) by AM6PR0602MB3511.eurprd06.prod.outlook.com
	(2603:10a6:209:d::32) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.464.11;
	Thu, 8 Feb 2018 14:05:23 +0000
Received: from VE1EUR02FT058.eop-EUR02.prod.protection.outlook.com
	(2a01:111:f400:7e06::209) by AM5PR0602CA0005.outlook.office365.com
	(2603:10a6:203:a3::15) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.485.10 via
	Frontend Transport; Thu, 8 Feb 2018 14:05:23 +0000
Authentication-Results: spf=pass (sender IP is 188.184.36.46)
	smtp.mailfrom=cern.ch; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=cern.ch;
Received-SPF: Pass (protection.outlook.com: domain of cern.ch designates
	188.184.36.46 as permitted sender) receiver=protection.outlook.com;
	client-ip=188.184.36.46; helo=cernmxgwlb4.cern.ch;
Received: from cernmxgwlb4.cern.ch (188.184.36.46) by
	VE1EUR02FT058.mail.protection.outlook.com (10.152.13.52) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.20.464.8 via Frontend Transport; Thu, 8 Feb 2018 14:05:22 +0000
Received: from cernfe03.cern.ch (188.184.36.39) by cernmxgwlb4.cern.ch
	(188.184.36.46) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Thu, 8 Feb 2018 15:05:10 +0100
Received: from mail-it0-f44.google.com (209.85.214.44) by smtp.cern.ch
	(188.184.36.52) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Thu, 8 Feb 2018 15:05:09 +0100
Received: by mail-it0-f44.google.com with SMTP id o13so6642060ito.2 for
	<yocto@yoctoproject.org>; Thu, 08 Feb 2018 06:05:09 -0800 (PST)
X-Gm-Message-State: APf1xPCgvwm+jeIv9AsjJcA9rWa9KmwbbdFjcTuHDw62GCgWAWXegh/2
	+S0DMa8jQucYQXtmhxVGGMA0BPVUkH6vP3qKnkY=
X-Google-Smtp-Source: AH8x2275MelmnMdQP2KCX4k675OJj48DJU4kNZy1jmp6W2jFxTkotkW9rkmwjyOFtQXN4dRmaB8MRi15ZIoFOgK5kqQ=
X-Received: by 10.36.118.21 with SMTP id z21mr1485744itb.116.1518098708260;
	Thu, 08 Feb 2018 06:05:08 -0800 (PST)
MIME-Version: 1.0
References: <CAOT_U5a_cTCpAHHqPfozcH0Lxu=O1BFYgVa-FkdZcR0-+X8QQQ@mail.gmail.com>
	<9fd5ab57-6634-c619-e0ba-a16fab765de0@linux.intel.com>
	<CAOT_U5ZCxWFQGAWgt9rfv=FLxDr8=c3xaa0TNqnDNbHWLY4=LA@mail.gmail.com>
In-Reply-To: <CAOT_U5ZCxWFQGAWgt9rfv=FLxDr8=c3xaa0TNqnDNbHWLY4=LA@mail.gmail.com>
From: Giordon Stark <gstark@cern.ch>
Date: Thu, 8 Feb 2018 14:04:57 +0000
X-Gmail-Original-Message-ID: <CAFzUWGnqxFak4naXMWMJMpqucZuBdiYbvs3uFzt64usN82OA4Q@mail.gmail.com>
Message-ID: <CAFzUWGnqxFak4naXMWMJMpqucZuBdiYbvs3uFzt64usN82OA4Q@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
X-Originating-IP: [209.85.214.44]
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:188.184.36.46; IPV:NLI; CTRY:CH; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(346002)(396003)(376002)(39380400002)(39860400002)(2980300002)(438002)(189003)(199004)(42186006)(16586007)(76176011)(316002)(84326002)(106466001)(4326008)(55446002)(8936002)(54906003)(575784001)(8676002)(2906002)(6246003)(5660300001)(6862004)(54206008)(786003)(8576002)(356003)(246002)(305945005)(7636002)(7736002)(106002)(2950100002)(606006)(6666003)(186003)(74482002)(478600001)(26005)(53546011)(6116002)(3846002)(229853002)(336011)(33964004)(59450400001)(33896004)(61266001)(966005)(498394004)(66066001)(59536001)(61726006)(95326003)(9686003)(6306002)(236005)(93516011)(55456009)(47845001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0602MB3511;
	H:cernmxgwlb4.cern.ch; FPR:; SPF:Pass; PTR:cernmx13.cern.ch;
	MX:1; A:1; LANG:en; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 323b4b98-fae1-4224-a8af-08d56efcff02
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(4608076)(2017052603307)(7153060)(7193020);
	SRVR:AM6PR0602MB3511; 
X-MS-TrafficTypeDiagnostic: AM6PR0602MB3511:
X-Microsoft-Exchange-Diagnostics: 1; AM6PR0602MB3511;
	20:9nh4MEVUgZEeRbN+7wIvxCr3Ni2uCjf1X9RjLWbho3a+RYjaEKpxlQR3G3GPCD2QUNFIfBi7M5TT9jEv8N60aeGvrBFVzw6pn8OSqCtgKPlV14OVCYDa3ZK68gIaI4TTJcQXAhki6NDKnrhIcJ1vi6vuKgq77hWLnYtJsXq0qx1BWYY0l3DtnXVoiL/yuq7JmmaCtJwLswtV4KJvuivP6KypjV5OVELFcVWXAOsmrj819NIhCM9a6af+2f5DD1imRmY48X+2DAxh8MIGZP70fD+Bao5DJIQXV9H1ZI+gelc43DafOesLPbsP/E+uKfwe3NZ2OS6OGUoqEiVVSn5E8zpBb9R62fePlid5mfNV7TQXQmbhRnfyq5y6zoP6e6qtQmbRDNudSXp+YxrI7DKAbKk6v4u0aSScVZif8HYWxy8no+NP1+lIvYwFmzpo0671vGJlpD3E4ZxEhhUQHJ4Mo7J/JynBlotz//OfuerZTTYim2ORnepOVwk0Dy2q8pC5;
	4:aTbM3lC4cszjW4Tc43igU6TdnbOLoa8Bd0ba+/sllTyhh4Rv8fGF6bXw7lOgByndijrq8nl1aiUAgpXJqNPd62y6ueP/R7NsggtpNkrjubOGsu80yw/ua5/FVRJzSZ4PpT6o3sL+EfKs37NsIyumqII/voFc/crMzYWC2cxaH18JwNtn99U3JazyS+X51uadEymWrERyY+SxgHcpwKBpWhkM314jClyj6mmpuMy3ietdnSsLHAHs5OraNXP8pqxOgqaMdfJCPCl2mi3P08p8H8cxqorAsv2O5OkqDkvfS9Mf51Q6vWX9ZcsBo4FN5Kq+WkdhE0/EHJ5hCWqlqGYcYTkaA0sjMAjrubxEtJpNnpnJ+rTcCnHjpSUEiwnuh1l3DuF98YsJcEZF96ummHomMQnd+5dE1Z8w+5wq139LIFI=
X-Microsoft-Antispam-PRVS: <AM6PR0602MB3511CBFA5655D822D62B7924B2F30@AM6PR0602MB3511.eurprd06.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(158342451672863)(166708455590820)(251646265452963)(228905959029699);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(5005006)(8121501046)(10201501046)(3002001)(93006095)(93004095)(3231101)(2400082)(944501161)(6041288)(20161123558120)(20161123560045)(201703131423095)(201702281529075)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123564045)(6072148)(201708071742011);
	SRVR:AM6PR0602MB3511; BCL:0; PCL:0; RULEID:;
	SRVR:AM6PR0602MB3511; 
X-Forefront-PRVS: 0577AD41D6
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; AM6PR0602MB3511;
	23:7XVvsS6Oj9qYC3PjKLVxSN0rmByhtjJI7HLZBrU?=
	=?us-ascii?Q?SEPbsjeIbzWAK+omGQFCrfU8Jsz9etiWqFs+Z3flgqPPDaMXphx26X8bnXbt?=
	=?us-ascii?Q?R9JcF+cdtiUfi4q4AOpWfCxldEdI28g3gjKvJFiIKuGixa3wxIZ03WDa48oj?=
	=?us-ascii?Q?xQnFHvlcRh+2JQlhXG8JRWVcOcUKYD79PUTmcI5e2TTIml8AGgv/+b8vSYIW?=
	=?us-ascii?Q?QVf8pEt1RT35bJ9ezKLsQUpxfrnRVo7ysa65TDA8/uOoVFXl7VD0GNmPQJG1?=
	=?us-ascii?Q?XLR1TH8sA2LyzKT90rwFq3tsErlVCeR4LgwDhQ4rr3xzHi25h3aYrBBrR6CT?=
	=?us-ascii?Q?pyvAfgSVINzDp60QHd79casBEJIVUYNS/sbXroZleNAn9lIXRytXfDAvBM3m?=
	=?us-ascii?Q?QeahuR3Nu7oiK2fS8yw0haxGQ1hcv0sS+DlVaM4X6FYVmVKNmDBHaKKoqm9E?=
	=?us-ascii?Q?9c+YsVHyT8nlQL1B6P0eFf9b9BQSshW4PDKlyrp5YUAHwMYX9mzkUCg26SK2?=
	=?us-ascii?Q?OqbRlDGV/V4DtmBeF7kcbMl/HU+2+gveNUcETW9ltIa8kINs/xs9ZY1yzVvq?=
	=?us-ascii?Q?Q728VARrdZAV8htxvXcGog+0IaibacBaOKhiJlsA5Z3lezFbrk8mThaJG/JI?=
	=?us-ascii?Q?Vf/56T8RZs20//JwKU+pFhO55EMxZsf+OQfsL5O0QNkVLBbJw2Emqu4tJjcb?=
	=?us-ascii?Q?QYhamVq41twqG0I7MDfIA2SZFuuO5/UAK8HRUp7N6gauJMTiJ2tmkhoyQHJN?=
	=?us-ascii?Q?g/AyJdPUoQyDMq3K6xlFUw64dxlNKwO6ZhNT3erE9bNu/lMZpvjUDjS4v6h8?=
	=?us-ascii?Q?2lppeUSWGeA76WhZLgRanhmDHmuBemusqiLUsF+6Ea7GF8OLhsqILoLfvhd/?=
	=?us-ascii?Q?+UWwSTb638IV7d0ANvU2F6I3NwrZJ/uNgU9Buimbne0yl0FTsRKhL0ndPGYN?=
	=?us-ascii?Q?kXEvgKTmjevv3jYJI4qNtW+pPVG2Qu8e7tbaaHLODsOqGydaGq2RvVnRoRzi?=
	=?us-ascii?Q?jbTZ3Rg/3lhSyHvz79yyEAzFNdK7v8ufJuzPh2m9LzWy7jtuuVzr28r1PX75?=
	=?us-ascii?Q?3sBLXxTdr2HchUT94+BgIY203ZTaqtj1AOUaPDeFjt3dEdto8Pn1wHSCgOcT?=
	=?us-ascii?Q?6+1NVvdsA6ilbHcZVAax3TYc/hWYv3SFxq861F+mSQLvHrRbzaV3I8ZWdP64?=
	=?us-ascii?Q?rvB/XGSe5s5EDGr8OM77tNuRYE22p6bKCPJeGEDJawSar+IR1/1gnhg41dow?=
	=?us-ascii?Q?g8uSqcMju+OW5KAZH3PSjmrvoUEraceOFFMDXy+FS0OhKbggWesv+iWPVxWd?=
	=?us-ascii?Q?a+g5Ab6bVn91j+h2YAW9PAONDWajm8rTo/Z27l7yBrgG98Dx4+7MI2+ldOQX?=
	=?us-ascii?Q?LnqbU4HXsLHpcQV2Er1Ek7jwZaqg=3D?=
X-Microsoft-Exchange-Diagnostics: 1; AM6PR0602MB3511;
	6:DZhJNSBNqD3Yje214cxO+XLZmx4cNVJd7JtQXuGmTYrSWmdhYP1NDomWSEGulJG7gdCVQVNgjzumt9iZEAM/EYmiarkcTTcQtczGDuNnt5UmWvsmDurrYc0c1BZ0QwFbYpZyzlIdsUATiB8iAJQ9SDCYD/eSEcPQa+uskLwPSm118yEBxVXTcbUP++viTQkizmFvU1/Z6qbJ4snZNp+wLEBKB2RpiJchTwfpHulluRONuEDDEqp4nBYFtWTeKeBhZmckrZhgiBkzOahnRJAvzyeODs22As1fIgGTLuz6TdSHsxQ21OAXmKTlK8KQ7k3I8YUjP1p0guKpuJ7/Bz1emQeJ3+9R8xDFCNdcJNxIXO4=;
	5:Qttsjsg8ipGmhyHkMClE8FMLwOYkCBhM9XTvaZXL13f0VRe2gx0D2RP33nGrXSrtubaKTDFRjbTCTUohk7/9qWfdgKvmd9suULi65jnZsgn7PcVB5QNPzF8XfHwE3XAPtK8BvuEVNGEJLA73W+AqAPYdjyN4c5gsHjZCG9R3GA8=;
	24:P9irM/FpTisYFyKEFfSYKLx3b49PM+pcCd0BjmglcOXNCnbNMNhhZW3n1Lbj8IQtcAqpVZPJ34u2CqpkOA0zPsOpGWrMB94+jA4fnZTc0mM=;
	7:4BQL0NsLRrUuPXodvtIHhDbCpBqR1CTKbzbf3/SNX2qHYOBpeAror5sypy72LbzOnC/qQa3Jc97pXQywQisZSx35se303oLA4zQm+PDELoxpl4oS4asCNvVa/S7JhJRdJolz7pgA+1oYtgthb3VFKh9ORMG8o9I5YU6O6JhI7uYsJRJBugef2ou7tNyUouks4Yf/LeXXl/lhOdpHGwoqtVCBkSkPKpWx59GBlzqDa4yzebvm195baSrE5PFRp5wx
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: cern.ch
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2018 14:05:22.9315 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 323b4b98-fae1-4224-a8af-08d56efcff02
X-MS-Exchange-CrossTenant-Id: c80d3499-4a40-4a8c-986e-abce017d6b19
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=c80d3499-4a40-4a8c-986e-abce017d6b19;
	Ip=[188.184.36.46]; Helo=[cernmxgwlb4.cern.ch]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0602MB3511
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Creating a python recipe with devtool
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
X-List-Received-Date: Thu, 08 Feb 2018 17:39:13 -0000
Content-Type: multipart/alternative; boundary="001a1143fc483d95de0564b3e6bc"

--001a1143fc483d95de0564b3e6bc
Content-Type: text/plain; charset="UTF-8"

This also works with the tarball URLs from pypi which is a bit easier to
manage (version-wise).

Giordon

On Wed, Feb 7, 2018 at 7:10 AM Alan Martinovic <alan.martinovic@senic.com>
wrote:

> Thanks, that worked!
>
> Steps:
>
> # On the build server
> devtool create-workspace
> devtool add  https://github.com/jruere/multiprocessing-logging
> devtool
> devtool edit-recipe multiprocessing-logging
>     # Change for building for python3
>        inherit setuptools -> inherit setuptools3
>     # delete the RDEPENDS that were wrongly detected
> devtool build multiprocessing-logging
> #Prerequisit: ssh root@10.10.10.100
> devtool deploy-target multiprocessing-logging root@10.10.10.100
>
> #On the 10.10.10.100 device
> python3
> import python3-multiprocessing_logging
>
> #On the build server. Finishing
> devtool finish multiprocessing-logging
> /home/alan/meta-myproject/recipes-devtools/python
>
> On Wed, Feb 7, 2018 at 1:25 PM, Alexander Kanavin
> <alexander.kanavin@linux.intel.com> wrote:
> > On 02/07/2018 02:17 PM, Alan Martinovic wrote:
> >>
> >>      devtool add
> >>
> >>
> https://pypi.python.org/packages/65/eb/1c3db9596eddb2bd1d1f8153dcaf2d9f2c7e144f4832d1b1449f681a0a7a/multiprocessing_logging-0.2.6-py2.py3-none-any.whl#md5=b7783a8c449135e5bb344b3f0caa3522
> >
> >
> > I don't think we support .whl format at the moment. You need to fetch
> > sources directly from github.
> >
> >
> > Alex
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
-- 
Giordon Stark

--001a1143fc483d95de0564b3e6bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This also works with the tarball URLs from pypi which is a=
 bit easier to manage (version-wise).<div><br></div><div>Giordon</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Feb 7, 2018 at 7:1=
0 AM Alan Martinovic &lt;<a href=3D"mailto:alan.martinovic@senic.com">alan.=
martinovic@senic.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>Thanks, that worked!<br>
<br>
Steps:<br>
<br>
# On the build server<br>
devtool create-workspace<br>
devtool add=C2=A0 <a href=3D"https://github.com/jruere/multiprocessing-logg=
ing" rel=3D"noreferrer" target=3D"_blank">https://github.com/jruere/multipr=
ocessing-logging</a><br>
devtool<br>
devtool edit-recipe multiprocessing-logging<br>
=C2=A0 =C2=A0 # Change for building for python3<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0inherit setuptools -&gt; inherit setuptools3<br>
=C2=A0 =C2=A0 # delete the RDEPENDS that were wrongly detected<br>
devtool build multiprocessing-logging<br>
#Prerequisit: ssh <a href=3D"mailto:root@10.10.10.100" target=3D"_blank">ro=
ot@10.10.10.100</a><br>
devtool deploy-target multiprocessing-logging <a href=3D"mailto:root@10.10.=
10.100" target=3D"_blank">root@10.10.10.100</a><br>
<br>
#On the 10.10.10.100 device<br>
python3<br>
import python3-multiprocessing_logging<br>
<br>
#On the build server. Finishing<br>
devtool finish multiprocessing-logging<br>
/home/alan/meta-myproject/recipes-devtools/python<br>
<br>
On Wed, Feb 7, 2018 at 1:25 PM, Alexander Kanavin<br>
&lt;<a href=3D"mailto:alexander.kanavin@linux.intel.com" target=3D"_blank">=
alexander.kanavin@linux.intel.com</a>&gt; wrote:<br>
&gt; On 02/07/2018 02:17 PM, Alan Martinovic wrote:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 devtool add<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://pypi.python.org/packages/65/eb/1c3db9596eddb2bd=
1d1f8153dcaf2d9f2c7e144f4832d1b1449f681a0a7a/multiprocessing_logging-0.2.6-=
py2.py3-none-any.whl#md5=3Db7783a8c449135e5bb344b3f0caa3522" rel=3D"norefer=
rer" target=3D"_blank">https://pypi.python.org/packages/65/eb/1c3db9596eddb=
2bd1d1f8153dcaf2d9f2c7e144f4832d1b1449f681a0a7a/multiprocessing_logging-0.2=
.6-py2.py3-none-any.whl#md5=3Db7783a8c449135e5bb344b3f0caa3522</a><br>
&gt;<br>
&gt;<br>
&gt; I don&#39;t think we support .whl format at the moment. You need to fe=
tch<br>
&gt; sources directly from github.<br>
&gt;<br>
&gt;<br>
&gt; Alex<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--001a1143fc483d95de0564b3e6bc--
