Return-Path: <jakob.hasse@qiio.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2E4BE00956; Sat,  7 Apr 2018 09:39:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.48 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0048.outbound.protection.outlook.com [104.47.2.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9252E00956
	for <yocto@yoctoproject.org>; Sat,  7 Apr 2018 09:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smarthometechnologych.onmicrosoft.com; s=selector1-qiio-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ZykK/xfyxaVfIcpt5q2ZIsvTkwjxTfGRdKxtTQnBBog=;
	b=SaBvqpTli5b/+RmNXRfRD7+GNyrT82pysU8sULy11Nq/AnBE5ARhfiVrrnzXUnSLvmhcMlQumQaPJErTQ3bvmjHsNmCLXZrWBWDmnhyQvZjdcWk1DEt19i798AwQH60QsQfIUfhkz/6anMqxxerDpnPwzFcSTv9Fgty4DMlLzQk=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=jakob.hasse@qiio.com; 
Received: from [192.168.178.51] (212.51.137.245) by
	VI1P192MB0062.EURP192.PROD.OUTLOOK.COM (2603:10a6:800:c1::20) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.653.12;
	Sat, 7 Apr 2018 15:05:33 +0000
To: Yocto List <yocto@yoctoproject.org>
From: Jakob Hasse <jakob.hasse@qiio.com>
Message-ID: <f15f87ff-1140-54d0-81ac-2c27e663643d@qiio.com>
Date: Sat, 7 Apr 2018 17:04:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
X-Originating-IP: [212.51.137.245]
X-ClientProxiedBy: AM0PR02CA0002.eurprd02.prod.outlook.com
	(2603:10a6:208:3e::15) To VI1P192MB0062.EURP192.PROD.OUTLOOK.COM
	(2603:10a6:800:c1::20)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 74c95beb-59e2-44d8-2d3a-08d59c9902fd
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0062; 
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0062;
	3:LpZKQdGbZvGCpoUbpLp1MV5ZSJHFQTQOmAtPKmayGuhF6ze5/xd5J/rYAl+f+K/eIy7KVegPpJBtJdUoEy3PdXdad86XyInhJ4STmjQpubhJrzMgDUJAXb+1kp5QQXoUVOh1C+V+NhpycfERHYR+LuttN5NhAd9TBYY0oL8VV1Lmo0ZOXDsJxvu/XTq/8/kBDyZBTHJLdTok61SzcKV8xhIAzf3219VAPhqI9Q8jYfo+u8oJGaw7Edm34oskEhwj;
	25:1z1ga+1q+QHf3egxH7X/3uTHGyYLlZRFDMJrJNO1ygStQsLH2DJf1U3LdkXmRb3Hj/nqTeYtNCeTJ6A4nZ8gDx/uNjHAW8dLkNR3p1+gDmIja01/tVx+hiK1K+zdLMQo8GdLDeidtfPpPZrbTNerL+tnmsyokzaWQb1ywlfQ7keORt72x9HI1+0MJW894g7t2XxY4gv1EJv20hBnpjwA66HqebI462WcpKHafPjzm8BdPmezFPkwLuBqvWIvyCWnelBMChOnj8FK4RFCA/7NSBxIUcokLDRme/d9oJF5ETdns/nbBW3yTngwtxreyZ1nShKlA9TGIpFP/sA1QD3gwQ==;
	31:X0DnSS7CHdIfSbqOq7PonjXxe9YZkKxK2ISydDCKZty9vkzO7smQt2KuQ4MKko6dvL3W2p2Nh3HttFj5xPNyneIWC0J3UioSCEQPyrWIWMrXBn28s3pnWEqMDPojPjOZBP1wAiTFqIPLZqXOOmdgp5JasJtkThXncEe+p7pwfO+4Dars8345k95GMQ0A8ba3roGbiVlgbvN1tFoLZa+Bp1RiLX3Epk07wkaQyxrufxQ=
X-MS-TrafficTypeDiagnostic: VI1P192MB0062:
X-Microsoft-Antispam-PRVS: <VI1P192MB0062BD955CF3407659D564C784B90@VI1P192MB0062.EURP192.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231221)(944501327)(52105095)(3002001)(10201501046)(93006095)(93001095)(6041310)(20161123562045)(2016111802025)(20161123560045)(20161123564045)(20161123558120)(6072148)(6043046)(201708071742011);
	SRVR:VI1P192MB0062; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0062; 
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0062;
	4:I7Oa7vzqpEAZgMoIoi59wmupjc49msopkVQkHso9lz699/ZxjVaxf/2uBqN+eZDlff557ioLhBHmaGLZ37ud/id3K/hUOx8JjvuZ9GXUAiaRldnzOieMq9RfU9+QKwvBQUHTToAdnUXwLWt3pVSgfgcF9mMt5KOo8VOKz56qV5YZXaOFAKVS+YjuXptX9l4SL/fOon4pHL2Um7TioDwi8qtplgXO7TTG+aFqU+BjCPHC0iXMtneEePaHDrvTBj4pNTK53CTZ1D/MrkuiTreU5g==
