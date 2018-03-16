Return-Path: <giordon.holtsberg.stark@cern.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08596E0084E; Fri, 16 Mar 2018 14:36:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.83 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0083.outbound.protection.outlook.com [104.47.2.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA366E0073D
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 14:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cern.onmicrosoft.com; 
	s=selector1-cern-ch;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Ni0qkZioswSTHhykoQnM/aozQ6w8UBMcAMQAo1K4v84=;
	b=IKrIMEFGLT6VLaVm7g24YHpzvXJsqNnCzh7o4lQZjzjUFbMVTGK+jxA+t+KClZuAuyF78v6QaDNMOYXAoWHWFz1h8Z8gQvfRcJPmSUO/WZPCE9Xr4InXkyBGbC9j3xJ3vFIv19EXftfCZB2uR/gXwEej5BAdqMnJPFswW9zXyQ0=
Received: from AM5PR0601CA0041.eurprd06.prod.outlook.com
	(2603:10a6:203:68::27) by AM4PR0601MB2179.eurprd06.prod.outlook.com
	(2603:10a6:200:48::6) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.567.14;
	Fri, 16 Mar 2018 16:56:19 +0000
Received: from VE1EUR02FT058.eop-EUR02.prod.protection.outlook.com
	(2a01:111:f400:7e06::209) by AM5PR0601CA0041.outlook.office365.com
	(2603:10a6:203:68::27) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.588.14 via
	Frontend Transport; Fri, 16 Mar 2018 16:56:19 +0000
Authentication-Results: spf=pass (sender IP is 188.184.36.50)
	smtp.mailfrom=cern.ch; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=cern.ch;
Received-SPF: Pass (protection.outlook.com: domain of cern.ch designates
	188.184.36.50 as permitted sender) receiver=protection.outlook.com;
	client-ip=188.184.36.50; helo=cernmxgwlb4.cern.ch;
Received: from cernmxgwlb4.cern.ch (188.184.36.50) by
	VE1EUR02FT058.mail.protection.outlook.com (10.152.13.52) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P256) id
	15.20.527.22 via Frontend Transport; Fri, 16 Mar 2018 16:56:19 +0000
Received: from cernfe02.cern.ch (188.184.36.47) by cernmxgwlb4.cern.ch
	(188.184.36.50) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Fri, 16 Mar 2018 17:56:14 +0100
Received: from mail-it0-f54.google.com (209.85.214.54) by smtp.cern.ch
	(188.184.36.52) with Microsoft SMTP Server (TLS) id 14.3.319.2;
	Fri, 16 Mar 2018 17:56:12 +0100
Received: by mail-it0-f54.google.com with SMTP id y20-v6so2860754itc.5
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:56:13 -0700 (PDT)
X-Gm-Message-State: AElRT7HoOPsB5fetW9bhCWR9N5XCZoALolRT8RMqvlvnLB5eevLyIz18
	FU3bf1txbSYlHxruZl6FL8K8/m6UHF3ohzok/QQ=
X-Google-Smtp-Source: AG47ELspFP+HuLAR9in4Hz7ycrLtzIthg47L6KjmphL4E87kshExOpvlNzkf59UtTAjpcGmMFd05o+iHF5JeqeqzJk4=
X-Received: by 2002:a24:4115:: with SMTP id
	x21-v6mr2950252ita.146.1521219371379; 
	Fri, 16 Mar 2018 09:56:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<3fbaa987-5050-9663-b140-0520ebbaec39@windriver.com>
	<CAFq4t4idwKwkdsCY+DtTu7vJyQcB5eF8dYf9mqeSx-eZCd8iYA@mail.gmail.com>
