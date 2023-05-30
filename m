Return-Path: <schitrod@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15CECC7EE2E
	for <webhook@archiver.kernel.org>; Tue, 30 May 2023 09:28:41 +0000 (UTC)
Received: from rcdn-iport-8.cisco.com (rcdn-iport-8.cisco.com [173.37.86.79])
 by mx.groups.io with SMTP id smtpd.web11.5767.1685438912335775203
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 May 2023 02:28:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cisco.com header.s=iport header.b=KAXMgt1q;
 spf=pass (domain: cisco.com, ip: 173.37.86.79, mailfrom: schitrod@cisco.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=1736; q=dns/txt; s=iport;
  t=1685438912; x=1686648512;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=QKUQQu8zMsKFNX/UmbCrrh4wUKaseoO72KpgONgy3WU=;
  b=KAXMgt1qF25Tqsa2MZ/Ber0J0ztIoNLi5neGtvoQ+WooKac63ATT2amC
   WHsHNdEDgSvmjPRsBE1GbgPfQz3NFNQns8fEaedH1K8Bsw9j3wVu1HZ4h
   OKeMzR2H/0PYVI9VydmLR18xriC41Zfjyjb0aVmxznUFZrEZxutv2Y62e
   k=;
X-IPAS-Result: =?us-ascii?q?A0BhAQDywHVkmJxdJa1agQklgSqBXVJzAlg9Gi2III1uA?=
 =?us-ascii?q?51ngSUDVg8BAQENAQEuDwcEAQGFBgKFXAIlNAkOAQICAgEBAQEDAgMBAQEBA?=
 =?us-ascii?q?QEDAQEFAQEBAgEHBBQBAQEBAQEBAR4ZBRAOJ4VoDYYEAQEBAQMBESgGAQE4C?=
 =?us-ascii?q?wQCAQgRBAEBHxAoCh0IAgQBEggaglwBglwDARAGoSMBgT8CiiR4gTSBAYIIA?=
 =?us-ascii?q?QEGBAWfJgmBQo0WhEgnG0CBTYFYeYFvPoJiAgEBAReBSDCDYoIughqMJYNTi?=
 =?us-ascii?q?VGBL3CBIYEngQICCQIRZ4EOCGaBdEACDVULC2WBI1U9gUcCAhE+FE18DgERA?=
 =?us-ascii?q?wcEAoEHEC8HBDIJFgkGCRgxJwZWBy0kCRMVQgSDbAMKgSM1NwNEHUADC3A9N?=
 =?us-ascii?q?QYOHwUEJEuBWAQvQoERAkqcQgOCfQGBDRwOAQGBGANKR6IPoj4KJ4Nhi3uNG?=
 =?us-ascii?q?oggF4N/gVajey6XYCCCL4sLmi8CBAIEBQIOAQeBYzpIgRNwFUgMgk4JSRkPj?=
 =?us-ascii?q?jmDW4F/gxWKZUMyAjkCBwsBAQMJi0YBAQ?=
IronPort-PHdr: A9a23:HIYgJB/1vJRprf9uWO3oyV9kXcBvk6//MghQ7YIolPcUNK+i5J/le
 kfY4KYlgFzIWNDD4ulfw6rNsq/mUHAd+5vJrn0YcZJNWhNEwcUblgAtGoiEXGXwLeXhaGoxG
 8ERHER98SSDOFNOUN37e0WUp3Sz6TAIHRCqLgF1J/jvHYL6hMWs3Of08JrWME1EgTOnauZqJ
 Q6t5UXJ49ALiJFrLLowzBaBrnpTLuJRw24pbV7GlBfn7cD295lmmxk=
IronPort-Data: A9a23:JVveYqozNumyIXMjS9idVLUvhY1eBmJoZRIvgKrLsJaIsI4StFCzt
 garIBmFbKvfNmf8KNF1b4m3p01XsJaHnIIxGgI5+3oxRH4a8OPIVI+TRqvS04x+DSFioGZPt
 Zh2hgzodZhsJpPkjk7xdOCn9xGQ7InQLlbGILas1htZG0k8EE/NtTo5w7Ri2tMz2YDga++wk
 YqaT/P3aQfNNwFcagr424rbwP+4lK2v0N+wlgVWicFj5DcypVFMZH4sDf3Zw0/Df2VhNrXSq
 9AvY12O1jixEx8FUrtJm1tgG6EAaua60QOm0hK6V0U+6/RPjnRa70o1CBYTQRhazGiUgN568
 95mnp6WZRlzO/Ldu81IBnG0EwkmVUFH0KXMLX76usuJwgibNXDt2P5pSkoxOOX0+M4uXjoIr
 qNeeWtLN03d7w616OrTpu1Enc8jLdXxO483sXB7xjafBvEjKXzGa/iUvoMChmlr7ixINajVV
 ucJdWY3UCb7MhIMN3M9DL1vsej90xETdBUB+A7K+sLb+VP73Qt6zL/FNNvOZsfMVMJegkGAv
 GXE8m/lRBYAO7SiJSGt6HmggKrEmjn2Hd9UH7yj/fksi1qWroAONPEIfQS25qSklUC1YNl0A
 E4y1jR0qPcj12X+G7ERQCaEiHKDuxcdXf9ZHOs79ByBx8LoD+CxWzRsotlpNYZOiSMmedA5/
 gTWwI6xVFSDpJXQGC3NrO7Fxd+nEXFNdTdqWMMScecSDzDeTGwblBnDSJNoF7S4y4CzEjDry
 DfMpy8771nysSLp//jmlbwkq2v8znQscuLTzl6JNo5CxlgkDLNJn6TytTDmAQ9ode51tGWps
 nkegNS55+sTF5yLnyHlaLxTTOzyt6vda2aB2QQH83wdG9KFpi7LkWd4vW4WGauVGp1slcLBO
 RWK4loBuPe/wlPzNfUvC25ONyja5fGwSYu6PhwlRtFPeZN2PBSW5z1jYFX44oweuBZErE3LA
 r/CKZzEJS9DUcxPlWPmL89DiuVD7n5lmgvuqWXTkk7PPUy2PiDFEN/o8TKmM4gE0U9ziF6Lr
 I4EapfUkEg3vS+XSnC/zLP/5GsidBATLZv3sMdQMOWEJ2Jb9KsJUpc9HZtJl1RZoplo
IronPort-HdrOrdr: A9a23:+M7CXakUhZNO9A1rsQkoRR+ZmzbpDfOaimdD5ihNYBxZY6Wkfp
 +V8sjzhCWatN9OYh0dcIi7SdW9qBPnn6KdkrNhQotKOzOW9VdATbsSp7cKpgeAJ8SQzJ8l6U
 /vGZIOcOEYYWIK7/oSpTPIburIo+P3vJxA592utEuFJDsCA8oBnmRE40SgYzdLrWJ9dP4E/e
 +nl6x6Tk2bCBMqh6qAdxw4tu74yuHjpdbDW1orFhQn4A6BgXeD87jhCSWV2R8YTndm3aoi2X
 KtqX222oyT99WAjjPM3W7a6Jpb3PH7zMFYOcCKgs8Jbh3xlweTYph7UbHqhkF1nAjv0idrrD
 D/mWZjAy1B0QKVQohzm2qo5+DU6kds15Yl8y7evZKsm72+eNtwMbs+uWsQSGqp16NnhqAy7E
 qOtFjp76a+ynj77X3AzsmNWBdwmkWup30+1eYVknxESIMbLKRctIoF4SpuYd499Q/Bmfca+d
 NVfbfhzecTdUnfY2HSv2FpztDpVnMvHg2eSkxHvsCOyTBZkH1w0kNdnaUk7zw93YN4T4MB6/
 XPM6xumr0LRsgKbbhlDONERcesEGTCTR/FLWrXK1X6E6MMPW7LtvfMkf0IzfDvfIZNwIo5mZ
 zHXl8dvWkue1j2AcnLx5FP+gClehTIYd0s8LAq23FUgMyPeFOwC1zydLkHqbrSn8ki
X-Talos-CUID: =?us-ascii?q?9a23=3A+XOohmgK4vdDH+/CcXMY4hp0PzJuLXCakWrPLUS?=
 =?us-ascii?q?DAk1CSpu5VwWVp7JHup87?=
X-Talos-MUID: =?us-ascii?q?9a23=3APOHNzw23vyFBczu4ZHCzd4vmUzUjva+fJVARzc0?=
 =?us-ascii?q?6ifLVOm99Hx2Zo2WaTdpy?=
X-IronPort-Anti-Spam-Filtered: true
Received: from rcdn-core-5.cisco.com ([173.37.93.156])
  by rcdn-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 30 May 2023 09:28:31 +0000
Received: from rcdn-opgw-2.cisco.com (rcdn-opgw-2.cisco.com [72.163.7.163])
	by rcdn-core-5.cisco.com (8.15.2/8.15.2) with ESMTPS id 34U9SV7X006975
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@lists.yoctoproject.org>; Tue, 30 May 2023 09:28:31 GMT
Authentication-Results: rcdn-opgw-2.cisco.com; dkim=pass (signature verified) header.i=@cisco.com; spf=Pass smtp.mailfrom=schitrod@cisco.com; dmarc=pass (p=quarantine dis=none) d=cisco.com
X-IronPort-AV: E=Sophos;i="6.00,203,1681171200"; 
   d="scan'";a="2135533"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=acZc3FnTkaXBAIElj6Re8vJ/fIloxTOwJDeGmMae+CLPiRrP56oZTsrPTKueqAMxc17RVt5I2eFkzOHHnHYQeRT8Chg1lvMFPHaLe1+dR9VlI+WBBiPcNAcEGS4T13xkKy+DTX+qu/XJpRpsPGt2AJHCRDVkRjMIfteJoIHzbdEe7ir3WUI8kQ6txpfiJP00igFEzyikavmoPBXNefkLE6BCg60qnyhXNC3qefVaiIh7fPudC0uuqVSuQsUMzxNy/uIK6e7CDeModHNKBVri+VnmWsDxl5c780itMAb3YgIBamouC1xOEiSjLvKDg/dLtiKqK3C42nmVxgh8estnoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fw2DoCat2f1amVpkwLMWS4CmK2MXQkvZUDqCfDtWDr4=;
 b=Ty7y2o93dm49NtV+FViZaIgf/bqUFthHVOGgMgJPm3U9DTqA2VClQt+yuvggweeiUZ3U3pjdyoJYeU6AlHLxZAIEh0lq5PFaXquYjVuvLXAX79rpilel30xCFVPzdlRBsjkD7wfFPiW4x2Gm0K4boAKtXrdVuW1/VmHkfUhGr+WyEU/XzIn+f5t0yq4JifvDVpRnhYXx2GSkGEPk3LU95WM6Az5kLeX01uaWz7D09bYqsl2w2YngJ6B9G0gvs+r5gSn3ESxarX87iMZhmdkJM6oyCLDIDPjJOz/LNBe6ETFg4DxWPofoYSbQfoyBAbRt9e/RWVmciIT79TZjpNjDfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fw2DoCat2f1amVpkwLMWS4CmK2MXQkvZUDqCfDtWDr4=;
 b=EBr5OzYHzDK0vMSQmi9nnfWN+c8u5SCa23SonyF1N/boJrlia5IdyzqpeINJQuMQp1/DTb8iPReYKivQSUqb5D4tqAIgYtwR91R1FZQO0ASv+HOXT3HN/FEF8tIiHdGWooEpsO4Sx3KMunhBKlOJAXZUvt2lBNlSoEE5MIg+McM=
Received: from SJ0PR11MB6717.namprd11.prod.outlook.com (2603:10b6:a03:44f::9)
 by MW5PR11MB5788.namprd11.prod.outlook.com (2603:10b6:303:198::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Tue, 30 May
 2023 09:28:29 +0000
Received: from SJ0PR11MB6717.namprd11.prod.outlook.com
 ([fe80::2ddb:3ab6:484a:673a]) by SJ0PR11MB6717.namprd11.prod.outlook.com
 ([fe80::2ddb:3ab6:484a:673a%6]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 09:28:29 +0000
From: "Sanjaykumar kantibhai Chitroda -X (schitrod - E-INFO CHIPS INC at
 Cisco)" <schitrod@cisco.com>
To: "Sanjaykumar kantibhai Chitroda -X (schitrod - E-INFO CHIPS INC at Cisco)"
	<schitrod@cisco.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [meta-selinux][PATCH] selinux: Set CVE_PRODUCT
Thread-Topic: [meta-selinux][PATCH] selinux: Set CVE_PRODUCT
Thread-Index: AQHZhy9TZkOOF09EFE6M+w9cfAaFLa9yornw
Date: Tue, 30 May 2023 09:28:03 +0000
Deferred-Delivery: Tue, 30 May 2023 09:27:41 +0000
Message-ID: 
 <SJ0PR11MB67172CA69C33FBC57C388046DC4B9@SJ0PR11MB6717.namprd11.prod.outlook.com>
References: <20230515131522.539380-1-schitrod@cisco.com>
In-Reply-To: <20230515131522.539380-1-schitrod@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6717:EE_|MW5PR11MB5788:EE_
x-ms-office365-filtering-correlation-id: e5398315-1eee-4455-45fb-08db60f03a7c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3kjBhwuSF6d0B7agDsS3bu5UDIA02T1Vs/ncWsciOcoOLnPKZ5i+/HBqtTDOTZFQYUaCCoO3e1meneRDliEvic+7hkotzye+wr8NQ1yqZoUftZFo7Rvoz3s+1qJ9bfe3FYFBrxrNzhGzaeaDBg6OJy5r5RAi8SKf8EK4IOtyRNp2189YEV19TapJ1jDj8Ammgv29N+a14xwcPYfOEEzIOlYcW2P4oyP7I85x+UoT3KauCPbyuu5BxOfMBaFMpOHeDd5TixqFTvoaWCRAcNFpE9EY2k73XFt8FqtsYVAhKLLlaXWrOJHTc+subRxprHm+l/5xBH5JuWPB2fq/QIvAKhsMJ2Yk+67UX3RrDup51uvqQou2Kk7gXrYjGFmoyosFFb+y7cGO6B4LViEoolI/o+EMaGgFKPqX7h0Xox9iamYN5nFUuE9FC7R1sRR4Cgoi5mQp9S8Cxp8G20Fesw+iQtSeo+sZuPZMe2FEtxk6NsIzxHTr/gEURmajnwRCoDjIvy+zoftNjewCpNt7PSByBiotjdmo5gjrOR5YQ72e+CimVMvXKoML3Z07Lj4cRagaAFsMAs6T0tQkhCL3uEqkjkInY4XKeCChswqUiCsfY2o=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB6717.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(39860400002)(366004)(346002)(136003)(376002)(451199021)(122000001)(478600001)(38100700002)(86362001)(38070700005)(64756008)(66446008)(66946007)(66556008)(66476007)(83380400001)(76116006)(110136005)(2906002)(71200400001)(6666004)(6506007)(9686003)(53546011)(7696005)(33656002)(186003)(26005)(316002)(41300700001)(5660300002)(52536014)(8676002)(8936002)(966005)(55016003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?/Ftm0xYqDV3EZa+NSsMxvEH8wQ9JXY6+hB/34yGfhqNLQucCCQmz3P+bmxDo?=
 =?us-ascii?Q?YjFydf49PVT881uvphGFqHUu1per5FauLL14Ee0dCsXpp/EuDw6Cf4YKYzsR?=
 =?us-ascii?Q?NwFNORtFKhjY9SeAlcMSG7xYisTm/8QODj1Dycq0fq/Q9cd8UjnLlKqdkrht?=
 =?us-ascii?Q?YB9rFpTGItVXfDqtFIO1txtgFUcvmEW7tqpAxNcJBdKvDPiU6pW5hzI07oIU?=
 =?us-ascii?Q?GmQqWvZ2MYAhGUK0anwzpD3nkYaHvGkRdWQfUlmXBTLxU+Dv45AQcf1vv+8y?=
 =?us-ascii?Q?3MNDSdFymZpeC4L6GGwW1nmZ32t+MtVVxff7fUcsVwdK8HMTuB9hNZmkuRZE?=
 =?us-ascii?Q?pdomUPOYQSowHMbajs0pGbW45BdIAg1axMcGUf3BHpsp7fyF4vocPy5XkGh7?=
 =?us-ascii?Q?PLS90IfOEfIbYbrF0qmHQ3xfn8Ae+NTBLnBay97oWuba++IhjYk9h99isJc9?=
 =?us-ascii?Q?5o7HRbGhoRawUYGX4F2RL4KlZN8mO3kxtXELvhNLWybnxcuTeG3ueWM/e8yP?=
 =?us-ascii?Q?21uXG08pE+l0Jv4Gl6Bv1Mqu77A5A6DWNdb5JRIYfYscUQqTMpxRg9/fiCld?=
 =?us-ascii?Q?W9QoFLEgszQTzVaxqejAemEQ87pmhQWs1Rwi/VQz+s1fPVJ343oS4WN8PSYu?=
 =?us-ascii?Q?fdW9TCXKidc4eFNhjMW9arnZcLoCxzF1/IUsz0efSytd0W2snlDZDy+u7PQv?=
 =?us-ascii?Q?n/CLfD0R8WZSDHb034/po+7eSXi79XjSYMMOZRas8Zwa6DrSfRUl46Iz0foc?=
 =?us-ascii?Q?1ncNKQPAtSwrbQ8g4pJXQ656697yO3YA5JBOmyT9ihqtouVz3C5StFiMHijF?=
 =?us-ascii?Q?Osjz8itVX1HXqgzBwvKBThsVVQIwXJHM94jMiBqf8C4Ml8NK7zvC/grhJ42J?=
 =?us-ascii?Q?0z9hxCMMxVNSHL2vwc4R0ZknbwxvDSill5d+ZxBd3dBqszoFciWYC74Cilp4?=
 =?us-ascii?Q?+EuAC92Y9B40l606sXOcstZBTcJ6W0wVpKPAaBbuxie992fFiCvzVse+U947?=
 =?us-ascii?Q?R6cnCo2icNdTtgr+oudnR1T11aDLRwhE3PEacbdsBIfN803C077dFKtWMSz4?=
 =?us-ascii?Q?E9CjUGh9nreV7MPF98qWdzrHVgpX1VpeKPlH3z0OVkxYBp0kw+qjWVEtFrnh?=
 =?us-ascii?Q?8/yaB4QwhL5FxGHlS5JPf+eiQNpD49DhrE2W+sjmJXziIX5W1VIoXLcfZ4Kt?=
 =?us-ascii?Q?ofWxArogB2yOKDB04b/r6xVrdJswv19brh6ok3S6uhgtJy8uvCf0D6Msxvb/?=
 =?us-ascii?Q?DNXfwqiOMNdahN3Gh6Tj0b+kS1LSyJ55sLuue+tKq5y2BTBVCqc1v4Qj94tI?=
 =?us-ascii?Q?FlPsPYBxJZofeyLkQ85sL5PfNxzblteRVICLbZERlK80Ua6ZkgrwuNiGeqVr?=
 =?us-ascii?Q?V7oggMO5LKLkk5tcaM1NaCs4ZzDAsN1NtyZWBrJ1m/LVUi+dJHZO14czWdgn?=
 =?us-ascii?Q?BlYFMf5jwE84gOa2ppDKf1q6MeIxbEqIGYKOJ9t3k7gw7h6FOekWIif2VHcM?=
 =?us-ascii?Q?Drv1tDyhpfJ65SDe9uYi+1yUfPLM8lPC7a5kOenI2RFAwc1wyfbT4PyvSEH1?=
 =?us-ascii?Q?y0pRGt6R3qPjbETjVX1bwskgRDdp3JwhcDGqtFCN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cisco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6717.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5398315-1eee-4455-45fb-08db60f03a7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 09:28:29.2251
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xdh3MrEHrDiOSydJ+hIVG2VSu04PO22A3N2lXOLDYCeOnodMQJXvd8oFqUGCiZf8nwoGzix90qEeLmEsnAL0JA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5788
X-Outbound-SMTP-Client: 72.163.7.163, rcdn-opgw-2.cisco.com
X-Outbound-Node: rcdn-core-5.cisco.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 May 2023 09:28:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60145

Hi all,

Any update/comment ?

Thanks,
Sanjay

-----Original Message-----
From: Sanjay Chitroda <schitrod@cisco.com>=20
Sent: Monday, May 15, 2023 6:45 PM
To: yocto@lists.yoctoproject.org
Cc: Sanjaykumar kantibhai Chitroda -X (schitrod - E-INFO CHIPS INC at Cisco=
) <schitrod@cisco.com>
Subject: [meta-selinux][PATCH] selinux: Set CVE_PRODUCT

The CVE product name for selinux-* package is (usually) the selinux (and no=
t our recipe name), so use selinux as the default.

See also:
http://lists.openembedded.org/pipermail/openembedded-core/2017-July/139897.=
html

"Results from cve-check are not very good at the moment.
One of the reasons for this is that component names used in CVE database di=
ffer from yocto recipe names. This series fixes several of those name mappi=
ng problems by setting the CVE_PRODUCT correctly in the recipes. To check t=
his mapping with after a build, I'm exporting LICENSE and CVE_PRODUCT varia=
bles to buildhistory for recipes and packages."

Value added is based on:
https://nvd.nist.gov/vuln/search/results?results_type=3Doverview&search_typ=
e=3Dall&cpe_product=3Dcpe%3A%2F%3Akernel%3Aselinux

Signed-off-by: Sanjay Chitroda <schitrod@cisco.com>
---
 recipes-security/selinux/selinux_common.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-security=
/selinux/selinux_common.inc
index 383f62d..cd51a86 100644
--- a/recipes-security/selinux/selinux_common.inc
+++ b/recipes-security/selinux/selinux_common.inc
@@ -15,3 +15,5 @@ do_install() {
             SHLIBDIR=3D"${base_libdir}" \
             SYSTEMDDIR=3D"${systemd_unitdir}"
 }
+
+CVE_PRODUCT ?=3D "kernel:selinux"
--
2.35.6


