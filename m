Return-Path: <giordon.holtsberg.stark@cern.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F148E00B01; Fri, 16 Mar 2018 11:47:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.84 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 845 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Mar 2018 11:47:48 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0084.outbound.protection.outlook.com [104.47.2.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73712E007DA
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 11:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cern.onmicrosoft.com; 
	s=selector1-cern-ch;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=nEjnM+pngyditlNkioBfGiqBnD9tKPw2XRiuab/lonI=;
	b=Gm8bE2abs4XGbv/F9rMCBcJ3xsDyxjJsrHmWcAax1pA0cTX046bV9M57rgCUpsWiGPru4/QqpK9q+DrsZ4oFSgtde9w/KSVSAtd4oFyNPLvbqbstqEJ1SNxAdC3zY/rVmQmS9Mizu4t07H/hIkxQX+rWL8iI+Wfj56W69OZ9QU8=
Received: from AM5PR0601CA0038.eurprd06.prod.outlook.com
	(2603:10a6:203:68::24) by VI1PR06MB3197.eurprd06.prod.outlook.com
	(2603:10a6:802:d::16) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.588.14;
	Fri, 16 Mar 2018 18:33:41 +0000
Received: from VE1EUR02FT034.eop-EUR02.prod.protection.outlook.com
	(2a01:111:f400:7e06::200) by AM5PR0601CA0038.outlook.office365.com
	(2603:10a6:203:68::24) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.588.14 via
	Frontend Transport; Fri, 16 Mar 2018 18:33:40 +0000
Authentication-Results: spf=pass (sender IP is 188.184.36.50)
	smtp.mailfrom=cern.ch; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=cern.ch;
Received-SPF: Pass (protection.outlook.com: domain of cern.ch designates
	188.184.36.50 as permitted sender) receiver=protection.outlook.com;
	client-ip=188.184.36.50; helo=cernmxgwlb4.cern.ch;
Received: from cernmxgwlb4.cern.ch (188.184.36.50) by
	VE1EUR02FT034.mail.protection.outlook.com (10.152.12.125) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P256) id
	15.20.527.15 via Frontend Transport; Fri, 16 Mar 2018 18:33:40 +0000
Received: from cernfe06.cern.ch (188.184.36.49) by cernmxgwlb4.cern.ch
	(188.184.36.50) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Fri, 16 Mar 2018 19:33:39 +0100
Received: from mail-it0-f41.google.com (209.85.214.41) by smtp.cern.ch
	(188.184.36.52) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Fri, 16 Mar 2018 19:33:39 +0100
Received: by mail-it0-f41.google.com with SMTP id k79-v6so3239382ita.2
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 11:33:38 -0700 (PDT)
X-Gm-Message-State: AElRT7H1doujujRIlc44uNH8xDmTMcb79/nzfSowjfNjk+136xAMTssP
	BVNSeUYnfyVlgsFbQBPK2coW76JjTpHxLVUdDuI=
X-Google-Smtp-Source: AG47ELsSb784UEjhCR5Ts4sdGdMzclRmMUVq3VBLDCu9Hn/YaL7YyrcNkVL0ltnzNZJ0jZzbr8AbMQbyHCGFPFvBdlc=
X-Received: by 2002:a24:4115:: with SMTP id
	x21-v6mr3289043ita.146.1521225216901; 
	Fri, 16 Mar 2018 11:33:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<3fbaa987-5050-9663-b140-0520ebbaec39@windriver.com>
	<CAFq4t4idwKwkdsCY+DtTu7vJyQcB5eF8dYf9mqeSx-eZCd8iYA@mail.gmail.com>
	<CAJTo0Lbwybvs404=Xs-vx4Vtj6+znf6gpTi0QvBFR1j-w=e0Qw@mail.gmail.com>
	<CAFq4t4gZDQQat_H-HeYAJWdYCvLMt9rGyunr1BRQXn3dkeAYGQ@mail.gmail.com>
	<CAJTo0LaDQjiTosCtAqBnL0ZZ2aMpDXxdX7kP_SDDqoVobqdi0g@mail.gmail.com>
	<CAFq4t4hgxQkgMQ8Z5-hvVyTWQKn3bAUSgD57gRF+tuXE4UTdWg@mail.gmail.com>
	<d9887f4a-61f9-4c51-95f3-66c52f9a3b1f@balister.org>
