Return-Path: <VINEETHC@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9467E00D95; Mon, 30 Oct 2017 02:27:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.78 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3635 seconds by postgrey-1.32 at yocto-www;
	Mon, 30 Oct 2017 02:27:23 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0078.outbound.protection.outlook.com [104.47.38.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 318E7E00D8C
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 02:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=4hTzYtFtag6R7Isjlnkh7t4kTZyr+tcr7TSdk+O/2vA=;
	b=Sd/vtpS0yk0GbGlw50URqx3/IrmYd7dg+Dpa1Tmjzyf9FQqLhoUs3Fh2zX0wYSEVojnBP7FyQBrq4AWg3kO5W5hdkpjSH3TmTSwCEMhdGt9U99MVEVxYgUpqGiB/qIJVG7RI3lavcLOipdH8puumi+S3qLlixHIKUbXJ7rzuysU=
Received: from MWHPR02CA0034.namprd02.prod.outlook.com (10.164.133.23) by
	CY4PR02MB3269.namprd02.prod.outlook.com (10.165.88.152) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.178.6; Mon, 30 Oct 2017 05:54:37 +0000
Received: from CY1NAM02FT004.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e45::202) by MWHPR02CA0034.outlook.office365.com
	(2603:10b6:301:60::23) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.178.6 via
	Frontend Transport; Mon, 30 Oct 2017 05:54:36 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
	smtp.mailfrom=xilinx.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.83 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
	CY1NAM02FT004.mail.protection.outlook.com (10.152.74.112) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.178.5
	via Frontend Transport; Mon, 30 Oct 2017 05:54:36 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1e931v-0008A7-Ph
	for yocto@yoctoproject.org; Sun, 29 Oct 2017 22:54:35 -0700
Received: from localhost ([127.0.0.1] helo=xsj-pvapsmtp01)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1e931v-0001lI-No
	for yocto@yoctoproject.org; Sun, 29 Oct 2017 22:54:35 -0700
Received: from [172.23.16.149] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <vineethc@xilinx.com>) id 1e931u-0001lF-It
	for yocto@yoctoproject.org; Sun, 29 Oct 2017 22:54:34 -0700