In-Reply-To: <CAFq4t4idwKwkdsCY+DtTu7vJyQcB5eF8dYf9mqeSx-eZCd8iYA@mail.gmail.com>
From: Giordon Stark <gstark@cern.ch>
Date: Fri, 16 Mar 2018 16:56:01 +0000
X-Gmail-Original-Message-ID: <CAFzUWGmNxOQPEFeiWsb65pY=s1DDSe=nugyMA5H+UiR2ESWZqQ@mail.gmail.com>
Message-ID: <CAFzUWGmNxOQPEFeiWsb65pY=s1DDSe=nugyMA5H+UiR2ESWZqQ@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
X-Originating-IP: [209.85.214.54]
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:188.184.36.50; IPV:NLI; CTRY:CH; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(979002)(376002)(39380400002)(39860400002)(396003)(346002)(2980300002)(438002)(199004)(189003)(377424004)(54094003)(53754006)(236005)(33964004)(76176011)(93516011)(498394004)(84326002)(53386004)(9686003)(61726006)(6306002)(7636002)(305945005)(6246003)(106002)(5660300001)(61266001)(59536001)(2950100002)(53546011)(966005)(98316002)(33896004)(6666003)(8936002)(246002)(8576002)(26005)(606006)(8676002)(59450400001)(478600001)(186003)(4326008)(6116002)(3846002)(2906002)(74482002)(6862004)(106466001)(229853002)(95326003)(54906003)(55446002)(575784001)(356003)(66066001)(336012)(16586007)(316002)(786003)(7736002)(42186006)(55456009)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR0601MB2179;
	H:cernmxgwlb4.cern.ch; FPR:; SPF:Pass; PTR:cernmx11.cern.ch; A:1;
	MX:1; LANG:en; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f78e93be-165e-4dd2-9de8-08d58b5ed73a
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4604075)(4608076)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:AM4PR0601MB2179; 
X-MS-TrafficTypeDiagnostic: AM4PR0601MB2179:|AM4PR0601MB2179:
X-Microsoft-Exchange-Diagnostics: 1; AM4PR0601MB2179;
	20:in3IbyPzy6N6HE/iXC8zZHYY8pG/uCKx8opZm/xbQnzXQ/YZEmUVfw7EuaDrSPY7cXMfh7uL5aYJ8mj6XOu4m0qARy2VOoX91D8eFXm/61f56VhsRv2zU/kGd7Z50sZ5S9fLzhF5MafyMpkRBHo2Xfq1P1107k7FQGM0u4KRgGuBBitqMJToz3K48Aht8lu1z24OLxFU8pUr5uJiFuRprstfORbhvcre1LEfH71dLqhaJVuYghhZu0TPw7tvzs5yZXWKIYnouU4lA1ekHeXVa7UT7Do5fl0cXdRlcsPAm0zTPFC/1PmKw+9tkKgNYw6JCf33IEw7vLmxYzelA6JCyrZiPMbyzOnAT3z7NgZtSn/+ZAxdfr4ayF2lW5RqgEd9dCVHNps322G6YVJFa+0OPjmziNH98tI8UR/nu5JBtE2c0K0Ez2eYcD/iVSVvP4jTRhuEdCH850DtacdIezugt8QQfaDBdKTAnLV8LEC/ogfcVa65RocsALXJB96outva;
	4:l+3sHIl45OAwB7JV4BCWZvBdA1t+KraCExN41uFU5XlLA8xxMPWKnMkbZ7KwoaaOKL/eqxVZ29wSJtax0jMnxREyV0W/wwcDuP/rTsf8GvKw4gZQtf7ArwY60STEVo+iZy1H1Nki2tgiSIxlW6W8lQzn/w4M8ZDo2yqCLYBWEDlbm5ZiLBkuJjSa0bq6owfOz8koCChcxw5X3jrfZENjzSz+Ia4ADPflr2XVuUoG3EbLgtNXKluqNgDPGuYyHvmfVV5UOdAQHo9v2ywX7oZam3iqYAKOaovEtIfY8Y+Qhbo4o7GUlPCW+pdBkeCT/yJFSa1zPHMtCHygZEUT802PlWHIsYMyXbDqFni8c57ypg0+fNO3VSPywmwYn7xSvld0
X-Microsoft-Antispam-PRVS: <AM4PR0601MB21792713BDCD2A732401AF97B2D70@AM4PR0601MB2179.eurprd06.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(166708455590820)(85827821059158)(251646265452963); 
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3231221)(944501244)(52105095)(3002001)(93006095)(93004095)(10201501046)(6041310)(201703131423095)(201702281529075)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123560045)(20161123564045)(20161123558120)(6072148)(201708071742011);
	SRVR:AM4PR0601MB2179; BCL:0; PCL:0; RULEID:;
	SRVR:AM4PR0601MB2179; 
