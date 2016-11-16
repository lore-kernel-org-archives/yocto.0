Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B5D9E00C3E; Wed, 16 Nov 2016 12:07:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.44 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1024 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Nov 2016 12:07:10 PST
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0044.outbound.protection.outlook.com [104.47.40.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF3C6E00712
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 12:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=SierraWirelessInc.onmicrosoft.com; s=selector1-sierrawireless-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=GCmBByEKlKY0ADwXvaIUp4WlYUaoLBlSrK12FAONvAs=;
	b=wK15X2lehzonB8eaxnDGCGPBlQBXNLt6YCUdgBmH23HrWvshOY5LDGgSw0A3sTDr1GPvS+9JTRkzaOCU1sGVYuYqQf/hqv2GGw2hqVClpK7aP0Sntr+KfXJLXrQ64clOeGZJ03wQA6I7E+1X0b5Snq2a2dmIn2C0iVTTsrDXRxY=
Received: from BN6PR02CA0070.namprd02.prod.outlook.com (10.175.94.160) by
	BL2PR02MB258.namprd02.prod.outlook.com (10.141.89.144) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.734.8; Wed, 16 Nov 2016 19:35:40 +0000
Received: from BN1AFFO11FD014.protection.gbl (2a01:111:f400:7c10::126) by
	BN6PR02CA0070.outlook.office365.com (2603:10b6:404:f9::32) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.721.10 via
	Frontend Transport; Wed, 16 Nov 2016 19:35:40 +0000
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
	BN1AFFO11FD014.mail.protection.outlook.com (10.58.52.74) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.721.5 via Frontend Transport; Wed, 16 Nov 2016 19:35:40 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:; UpperCasedChecksum:;
	SizeAsReceived:634; Count:11
Received: from carmd-ed-n10973.sierrawireless.local (10.1.64.103) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Wed, 16 Nov 2016 11:35:39 -0800
Message-ID: <1479324929.12931.32.camel@sierrawireless.com>
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: yocto <yocto@yoctoproject.org>
Date: Wed, 16 Nov 2016 11:35:29 -0800
X-Mailer: Evolution 3.12.11 (3.12.11-15.el7) 
MIME-Version: 1.0
X-IncomingHeaderCount: 11
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:208.81.121.44; IPV:NLI; CTRY:CA; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(2980300002)(438002)(189002)(199003)(305945005)(450100001)(7636002)(50226002)(8936002)(104016004)(5820100001)(7846002)(2906002)(77096005)(50986999)(87936001)(626004)(92566002)(50466002)(110136003)(5660300001)(33646002)(47776003)(103116003)(23676002)(36756003)(86362001)(356003)(246002)(230700001)(6916009)(6666003)(107886002)(106466001)(189998001)(8676002)(7099028)(99106002)(5001870100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BL2PR02MB258;
	H:mail.sierrawireless.com; FPR:; SPF:Pass;
	PTR:carmdsmtp.sierrawireless.com,spf.sierrawireless.com; MX:1;
	A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1AFFO11FD014;
	1:Zbs050yGDRbPCKIyEbIa/qbwbkLwWnhTPLOd0YHnNeutek3lOfz5h0mRklM0VzqxU7thalT2hR8hNr0BifZXIth9arhRr2TfN4s8aVF2cYl9pSZ7NK2UeOOpcSeXEKn3QNQGEuA/V0mVzBR+Sv09gufEpfDDPvkr5n66OoWFHMPTB3aHkk+62OI7vAAnkTwkvL/iIZApprWT1DYiymP5/PNFWem9vtxUCsnaMRREWSJrV/8Z2UzCopqg+Al1DPO2ylb/L+cbFI+1JOHByJ3RQMnuul4/DYs6EEIo/JDnlPKJPZzqU+vTtN5XqaI+oFh08p289evQzguc5mV6sVvrSrdCQ/Sea5u0kGwk4+Nj95HcZmtMglWz9ytvWUnGh9yUCvoc/pOVyIiroyOZt2VZPJPU7pKlxWWTmQBckWc7oIxLJ6NMR6hJSUwje1eQLMI+u+TdL/lxJ7yJ4xNqGd1qS7rFo/F77y8bVK7vjpjYV+eTnj75RdS9ATuyXlNLdJi/XWxUpCSaqccCn2Jhxy6cK8QB6A37ys++/kBF4eWmuBaobdYtYzuUih2uDlsVndwSrrcbDYvI0Qog83bOAtN9hQ==
X-Microsoft-Exchange-Diagnostics: 1; BL2PR02MB258;
	2:QyqHSdmtg22CxC9Z1nupkIXi5H9HLZSXgqH0bh35kYys8zwXo53V5pADDaJYn1WyZIvyD+NdOqObqiv2rqOoOgoi8o98cDPcdGXNv/RziLSHci0Kjtx2IxZmndQKU2d54TIOVYuHpvlKfb3gU/kIrG/w1OBruoQCC9lhTNbuok0=;
	3:jMWLNdhmhCt1kU6nOHmcHRwSn487PELOV/0dCSzs7ppLNHme/kz1PxfYIQ9qn5O+ZGnSJBiXnADwWC/SWidiMruKl05DiwxeEYQ9Flx9pcUfvdFcgekP0wEe7Dwkdtz2697gq3PxkX2lkfpGMTkulTbVoqBX60V6KHiC599+RzAU8lZnl6IINXwjaUauvM+ikvoIlaEHwi5dstGbqy/qOL4aG9jWtf9ZgjThatupsHzqq9JhlRdGX5XoLD3g2KVD8B6pGVW86mmR4EuIKZ+p0VuqVouBPjDOXJomfZOdQ6c=
X-MS-Office365-Filtering-Correlation-Id: 20156fff-dd00-47cb-6e9c-08d40e57bfcf
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001)(8251501002);
	SRVR:BL2PR02MB258; 
X-Microsoft-Exchange-Diagnostics: 1; BL2PR02MB258;
	25:i6I+7FdDDgR8z9sux2oqIfpeSJuosjSbl4IXCjAUy/8oLk07ZxYUdwpKu3rVERih93vEaQjLJ4U3Rku86U9m7KXK4Sokowv2Akvot5JdotXMzVAywUaekeauFPQIjt/dF1C+xcQoEhiCDdkSxJVoT+6HSEJLoDlzewxrp5vMvubK0wkWeflr5BZrwFFKYWdDbmo4puAu5WIOeOmmBZlnVDvLPZGdiRKI4Xg62pQ+aqYcXHM0swu8t5UiFla5Ms8s3M3kZpUS5/iFepuFy06Gtyqr4sYdg/XX3IShK4mnjORUWllT+BUdqcLGjMInMAjLwVvF9IDe33HYwf2p//4k2as/mX2uJdMKv8kkRQrqC8UtDQ355BL/Aw4b/b+aGaFMw5U0z4X8cR/2Mugi+1pFf9J5nFpRQOM1rtMxoMarG/P0jSWHYwsU8ibCZh1gSfWB4W0VwkeVbm04I/RbU5AVB+SESHJsjs2SoPXpjJVK36sbvOa6hPhD0L0O2jRfvs1tYmvS95iE0lMZMfYh+Tq9sEogpxDrfBY95PEgo2NEsDX8XINgs5p5TuLfkpCP6wrI/cOanxD5YzNM6D4inmBYX12BEf4Ni0/2GeNJhNolHtuHqGbq//SRMimsPo37XvWumOgIW9hflxQGHtkoXwnAADbMpH5FBnBU7YJ8S8L5xHrMtsus+4VHfqBHyOZDbVNkKoc0J6xC0Qh+rfEEpXUFwDgSXUv04WnJOuJhW1RlVV23jmUmZK0ubYrbfh/a6Em3Yu0VCV84aR3Tq9HSFxAFUfv0VZ5HM6+lfaHO/wOhLoU=
X-Microsoft-Exchange-Diagnostics: 1; BL2PR02MB258;
	31:h6T3OckBd8CQFnOHvb/NALR/1BINYvOfWwhR12wMZftCt2k0/KdyN6K3sv7/aBlbaHQPJLo9WUXGlvZSQzMP8Fu+PZsLhG4hJshXlnSh3KU8HGk1cqT3yFdAIe6tCvwVAcAG1QgFPLQmOxf43miaQy43MSlElYy8wOE+9sMkYPJW1tkLfo/KhYi8kutQCG7qChy/eFW6uRoYqUqb91heLZUciWKLFDMTTpEd4vHjkOtR94lMHAV+48KL3s88zBKLnOOJokkUpfTzN/Ql8R6r1Q==;
	20:4eQw9X0wZD9c7Yk3VfvmNcWvyWsSqhT3VnV1ZQvm2VpBm02Inf4C0wwgR7T5d7bHRP+DsS3+uMw5ylGqwIKn1zOnwOBPn8WmshJz0op6eaeRj+m2MxbR1omQ/EjjOMFMOOIPk4hzyIoFJZ7loR0WvwckF7vIcf1a8vybBBLeVawxHxGXX+miM1JHM8CosmDzibk5RsLtqaHXpirLWEhVw1C4Hg1w0OZrCxDlS53DdAgv8I/pR9JhrIFrd4KcDucAVKSZu782fkuvslRC2syoD2UWuAGCLp7QYsk5eQR3a7bC1F5Tbja8vq03eFm0WhqyzNEi0qjDMNDcUcrsvpMlveHN9m+zsbmP69ZiA+KdIT1+SQbMl0WwMazPTFY+H7rzw6f6JQt+F/6GMPhzUZG/EUX5vHJSXFlakdOIid3/rQ+FbZVDz29TGkSposaiLz+v/CmwEWXfzgj4q/XsN1rbD1q1ltb8zeIqgAfGe/Oy+3zToQ1VVTVOwTzzE/VH1svO
X-Microsoft-Antispam-PRVS: <BL2PR02MB258522BD31C11DDF4C56F83B2BE0@BL2PR02MB258.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(158342451672863);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6060326)(6040281)(601004)(2401047)(13023025)(13017025)(8121501046)(13015025)(13018025)(5005006)(13024025)(3002001)(10201501046)(6055026)(6041223)(6061324);
	SRVR:BL2PR02MB258; BCL:0; PCL:0; RULEID:; SRVR:BL2PR02MB258; 