In-Reply-To: <d9887f4a-61f9-4c51-95f3-66c52f9a3b1f@balister.org>
From: Giordon Stark <gstark@cern.ch>
Date: Fri, 16 Mar 2018 18:33:25 +0000
X-Gmail-Original-Message-ID: <CAFzUWG=c2a0m0frcAK8dNxE44rwUHdWf=E+1JHdbPkf1ZLV3qA@mail.gmail.com>
Message-ID: <CAFzUWG=c2a0m0frcAK8dNxE44rwUHdWf=E+1JHdbPkf1ZLV3qA@mail.gmail.com>
To: Philip Balister <philip@balister.org>
X-Originating-IP: [209.85.214.41]
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:188.184.36.50; IPV:NLI; CTRY:CH; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(376002)(39860400002)(346002)(396003)(39380400002)(2980300002)(438002)(377424004)(199004)(189003)(53754006)(54094003)(66066001)(84326002)(186003)(93886005)(575784001)(55446002)(8576002)(76176011)(6116002)(336012)(606006)(478600001)(93516011)(3846002)(61726006)(42186006)(8936002)(786003)(316002)(59536001)(61266001)(2906002)(966005)(74482002)(6666003)(8676002)(246002)(95326003)(16586007)(4326008)(9686003)(236005)(106002)(229853002)(7736002)(7636002)(54906003)(6862004)(5660300001)(305945005)(356003)(59450400001)(26005)(53546011)(2950100002)(33964004)(53386004)(498394004)(6246003)(98316002)(6306002)(106466001)(33896004)(55456009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR06MB3197;
	H:cernmxgwlb4.cern.ch; FPR:; SPF:Pass; PTR:cernmx11.cern.ch; A:1;
	MX:1; LANG:en; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c5de7023-3759-40bf-bffd-08d58b6c709f
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(4608076)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR06MB3197; 
X-MS-TrafficTypeDiagnostic: VI1PR06MB3197:
X-Microsoft-Exchange-Diagnostics: 1; VI1PR06MB3197;
	20:QHeBXbS5Rm6V03cNBwMutWTI6CLfrpvlb8pQOE7J9uQUG0vZaJ7u6EddRN6GEDVuyug9EGlgwJje92nVxRA/TarBo51W0Qiy0aoj18ZH2XIGxap2rgawXCv20gmhqsnbckeGjbJCS5q3uJwVBM9dKJ7HXYyXRkQaH5iC5LkoMxU4lxe3yjr4hRU70YaNuf7hJZhPD4jtCkJQCV4qUNpnbDjNIObV4O7+4SAV4lvMZO57eZwTqAVSl4VsAZdv63SrrdRWveiPq/wG0VD1kgSa3d+jchGIwi1hjON6QmKbk7Pinlh3HHGv0SgXJMW6miBHz20GbT0PNIwExKgH52bdRXF0hepJCmCf4wB3k9YUhywCyR+p1xCxfDxPhfTqwTul4G1lOIlFKy5gq0RJK7XjQdXTpgprNHFki3yNn+i1qbajNaCz+zP/hJflIHV/5lDc2dp876Egq0Y7M9cQ+kDYzXmMr6n1voJKQyZFZ2NkN3t1fqvWYoKpB3vO3XizCFFA
X-Microsoft-Antispam-PRVS: <VI1PR06MB31970D1ED40C68BBBD0E24FCB2D70@VI1PR06MB3197.eurprd06.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(166708455590820)(48706222282353)(85827821059158)(251646265452963)(42262312472803)(228905959029699);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(3231221)(944501244)(52105095)(93006095)(93004095)(6041310)(201703131423095)(201702281529075)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123560045)(20161123562045)(20161123564045)(6072148)(201708071742011);
	SRVR:VI1PR06MB3197; BCL:0; PCL:0; RULEID:; SRVR:VI1PR06MB3197; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR06MB3197;
	4:IeCyOSAbQ/KJqiznMbekcpEuVnpfOrf5u6CMZjOdDC9YJXin9spNnffjW4P6F1L8jOQQSf+Emj9idhoPebmEvl8am1MPEPgdJanLW3+esgQRos3rgi1EhAVtz5bjUIMyxf7ZvVo/JI6uYQ/ctdrxZL5zh0fgYXtTRrxy9NPuwxUn9o2usAF87yZGbBThOsl8P21sG9WQa2hArVpkGEvYKqFY8D/Ye0RzlR5Don0h+JIpUXzboCbjEFiaISj5ngEnhxWEGxzI9JrgEs8qKUbW63YtX4GCZk+gyRUZzjfuNRJZxTVzwc5o2LOPCB8G/S9EPhbvVsy3jAoul5GJfxLhAEpUwi2p/zDw8i76O1GbM1KOYy1Btd+wQOo5UdNW15msubTIrsUC2r2Cun92TQC5cU8jUePaDvtUOWZgcc2rag5MH4e2hctIEgBzarPrmhRIQ8Ni7zDTYNT4cmOE2xI3cnXgc/n5Qe8w2SHzJNEgYU8=