To: <yocto@yoctoproject.org>
From: Vineeth Karumanchi <vineethchowz.chowdary@xilinx.com>
Message-ID: <c48d8ea1-c618-dc24-6200-f7511f0e506d@xilinx.com>
Date: Mon, 30 Oct 2017 11:24:33 +0530
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.1.0.1062-23424.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(376002)(39860400002)(346002)(2980300002)(438002)(189002)(199003)(51874003)(53754006)(77096006)(54356999)(50986999)(65956001)(65806001)(36756003)(54896002)(478600001)(33646002)(31686004)(9786002)(356003)(106466001)(2351001)(72206003)(2906002)(37036004)(81166006)(81156014)(31696002)(84326002)(16586007)(58126008)(316002)(8676002)(8936002)(6916009)(83506002)(189998001)(106002)(231993002)(64126003)(65826007)(5660300001)(107986001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB3269; H:xsj-pvapsmtpgw01;
	FPR:; SPF:Pass; PTR:unknown-60-83.xilinx.com; MX:1; A:1; LANG:en;
X-Microsoft-Exchange-Diagnostics: 1; CY1NAM02FT004;
	1:IF6HV/6LlUNqsAec3tX3auYlkEb9PFFC561kDDp2CZwDZTdCRxDaLP1nGmVt8sFZ25ezenNwoWuNejF9oKD2euh/JK06rULsaJ5FMi3+RSr32QxR7x1Pf073YHNHqydV
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c5c7120f-f157-448b-d9a5-08d51f5ab3b6
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(8251501002)(4534020)(4602075)(2017052603199);
	SRVR:CY4PR02MB3269; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB3269;
	3:9mdP5stXeUk9KKBX4cSYVgSiZQN3P5GjJKWqz444K/OotKhemkkcCNqvmmftVFtovgzlHz8XhtaKC3pELUY2k1kYvsf64Weix1H9oC5wXW7LjXcjVLPmkpDvvCsjrZo0bNNZ8l4ML5v0WnrIKWZjI7rnGluMfl52KB/U79qhZbhpxOgy9+UkSWgVDsudTeoJDgzyW1hLkQoaehHvmpIMup/Oo+Ux9ker545hyvXZlHnS3Y+YQSrqRPJ9hr6KWT5DJsTcfsI9ceJ7PcQQ7vnxhLnUiotY4ZuRUzEjTlM0HuPxUdoyZItwonIWwgCabChA+grlh/WxlnUbGu6uCLc5BEzlVhiDC0hEAs7PQJ96OB4=;
	25:ylHrg08XB7ZLeNBo4XYIH3PTTAZ5YgG3PEuZdR+X6+ymhVz54tv+RcsCs9wdq21pMt0Kzsb5oRS6ZDulGINXjOZrYkgBUtaaL0fOjDZ3ACeJOyWUBAHp4MnUK3Aa8xWHiPprLfwM8JBgUX4e5qkLnagB7tVi5A6y2a6/qwSHnTqoOcqROMc9zI5m7UP3mT8L07qvR1HKJx8PiVS++3wn4o2FQzi7XrmJVq0/sCjZGcrKusGBs+VsrIfbA1mAdzEKINR3lLRQvdyvrr4JbdYUB+LowIyB/+U0f0L2O1wcE9I1cMz+xXn14YjE6Hu+t+1aMRi02LRXq3zZ1ahYQ79THg==
X-MS-TrafficTypeDiagnostic: CY4PR02MB3269:
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB3269;
	31:QeTqzEKQos5cMONQm0d4xSUDfFitAZC0igsjwpCOQPnBG20HlP/9ZxpEiCdvJE2b9KE7If69Eylz3dEAR9Xsu/SZheZNvozg0J0IpI0uLS0VecX91dcLqemgKzExMy4+JMiOKusu3eINPBZuPMTLjYxvIYML7IL/0q1cAjaPfBftfLKtiedP+pINhLAkGJXADWXPAxFIyNdaIOCRb57Bo2nwgjVspOdG07sBYX68y/Y=;
	20:KPLjSx1zmpF6LcgUxWTFML8P1WIUsZAEucQ508E24n35mOgjAkxhhnmwcpSEVENetdFZJXGp3O5Pio3rZh/UbiJEM5B/iWMn0QNbFeCZD6q0741X7S4vQFbfDH5S2F/sArV1kU3PD826eCfAE6N2frBlE5UAoh9mgwuivGmyQjqhSySUdsP41QDlxfH3D4yOnV03MLiyVd7Y6fhr4fRhmJaJRPv0e1MKtDQVkaPum/v7hYpgXJlQXw3nfCh9huDEmELvluezObeh+/3+zjD+arlP7bM74+ZWJq0IWxqbt5BgUm7cHGokdbyMZnVz3+vFi1ywanPQ3Rhz2Y/Oz7WGuDBKqHhbV5J7fwgQ61EA4I47HTRZkKUxFhlCmOY2A6m7ZBGjXcxy+9Fd/aL3bCoL5TLjVYYTaVMc5fU0NQQQlgS9d9qrReXcKMc05bl36EiGHlG2PRlWYSwH7EvKecJr7FeY2N8RD1dPM1VH2rZbEoC4zz+sq7+YuO9hODTKjim6
X-Exchange-Antispam-Report-Test: UriScan:;
X-Microsoft-Antispam-PRVS: <CY4PR02MB3269CBA0F96ACEEF31A05A7BB9590@CY4PR02MB3269.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(93006095)(93004095)(10201501046)(3231020)(3002001)(100000703101)(100105400095)(6055026)(6041248)(20161123562025)(20161123564025)(20161123555025)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CY4PR02MB3269; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CY4PR02MB3269; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB3269;
	4:E+/YkUsK9zippeizmFqnGgXZVoCYaUDTxtoq7ZvTIbaqZSgFs6zab7+mE6PNLH1OzoSiBKiJ/C74d3/Mz93XA764psoZ07DqzMb8COY7odtLaIcHwefKwYVDjqBpsG/fS6rG/X8XYcfUOd/D+GLnnSfmA4HrZJpBO6419dM8TFw6c2zHI5hkM1CLIVD7tIPJDPJniIyN3YzeFevXD7js3sWafPD06bTx7AUcMfcy8vJwV8t1WwZvcsOZByc+ZZy950HtRWe+L636R0Wk9M9iOw==
X-Forefront-PRVS: 0476D4AB88
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CY4PR02MB3269;
	23:K0vr6Wo4/HerCRKSXmzOskbRMTknZ1QlQ8MUXECAn?=
	=?us-ascii?Q?ftxoJ76GHXz5qhpQo4MFAyicJTZAUZvGL1F9YaiJgEhR8Ma6vV4fcntD2uK2?=
	=?us-ascii?Q?AWjjJb2BPo0cm7AxLYMXfKM2nYRXbQfL11Wce+9WNxMJEPjKowmvaifOuado?=
	=?us-ascii?Q?8iE5meZnucVQ8sq0ztkaeV8U3hQ/FYQ4Tb7u/HyOU/HhfR6zTMM0Hos0JhNB?=
	=?us-ascii?Q?/gZERreQOlAUTgEWLzmKnyszugLiURvNI89x9F1j4QsCTOSxJHACHiobxfmo?=
	=?us-ascii?Q?wP3Qqh4m7fNtW7wM3Xjxi3l5RCZGYi3UK98SLCxTmKZqw2f8KNdwegdehuzJ?=
	=?us-ascii?Q?CaCS5PZFXYyXzXBNzOLFO9F5b0sqnB6zxSuQhlyd6rKIBc1padcSZjCCWdmH?=
	=?us-ascii?Q?lX5pss4u+E+FSaF9T8kZs79CBPDRg25F+vAfU5gOAV5861fp2rctPoLqlZRw?=
	=?us-ascii?Q?uQ8LWLNvxyj6GtPZAEMcUoI7TH/Yge/xRCLGoMbAD2azOhGsfGtGKZFdVoP5?=
	=?us-ascii?Q?71L2+eQuFQZp5zXO7MdNA/2n6hGfjjfUTa6s52kr+XklG086ajUgVMKsffbb?=
	=?us-ascii?Q?t3BCKpAcue8L0YaxXrkCEV8FtXQtnE5zGDPROBM5hiAR+i+rS2JmM5Ao9+RS?=
	=?us-ascii?Q?Rn5qlKHxgl6Lkeit+yRhKEdDZJwp0FgAeED9xgXWzLxzOsUOlZX016OS/E9q?=
	=?us-ascii?Q?FadY5OTuwMdQcGSIjxXM5mdGFsnnHOE2nPKSqaqdIGWKWsY8jijsLtdAz8JF?=
	=?us-ascii?Q?3UzL+J+IAVqONWD5XL4CMHYx4EpUcf7s5YTrd9rQE6c6LUhSr4h0U/C5lepr?=
	=?us-ascii?Q?P8+duB9m21AYwWCYWlGIkaaOMtVyqrFNC18CEwpA0UpK3O5cFBx5jKgmhWK4?=
	=?us-ascii?Q?ceDSoVXd1yzSR/KXAB5WqueV2aa6ZrGgu3nJ6agmrdtokDSaGv3wLeJIWpus?=
	=?us-ascii?Q?faXT+89gYeq0Z7g+xGqgaAZU7/WAhqHaIqz7plHe5MI8rEfi0Pxjk7UHKCF0?=
	=?us-ascii?Q?0mEDdqF5uz6YsJJjqqf2+whP20cxMzwSDHW6sHjnxRzXP4ZjDh7yWRKobaHc?=
	=?us-ascii?Q?XC3ehU=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB3269;
	6:sPK2ANjZvn91nvcLIpU9j7PPhaH0PNrR3ZKbbK/ar2PaPOlBg5mU4HnJ70lRi+md22YPXGXDIh1cqOOiqm/iGElQcHiEOgF+kAoxs5dS2K/HHvXiZTLSUG6flA8f0V46Xs6BBwzyQkvHmAuA86y8bNuzaRmmOd/mTIjKV6rD+RHiKQ7SejwMruSMar4NkPhJeJZ4pQXYVVoD+CeiWCy6VeugbZ7R3n+7zVFIp9ESLGOEla6SK3JOzToCDawsFjrZjugrzC9sRYXfi1fpQFfDQwBTidCNc3ehsrSIvUKlGDfa79ikF7jSHiq4TIp4LUHqW32fiiZQOXx++Eae/bwZ05TAExmusbh5gPjHzUX3iIU=;
	5:e4MloHKnQVzvZ4QltNcXlpXViHPH9b2ChHArXOgx+Uc5BwFRStgPw7g7BHPe2aR/fdHas39Ci75ReGCGI8ZieePEngkRboGiEu2efataq3tLYg+NuJazBtir63rPH8X4h2/qtsl8ow8UcpB05pxVqcQxai9aem1W2Qef2EzRy8g=;
	24:Rk0dynIGx9hNqwQsAlLG2kPN1WV2M9DKhhoeqTGnOnQEn6DX3FhG+pDpjDXjmrJoBTI1TNJsUejeMcq3BxRnp7hXQc/DdCRTuPTlTWASx3w=;
	7:jMH3WWR34tQzKtd21L1/EfpEAvJ8TQuADw9LedOMpRQMAC9YflznA9PqaEsMeLATUtyyQC+vEL0vgYzPVJyq74Eu5dNBxtMIRclArMuQ+Abej4CvWyxpYpJ9m/woEAlZ2Tpr+6BB/jfUwAZ36uMdhrGM6dUJMc3jBu7bmGbBeaM3qhedzlKY+deku4mmg3ZdcFcPPlflxpBc9zbq9Gxnb4nkYOQ8klYwzmsd4IXoRdL09ZwfPaion9RqgTjyqGx9
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2017 05:54:36.4009 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c5c7120f-f157-448b-d9a5-08d51f5ab3b6
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.83]; Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB3269
Subject: Checking sstate mirror is hanging at 100%
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
X-List-Received-Date: Mon, 30 Oct 2017 09:27:25 -0000
Content-Type: multipart/alternative;
	boundary="------------59500F64199B6A6B0A833812"