X-Microsoft-Exchange-Diagnostics: 1; BL2PR02MB258;
	4:W45x/g4Tn4PNAbACnJH5Z4hEk744a39F75Av1BjPx4yAwt68pn9PYQIDX/l8/1Y0GVwVLELQeEJklISJspqNRO5NWJLdzCl/7wDD8FuVWF9O92Uzt1Q1sJBrwZjZHjsazvpnVoL6fmJIBzWVQclLPPWmELSg8ulcu7EtOpf/LU2Oo3hGkHA1kfRscsHeQdFjZovXetULvbP/U+lS8hnrVz02/dnc3j45eU42R+mhfcvUe0nQSXK1oRHBOeHYommUbHDWZG68cjX+g+b/dRPlbih85+g2EEMs2FRKFWWAjMfGTzpgIp6sVobA2sXviC/MFmu9nOhwLrkhV/uD5tyEoo4vgQ7ZWUpNivh0N9gCHOpeVMdBu+5LSyrfNmsUl737npX9ZvEOluhCl7BppNoLdRuWFHj+PIWdyMtq4VRFGFoIdSNDmZV7xqzuF+zWC8cMjLTf3qfonKFtwn6EVo3d8M1gFvplBXiRvI7qNb1t+MDhdYpDvZJoxMSB9wVZwVkGEF+7w7boh2RIbT6Jm+uFkyrIS8pvMUTSXQhaaJ+Rx6c6LVuAmLxqXuKowdL7DH4YJSdzdtx6LJ6eHZz9efVIuFTxdWg/9hhXiy18liRMBN4=