X-Forefront-PRVS: 0613912E23
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; VI1PR06MB3197;
	23:HC2u5BqafnZYpYxWvLkuNMpHtkDGIztYieU/GJ+G4?=
	=?us-ascii?Q?kX3SQ66dQwcXSTRemHpE8WAaNKecmOmpDJ3rhoE0QXHgD7jcZGy2HUDV1nFP?=
	=?us-ascii?Q?ZpFmF7pxkJMXHm/1qsG1rSoZlmYKL6m4ZaZyIBVwR+wMayVFuEAGoVgkIAN9?=
	=?us-ascii?Q?sE0qQCuoTP1fY572G9JE3UmxsNf3ODvVKev1NPjAbB40+2K9yijxxelCUATj?=
	=?us-ascii?Q?yB+qnvyOkgOkfrmac4HXqxWBB8PLOmpR0CjUfMTdLF77AMESKIzUkRgH2hhm?=
	=?us-ascii?Q?eZPvlmzvAEsfW+fUyUXEYY40mbCUx1Z3YUYBHkCXTtlZdMyiv3chAznO5koq?=
	=?us-ascii?Q?zFDqZ1q2SD+uwyOvaCuNqm10HcEMJxKPW+CeetAHEbQqlSJBqbMx2JTZv7+I?=
	=?us-ascii?Q?xrECoCexZRsMPfKH/HFMN7zO+51u5iQvZJDU0Nt3+GR0Rfw11UL9zIe64UNJ?=
	=?us-ascii?Q?/9iVhbn6RJTjgy2izcmnaxOxOLQtrIRVN6/o1cnoZiteNFKDu+1pRHf4ZWQW?=
	=?us-ascii?Q?ErYVEJTyd76MkIzZyh89WLZMGD1/ynAQXbxr8WpANprUdEBaPJkPO4UB1ILd?=
	=?us-ascii?Q?aD5KxDNMrIlhOBmKBGYI6GYGttiuepOrFh0VvPooDEnAlWn9KwmMc4xoyEiC?=
	=?us-ascii?Q?d0Ut28Z9oX9R1B9dktT3dNXK9nJgHLd32KMzzg1WfPYMjWoMs7/hUTq0s7Tu?=
	=?us-ascii?Q?SMSb5eZ5nJs74BNVwUlSXtQCcD2MQ0VEqXyjlgJPiJ40M6SgdrFxzShxWABf?=
	=?us-ascii?Q?fanDWXC8Ag6UU+Zi43lsFEyOBAB7gbfmqEyo8oOpbWjebHvWOavUzkcJ4yao?=
	=?us-ascii?Q?9WCjpMZuex9dYUhEMM2xnZll2Pis7YyqyiQEj5GoUN97Blh9P2qiVqjYUkCJ?=
	=?us-ascii?Q?vQp/F86WJfldeXG17ju3GK2LD7cpLmdr3n9katbSzalMLe62EpMtej4DOCvc?=
	=?us-ascii?Q?Nw6qUs66y+pANcuI6l7wcVsSvurwCcQO9WS/DoOjIn0fXGUMkQM+H136h/fu?=
	=?us-ascii?Q?hyFPEQHrJ+IaWSxjf4vseKYQ88YlKwuELQJMnRM7FCkk5BH5Z5Smr39oZzG5?=
	=?us-ascii?Q?9+/2tJf6fVVBHUL0PF39tQgRFfQnMN8ytx7RB5j/J/6OHl7E1zX7D7uBEVdM?=
	=?us-ascii?Q?adH6kJEuj/O1Q80bSMHR4KloU/cYDe7fxQAIO3MJ5fR96u+kCIawBp8cyveI?=
	=?us-ascii?Q?Due8K6Z+svnU36w1w70Mu1ZHwqTqregw2x1DvQUTyli39TdHCQupMYZtuuaM?=
	=?us-ascii?Q?KBYGkz3w8vvSPrY31UfCocDrR3N9sGwA+YOtKL1TYQBQRjOE7eFsxjzh2iHY?=
	=?us-ascii?Q?y/1DsnxP4YTItJ/L97d43hnOIQRR9Sqlrp87n8J6V2IJB82l4VFJi0SklPnB?=
	=?us-ascii?Q?ld+Uk5ByYcR0K880orAXF3MJbiuplMTA7l255e7kRI6Aqhno18kN77tK2uvr?=
	=?us-ascii?Q?1NJWxEGSfivY4YKwTvCMZFlFWo1W2llV44/w8TJwSycL23De6S8?=
X-Microsoft-Antispam-Message-Info: EhsyttSU3T0llxNuEoQLitLQjwEYfaSiQGcbbyr+W9ZOVF2DbQGO88ZCfP8j8XlUZlUelZz6gMSAgDBHnbC8ABLfW2h7j7LU33mlSU3qa7E7Vq3CYn3udKF1TlWgcr7Z17eVIWJ1YZtMMkixJF0FAUt6SwhoZD9aTwC5JgYrnCZJ6higpUKRGQWxJwqqmuLg
X-Microsoft-Exchange-Diagnostics: 1; VI1PR06MB3197;
	6:OhSBLwAaLJx1ErVT68nUDZCBc5hwzjpDKvf6N68HZaMMqFohr8b3BnvsehzYo1MVfS9MSFR9zG7T68oWGTmEPYRITXGdIrUKONkjyIpumkL0E5WtSOdijlnB/g/Ar/mmR/lVP1wMVSuz9RoAeEJ09T5QBGnSHMvc4Cei3BQhEXFpSrezHglP8+EJLICdE+OawE9BKbbyaQHpFyVpH/ly7z+dpDBYN5dvjBGPeGsIBcGv0IPmvqL3bO/0LuTEnBq+0uQkyIlNMImG9LnbtLXD7oXvBAeAR3gCxbZchjrLyeHdq4YiqvU5n9yn1Dm3GEyAtKJIzrHjvAJNwNEwICrKhus/ZFdyI2W/IsDcRpbtoyI=;
	5:tko1/ZRrzoh0v2OG0lB53r3uzZfb9hIgyMoHVVy4NYxOcxp6bt8VlxqlTMC82Kr2zxwYgLFEGLmeCx1sDx5Wx5mXgzl9BL40S2SaCQSvhXAkoqAFEeNV73V/iE1IvehNKHU2yLZddzFU4HfQoCci1t2dSiZcqAxa84LQJu2Lm+U=;
	24:r1fdSWo+YIFo1SnWZvELbLpCEwWE9SGSpO0NPVinAEx0fwQtFWpgVuQd/iEIAFiFWiWJw6xrKH4B+iD0xXiMQeriFPTCAUevutu0Y7DtH/s=;
	7:bKR7J+z1aR2qUPWpnyJMdaMi8WnLUu1wUO4RMfV7fX2yTzewYMYqk7w31QOHpHAh5QwWXaUx9cbjqLmESEQKrJ5h9smN5PhK0MGEc8gn8h/l+qsmQ6dVsgPEgZWMuyeEmmSa0TE1qlJ0zF24QhWXMbUEPWPN8OM0QaV77AIcuFAbaKqCR7sHJyHkSVa4x4JRCPYy/LI8jFqY+JvMOr8hkdcgyZ9I9mrGCIXu+eTUJTjuAs12IzVa8lNsGP5rvbaY
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: cern.ch
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2018 18:33:40.2383 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c5de7023-3759-40bf-bffd-08d58b6c709f
X-MS-Exchange-CrossTenant-Id: c80d3499-4a40-4a8c-986e-abce017d6b19
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=c80d3499-4a40-4a8c-986e-abce017d6b19;
	Ip=[188.184.36.50]; Helo=[cernmxgwlb4.cern.ch]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR06MB3197
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: scipy recipe
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
X-List-Received-Date: Fri, 16 Mar 2018 18:47:53 -0000
Content-Type: multipart/alternative; boundary="000000000000ad4bce05678bd83a"

