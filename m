Return-Path: <samuli.piippo@qt.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBAE1E0095D; Tue,  4 Oct 2016 03:25:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.98 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1031 seconds by postgrey-1.32 at yocto-www;
	Tue, 04 Oct 2016 03:24:59 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0098.outbound.protection.outlook.com [104.47.2.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE2C0E00932
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 03:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=qtcompany.onmicrosoft.com; s=selector1-qt-io;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=2jC9Whipplr6OMzgEUWjCAR0aBAEDvfV4pBBv8sels8=;
	b=DNBpj4yjGvMJqOvRmeNFkIrXu0llmn+etHKdrccrq69glihsbT3Lf66Hn9NiTIAXDjvfC0kpiiwOE6M7Q4tktSL8bDpxv+N88A+h4VxnTlpW9M/WhlFd5jFVJPRg+YnBuBq8ZlVwe1LfhtCu1JQ5TmkOqpkdpPICOqAyemrAB/w=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=samuli.piippo@qt.io; 
Received: from piippo.intra.qt.io (192.89.120.53) by
	HE1PR0202MB2732.eurprd02.prod.outlook.com (10.171.91.138) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.649.16; Tue, 4 Oct 2016 09:51:44 +0000
From: Samuli Piippo <samuli.piippo@qt.io>
To: <yocto@yoctoproject.org>
Date: Tue, 4 Oct 2016 12:51:34 +0300
Message-ID: <1475574694-25319-1-git-send-email-samuli.piippo@qt.io>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [192.89.120.53]
X-ClientProxiedBy: HE1PR02CA0064.eurprd02.prod.outlook.com (10.163.170.32) To
	HE1PR0202MB2732.eurprd02.prod.outlook.com (10.171.91.138)
X-MS-Office365-Filtering-Correlation-Id: ac64e40b-5be6-4949-221a-08d3ec3c0c77
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0202MB2732;
	2:l0HiiEnKbpoSpi0tgHoKpsqRcPjomTTN6CWWi5vRHhoAB96gAFU56IouC6gizCMqZsJRbYp3T7MXqtSq2Yst67xbtLBtjInLq4g+XwJMsNbvbAzQ2rFuvTx45p8jHmmMR1mwvcYsJDJ6MHyqTMZa3TF3meUzNcxgDYUIr2IP77K09NjiqCnw2n6f6yqgKAxBf66u6NZfijVpf5VOB2XIsQ==;
	3:SpDru22xYHHyg8chyPTRWe2MG5W2rewVfwUtQcycIBF7BixNXsfXuXrXe9f+jji+x2Ibldn/Riq4qIEMbwySH44B6Y7KCfvmujkT5QbFqxx7JSyTBGbOGq30WQ8g1C8IxfPlpkPaf1X8J1EhW+6D2Q==;
	25:OPxMzTW3suT1/bvNmQgfGCJg3ye0NPXf4YkzFsLcDCRQKMxswwXSOCL1FLXry9yrKrN4zhVMvyXxcZkOhJdSGBXi2RmjD3AF0ZYK9XGGXNv5tHWzjyMSLcU/oZtrcT8rh6DD93cRHbrgQI3oArE+1sGdIeDFjuDytmKtVZxXzr0mTxq4imOKPuPeXZQ5jnOV1ezLr580WOhdZr6icUAjRN5mR8oVSGxON402vYy3YurMUoT3Yds6tcy3oFwkJo0bGquPjEC//7VY23fcHTVxqgA9TATHUTHEWhP8fLuya4aP1z1+ea2M/KsKKenWh93AX4WpcU+at60i5kAjM+E8l6ksPCQBxiHrdymI0MS4vWis73KETSeqhwRlu+FqurBYmUhtImhxyRYVSpVkaOEzGmI2pXRwnG0Sfs/xwmcHyOBq2rKurSdIdo9cnKEMqos+
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:HE1PR0202MB2732;
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0202MB2732;
	31:niW2xuBGu7PKdnV/oyOhVbNSybBvWyQQeCE+UZAq8LQA6Y/WOTvaTR4Cjtmk81AMOV6POqTVgnzrazRJuIl3tDVjSkIFDtPX88Gfj4E6BnRtZMfFrMwqOqr8No86TLRF4KaeylHcQp0e2Ad4luIU4yULvR6y7WiASq/BNri6rN/DUJ9a1uMOno8GzuC1JNYZV62LiJZLRobOhSp4kL2emttYDAZrCTjkZ24iHlr9oDmwF0/OVeyNfiuhFB8/F8tAKUaFluUwBt4ZbTnUHkBEcg==;
	20:JjYO2eBZ815BhOMNUbtsgPi21tTjOHxEUeMvw+fY7493StAY1LRRd3hzJ16X02Bu17zKOzefnMbDlIg/9yyMn2yFrfwf1NKjm5gVuDfgiCL5McK5z/mYqE0tPkJtsUsoNfAxXb0imRQtpHmBfvnLruNAtWvrJyna188kj/sp+FbE9Z8Eo7apcQayqAt53z7roahKBIKqIzeVlZ9SzWPM3woQeQN8jPgaZCDnc0Eaz+uvbu4HRkMI0RnOC5uWfjWz
X-Microsoft-Antispam-PRVS: <HE1PR0202MB273248FC756D20328713BA80E9C50@HE1PR0202MB2732.eurprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6043046)(6042046);
	SRVR:HE1PR0202MB2732; BCL:0; PCL:0; RULEID:;
	SRVR:HE1PR0202MB2732; 
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0202MB2732;
	4:9jOzv/FRhkCFD6ASC3l9PB1ktCFfsDlEzzFaClpnjFx6YxERfQrbPZ/RtFPZtrivwKsTfb9I11FoFeAE30A6g/wX3BOMJoGVQq8yEecrYbhWm25u1KKNRPp7KqOfqm0tENn18yG5LAhUBj9M0a4fpLMtVmsenlxJcnXwUK7Wq+Y0J5PLUV0Aeb/tm9G7qapyK9kFzRzISTD0Rqu999sGNAnbkhKiWGcPBoMpyTzJEmsRnu++Swd0dCkadH4vCxTPP0AdH+QQYR1AdHSaDpjYLymrYakNflojRNdWt87a8SyzM6goyK7Ii2lNUVaS8o+jVm7H+/Rjy5hzj0bNHxWzCmHvkGLvru3mGbnup8AeBHTXyIURB9/KAWR20EsB5LmmZrrj1RZZKT+/VUmhMJHSzX5Wf/mLMmXm+EylYK+GOGWuymwvNIZod2ss/QzJe0ri