X-Forefront-PRVS: 0613912E23
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; AM4PR0601MB2179;
	23:IiRLBUDipzoQa6jAtv1y8GS4T6I+KYFE8IJSq5i?=
	=?us-ascii?Q?xwBwp90JDmXetE47V6lIBdJoUAPqQ1/e39QH7QzrhmmnZlYdzkut/pSLxiHx?=
	=?us-ascii?Q?XCWT5OvFd438tsfZtaLEt11OUsxqtYvwb3N/Qw9irRFS4acyQMZNS+EBcuF2?=
	=?us-ascii?Q?N1QERuWssMTFyAPeswSxEfHCWgD8pZIkQOnzdZIOrZWnPB1qUyxnSupEwoZk?=
	=?us-ascii?Q?mztzw9L+KSRPx4CJY0LeGFXx3kP/X12EdtOLmAu+P8HwHjZ1wGxmeUzpNncy?=
	=?us-ascii?Q?Dpc5kVe+XrPBc4TdWbgM/Knb333C7yPrW4loBD+IEYMScJruo6mwTSM5UX7v?=
	=?us-ascii?Q?2L5nDv2kgTL+iF8cl9VP93atseb3B4wTjVXvLUN03XdjnGQBdwIh+nNM5JkA?=
	=?us-ascii?Q?ya+MHODtGfkP8wPRXLIwCJ5w1gJHNNn2AKqzebv9Z5+UZ7fAcd6sh7VXg8WS?=
	=?us-ascii?Q?Cn2oHa9wpKqBmd897jBixnLhJSBTrmQy73mAeHgAcPPMJJFdPzQKUi8r+eYb?=
	=?us-ascii?Q?rnZTh46hqzPtzYl0I2QzE/klTI5ht1bOZWGw8deIXIPXma5LdQ5gBWeTKeSk?=
	=?us-ascii?Q?i5dxWhu8NJvY8fSjFd7q52Nh+WlKOS5BaVtd2LwGnhCapm6Iy0k5nKC3V12k?=
	=?us-ascii?Q?9eY/behSNMs72RXK4dd9xsS32Cme7g9JG6O/8e9MZXodW2c9tt0J65lBk1NR?=
	=?us-ascii?Q?tbRlfDXrFkHo8VZ5LTqqtG7m0cJG38XktZZiuqC0/WeKE3bOJdZx2wQHMBVC?=
	=?us-ascii?Q?2k83VAchVTtrj9z6Qr8e8YaRsoUyKDRrl/BH4aA7DAevhdP68JlJ3H2W8CrG?=
	=?us-ascii?Q?EVTI8jJEhZQQJrFwbNtEaPh6lMC0QFQhgo1qu48+eyRuduG9bNRSozLQRCEV?=
	=?us-ascii?Q?ehsXNq+/uWnFZlYIb6toFTyA/OT39tqXRSGFEFfU7YN2EqdcJIrvGfwv/iD8?=
	=?us-ascii?Q?EpNCLsN2S/gB1X+8hQT0QSoipUWYCA1YyuD7tg/MfLdb8qase1iqF6BRAbL8?=
	=?us-ascii?Q?Zq0uJFBjEI5A3RwnaEOi7gyBkNLH5XTCCGKyvZgi+CinKeQvAYRBP9xxEFCp?=
	=?us-ascii?Q?/Sa9r6/z/CP0luWsAg+Y3T9VT12CCJFFgSmcMdqI8eCjmzxyycTceIw3kGEr?=
	=?us-ascii?Q?iv2Dd3Igzb7/6ApPtevUF4X4yHdoDdPkS+26LGhcckJe2ZondvzSrG1NVIBK?=
	=?us-ascii?Q?rYSWQdf30slYLFQ29AqwScPj5/edG/nTJB7k0xrweuneSbTPdMJGUKP/WHO+?=
	=?us-ascii?Q?kl5+pxLvNrWHI8Y6dTadKQ9DMjtdf4ye1Ip2MAP/5WWk9lFMoeBElf8rJCza?=
	=?us-ascii?Q?+u7D7J27efy/gUO1I70STLSdKYvghlWEfRz8heL0y3xuAbWMs+phqVbZwSeg?=
	=?us-ascii?Q?yGfriuNj3RbhVuN7F0Vb2u01hz5e83IcWrADfAiPGS3XbAOnh8kzffJKQ80k?=
	=?us-ascii?Q?HfQuowZzR7dL8ObtLVWPg9oevqNoaxxyX9MFrg7bZ7e/Y4miI6qtVv/oXiK4?=
	=?us-ascii?Q?Cqw6OOKXXLvjzOs1s8uCqL33o3Nttj6gyyif8dt3MNnC6Dnv8rycbTBxTd+s?=
	=?us-ascii?Q?JoQI4vRXQJLdIVDO+OQ=3D=3D?=