X-Forefront-PRVS: 01283822F8
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCTDJQUjAyTUIyNTg7MjM6YlE5aXRGeUtVODBxRkpPandHWW5TSFZOZFoy?=
	=?utf-8?B?d0NER0ZOV3ZZZUZDVmM3dVpDQnQ0VTFVU2o1TGhib0FKcTNEa3krLzlaSDZk?=
	=?utf-8?B?VXJmK2R3MGJQUklVREZ5b29RNEdyZzgzQjJpdGp6YWkxVWlDRnZJeDlVdGJL?=
	=?utf-8?B?WUF4Y1dhcVZEWjlUZkNvNVIrQmhYWkVOMzJmcGJBM3lXZWNBTlg2MUVidTF1?=
	=?utf-8?B?Z2E0VzBHRzRqU2hkOEd1bUVmVCtCMldQUllUeUVtV01WNTE1ZFNrM0RqeElM?=
	=?utf-8?B?bzJjbTZ6ZUIrZzdiU1VSYzZLNE92T2tqK243WlBYNmJnbzVOUnRJd2dhQ3M3?=
	=?utf-8?B?TzlTTFdPQkI0Z01ZcFVxZXJjWjgrM0VkYWhDZHY1NFc1REpXcFpDUnVnTWpo?=
	=?utf-8?B?Mk1CWXliVGZsSGpOVWk3VGU3c3dnK2svY2RyeVpVVTZuTWhiOTIzelkybHlD?=
	=?utf-8?B?Mlg5TGZvTm5tdmtNNlljNk1tb0NPUnc1bTREOC9EOVA5QWZLcEEyNE9kYnho?=
	=?utf-8?B?VFUwMUZnenlLc2ZicHBHZnhycDBxbGNjcVZqNzZzSTI2dk9KcmNsY0dVTjdo?=
	=?utf-8?B?Z1Q1WDMzeDRrQ2JIZzNtVEFqRjNENFZXYzlvaFJBaGpoMHNUQ3NSencwMFBq?=
	=?utf-8?B?T1FJd3pDR1cwZjFCclJEczJISHRMVzRWNVVSNlM1bEFZTmpYbnVwV1FFUTQv?=
	=?utf-8?B?Ui8vUG55S2VBZnRTM291ZFpFc1hFVEIzZFZpajNuR0dOcmVIU3FaQ2prb3di?=
	=?utf-8?B?U1BEZUxqODFhWHJ1WUNIWG43OXNySVRWUGhUTzNCbjhicGJLSlJoa3FFb3Jn?=
	=?utf-8?B?Yyttdy96dVFDTnBKOVlhYlpsK1h1Rm40b05sVDAreFlGRUYxNFJSZzV1RGtB?=
	=?utf-8?B?MCtBNGxXMW8yWGs1N3UvRm1ZWExnaDh4dzcrU3l1NkhPbURYRVBIRVI4Z1d1?=
	=?utf-8?B?VnZiZEZzdnZ6TmhNYllBa1RTemRwaDdvK0dLRWZpVVF5YWovWFkvL1VsaUxs?=
	=?utf-8?B?dS9VbE1MQk5WUUJxc1FaSEd1MnN2dGFkZXluVXEzQmh0UkhIcnBYNEFvTEpJ?=
	=?utf-8?B?YytRUUxsSEpzR3dzTVV4OHJlRmp6Z3c2NjA0UXVFWURxY0JTOG1zSzVEOGlk?=
	=?utf-8?B?NVUveklSVlRONzBMbnkveDUzTDlyb3p6OGJyRE9qTWJNWnRNcFJMb0xrd3Ez?=
	=?utf-8?B?eGxKVFhhOVhHZ3RTbEpnUUdOUTBXSTdoMDVEakVRZVpTcFFVZUhHTkpDazY2?=
	=?utf-8?B?Wk5JSjkzZ0wzME5xdEx0aWxCUVAzVVdYWUl5WHR4eW9yWElNK3V3RDJCVEY5?=
	=?utf-8?Q?wlTuWF1vxJyQ2lb+MfPFFmVysj2z+Jg=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BL2PR02MB258;
	6:lIh/Tn3wRU1N3Zll2mbW9eC11pAhpgF8QE1GnSiqDAK/1hureQTEDgoQlobWKqnFjcyen4iQScp3m0Z75zn0GrDK0xm7EtrFOwhxZicex4pqQ/GaHAz73xgJcCShtoLK7F7C780iMOeLNZyoMwIhZkRCSI2I/w51yNTIYPofopjMsVSbOQGwnDluB4DIkfvvv27y3pKkqCL6QiSB0dckmU7aYV6tMqN9b/4VLLiJE0tTNQCrb6BFFaRvPEqPMrdEGMGHHsPeH1r08xmFDOXzr3B0312fR82r9vJsQu4UrLLVHqP+RcJUaTLb3wm1ioHNooXu/iHj+VdKpj2T3qW3u05VbXYRf5+Gr13Kp+bxCY60ry4DO6vL0aOdtedrTQJD;
	5:mK8bXFY1OksCD9qp4JG1dRG5fCMw1q9D2KMEJZXJilIhvWsOwhAFwcLSNrsyh5TK2lMRCm4EpSzhYwJkTnMtyCXd9vd9InxJPFcwboIQclngzoXLgiRPj1iIxt7iejWJrTUDESCtiyFGsCeh+vGZAQ==;
	24:H+loAJm3deRsnYokNpk8+gm1oMYTA3ZEHmSlILA7YJbTaeJ7qENV6r0q+xHcBP189XTzGofEDoQ6G7ztEWDtnYtvuLUxsEFebfRGNBcQ7XE=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; BL2PR02MB258;
	7:khkjZDu2/lXRIEeKzPbFSrNZ5K9vPLSfBnjN4slJTwdThycgLunUcXofzj8CzxbAzuUIRPt+QpK1CQEuMLuF48S3b7vXJuN+oQK6Mfj7Rn6oYAiDd6+4RFwrzybyyTDaoZuKSK1USh9GrG+axSsxNTZ9X9merzDZQn6CpVs/AKABKXqFSLI3gKCpMEIVoLz6F7yaA4rltSAtYOyge4gOKLxQqG084pZTcQU7Y3wv56uKnIA0F8jjoJFg2qxNpKTFpDI2KGuCqQH6YRl5CzQf6Co+HEI36Ib3XHFutieBAtXbDi83kwmIVpzHVoAa1arztGSYR4MASwzk59ND648zcCXM6koU/csT4Wi0zjuyV60=
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2016 19:35:40.4544 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR02MB258
Subject: Unusual RPM / Smart Bug When Changing Architecture
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
X-List-Received-Date: Wed, 16 Nov 2016 20:07:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

