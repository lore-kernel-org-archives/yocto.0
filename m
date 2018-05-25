Return-Path: <jakob.hasse@qiio.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E241E009CF; Fri, 25 May 2018 19:44:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.58 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1825 seconds by postgrey-1.32 at yocto-www;
	Fri, 25 May 2018 19:44:15 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0058.outbound.protection.outlook.com [104.47.2.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47246E009B9
	for <yocto@yoctoproject.org>; Fri, 25 May 2018 19:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smarthometechnologych.onmicrosoft.com; s=selector1-qiio-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=1lYEMp5ilg+DXJGZes10YUwWljUQHzXf7DeScuzb2aE=;
	b=Jtv24N7RCwJ5TuT1tZgTvBK1Yje4TT8gtghHPtgzVIcnmHLTZrSJ66DEy/gcMHmDlduDT+y1qEcDqH5qOn1kkGBGLP8KIGfh5QfmyUaxHnAauPgqpXgWsnEBJ9QCr/eTZTnHgucOVMn75B0NDaJOfFnMUVY15eHVjyicpBIXHRE=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=jakob.hasse@qiio.com; 
Received: from [IPv6:2a02:168:6898:1:84a8:e960:4415:80b9]
	(2a02:168:6898:1:84a8:e960:4415:80b9) by
	AM5P192MB0049.EURP192.PROD.OUTLOOK.COM (2603:10a6:203:80::19) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.797.11; Fri, 25 May 2018 16:38:36 +0000
To: Yocto List <yocto@yoctoproject.org>
From: Jakob Hasse <jakob.hasse@qiio.com>
Message-ID: <975e67af-45fd-9957-a140-0313c9200105@qiio.com>
Date: Fri, 25 May 2018 18:38:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
X-Originating-IP: [2a02:168:6898:1:84a8:e960:4415:80b9]
X-ClientProxiedBy: VI1P193CA0003.EURP193.PROD.OUTLOOK.COM
	(2603:10a6:800:bd::13) To AM5P192MB0049.EURP192.PROD.OUTLOOK.COM
	(2603:10a6:203:80::19)
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM5P192MB0049; 
X-Microsoft-Exchange-Diagnostics: 1; AM5P192MB0049;
	3:Mhav8v+W4LwlDm7CyjT3Q+B88oTyBe9sa8wa1RTHGiDerQkzjmyCvuEhnlL3BjKYFb90YqRKNhPy1bOC/jU2Sb81qMEmD2Z0lX2jnGM9tssaCI54tYL0LDysm4SYJKz/oGRkzmFv+LQK2Zhs9bLC/XqYdOhZybHXSJtOZZMO6b0XDUhPqXM7YGRObrF2e5bvT5ckucFTzyv862FkrYYf7AVml3BduGZLDui/8v4rA/SZKQJPud3rErAjJK0QLTnx;
	25:sBXRr+GiN6+bMpdQBHlqg1jH+34CEFhaP5UmiOaMDF1Guq6nXkw8SGhDIbuSRbcawgIqbtrLni2vd7r5foMyDx6AFRVWhRazGgENX7Pv8VhH1oTmvMtvdTKUKj2Zrc8eB61C2CJ7RC02RNAQZ8DkOEjVUJFr869DmWtWDz9Mtkq3KSqtbdN6sTnyk4c5qvVnS6QqzIIno0X+D4cdef9BSfgzo71tOHauZMCV/XtrvS9SA9nHVGmgQ5QsLMH1VJbYla7Ysd32uSM8g+ODbHrARQqI0tEp+6A3fTzDRVX4z9fJFbS2zTyODcgu/CCzYVLg6DNCwpogWC0OV3glggU41Q==;
	31:97bShezQpmvb8lJP46F3ubMW+fxEte5SRZ2il3ZbwDcd0Lo9nCvD+YgC/oAR3258D1TxSdjTTi3nJQoblxxQ9auR2x6F69c4XH3Xnbft3oTaLnuuwgtIZLnfMmjPLvm0fNsb7RoHV3IjjtRAhOIEcprTIwHS6K2ZPTKmM6hqpU1yBnI+4CITEoPfkPOWhRUfXKlSQTqY1euaFp/KobaVJXzT2OFHRq940GoXEyz30nM=
X-MS-TrafficTypeDiagnostic: AM5P192MB0049:|AM5P192MB0049:
X-Microsoft-Antispam-PRVS: <AM5P192MB004965255782840FAF22719984690@AM5P192MB0049.EURP192.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:;
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(3231254)(944501410)(52105095)(93006095)(93001095)(10201501046)(149027)(150027)(6041310)(2016111802025)(20161123558120)(20161123564045)(20161123562045)(20161123560045)(6072148)(6043046)(201708071742011)(7699016);
	SRVR:AM5P192MB0049; BCL:0; PCL:0; RULEID:; SRVR:AM5P192MB0049; 
X-Microsoft-Exchange-Diagnostics: 1; AM5P192MB0049;
	4:BfHK3JFXTiU7gDyM3U7IUJPm8rOIvEi1VUazlYtvRUmoTfEuKH1Sg346z5KWSHZPg+qnEIAALfzl/5xTw6jaeKCAceu+evnEiwcz/4CZExuPdYGrH9MiastnGCzulXcB8qZ+OKvgyxh8dXTvQcqMDVS9Ik8f3YvjOCrP2t4qdJwmAu3VYWsNYNtLAkHlr5BLCxkSvBJl49K0IP9wRTiCWAMeYHtE89etXMZy9I2gQ+CoXRHzWCYqe/NZA5M+ibEh6MRt3gvU6c+hUwCebgFEkw==
X-Forefront-PRVS: 06833C6A67
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(396003)(376002)(346002)(39380400002)(39830400003)(366004)(199004)(189003)(8676002)(316002)(58126008)(50466002)(16526019)(186003)(86362001)(68736007)(486006)(65956001)(65806001)(476003)(2616005)(1706002)(6486002)(81166006)(81156014)(64126003)(106356001)(386003)(36756003)(8936002)(6116002)(230700001)(31686004)(305945005)(7736002)(47776003)(44832011)(46003)(31696002)(5660300001)(97736004)(65826007)(478600001)(25786009)(2906002)(6916009)(67846002)(52116002)(52146003)(23676004)(52396003)(105586002)(2486003)(53936002)(554374003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM5P192MB0049;
	H:[IPv6:2a02:168:6898:1:84a8:e960:4415:80b9]; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: qiio.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtBTTVQMTkyTUIwMDQ5OzIzOkh3Umc3Y2NFdHlUckwySzhjKzJkTkZqbHNZ?=
	=?utf-8?B?TUxlRDR2VVBtVFJsVUhFdmNkSmNCZXFpcytYcDJZSm5FRWp5YWZLNGZ1TUpG?=
	=?utf-8?B?cjN4YlhxTUoxRWdzb2kyM1J3VFRuNXZnajRrY2hYcENNbSs4SFRKM3paenJz?=
	=?utf-8?B?dDRpTTQ2SVExZTBHNVMwNzZiUTRRekVmeHRNejY4YUxlaVFIanBhcHRsdlNH?=
	=?utf-8?B?S1g3OUJYRFJwQXNKczFFYU9nU2VqVHBnbktGVm0ydSs4UVNWaTM3S01SektL?=
	=?utf-8?B?d0RoL1ovVVZFRmJZYVJiR1lWK1RReC9XZy9jYjJ3QXVwR24wdU1OMitMcVpH?=
	=?utf-8?B?T2xxQWtQWmlGNDd5dW5EWXplK0hYSUE3MGp3dy9kcEExVzhpOXRkbVZnT1Jx?=
	=?utf-8?B?em5xdW4vTGpYN3NKdGVyNnBnUnpMV2hFUlpBaSs0Z3JZT0NTSGlWK1B5dDg2?=
	=?utf-8?B?TUV3NzMrdTV0S3k4ZjhIcHBtWGIxdktQOG5GL2RqT3hldTNSc2tXcUNUbEVa?=
	=?utf-8?B?bHdpaUpzWlltdkszaWc4VnRKa3dLZm9yRFBydmprVXNLbHFocDhmNjNKZGw5?=
	=?utf-8?B?NFlSZ3RNTmhGeVNMV1VvR1hRTmJHUHhOQ0tFeXVQYjdZOXRzR21pQXNvdy80?=
	=?utf-8?B?TC90QVdvTUFNcHJkZmx2TXJzUHk4dTY2Z2ttcEQ2elJNT0trWXNNZGdEMjZB?=
	=?utf-8?B?QjFDMWdiRzNjNXhjMDVXZ3ZpbXZpRlYyWEYrZHJVKzVRdGU4aGRFL01UNExM?=
	=?utf-8?B?Z1ZrZE5SVVRXcU5FeUZDcDRPNUh6dEFBdXZsQWt0TUxvOGQ3aDhiZ1EzL0Vq?=
	=?utf-8?B?b1hMMzRSWWplZmZJZDdxcklCUHIzQ25sWTNPcUl6dHhQMWsreGR1d3k0MkRC?=
	=?utf-8?B?S1hST3RJc1FZSlVyZ2RnZmZaZkFOdzd4TjFHSFc0Ui9mSVZSL0V6VEdRcXMr?=
	=?utf-8?B?aXpPbkVtSjNFUmh6Zy9Rc0VrYW04amwrL3hyWklqUHh3TnhZclVKb21remNL?=
	=?utf-8?B?SzdGYWxIbU8rREI5WElrajRLQ0xIT0pLSE1VY3JDN24xbzY3N2l6V1p5MW9X?=
	=?utf-8?B?cG5kZXR2eEp2VEdXUmljcGNvYVIrTHRxRGt0UnNGeTBhdVFHZkdtaFIxNSt6?=
	=?utf-8?B?N1lnWDNZUHYxVEF5Q3pUSnJDQjM3aWQ3SXZXb1BYeE1BaDdrd3pVbUpqZUlp?=
	=?utf-8?B?L3Z5UW9xdDU1bFMybzdSU2xpcXNZdm1TK2ZQbSt5d3d5NURoTGFSVWUxeUpX?=
	=?utf-8?B?SDdydVg2ekZOS0hvZjBXSWJyd0ZoWnJLNkt5U1QzRXFXZS92R29UdXlOUW1z?=
	=?utf-8?B?ZklGTGliQ0lDUlhPamkydXY0ckwwSXhNbDU0YnBPY0ZvVmtpVjhYNDZmU0JZ?=
	=?utf-8?B?VSs2TWZEb2xhU0tJNFFVTHB5cUxSVXp5RjBUVTY3bW10SUVXS2dWaXZqOXRx?=
	=?utf-8?B?dWg0cUx6aWo3QUVxeklUanBlcjVQTEFSUkl0OWtIdVlyWUxpaDJHaFFQOVIx?=
	=?utf-8?B?UjIzN29ybWN0aEZFY3BtSXBUaVVmQnJjM3Y3bGFiSDdDbm53SGRVbTBvdHZ6?=
	=?utf-8?B?MGRWSVVlNkpsSW5zZXpDL2pIbUdRL1l4cVpzZUVTemJhcDBIK1EwMnFIN25l?=
	=?utf-8?B?T0pPVG5ibVI0T3pqV0xmSWJXdkE4OUhER1BldXMvSWRqSG55NFZWUFZOUkdZ?=
	=?utf-8?Q?LlYnDpVin7OvRCrqlk=3D?=
X-Microsoft-Antispam-Message-Info: FN9wxqWZ8Emj9unYK0yQuQNroyfQIZuZjR5VbGvJYQQ2i12NdGD+7UH0TkZCCvlpmonwGMQu9e8x/2A2miTpuJ2uBAQiV327AjmpbAePPpkgnBVd4Gj0jTJqwvH7Wh2sGFmmu6n8YGGo4r9sndovVJWBaqOQepjcCOKJ/kdCXC4Zh20sNjLmsk0+DTcT93Ap
X-Microsoft-Exchange-Diagnostics: 1; AM5P192MB0049;
	6:8Fplai6RTdFH+O9UxjzlKFnmOuuWhCKx5RBC9AopxxGpbYTw9fVYT002cPmI4zuokgUQrqj/0RPKiyS8e2qAI0k1acHXXfl7me/gm+/qyVwFVMPdjd+5T1978oimRqnXGn8W3ZOJ5byRHOCEc8wcuhayHA1EGBEGhYyvfDvuLjFzFFsR0mWwPlLpnn3B6v4ONFyxlbcaUtDKFJbQLbuOs6IrCmBJyVtUN8YUu6yL/ZR4dKbc25AP7VrMkeVIiTVdVrxAtPOAUNWRR8xwkno/TKbS2mbzvVtOsCf+HnEAuhTRK6It1hPd7KJZQ4OtESeO/nUrl9TmI64j/xhP9UrjG/Zup6vdPihDW+HnMOs41KagVdot4xAO1Z41D6wWuE8pu93jAdDlpwOJU8qzcMeI2OVEucw6MyCfp/UX2g4qJgcoeHIkkcJVNyeQRrc6OQOW8UdWPvX9i50iP8UzaYLoSg==;
	5:M1KdZsJ/qSYU3CmYK6XD91i63m/ovsoE+n822IW8semLqcTRylPmqk9FPLmipC3Db/E9VZrlMgpnGhxHP2doG4PmzxCzoPXKrKGrutR3rCFPtVfw/omN+Yxsm290bv4nTwRjAw5+BZN8EXROl68wTdI/O39Q7oc7+0BS6h1BN08=;
	24:SavBHfQegwE51tp/KNGXnftu9DEuWORd5UQsqD+aJkGeCoJgTYrWMvtFqOwFxBmxwncp1S7y92fMrZ/EM/vFdoaRR0CaEmzKt+lFxzXaBC0=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; AM5P192MB0049;
	7:eJ4DfkoqF7G8MM39x/7hdy2v7RiRYd/ZWq/m4yt8hG3Xmkkk3pbf1RMS5/RNJthKs+gCw6sqTLclRGRqJL+98MWQlxM4z/AXivhr/YI2aWTpYxLQwY7a+AXy38t9CRpTDxH1zoEdwP1dkZJbZ0werJ9obLLwDsIrAMAYPfaywFdVsFwsN7dTLzwmJGohBZhO5+BRtED7Bw0XVZpS50bvrEVZjmeJgX8qZlWebQL+/PyqBHy/ZPIkr0mJcidLdALy;
	23:85imYZ3SQv4mz19EwVuDlRYOG9vQAZr2LFbvX/8jHmH8HRrx5O1+aoiNvx9Oh0TEB0VwadeLCIdAC7vGaRDfAWTawxn3khzqpaD17xIJYo2qntowqNKgKqBVZIU1nz8Qm2QSRimnWzu0n5YImbrCDg==
X-MS-Office365-Filtering-Correlation-Id: 84a47c3a-e3be-4669-e666-08d5c25df6c0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2018 16:38:36.9276 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 84a47c3a-e3be-4669-e666-08d5c25df6c0
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7110674e-f830-4f7f-87a8-a46973e4c75f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P192MB0049
X-OriginatorOrg: qiio.com
X-Mailman-Approved-At: Mon, 04 Jun 2018 01:11:40 -0700
Subject: Set route metric in recipe
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
X-List-Received-Date: Sat, 26 May 2018 02:44:18 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: de-DE

Hello,

I would like to know how I can set the route metric for specific 
interfaces in a recipe. I have two interfaces, one eth0 for debugging 
and one ppp0 (modem) for internet connectivity. Since the eth0 interface 
has by default a lower route metric, but is not connected to the 
internet, I always have to set the route metric manually with 
NetworkManager.

Does anyone have an idea about this?

Thank you very much and best regards,
Jakob