X-Microsoft-Antispam-Message-Info: 86kHoacBJ90FATT8bwgNjB8eKH5RteWf+EHMaSvaBM/xjwnpsrLcVnkYALYHD92DfXeLBzIuSeNC1Qj8tgo/5ySvSnpJz1uAQiLRm8mXv9H0W0Ks3BiT8OHlwQJBZO6497uckj9SEuKB7UyG3hRfkxBTwrHJ7dYBxyG/8YSaayQZ1O7n2pPSBIpYfO3yR2nf
X-Microsoft-Exchange-Diagnostics: 1; AM4PR0601MB2179;
	6:5vRBvb7bux068k4pTQYmWa8zxLKdjIbWdoIMXyn/MEzPE3K4X/4NSTTeItYrE/OFTO4VJazz/9AzZTQPZf4h6dt1Enwz3fI/rWQRoq/PA9K9gxrrIQIiFAH3esrg11XGMsPWWLFf8cz2vFKLzFD9MeuaTOPFxsHCKbI11nFjgyLXHrnpG/kCqbLa601iN9/XoHV/UdTS6jrVauhW8aInsuEH29A4qkpbBOQbrxgDRa9AmdVL9TGuJyqN967i9ijjmXsG2hu8LXSiYzM0zXj7vl+M7emqCuDgi/yViPZLc+nvgSVSVUF47E6e0DPuN8+mOtgqH39oWX5bGrniFJelYLUSEF4/2qa8yt/yrdiLEbc=;
	5:mEuCRpTc+MDqHElKZ+7s51wMMLR8UJlClTLZOGT0zTtWGTt0EuFdBd/8U95sGylMmKNNFtpREBXtD4m2HNtDTL4VSmgqsvUz1N+9YOPURDbZTI5y1S1/iSL815ZP/XWP3k6KhSrBFTMqRPWQpasLYInh3sa0jrm5rJjKwXi4+E4=;
	24:8jbQBzhX3Us1eqWk1FDkpWb+WqOas9HbyQjdQVJg7GLaS9H0qGk3cpIjklWlVpaJmgxTCEHVhgs87ENfRdAl/2VZaGyY1FrENLQAKkUkqv0=;
	7:iIUAonP++tB+Aq/nUwGFAGo7T/WsX6Nk3O+ZtacIiRFiK+GTCTaLfO2lB0H9TwxwxY91cVirRYlPQZjcaS2OFCw8YLrvihamnLT2KiWSsCvsl45phaArIYosS5K8562UG5vXdbfO16Afcnc5e0Ncb7hdUAWHRoM2ltZyq8lBf/aqsFAHWD8o2Hlh5ZxsBarZ0ucVSH1bNMylAVGDo3RXU8jMip/tUavEOk4Mnwxvnw92s42vd4NvINcx6zwnFcXk
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2018 16:56:19.4110 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f78e93be-165e-4dd2-9de8-08d58b5ed73a
X-MS-Exchange-CrossTenant-Id: c80d3499-4a40-4a8c-986e-abce017d6b19
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=c80d3499-4a40-4a8c-986e-abce017d6b19;
	Ip=[188.184.36.50]; Helo=[cernmxgwlb4.cern.ch]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0601MB2179
X-Microsoft-Exchange-Diagnostics: 1; AM4PR0601MB2179;
	23:rRjiXz0zVW6Nut4Jgf5jwLMGL3vFLKBABrmlMfIj9R5jJon4/Sj7e/n2TL6X7US/4NGSgLv5AmYWMeCoJPXCcZzFE9Ayclas7w79o7XNuSOhn3ji9q7jYIn67ocMT9vT1lB6zZQDPbMSwm6/iCMJAg==
X-OriginatorOrg: cern.ch
Cc: Yocto list discussion <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 16 Mar 2018 21:36:56 -0000
Content-Type: multipart/alternative; boundary="00000000000041b2b605678a7c57"

--00000000000041b2b605678a7c57
Content-Type: text/plain; charset="UTF-8"

Seems like the SRC_URI isn't correct. I don't see an obvious place to get
tarballs for scipy except from github (and I know that tends to not be
reliable but...)

https://github.com/scipy/scipy/archive/v1.0.0.tar.gz

Giordon

On Fri, Mar 16, 2018 at 11:51 AM Peter Balazovic <balazovic.peter@gmail.com>
wrote:

> per using recipe https://github.com/scipy/scipy/issues/8226
>
>
> SUMMARY = "Scientific Library for Python"
> SECTION = "devel/python"
> HOMEPAGE = "https://pypi.python.org/pypi/scipy"
>
> LICENSE = "BSD-3-Clause"
> LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=d0db8f4148a3d5534cfb93be78f9287c"
>
> PYPI_PACKAGE="scipy"
>
> SRC_URI[md5sum] = "53fa34bd3733a9a4216842b6000f7316"
> SRC_URI[sha256sum] = "87ea1f11a0e9ec08c264dc64551d501fa307289460705f6fccd84cbfc7926d10"
>
> inherit pypi setuptools distutils
>
> RDEPENDS_${PN} += "python-core python-numpy-native python-distutils"
> DEPENDS += "python-numpy"
>
>
> I am getting error to fetch scipy do_fetch error
>
>
> WARNING: scipy-1.0-r0 do_fetch: Failed to fetch URL
> https://files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar.gz,
> attempting MIRRORS if available
> ERROR: scipy-1.0-r0 do_fetch: Fetcher failure: Fetch command export
> DBUS_SESSION_BUS_ADDRESS="unix:abstract=/tmp/dbus-idNNJsmT3C"; export
> SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"; export ftp_proxy=
> --progress=dot -v failed with exit code 8, output:
> --2018-03-16 17:43:34--
> https://files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar.gz
> Resolving files.pythonhosted.org (files.pythonhosted.org)...
> 151.101.17.63, 2a04:4e42:4::319
> Connecting to files.pythonhosted.org (files.pythonhosted.org)|151.101.17.63|:443...
> connected.
> HTTP request sent, awaiting response... 404 Not Found
> 2018-03-16 17:43:35 ERROR 404: Not Found.
>
> Any help?
>
>
> On Thu, Mar 15, 2018 at 9:35 PM, Randy MacLeod <
> randy.macleod@windriver.com> wrote:
>
>> On 2018-03-15 01:56 PM, Peter Balazovic wrote:
>>
>>> Hello all,
>>>
>>> I wonder if there is scipy recipe available?
>>>
>>
>> Not yet:
>>
>> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=scipy
>>
>> It appears to be blocked by:
>>    https://github.com/scipy/scipy/issues/8226
>> but apparently that's a bitbake issue, not a spip one.
>> Care to take a look?
>>
>>
>>> Thanks.
>>>
>>>
>>>
>>
>> --
>> # Randy MacLeod.  WR Linux
>> # Wind River an Intel Company
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
-- 
Giordon Stark

--00000000000041b2b605678a7c57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Seems like the SRC_URI isn&#39;t correct. I don&#39;t see =
an obvious place to get tarballs for scipy except from github (and I know t=
hat tends to not be reliable but...)<div><br></div><div><a href=3D"https://=
github.com/scipy/scipy/archive/v1.0.0.tar.gz">https://github.com/scipy/scip=
y/archive/v1.0.0.tar.gz</a>=C2=A0<br></div><div><br></div><div>Giordon</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Mar 16, 2018=
 at 11:51 AM Peter Balazovic &lt;<a href=3D"mailto:balazovic.peter@gmail.co=
m">balazovic.peter@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr">per using recipe=C2=A0<a href=3D"https://github.c=
om/scipy/scipy/issues/8226" target=3D"_blank">https://github.com/scipy/scip=
y/issues/8226</a>=C2=A0<div><br><div><br></div><div><pre style=3D"box-sizin=
g:border-box;font-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot=
;,Menlo,Courier,monospace;font-size:11.9px;margin-top:0px;margin-bottom:16p=
x;padding:16px;overflow:auto;line-height:1.45;background-color:rgb(246,248,=
250);border-radius:3px;color:rgb(36,41,46);font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;t=
ext-decoration-style:initial;text-decoration-color:initial"><code style=3D"=
box-sizing:border-box;font-family:SFMono-Regular,Consolas,&quot;Liberation =
Mono&quot;,Menlo,Courier,monospace;font-size:11.9px;padding:0px;margin:0px;=
background:transparent none repeat scroll 0% 0%;border-radius:3px;word-brea=
k:normal;white-space:pre-wrap;border:0px none;display:inline;overflow:visib=
le;line-height:inherit">SUMMARY =3D &quot;Scientific Library for Python&quo=
t;
SECTION =3D &quot;devel/python&quot;
HOMEPAGE =3D &quot;<a href=3D"https://pypi.python.org/pypi/scipy" target=3D=
"_blank">https://pypi.python.org/pypi/scipy</a>&quot;