We encountered some rather unusual anomalies related to RPM / Smart in
both the build system and when applying updates on the target.

1.  We had a series of RPM packages for HW controller specific FW
images.  Let's say they are called something like:
    - fw-image-a
    - fw-image-b
    - fw-image-c
2.  When originally introduced, we erroneously forgot to have the
recipes "inherit allarch" so they were originally built as
'cortexa7hf_vfp_neon' rather than 'all'.
3.  This made it onto the build server, into the RPM feeds, etc. and
even installed onto some target machines.
4.  We spotted this later and changed it to use the 'all' architecture.
This triggered the RPMs to be rebuilt (but this was same firmware just
repackaged).  Since the firmware had not changed, no one noticed that
the generated rootfs was built from the wrong RPMs.
5.  When the radio module FW was updated we noticed that the new
firmware wasn't making it into the generated rootfs images.  Upon
investigation I discovered that the rootfs task was grabbing the old
RPMs from the 'cortexa7hf_vfp_neon' sub-feed even though there was newer
version RPMs under 'all'.  I renamed the RPMs under the
'cortexa7hf_vfp_neon', appending a '.bk1' extension to them, after which
the rootfs task properly grabbed the newer RPMs from the 'all' sub-feed.
6.  Then we tried using Smart on the target to handle the update /
upgrade scenario on the target.  What we observed is that the upgraded
RPM was installed, but the old one (with the different architecture) was
not removed.  Now they were both present, two versions of the same
package, but smart didn't treat them as the same because they had
different arch (one 'all' and the other 'cortexa7hf_vfp_neon'.

This is a system based on 'daisy' branch.

It appears that:
- The rootfs task must iterate through arch sub-feed looking for RPMs
and as soon as it chances upon any sub-feed that has RPMs present for
that package, it doesn't continue through the rest to see if there may
be more (and newer ones) under one of the other sub-feeds.  This
affected the content of the generated manifest database (and what wound
up in the images), and also explains why renaming the files to get them
out of the way worked as a workaround.
- The Smart PM appears to consider the architecture (you can see an
appended '@cortexa7hf_vfp_neon' or '@all' in some of what it outputs),
and must treat it as part of what makes a package distinct (rather than
filtering it out like it would the version info).

I understand that changing the architecture of a package is not a
typical use case in a package.

Now my questions...

Is this a known issue?  Has it been fixed in a newer branch?  If so,
which one?


-- 

Regards,

Darcy

---

Darcy Watkins
Staff Engineer, Firmware
Sierra Wireless
13811 Wireless Way, Richmond, BC
Canada, V6V 3A4
[P1]