--000000000000ad4bce05678bd83a
Content-Type: text/plain; charset="UTF-8"

OpenBLAS is here: http://layers.openembedded.org/layerindex/recipe/68888/

G

On Fri, Mar 16, 2018 at 1:30 PM Philip Balister <philip@balister.org> wrote:

> You'll get to Atlas soon, and that is another source of pain :)
>
> Philip
>
> On 03/16/2018 11:26 AM, Peter Balazovic wrote:
> > Seems OpenBLAS is missing, is there recipe for it?
> >
> > ERROR: scipy-1.0.0-r0 do_compile: python setup.py build execution failed.
> > ERROR: scipy-1.0.0-r0 do_compile: Function failed: do_compile (log file
> is
> > located at /log.do_compile.8708)
> > ERROR: Logfile of failure stored in: /1.0.0-r0/temp/log.do_compile.8708
> > Log data follows:
> > | DEBUG: Executing shell function do_compile
> > | ERROR: python setup.py build execution failed.
> > | /usr/lib/python2.7/distutils/dist.py:267: UserWarning: Unknown
> > distribution option: 'python_requires'
> > |   warnings.warn(msg)
> > | lapack_opt_info:
> > | openblas_lapack_info:
> > |   libraries openblas not found in ['/usr/lib']
> > |   NOT AVAILABLE
> > |
> > | lapack_mkl_info:
> > | mkl_info:
> > |   libraries mkl,vml,guide not found in ['/usr/lib']
> > |   NOT AVAILABLE
> > |
> > |   NOT AVAILABLE
> > |
> > | atlas_3_10_threads_info:
> > | Setting PTATLAS=ATLAS
> > |   libraries tatlas,tatlas not found in /usr/lib
> > |   libraries lapack_atlas not found in /usr/lib
> > | <class 'numpy.distutils.system_info.atlas_3_10_threads_info'>
> > |   NOT AVAILABLE
> > |
> > | atlas_3_10_info:
> > |   libraries satlas,satlas not found in /usr/lib
> > |   libraries lapack_atlas not found in /usr/lib
> > | <class 'numpy.distutils.system_info.atlas_3_10_info'>
> > |   NOT AVAILABLE
> > |
> > | atlas_threads_info:
> > | Setting PTATLAS=ATLAS
> > |   libraries ptf77blas,ptcblas,atlas not found in /usr/lib
> > |   libraries lapack_atlas not found in /usr/lib
> > | <class 'numpy.distutils.system_info.atlas_threads_info'>
> > |   NOT AVAILABLE
> > |
> > | atlas_info:
> > |   libraries f77blas,cblas,atlas not found in /usr/lib
> > |   libraries lapack_atlas not found in /usr/lib
> > | <class 'numpy.distutils.system_info.atlas_info'>
> > |   NOT AVAILABLE
> > |
> > |  /usr/lib/python2.7/site-packages/numpy/distutils/system_info.py:1510:
> > UserWarning:
> > |     Atlas (http://math-atlas.sourceforge.net/) libraries not found.
> > |     Directories to search for the libraries can be specified in the
> > |     numpy/distutils/site.cfg file (section [atlas]) or by setting
> > |     the ATLAS environment variable.
> > |   warnings.warn(AtlasNotFoundError.__doc__)
> > | lapack_info:
> > |   libraries lapack not found in ['/usr/lib']
> > |   NOT AVAILABLE
> > |
> > | /usr/lib/python2.7/site-packages/numpy/distutils/system_info.py:1521:
> > UserWarning:
> > |     Lapack (http://www.netlib.org/lapack/) libraries not found.
> > |     Directories to search for the libraries can be specified in the
> > |     numpy/distutils/site.cfg file (section [lapack]) or by setting
> > |     the LAPACK environment variable.
> > |   warnings.warn(LapackNotFoundError.__doc__)
> > | lapack_src_info:
> > |   NOT AVAILABLE
> > |
> > | /usr/lib/python2.7/site-packages/numpy/distutils/system_info.py:1524:
> > UserWarning:
> > |     Lapack (http://www.netlib.org/lapack/) sources not found.
> > |     Directories to search for the sources can be specified in the
> > |     numpy/distutils/site.cfg file (section [lapack_src]) or by setting
> > |     the LAPACK_SRC environment variable.
> > |   warnings.warn(LapackSrcNotFoundError.__doc__)
> > |   NOT AVAILABLE
> > |
> > | Running from scipy source directory.
> > | Traceback (most recent call last):
> > |   File "setup.py", line 418, in <module>
> > |     setup_package()
> > |   File "setup.py", line 414, in setup_package
> > |     setup(**metadata)
> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/core.py", line
> > 135, in setup
> > |     config = configuration()
> > |   File "setup.py", line 336, in configuration
> > |     config.add_subpackage('scipy')
> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
> > line 1003, in add_subpackage
> > |     caller_level = 2)
> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
> > line 972, in get_subpackage
> > |     caller_level = caller_level + 1)
> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
> > line 909, in _get_configuration_from_setup_py
> > |     config = setup_module.configuration(*args)
> > |   File "scipy/setup.py", line 15, in configuration
> > |     config.add_subpackage('linalg')
> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
> > line 1003, in add_subpackage
> > |     caller_level = 2)
> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
> > line 972, in get_subpackage
> > |     caller_level = caller_level + 1)
> > |   File "/usr/lib/python2.7/site-packages/numpy/distutils/misc_util.py",
> > line 909, in _get_configuration_from_setup_py
> > |     config = setup_module.configuration(*args)
> > |   File "scipy/linalg/setup.py", line 19, in configuration
> > |     raise NotFoundError('no lapack/blas resources found')
> > | numpy.distutils.system_info.NotFoundError: no lapack/blas resources
> found
> > | ERROR: Function failed: do_compile (log file is located at
> > /scipy/1.0.0-r0/temp/log.do_compile.8708)
> > ERROR: Task
> >
> (/sources/meta-openembedded/meta-python/recipes-devtools/python/scipy_1.0.0.bb:
> do_compile)
> > failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 8394 tasks of which 8382 didn't need to be
> > rerun and 1 failed.
> >
> >
> > On Fri, Mar 16, 2018 at 6:36 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
> >
> >> To change the version, change the filename of the recipe.
> >>
> >> Also, please remember the CC the list.
> >>
> >> Ross
> >>
> >> On 16 March 2018 at 17:30, Peter Balazovic <balazovic.peter@gmail.com>
> >> wrote:
> >>
> >>> I did download from
> https://github.com/scipy/scipy/archive/v1.0.0.tar.gz
> >>> and cc to /downloads and same still issue ...
> >>> as mentioned  should be version is 1.0.0
> >>> where to change it to point to correct version & file?
> >>>
> >>> On Fri, Mar 16, 2018 at 5:57 PM, Burton, Ross <ross.burton@intel.com>
> >>> wrote:
> >>>
> >>>> You're getting a "file not found" for the URL it is looking for.
> >>>> According to https://pypi.python.org/pypi/scipy, the version is 1.0.0
> >>>> not 1.0.
> >>>>
> >>>> Ross
> >>>>
> >>>> On 16 March 2018 at 16:50, Peter Balazovic <balazovic.peter@gmail.com
> >
> >>>> wrote:
> >>>>
> >>>>> per using recipe https://github.com/scipy/scipy/issues/8226
> >>>>>
> >>>>>
> >>>>> SUMMARY = "Scientific Library for Python"
> >>>>> SECTION = "devel/python"
> >>>>> HOMEPAGE = "https://pypi.python.org/pypi/scipy"
> >>>>>
> >>>>> LICENSE = "BSD-3-Clause"
> >>>>> LIC_FILES_CHKSUM =
> "file://LICENSE.txt;md5=d0db8f4148a3d5534cfb93be78f9287c"
> >>>>>
> >>>>> PYPI_PACKAGE="scipy"
> >>>>>
> >>>>> SRC_URI[md5sum] = "53fa34bd3733a9a4216842b6000f7316"
> >>>>> SRC_URI[sha256sum] =
> "87ea1f11a0e9ec08c264dc64551d501fa307289460705f6fccd84cbfc7926d10"
> >>>>>
> >>>>> inherit pypi setuptools distutils
> >>>>>
> >>>>> RDEPENDS_${PN} += "python-core python-numpy-native python-distutils"
> >>>>> DEPENDS += "python-numpy"
> >>>>>
> >>>>>
> >>>>> I am getting error to fetch scipy do_fetch error
> >>>>>
> >>>>>
> >>>>> WARNING: scipy-1.0-r0 do_fetch: Failed to fetch URL
> >>>>>
> https://files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar.gz,
> >>>>> attempting MIRRORS if available
> >>>>> ERROR: scipy-1.0-r0 do_fetch: Fetcher failure: Fetch command export
> >>>>> DBUS_SESSION_BUS_ADDRESS="unix:abstract=/tmp/dbus-idNNJsmT3C"; export
> >>>>> SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"; export ftp_proxy=
> >>>>> --progress=dot -v failed with exit code 8, output:
> >>>>> --2018-03-16 17:43:34--  https://files.pythonhosted.org
> >>>>> /packages/source/s/scipy/scipy-1.0.tar.gz
> >>>>> Resolving files.pythonhosted.org (files.pythonhosted.org)...
> >>>>> 151.101.17.63, 2a04:4e42:4::319
> >>>>> Connecting to files.pythonhosted.org (files.pythonhosted.org
> )|151.101.17.63|:443...
> >>>>> connected.
> >>>>> HTTP request sent, awaiting response... 404 Not Found
> >>>>> 2018-03-16 17:43:35 ERROR 404: Not Found.
> >>>>>
> >>>>> Any help?
> >>>>>
> >>>>>
> >>>>> On Thu, Mar 15, 2018 at 9:35 PM, Randy MacLeod <
> >>>>> randy.macleod@windriver.com> wrote:
> >>>>>
> >>>>>> On 2018-03-15 01:56 PM, Peter Balazovic wrote:
> >>>>>>
> >>>>>>> Hello all,
> >>>>>>>
> >>>>>>> I wonder if there is scipy recipe available?
> >>>>>>>
> >>>>>>
> >>>>>> Not yet:
> >>>>>>
> >>>>>> https://layers.openembedded.org/layerindex/branch/master/rec
> >>>>>> ipes/?q=scipy
> >>>>>>
> >>>>>> It appears to be blocked by:
> >>>>>>    https://github.com/scipy/scipy/issues/8226
> >>>>>> but apparently that's a bitbake issue, not a spip one.
> >>>>>> Care to take a look?
> >>>>>>
> >>>>>>
> >>>>>>> Thanks.
> >>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>
> >>>>>> --
> >>>>>> # Randy MacLeod.  WR Linux
> >>>>>> # Wind River an Intel Company
> >>>>>>
> >>>>>
> >>>>>
> >>>>> --
> >>>>> _______________________________________________
> >>>>> yocto mailing list
> >>>>> yocto@yoctoproject.org
> >>>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>>>
> >>>>>
> >>>>
> >>>
> >>
> >
> >
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
-- 
Giordon Stark