LICENSE =3D &quot;BSD-3-Clause&quot;
LIC_FILES_CHKSUM =3D &quot;file://LICENSE.txt;md5=3Dd0db8f4148a3d5534cfb93b=
e78f9287c&quot;

PYPI_PACKAGE=3D&quot;scipy&quot;

SRC_URI[md5sum] =3D &quot;53fa34bd3733a9a4216842b6000f7316&quot;
SRC_URI[sha256sum] =3D &quot;87ea1f11a0e9ec08c264dc64551d501fa307289460705f=
6fccd84cbfc7926d10&quot;

inherit pypi setuptools distutils

RDEPENDS_${PN} +=3D &quot;python-core python-numpy-native python-distutils&=
quot;
DEPENDS +=3D &quot;python-numpy&quot;</code></pre><br></div><div>I am getti=
ng error to fetch scipy do_fetch error</div></div><div><br><br>WARNING: sci=
py-1.0-r0 do_fetch: Failed to fetch URL <a href=3D"https://files.pythonhost=
ed.org/packages/source/s/scipy/scipy-1.0.tar.gz" target=3D"_blank">https://=
files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar.gz</a>, attemp=
ting MIRRORS if available<br>ERROR: scipy-1.0-r0 do_fetch: Fetcher failure:=
 Fetch command export DBUS_SESSION_BUS_ADDRESS=3D&quot;unix:abstract=3D/tmp=
/dbus-idNNJsmT3C&quot;; export SSH_AUTH_SOCK=3D&quot;/run/user/1000/keyring=
/ssh&quot;; export ftp_proxy=3D<br>--progress=3Ddot -v failed with exit cod=
e 8, output:<br>--2018-03-16 17:43:34--=C2=A0 <a href=3D"https://files.pyth=
onhosted.org/packages/source/s/scipy/scipy-1.0.tar.gz" target=3D"_blank">ht=
tps://files.pythonhosted.org/packages/source/s/scipy/scipy-1.0.tar.gz</a><b=
r>Resolving <a href=3D"http://files.pythonhosted.org" target=3D"_blank">fil=
es.pythonhosted.org</a> (<a href=3D"http://files.pythonhosted.org" target=
=3D"_blank">files.pythonhosted.org</a>)... 151.101.17.63, 2a04:4e42:4::319<=
br>Connecting to <a href=3D"http://files.pythonhosted.org" target=3D"_blank=
">files.pythonhosted.org</a> (<a href=3D"http://files.pythonhosted.org" tar=
get=3D"_blank">files.pythonhosted.org</a>)|151.101.17.63|:443... connected.=
<br>HTTP request sent, awaiting response... 404 Not Found<br>2018-03-16 17:=
43:35 ERROR 404: Not Found.<br><br></div><div>Any help?<br></div><div><br><=
/div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu=
, Mar 15, 2018 at 9:35 PM, Randy MacLeod <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:randy.macleod@windriver.com" target=3D"_blank">randy.macleod@windrive=
r.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span>On 2018=
-03-15 01:56 PM, Peter Balazovic wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hello all,<br>
<br>
I wonder if there is scipy recipe available?<br>
</blockquote>
<br></span>
Not yet:<br>
<br>
<a href=3D"https://layers.openembedded.org/layerindex/branch/master/recipes=
/?q=3Dscipy" rel=3D"noreferrer" target=3D"_blank">https://layers.openembedd=
ed.org/layerindex/branch/master/recipes/?q=3Dscipy</a><br>
<br>
It appears to be blocked by:<br>
=C2=A0 =C2=A0<a href=3D"https://github.com/scipy/scipy/issues/8226" rel=3D"=
noreferrer" target=3D"_blank">https://github.com/scipy/scipy/issues/8226</a=
><br>
but apparently that&#39;s a bitbake issue, not a spip one.<br>
Care to take a look?<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Thanks.<br>
<br>
<br><span class=3D"m_-547532781023448028HOEnZb"><font color=3D"#888888">
</font></span></blockquote><span class=3D"m_-547532781023448028HOEnZb"><fon=
t color=3D"#888888">
<br>
<br>
-- <br>
# Randy MacLeod.=C2=A0 WR Linux<br>
# Wind River an Intel Company<br>
</font></span></blockquote></div><br></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--00000000000041b2b605678a7c57--