X-Forefront-PRVS: 00851CA28B
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(7916002)(189002)(199003)(101416001)(5003940100001)(8676002)(50986999)(450100001)(81156014)(68736007)(81166006)(92566002)(86362001)(6116002)(3846002)(586003)(77096005)(33646002)(305945005)(2906002)(36756003)(7846002)(53416004)(42186005)(66066001)(2351001)(229853001)(105586002)(106356001)(47776003)(107886002)(189998001)(74482002)(97736004)(110136003)(6916009)(50226002)(7736002)(6666003)(5660300001)(50466002)(19580395003)(19580405001)(69596002)(48376002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0202MB2732;
	H:piippo.intra.qt.io; FPR:; SPF:None; PTR:InfoNoRecords; MX:1;
	A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: qt.io does not designate permitted
	sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; HE1PR0202MB2732;
	23:NB1Ggay5O9N/e0wi9hQCBN7UYXQrV0ENRjKF1et?=
	=?us-ascii?Q?9jTV2whYISQuyPLCkNx5tgkN8i81fJSkiAL9Fl64ww+wHgc9b9ur8N4krr/f?=
	=?us-ascii?Q?GPBkZvtzVACB1GpzeXDR7FjPebR1zsoARY7HF8tYNuAuXwxFudrDlY22ZX3b?=
	=?us-ascii?Q?+Z8jX90TJvx+QDh92/cCEmljEIsLwZgpx0sm7xjlIFsHX2p8ev1zuKbRVOzy?=
	=?us-ascii?Q?jaMSi9aDrJrq5f7nqXQ0eCQkm/0HPYUr4Q6OHx/q5nl79Q+fRmSqmISWTuIt?=
	=?us-ascii?Q?3v8ZTAJrM3TfkPu0+88NxgTflqmjiCTa4XFku7hB58h7Ml4YPckFFysiRjwz?=
	=?us-ascii?Q?SxXeFnbhLqNQMJRaYa3fEk0GvPTZ7bnqaBA/w66Z6aYWyezys3cUK+sAG2bW?=
	=?us-ascii?Q?i98KGt4WM/ekMU/EDC2E1C3gc+U2yK3iKRQOsIoqbrE/Gfy+uOq2k1KZvRrW?=
	=?us-ascii?Q?pBkDrlQsasnlDiL4S6osMsKmuMwCWlWkXJAO/h+zYjuYO8hoMvJZ8cMBrWYq?=
	=?us-ascii?Q?e5X9YckQj6Dt8b1jmD/BMW93pbsjPrNNcf1orUi8DNBTeHBlu3eRWykdk0i2?=
	=?us-ascii?Q?QrycnCuVDmorKw7+B836b61sy4aanpXIwDHE+7X2ZbXgsGk6t77BFSOnHLhs?=
	=?us-ascii?Q?U1P+kWUK60pdaMG+ViZWfT4XmM/RojuNmO9eDkJMKU1q5t7NvTV2+PGEbwDh?=
	=?us-ascii?Q?WI1GS9m5inFy8dPjN5bc3qfetCL3Wqn5omt1Phbi/ZF9vRxOpDH9p9zrHlNw?=
	=?us-ascii?Q?GYdmRMWdC84Z3guLkqnXBUYftSR8MU4q9AInN9KLOVzy2GY/fLX9X4NhQSm6?=
	=?us-ascii?Q?VTrR1mcW7xkmFNBhZGhD+4nojn9O/6C7ozxT39NJ9CgyyQoHNJ56MkCP4G5K?=
	=?us-ascii?Q?uJL2zWNx6Yk9QWzutWJAgSBykCiAzI9ENLwpbgB0BD7l18gzDqVluWpD3G7K?=
	=?us-ascii?Q?JV1wevdY7YQzUBitGafAyUunrMREuprQfv0V3twYmNZ3oeeaXPbVh5r6TNmI?=
	=?us-ascii?Q?pleZFPt63AjYIuAdhJBjNBoIw7naEB91HmRco67+0RtV1qaaUhI90iLUJ6r0?=
	=?us-ascii?Q?DRCHLPhAGZs1Hb0thPzXYDq/0u+EXzjDL/E/BRUPJ+SAMEQO2GRTurgXM8x9?=
	=?us-ascii?Q?h3LBrzJzI0gVZtZYbGi4xAMld8mMUQxrE?=
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0202MB2732;
	6:S0zZcnjCLkY5ZNkDDUaRm8lbh49se/FzJDneEMcdnUDoQfW398E7oCeSGQZivB8L0ltECLYikN34zbOL3Av+HaVggF9oF7cyQ2mafRHzNdy+o8JE0elrSlyjSPDc3ELJbdroHPqdgBML0stoLHfSflAZUsQMptxs5dAygjulDbgyYT1IaxDVqS+mfr/jdHsi/XaDkw2+2mnJkw5r74U/0tYR5cFrIBrftRr8Z4OIxUXh9KGzAP2c+Wf4fqtBpyCWX5AbyqxwrwocZ83ZwUSM5XZGnltaidTXUCjgsPP7l+dQoJiQvdULRRY9USfMHhAzOViMp2DMERorRYQtABOl0Q==;
	5:7cSw0L3zLWtmsMzyTekcLBHn2ZwU4DZcg5nt82Mq9H56E2nUQjHeJCPXOnersDwrQ1J1v5qztcC74G/l97HTB9DhX1Vm+se5c/HPYQP+YXFppYYV6VWT4vKDVmq1G8FbB/V/dZ/oFPQzXfJZwH0ZsZpN6BlF2Ltb+WNNNkSCmUY=;
	24:P6Kf/jv/IB01b7V8iWmB9jOAyQU9iZ01j9UdkXra4Szr2eB/YlrCQEzim/lnv1+Y2k3lzPLEV44/XYkDxWjFwjOQn1UoxffD0K+rZ7DWGPg=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; HE1PR0202MB2732;
	7:4EG4M97H3aRSWdbHCOC+1ntWC2rfAQNe7xKRAMxhsZXpDcS7JYWsexTTJgffVdnBhCDfSR1WE8RI7cM07OKra8tMm9PqnboaxmypVXFzYHQKykVcgZwS5MEiDfhzCHfbOVl2TelHGATg2bZjTsu9MW1+0NxvpRjGPnEfK/0RE+OcJrDmHtaGnx1k6GTjB66ImITUsoPODp072PTTlMbPnlWgiQNp8f8RbHgmSFw0i1aD5ygF3SHq9sfnlI2AwwjpDM+94Tokk8xhyQZy4WjG/U6XCXVoNdVxOMR2vvFaToaLmAKFbzAFZSDabg6uhutqX57ijNw7rkWuJDbLO1QV7g==
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2016 09:51:44.0208 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0202MB2732
Subject: [meta-raspberrypi][PATCH] bluez5: correctly append brcm43438 service
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
X-List-Received-Date: Tue, 04 Oct 2016 10:25:03 -0000
Content-Type: text/plain

Cannot use += operator together with machine override.

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 recipes-connectivity/bluez5/bluez5_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-connectivity/bluez5/bluez5_%.bbappend b/recipes-connectivity/bluez5/bluez5_%.bbappend
index 89798a4..956d776 100644
--- a/recipes-connectivity/bluez5/bluez5_%.bbappend
+++ b/recipes-connectivity/bluez5/bluez5_%.bbappend
@@ -23,4 +23,4 @@ FILES_${PN}_append_raspberrypi3 = " \
     /lib/firmware/brcm/BCM43430A1.hcd \
     "
 
-SYSTEMD_SERVICE_${PN}_raspberrypi3 += "brcm43438.service"
+SYSTEMD_SERVICE_${PN}_append_raspberrypi3 = " brcm43438.service"
-- 
1.9.1