X-Forefront-PRVS: 0635D5275E
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6049001)(39380400002)(396003)(366004)(39830400003)(346002)(376002)(189003)(199004)(36756003)(52116002)(77096007)(2616005)(31696002)(59450400001)(478600001)(8936002)(956004)(53936002)(230700001)(81156014)(81166006)(117156002)(476003)(26005)(8676002)(64126003)(68736007)(6486002)(86362001)(386003)(97736004)(2486003)(58126008)(106356001)(316002)(6116002)(305945005)(2906002)(6916009)(65826007)(105586002)(6666003)(5660300001)(186003)(3846002)(23676004)(52146003)(486006)(7736002)(25786009)(67846002)(16526019)(16576012)(65956001)(65806001)(47776003)(31686004)(66066001)(50466002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1P192MB0062; H:[192.168.178.51];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: qiio.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtWSTFQMTkyTUIwMDYyOzIzOk82d3JmWTAwUW1HdjYzaUhWZlQ4aVgwQUpN?=
	=?utf-8?B?UURJSmlMOGU5eVhTbnNLN3REa2gwWC9GTERTWElmanhKRFU3RzA1dXB4U0VK?=
	=?utf-8?B?bzg1cXQvOFkzbm1JeGFzZmF2L1h4eStyUGpSdWRyYW04QjdMODRoRlpsZyt5?=
	=?utf-8?B?VWpmOTZobkluRjNTUzJGSnhtRU1ISjQ1c2t4TllCcktTcmMyQW9CTmtjRG1O?=
	=?utf-8?B?TEFQa0E1cjVZZmFhOGltOWdidjhkeXg0YzY0T081WjVzOHQxb3dTaDQzcG1w?=
	=?utf-8?B?TnNHWFM2K0l2S3ZlSktabGlPNi8xSFZwYTdNZVR6UWRwZEgxUGNub0hhZEYw?=
	=?utf-8?B?Q0MrbmE5OWRuS2kvZ2lhSTFuOTRZbVNWTURZM2VMZVlBSVRiRFRPSlFIcStw?=
	=?utf-8?B?Ym42c3U0N0o1RUM2VVdMdkxEZmVQMFpMajg3T3Ftb1kvRE14S0RsWlB0WUdS?=
	=?utf-8?B?M0ZBWjVBK2FjVys3eEtHRVpTekRMdXJuZVhadGNJakpLNlN1c3ZkcTJQUTZD?=
	=?utf-8?B?eE0vNW5KOHpRVmVkRWlFNlNnTkNGTzhWNFp3ZXlEMmJIRUg5SEhPRUdGc3Jm?=
	=?utf-8?B?Wlk3MU9ySFlXcDYrZ2dhcWdhU0VZbTlnK3pxWU1uUmVBL3QrdHlSUnNSWGZz?=
	=?utf-8?B?S0M0cW1rUFp6S2xuUU9yNkhvTC9ObUJsNm5wZEl3T0tJOE05aHplQVdIaS9w?=
	=?utf-8?B?V0J1dENvWTNZNVhKbkFwTU1CSUpmUm1vQ0YwTmxQeWZ1VkZHUWo0UE13NGZV?=
	=?utf-8?B?M09aSHdhMTlvOE5lMEdQVUpEcGduL2poOEF1M2hQN3Z6Zit1NXp2S1F2YTFo?=
	=?utf-8?B?eU1Rbk85N09ZVmNLTW9CajYyMjdXb1NiRTZZREw1OUZHbDdLVlRWczMwSG9B?=
	=?utf-8?B?SkxMcjB2YUdiemlid1pqTGxsQ3hpNHA3Si84b1VSSWkxNlJlSmdZMHVNdjJD?=
	=?utf-8?B?NHlYVlZqUlM4K2lOU3p3L3JTT3JLNU8rQ1kxN1dKTnlXcjVYWmRYenY1eDB2?=
	=?utf-8?B?Wk5XckZSQWFEQTJXMnZIVVpoNjVvZ2ZjRkFsdG1HWnU2U3QxYzlIbEowK0FH?=
	=?utf-8?B?RW51RjJnR0NtRkE3MHdvWWlZbGF1aXhwZHl2dG9BenJML0oxNEM1TmtVUlV4?=
	=?utf-8?B?eVorNnBQeFFlR1phQ25JR3dJbmNBV0hHbUw3NEEybkg4alh6N29KUHpDVWEw?=
	=?utf-8?B?dFFVbVQ0TG9QVHVyTnpSa28wbVRnYTlTYlUzKzJqRHRXSVY0WWZEK3Q4TUxv?=
	=?utf-8?B?UHMzc2dlYXBEZzdYaVYyRVhMdGVRNFdNMytDZU8rVDVNajRWMythd0ZxcWo1?=
	=?utf-8?B?Wit2bGo4TE9IWGUrS3d4V2JlWDBjVVFxdzlXdHR0ekJmQ1lES0l4VUJpT0NJ?=
	=?utf-8?B?Q2RoS0J5bi9ZZHJCV1VMNWpkRVNIeGppNVBxMkkwMHZsZnlHWHpyUVlCcUtz?=
	=?utf-8?B?WE9hUko2QXgwTGN3YzY3TzJXOEdSZThPNVAzKytTYVNnK2JNaWgxenl1bjdO?=
	=?utf-8?B?TEU1MDFFbjlYT2dwbGp3am9sSXlUenVNdjlIaVZDU2RVZHMwUThCMGEzRGlK?=
	=?utf-8?B?NElzcWhGSHBzb2JuR0xhb0RJZkM1N0JURktodVZUR052QjFmTWdjSlZmYVZO?=
	=?utf-8?B?V3JkT2svR2txS0xGNWNTWXJMMjFCV2ZPcW9RekZLRXUrb0JoZVh4SXB4bkNJ?=
	=?utf-8?B?YmdmZ2lxeWlOKzlidERObk45ZDRrd3grTm5HOWsyUHB0TTlxeFEzZU1zOEQ4?=
	=?utf-8?B?OW11TzdXTXdPSVNFT1J2QVVoYTRqVWJJZmNhRjY3a2tPWDl6amV6a1NJNkFD?=
	=?utf-8?Q?Zjac9a/ag5KRZ?=
X-Microsoft-Antispam-Message-Info: QqMHxgyE7T01ecErPb7qMUsucCIt+7cbF0eOs6Y6DZo/Ri4OQ3bQ3jQEAbrrmOoiTXhYVnvEcScpkiUTgFbtXGJQxZVMF/cBi2GXLkCBC4XkLo7b62dpCUMbNfNPTLfpc3gHtkLXzmAX22x36j/Pn07fQCGDGCpifLPpW0orw0Hu/RIspFVgus9p9O5SpjWX
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0062;
	6:vbnQ59UQLf37CWNuklieBheiPmAJm68KPFS/4v9FeHDm7z8A1yFbZN7NuOCLim+F2eQjDYvJv3Pch/KTr+XlJju9M+B7hM7moDM9a43gFUS30D5xVo38+uppDOlgRYz4guHBJXiPxdEaHcSpTqxByZtJebc8SoMfMQHMBHGFUzs53YNAxaqJEqXi0ql8hdQ3qgggrFM2OjSJVGym57ztYuiV2IFT+BEY3oVzImpwERQZ6+SwbvJ5BHxFOkfcQuXpKI8S8mDF+H3rC8XMTuakd4/MM7qvlT/wa577Zmdww2ffn9YhH5dIGxOY8SceeBDJ6vh3H2pDxF6V7jLrt0v7cWPXWJK9Od00B/Ko3jLsHMqcLbwBgCsXAjrFm62zYLRjHPAY/mKpF1koMPmFVaiRsgLYkcpz4XCccMJf53lJVCr8+b6NYBblmAZuy5w1RiI3rPSK1/RNUvIJr7MDKGTr2Q==;
	5:YjKiw2EceGjFwn0msexpALF419pOe9xUcBKtYlq7d6m9K2GOlSSiuHpAs6n1DmGzAHgbc3NyYXPn3eHU2QVSKCV8RXkP0rNLfTCb70VmzSn7wpZ5ZrMcExLzNL9jwAZG8upvFnrO6vXtksM9L+RUNC10GmzQaCmnEpkRn/fvpPE=;
	24:odiBQ5bCJ5JcLT3dBqOPJ4mGulDRvSCY5vx5ZoF0cPXVUX6321R7TFXgRs0mFD9dshQK3NP+31UmWWHcKDgJOlh4weQtQnsHozqNqesHwzI=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; VI1P192MB0062;
	7:sha4hI2rjIg7SjsyEInDHgS38pcIFEEO15ULlpCXcS3HJ0C66POD0Ssv/RGsjw0QJc1pa0993mLwPCa2pm01oYZsa7ejgvgvqXsliIJ1uZ91GIRoz8rXbXr5nfYEAWG6nfMsQ88ZJXnFG7arBre3OVu6/QbtD50GV5tbWGPX2PUVOByDpfeSYZaq5v3wdjAIdKj05hUS/5eOR6lJ112oPzFkA3RwITL37WnWIgNkQsU+lXbDaILbDcEVaFB3sCnL
X-OriginatorOrg: qiio.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2018 15:05:33.5462 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 74c95beb-59e2-44d8-2d3a-08d59c9902fd
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7110674e-f830-4f7f-87a8-a46973e4c75f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0062
X-Mailman-Approved-At: Sun, 08 Apr 2018 13:41:55 -0700
Subject: How to set SRC_URI in local.conf / how to set any variable of a specific recipe in local.conf
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
X-List-Received-Date: Sat, 07 Apr 2018 16:39:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: de-DE

Hello,

how can I set a another branch, i.e., the SRC_URI variable for a 
specific recipe in conf/local.conf? Or more general: how can I change 
the variable of any recipe in local.conf temporarily? I tried something 
like this already:
SRC_<recipe-name> = "..."
SRC-<recipe-name> = "..."
SRC_pn-<recipe-name> = "..."

I would like to switch a recipe to a testing branch temporarily via 
local.conf without playing around in the actual recipes.

Thanks and all the Best,
Jakob