Content-Language: en-US

--------------59500F64199B6A6B0A833812
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi All,

I am running sstate mirrors on a web server. My network has proxy, 
sstate is sharing well with proxies, .

But, without proxies, bitbake is hanging at "/Checking sstate mirror 
object #######100%/".  Is there a way to change timeout of sstate mirror 
checking.

I did some debugging with "-DD" and I see bitbake is trying to fetch the 
sstate objects, failing and keep on re-trying.


/DEBUG: checkstatus: trying again/


In this case i would expect bitbake to "check for sstate mirrors" for 
some time and rebuild from scratch. Is there any approach to over come 
this ?


Thanks in Advance

Vineeth


--------------59500F64199B6A6B0A833812
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi All,</p>
    <p>I am running sstate mirrors on a web server. My network has
      proxy, sstate is sharing well with proxies, .</p>
    <p>But, without proxies, bitbake is hanging at "<i>Checking sstate
        mirror object #######100%</i>".  Is there a way to change
      timeout of sstate mirror checking. <br>
    </p>
    <p>I did some debugging with "-DD" and I see bitbake is trying to
      fetch the sstate objects, failing and keep on re-trying.<br>
    </p>
    <p><br>
    </p>
    <p><i>DEBUG: checkstatus: trying again</i><br>
    </p>
    <p><br>
    </p>
    <p>In this case i would expect bitbake to "check for sstate mirrors"
      for some time and rebuild from scratch. Is there any approach to
      over come this ?<br>
    </p>
    <p><br>
    </p>
    <p>Thanks in Advance</p>
    <p>Vineeth<br>
    </p>
  </body>
</html>

--------------59500F64199B6A6B0A833812--