--000000000000ad4bce05678bd83a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OpenBLAS is here:=C2=A0<a href=3D"http://layers.openembedd=
ed.org/layerindex/recipe/68888/">http://layers.openembedded.org/layerindex/=
recipe/68888/</a>=C2=A0<div><br></div><div>G</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr">On Fri, Mar 16, 2018 at 1:30 PM Philip Baliste=
r &lt;<a href=3D"mailto:philip@balister.org">philip@balister.org</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">You&#39;ll get to Atlas soon, =
and that is another source of pain :)<br>
<br>
Philip<br>
<br>
On 03/16/2018 11:26 AM, Peter Balazovic wrote:<br>
&gt; Seems OpenBLAS is missing, is there recipe for it?<br>
&gt;<br>
&gt; ERROR: scipy-1.0.0-r0 do_compile: python setup.py build execution fail=
ed.<br>
&gt; ERROR: scipy-1.0.0-r0 do_compile: Function failed: do_compile (log fil=
e is<br>
&gt; located at /log.do_compile.8708)<br>
&gt; ERROR: Logfile of failure stored in: /1.0.0-r0/temp/log.do_compile.870=
8<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | ERROR: python setup.py build execution failed.<br>
&gt; | /usr/lib/python2.7/distutils/dist.py:267: UserWarning: Unknown<br>
&gt; distribution option: &#39;python_requires&#39;<br>
&gt; |=C2=A0 =C2=A0warnings.warn(msg)<br>
&gt; | lapack_opt_info:<br>
&gt; | openblas_lapack_info:<br>
&gt; |=C2=A0 =C2=A0libraries openblas not found in [&#39;/usr/lib&#39;]<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | lapack_mkl_info:<br>
&gt; | mkl_info:<br>
&gt; |=C2=A0 =C2=A0libraries mkl,vml,guide not found in [&#39;/usr/lib&#39;=
]<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | atlas_3_10_threads_info:<br>
&gt; | Setting PTATLAS=3DATLAS<br>
&gt; |=C2=A0 =C2=A0libraries tatlas,tatlas not found in /usr/lib<br>
&gt; |=C2=A0 =C2=A0libraries lapack_atlas not found in /usr/lib<br>
&gt; | &lt;class &#39;numpy.distutils.system_info.atlas_3_10_threads_info&#=
39;&gt;<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | atlas_3_10_info:<br>
&gt; |=C2=A0 =C2=A0libraries satlas,satlas not found in /usr/lib<br>
&gt; |=C2=A0 =C2=A0libraries lapack_atlas not found in /usr/lib<br>
&gt; | &lt;class &#39;numpy.distutils.system_info.atlas_3_10_info&#39;&gt;<=
br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | atlas_threads_info:<br>
&gt; | Setting PTATLAS=3DATLAS<br>
&gt; |=C2=A0 =C2=A0libraries ptf77blas,ptcblas,atlas not found in /usr/lib<=
br>
&gt; |=C2=A0 =C2=A0libraries lapack_atlas not found in /usr/lib<br>
&gt; | &lt;class &#39;numpy.distutils.system_info.atlas_threads_info&#39;&g=
t;<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | atlas_info:<br>
&gt; |=C2=A0 =C2=A0libraries f77blas,cblas,atlas not found in /usr/lib<br>
&gt; |=C2=A0 =C2=A0libraries lapack_atlas not found in /usr/lib<br>
&gt; | &lt;class &#39;numpy.distutils.system_info.atlas_info&#39;&gt;<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; |=C2=A0 /usr/lib/python2.7/site-packages/numpy/distutils/system_info.p=
y:1510:<br>
&gt; UserWarning:<br>
&gt; |=C2=A0 =C2=A0 =C2=A0Atlas (<a href=3D"http://math-atlas.sourceforge.n=
et/" rel=3D"noreferrer" target=3D"_blank">http://math-atlas.sourceforge.net=
/</a>) libraries not found.<br>
&gt; |=C2=A0 =C2=A0 =C2=A0Directories to search for the libraries can be sp=
ecified in the<br>
&gt; |=C2=A0 =C2=A0 =C2=A0numpy/distutils/site.cfg file (section [atlas]) o=
r by setting<br>
&gt; |=C2=A0 =C2=A0 =C2=A0the ATLAS environment variable.<br>
&gt; |=C2=A0 =C2=A0warnings.warn(AtlasNotFoundError.__doc__)<br>
&gt; | lapack_info:<br>
&gt; |=C2=A0 =C2=A0libraries lapack not found in [&#39;/usr/lib&#39;]<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | /usr/lib/python2.7/site-packages/numpy/distutils/system_info.py:1521=
:<br>
&gt; UserWarning:<br>
&gt; |=C2=A0 =C2=A0 =C2=A0Lapack (<a href=3D"http://www.netlib.org/lapack/"=
 rel=3D"noreferrer" target=3D"_blank">http://www.netlib.org/lapack/</a>) li=
braries not found.<br>
&gt; |=C2=A0 =C2=A0 =C2=A0Directories to search for the libraries can be sp=
ecified in the<br>
&gt; |=C2=A0 =C2=A0 =C2=A0numpy/distutils/site.cfg file (section [lapack]) =
or by setting<br>
&gt; |=C2=A0 =C2=A0 =C2=A0the LAPACK environment variable.<br>
&gt; |=C2=A0 =C2=A0warnings.warn(LapackNotFoundError.__doc__)<br>
&gt; | lapack_src_info:<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | /usr/lib/python2.7/site-packages/numpy/distutils/system_info.py:1524=
:<br>
&gt; UserWarning:<br>
&gt; |=C2=A0 =C2=A0 =C2=A0Lapack (<a href=3D"http://www.netlib.org/lapack/"=
 rel=3D"noreferrer" target=3D"_blank">http://www.netlib.org/lapack/</a>) so=
urces not found.<br>
&gt; |=C2=A0 =C2=A0 =C2=A0Directories to search for the sources can be spec=
ified in the<br>
&gt; |=C2=A0 =C2=A0 =C2=A0numpy/distutils/site.cfg file (section [lapack_sr=
c]) or by setting<br>
&gt; |=C2=A0 =C2=A0 =C2=A0the LAPACK_SRC environment variable.<br>
&gt; |=C2=A0 =C2=A0warnings.warn(LapackSrcNotFoundError.__doc__)<br>
&gt; |=C2=A0 =C2=A0NOT AVAILABLE<br>
&gt; |<br>
&gt; | Running from scipy source directory.<br>
&gt; | Traceback (most recent call last):<br>
&gt; |=C2=A0 =C2=A0File &quot;setup.py&quot;, line 418, in &lt;module&gt;<b=
r>
&gt; |=C2=A0 =C2=A0 =C2=A0setup_package()<br>
&gt; |=C2=A0 =C2=A0File &quot;setup.py&quot;, line 414, in setup_package<br=
>
&gt; |=C2=A0 =C2=A0 =C2=A0setup(**metadata)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-packages/numpy/distut=
ils/core.py&quot;, line<br>
&gt; 135, in setup<br>
&gt; |=C2=A0 =C2=A0 =C2=A0config =3D configuration()<br>
&gt; |=C2=A0 =C2=A0File &quot;setup.py&quot;, line 336, in configuration<br=
>
&gt; |=C2=A0 =C2=A0 =C2=A0config.add_subpackage(&#39;scipy&#39;)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-packages/numpy/distut=
ils/misc_util.py&quot;,<br>
&gt; line 1003, in add_subpackage<br>
&gt; |=C2=A0 =C2=A0 =C2=A0caller_level =3D 2)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-packages/numpy/distut=
ils/misc_util.py&quot;,<br>
&gt; line 972, in get_subpackage<br>
&gt; |=C2=A0 =C2=A0 =C2=A0caller_level =3D caller_level + 1)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-packages/numpy/distut=
ils/misc_util.py&quot;,<br>
&gt; line 909, in _get_configuration_from_setup_py<br>
&gt; |=C2=A0 =C2=A0 =C2=A0config =3D setup_module.configuration(*args)<br>
&gt; |=C2=A0 =C2=A0File &quot;scipy/setup.py&quot;, line 15, in configurati=
on<br>
&gt; |=C2=A0 =C2=A0 =C2=A0config.add_subpackage(&#39;linalg&#39;)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-packages/numpy/distut=
ils/misc_util.py&quot;,<br>
&gt; line 1003, in add_subpackage<br>
&gt; |=C2=A0 =C2=A0 =C2=A0caller_level =3D 2)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-packages/numpy/distut=
ils/misc_util.py&quot;,<br>
&gt; line 972, in get_subpackage<br>
&gt; |=C2=A0 =C2=A0 =C2=A0caller_level =3D caller_level + 1)<br>
&gt; |=C2=A0 =C2=A0File &quot;/usr/lib/python2.7/site-packages/numpy/distut=
ils/misc_util.py&quot;,<br>
&gt; line 909, in _get_configuration_from_setup_py<br>
&gt; |=C2=A0 =C2=A0 =C2=A0config =3D setup_module.configuration(*args)<br>
&gt; |=C2=A0 =C2=A0File &quot;scipy/linalg/setup.py&quot;, line 19, in conf=
iguration<br>
&gt; |=C2=A0 =C2=A0 =C2=A0raise NotFoundError(&#39;no lapack/blas resources=
 found&#39;)<br>
&gt; | numpy.distutils.system_info.NotFoundError: no lapack/blas resources =
found<br>
&gt; | ERROR: Function failed: do_compile (log file is located at<br>
&gt; /scipy/1.0.0-r0/temp/log.do_compile.8708)<br>
&gt; ERROR: Task<br>
&gt; (/sources/meta-openembedded/meta-python/recipes-devtools/python/scipy_=
1.0.0.bb:do_compile)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 8394 tasks of which 8382 didn&#39;t nee=
d to be<br>
&gt; rerun and 1 failed.<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Mar 16, 2018 at 6:36 PM, Burton, Ross &lt;<a href=3D"mailto:ro=
ss.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:=
<br>
&gt;<br>
&gt;&gt; To change the version, change the filename of the recipe.<br>
&gt;&gt;<br>
&gt;&gt; Also, please remember the CC the list.<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;&gt;<br>
&gt;&gt; On 16 March 2018 at 17:30, Peter Balazovic &lt;<a href=3D"mailto:b=
alazovic.peter@gmail.com" target=3D"_blank">balazovic.peter@gmail.com</a>&g=
t;<br>
&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; I did download from <a href=3D"https://github.com/scipy/scipy/=
archive/v1.0.0.tar.gz" rel=3D"noreferrer" target=3D"_blank">https://github.=
com/scipy/scipy/archive/v1.0.0.tar.gz</a><br>
&gt;&gt;&gt; and cc to /downloads and same still issue ...<br>
&gt;&gt;&gt; as mentioned=C2=A0 should be version is 1.0.0<br>
&gt;&gt;&gt; where to change it to point to correct version &amp; file?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Fri, Mar 16, 2018 at 5:57 PM, Burton, Ross &lt;<a href=3D"m=
ailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt=
;<br>
&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; You&#39;re getting a &quot;file not found&quot; for the UR=
L it is looking for.<br>
&gt;&gt;&gt;&gt; According to <a href=3D"https://pypi.python.org/pypi/scipy=
" rel=3D"noreferrer" target=3D"_blank">https://pypi.python.org/pypi/scipy</=
a>, the version is 1.0.0<br>
&gt;&gt;&gt;&gt; not 1.0.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Ross<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 16 March 2018 at 16:50, Peter Balazovic &lt;<a href=3D"=
mailto:balazovic.peter@gmail.com" target=3D"_blank">balazovic.peter@gmail.c=
om</a>&gt;<br>
&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; per using recipe <a href=3D"https://github.com/scipy/s=
cipy/issues/8226" rel=3D"noreferrer" target=3D"_blank">https://github.com/s=
cipy/scipy/issues/8226</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; SUMMARY =3D &quot;Scientific Library for Python&quot;<=
br>
&gt;&gt;&gt;&gt;&gt; SECTION =3D &quot;devel/python&quot;<br>
&gt;&gt;&gt;&gt;&gt; HOMEPAGE =3D &quot;<a href=3D"https://pypi.python.org/=
pypi/scipy" rel=3D"noreferrer" target=3D"_blank">https://pypi.python.org/py=
pi/scipy</a>&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; LICENSE =3D &quot;BSD-3-Clause&quot;<br>
&gt;&gt;&gt;&gt;&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE.txt;md5=3Dd0=
db8f4148a3d5534cfb93be78f9287c&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; PYPI_PACKAGE=3D&quot;scipy&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; SRC_URI[md5sum] =3D &quot;53fa34bd3733a9a4216842b6000f=
7316&quot;<br>
&gt;&gt;&gt;&gt;&gt; SRC_URI[sha256sum] =3D &quot;87ea1f11a0e9ec08c264dc645=
51d501fa307289460705f6fccd84cbfc7926d10&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; inherit pypi setuptools distutils<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; RDEPENDS_${PN} +=3D &quot;python-core python-numpy-nat=
ive python-distutils&quot;<br>
&gt;&gt;&gt;&gt;&gt; DEPENDS +=3D &quot;python-numpy&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; I am getting error to fetch scipy do_fetch error<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; WARNING: scipy-1.0-r0 do_fetch: Failed to fetch URL<br=
>
&gt;&gt;&gt;&gt;&gt; <a href=3D"https://files.pythonhosted.org/packages/sou=
rce/s/scipy/scipy-1.0.tar.gz" rel=3D"noreferrer" target=3D"_blank">https://=
files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar.gz</a>,<br>
&gt;&gt;&gt;&gt;&gt; attempting MIRRORS if available<br>
&gt;&gt;&gt;&gt;&gt; ERROR: scipy-1.0-r0 do_fetch: Fetcher failure: Fetch c=
ommand export<br>
&gt;&gt;&gt;&gt;&gt; DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:abstract=3D/tmp/=
dbus-idNNJsmT3C&quot;; export<br>
&gt;&gt;&gt;&gt;&gt; SSH_AUTH_SOCK=3D&quot;/run/user/1000/keyring/ssh&quot;=
; export ftp_proxy=3D<br>
&gt;&gt;&gt;&gt;&gt; --progress=3Ddot -v failed with exit code 8, output:<b=
r>
&gt;&gt;&gt;&gt;&gt; --2018-03-16 17:43:34--=C2=A0 <a href=3D"https://files=
.pythonhosted.org" rel=3D"noreferrer" target=3D"_blank">https://files.pytho=
nhosted.org</a><br>
&gt;&gt;&gt;&gt;&gt; /packages/source/s/scipy/scipy-1.0.tar.gz<br>
&gt;&gt;&gt;&gt;&gt; Resolving <a href=3D"http://files.pythonhosted.org" re=
l=3D"noreferrer" target=3D"_blank">files.pythonhosted.org</a> (<a href=3D"h=
ttp://files.pythonhosted.org" rel=3D"noreferrer" target=3D"_blank">files.py=
thonhosted.org</a>)...<br>
&gt;&gt;&gt;&gt;&gt; 151.101.17.63, 2a04:4e42:4::319<br>
&gt;&gt;&gt;&gt;&gt; Connecting to <a href=3D"http://files.pythonhosted.org=
" rel=3D"noreferrer" target=3D"_blank">files.pythonhosted.org</a> (<a href=
=3D"http://files.pythonhosted.org" rel=3D"noreferrer" target=3D"_blank">fil=
es.pythonhosted.org</a>)|151.101.17.63|:443...<br>
&gt;&gt;&gt;&gt;&gt; connected.<br>
&gt;&gt;&gt;&gt;&gt; HTTP request sent, awaiting response... 404 Not Found<=
br>
&gt;&gt;&gt;&gt;&gt; 2018-03-16 17:43:35 ERROR 404: Not Found.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Any help?<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Thu, Mar 15, 2018 at 9:35 PM, Randy MacLeod &lt;<br=
>
&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:randy.macleod@windriver.com" target=
=3D"_blank">randy.macleod@windriver.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; On 2018-03-15 01:56 PM, Peter Balazovic wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Hello all,<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; I wonder if there is scipy recipe available?<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Not yet:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"https://layers.openembedded.org/layerin=
dex/branch/master/rec" rel=3D"noreferrer" target=3D"_blank">https://layers.=
openembedded.org/layerindex/branch/master/rec</a><br>
&gt;&gt;&gt;&gt;&gt;&gt; ipes/?q=3Dscipy<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; It appears to be blocked by:<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 <a href=3D"https://github.com/scipy/s=
cipy/issues/8226" rel=3D"noreferrer" target=3D"_blank">https://github.com/s=
cipy/scipy/issues/8226</a><br>
&gt;&gt;&gt;&gt;&gt;&gt; but apparently that&#39;s a bitbake issue, not a s=
pip one.<br>
&gt;&gt;&gt;&gt;&gt;&gt; Care to take a look?<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thanks.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt;&gt;&gt; # Randy MacLeod.=C2=A0 WR Linux<br>
&gt;&gt;&gt;&gt;&gt;&gt; # Wind River an Intel Company<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_b=
lank">yocto@yoctoproject.org</a><br>
&gt;&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yoc=
to" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/lis=
tinfo/yocto</a><br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--000000000000ad4bce05678bd83a--
