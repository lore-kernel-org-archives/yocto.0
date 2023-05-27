Return-Path: <schitrod@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34F5BC77B7A
	for <webhook@archiver.kernel.org>; Sat, 27 May 2023 02:53:58 +0000 (UTC)
Received: from alln-iport-4.cisco.com (alln-iport-4.cisco.com [173.37.142.91])
 by mx.groups.io with SMTP id smtpd.web11.4263.1685156035770063392
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 May 2023 19:53:56 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@cisco.com header.s=iport header.b=fOw+Q4dF;
 spf=pass (domain: cisco.com, ip: 173.37.142.91, mailfrom: schitrod@cisco.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=1736; q=dns/txt; s=iport;
  t=1685156035; x=1686365635;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=3drt/7AFw7qgn+IkJO8D6+PTDE8DFEM9uYbHkO0D174=;
  b=fOw+Q4dFuAAw4zB8UG4TWLPGf8Q6X+1Uy8pIRv1bjaPxljuZFZuT+YIL
   YoW/LkX9wbnrCqi/8YmUyXCITNsxCpLu66tSs2fS2zg/eO58obuOpnlN8
   vWkPkxOFtHpL9SLvD5nMWgeJoPjBJmAJkN14OoJW8HTwpp6hW1SmDXGL+
   U=;
X-IPAS-Result: =?us-ascii?q?A0CDAQBOb3FkmIYNJK1aHgEBCxIMQCWBHwuBXVJzAlg9G?=
 =?us-ascii?q?i2IIItKgiQDnWeBJQNWDwEBAQ0BAS4PBwQBAYUGAoVcAiU0CQ4BAgICAQEBA?=
 =?us-ascii?q?QMCAwEBAQEBAQMBAQUBAQECAQcEFAEBAQEBAQEBHhkFDhAnhWgNhgQBAQEBA?=
 =?us-ascii?q?wERKAYBATgLBAIBCBEEAQEfECgKHQgCBAESCBqCXAGCXAMBEAagQwGBPwKKJ?=
 =?us-ascii?q?HiBNIEBgggBAQYEBZ8mCYFCjRaESCcbQIFNgVh5gW8+gmICAQEBF4FIMINig?=
 =?us-ascii?q?i6CHIw9g1iJXoEwcoEjgSiBAgIJAhFngQ4IZ4F0QAINVgsLZYEmVT6BTQICE?=
 =?us-ascii?q?T4VVX0SARMDBwQCgQgQLwcEMwkXCQYJGTEnBlYHLSQJExVEB4QEAwqBKSM3A?=
 =?us-ascii?q?0QdQAMLdT01Bg4fBQQkS4FYBC9CgRkCBEmcdgOCfwGBDRwOAQGBGANKR6IPo?=
 =?us-ascii?q?j4KJ4Nhi3uNGoggF4N/gVajey6XYCCCL4sLmi8CBAIEBQIOAQeBYzpIgRNwF?=
 =?us-ascii?q?UgMgk4JSRkPjiAZg1uBf4MVimVDMgI5AgcLAQEDCYtGAQE?=
IronPort-PHdr: A9a23:yCzTghZxkLwqx9/p/iEQNGn/LTDhhN3EVzX9orIuj7ZIN6O78IunY
 ArU5O5mixnCWoCIo/5Hiu+Dq6n7QiRA+peOtnkebYZBHwEIk8QYngEsQYaFBET3IeSsbnkSF
 8VZX1gj9Ha+YgBOAMirX1TJuTWp6CIKXBD2NA57POPwT5XZj8Wrzee+05bSeA5PwjG6ZOA6I
 BC/tw6ErsANmsMiMvMo1xLTq31UeuJbjW9pPgeVmBDxp4+8qZVi6C9X/fkm8qZ9
IronPort-Data: A9a23:oYmcXKtveZSL3ih0fWYdwEP85ufnVFxeMUV32f8akzHdYApBsoF/q
 tZmKWvQOvqINGSgedF1a9+z/EsDu8DXm9c2QQtsrCwzQy8bgMeUXt7xwmUckM+xwmwvaGo9s
 q3yv/GZdJhcokf0/0vrav67xZVF/fngqoDUUIYoAQgvA1c8IMsdoUg7wbVh39Q22YPR7z6l4
 LseneWOYDdJ5BYsWo4kw/rrRMRH5amaVJsw5zTSVNgT1LPsvyB94KE3ecldG0DFrrx8RYZWc
 QpsIIaRpQs19z91Yj+sfy2SnkciGtY+NiDW4pZatjTLbhVq/kQPPqgH2PU0T2FypAyjse5L2
 dQUvr+xUBsrPqjCsbFIO/VYO3kW0axu8bvDJz20ttaeihScNXDt2P5pSkoxOOX0+M4uXjoIr
 qJecWtLN0vf7w616OrTpu1Enc8jLdXxO483sXB7xjafBvEjKXzGa/yTvIIEhm9g2aiiG97zX
 5A2ZmQxcS7ZOThWa1JUI6w/teuR0yyXnzpw8QLJ+vVfD3Lo5B1226TqGN7UYcCRA9RSlVqfv
 njB/WnyHlcdLtP39Nae2nuogumKliThVcdLTvuz9+VhhxuYwWl75AAquUWTh9+cpXeUdexlO
 k1N8QkvtLQw9EmlZ4yoN/Gnm0KsshkZUttWNuQ17gCR16bZizp14EBZEFatj/R77KcLqSwWO
 kyhxIm5WGAz2FGBYTfMqOrF/Gva1T09cDdqWMMScecSDzAPSqkchwjLR9BveEJepoKoQW2rq
 9xmQdRXuln+pccP06P+9lfdjnf1/N7CTxU+4UPcWWfNAuJFiGyNOdXABbvztKkowGOlor+p5
 ydsdy+2t7tmMH11vHbRKNjh5Znwjxp/DBXSgER0A74q/Cm39niocOh4uW8ueR4zb5ZfIWa0O
 Cc/XD+9ArcNZBNGiocqPeqM5zgClsAM6Py8DKmPN4oSCnSPXF7XoUmCmnJ8L0i0wBRzzsnTy
 L+QcN2nCj4BGL97wT+tL9rxIpd1rh3SMVj7HMihpzz+iOL2TCfMFd8tbgDUBshnt/zsnekg2
 4sFXyd8408BALSWj+i+2dN7EG3m2lBgX8um9JYHL7fZSuekcUl4Y8LsLXoaU9UNt4xel/zD+
 Te2XUow9bY1rSSvxdmiApy7VI7SYA==
IronPort-HdrOrdr: A9a23:VC2k86/aaJao96cWPrtuk+HJdb1zdoMgy1knxilNoENuH/Bwxv
 rFoB1E73TJYVEqKQodcLG7SdG9qBbnmaKdjrNhWotKMDOW3VdAT7sSlLcKoQeQYREWn9Q1vc
 gPAssOauEcFWIbsS+T2njELz9K+qjgzEnHv5a7855Yd3AXV0gs1XYPNu7deXcGNDVuNN4cLt
 6x98BHrz2vdTA+adm6PGAMW6z5q9jChPvdEGw770pM0mizpALtzIS/PwmT3x8YXT8K66wl63
 L5nwvw4bjmm+2nyzfHvlWjoKh+qZ/E8J9uFcaMgs8aJnHHkQCzfrlsXLWEoXQcvPyv0lA3i9
 PByi1Qc/ib00mhMF1dnCGdkTUIkQxeoEMK8GXoyUcLdPaJCQ7TTKJ69PRkmhiw0TtSgDgz6t
 ML44ujjesnMfrxplWD2zH2bWAVqqOVmwtWrQdBtQ0qbWJZUs4ZkbAi
X-Talos-CUID: 9a23:CWaAjmzUvZER+GVgwAafBgUyPOUKS1fz8k3BIhazKmdwVL+VTFG5rfY=
X-Talos-MUID: 9a23:HmHangbGXX4hGeBTmge2qz48atpS+v6LEREI0r44uuCIDHkl
X-IronPort-Anti-Spam-Filtered: true
Received: from alln-core-12.cisco.com ([173.36.13.134])
  by alln-iport-4.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 27 May 2023 02:53:54 +0000
Received: from alln-opgw-4.cisco.com (alln-opgw-4.cisco.com [173.37.147.252])
	by alln-core-12.cisco.com (8.15.2/8.15.2) with ESMTPS id 34R2rsiF014809
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@lists.yoctoproject.org>; Sat, 27 May 2023 02:53:54 GMT
Authentication-Results: alln-opgw-4.cisco.com; dkim=pass (signature verified) header.i=@cisco.com; spf=Pass smtp.mailfrom=schitrod@cisco.com; dmarc=pass (p=quarantine dis=none) d=cisco.com
X-IronPort-AV: E=Sophos;i="6.00,195,1681171200"; 
   d="scan'";a="2028152"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I/F7pr4Xj0k1uaTqeMp0uswwH3Mv42blo51cs66yNhVrZQklCGyS6RUhq/usrb5UZCvee4f+sGjSmuFjeVigHW7VohAZkJuhZ7I8OEls//y/qYvQjGPUENGPXAG8vEVrArtqwVbwuQSM1NKxQNccdcygIiCF43J0hx3ddBpnrBL8T5wAo+EeZw5asFqlnnkCaafcIF3ErwbE6XFS5RVOUv2Es3Ev5QranK+mIR3Ih46A2+u3vmBNTJKkyzBZ7k334JtsVBdcSbclLjhJPT1PrqBbNME8yGcGD+vJgnb4U0HY/42gqhOQBDnrw8TMGGzo72Ero1bnZWdJaM9ZKlwksA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dNserLVEMX3AMl5TJjepYDx5KJoRnNYqOifwgnF5IIs=;
 b=P3itAqxBdXr5vm7JQYe7kajL1wetrAHWD4ryZPyJpb9vfA8MsiTDiiwwFY7yASySm1rgM6ttqwLSybaAUfn5vH+ayKV0vzciE5AMdn7NygX3toMXQHdsLmkGTpBsHGpjvsZC0Adng7wklhg6oUUhG/AKLZd+maUpAn1kJZB3XYBPhbegfHv3+0vOsRn/y+9q+qx0UooCoji9uYKv1qOa6fKvvAM08kOpCPhXOaKba32U65Y5r+6sJhltrQZlCWFV4fs4UsrOnYzeLuWjWpR7YEpFVYH7Xy9IoxZg73c2n3RSShkKS7MLK1qbe7j+H21u6mG3hHn5mXDshFTqwG/FjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dNserLVEMX3AMl5TJjepYDx5KJoRnNYqOifwgnF5IIs=;
 b=aKhMQy2Bh0frzg81fae75oprcPh7ifdhr81mhwuwGiqkE+q5rhyExOXWsbDDq4SaTd1ujFkNb5WP+Ez1RLDySmM+cWkvKO4ZjkfVBdahRJsfb86zo/k6wfgWh8PCecCnMphyYTQcbxVdcRb1YP/YuDolPPP6ht0MERpVEAirAGk=
Received: from SJ0PR11MB6717.namprd11.prod.outlook.com (2603:10b6:a03:44f::9)
 by SA0PR11MB4750.namprd11.prod.outlook.com (2603:10b6:806:9d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.18; Sat, 27 May
 2023 02:53:51 +0000
Received: from SJ0PR11MB6717.namprd11.prod.outlook.com
 ([fe80::2ddb:3ab6:484a:673a]) by SJ0PR11MB6717.namprd11.prod.outlook.com
 ([fe80::2ddb:3ab6:484a:673a%6]) with mapi id 15.20.6411.028; Sat, 27 May 2023
 02:53:50 +0000
From: "Sanjaykumar kantibhai Chitroda -X (schitrod - E-INFO CHIPS INC at
 Cisco)" <schitrod@cisco.com>
To: "Sanjaykumar kantibhai Chitroda -X (schitrod - E-INFO CHIPS INC at Cisco)"
	<schitrod@cisco.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [meta-selinux][PATCH] selinux: Set CVE_PRODUCT
Thread-Topic: [meta-selinux][PATCH] selinux: Set CVE_PRODUCT
Thread-Index: AQHZhNeGD1fGLlhZn0+MGMIwAwSiBK9tghgA
Date: Sat, 27 May 2023 02:53:42 +0000
Deferred-Delivery: Sat, 27 May 2023 02:53:15 +0000
Message-ID: 
 <SJ0PR11MB671790FCD42E86EB72BBF256DC449@SJ0PR11MB6717.namprd11.prod.outlook.com>
References: <20230512134151.2978644-1-schitrod@cisco.com>
In-Reply-To: <20230512134151.2978644-1-schitrod@cisco.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6717:EE_|SA0PR11MB4750:EE_
x-ms-office365-filtering-correlation-id: 524b251c-f5ac-4a4d-798a-08db5e5d9978
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 FGmyDKKZg9pfPrhKNwWcHzxla5Wvnvh7t7HnZNzv81jdethmkFhEwPshq/O4YrtSZfr4JwYaBMT4S7rXcM0LTU7ktipcyrWj2HGpFmESp5X4Jb/fW1gxP/PKoYk0e2Z/PqZodXHFtS1Z5Mzdu9c+cieF7JUrjHBSz93xhYKwx3Xh0js5vEZRMbceRZ5TBtJ5MQ6iJa7/Gm2alwxHWka0V9+VHQ51qlbs9XGEjiEQxVyWJggzyRIazVrpUBkO88fk5gS2WSWmUiUkKNep9sSxgOXsliJc5MDqM7ceHonhjroJC9kqGYXNVcaFJGwS7OsqhtPPJD/Zh1vJq9AA0gcf11FzVytqt+d9bRSI0V6aRPcZlquutWGYYxtV1XSDwq8UquMeVI9Tszj4CybZ40QFiDL6oEFrugV687kHQJ/duWHF3tEKzw6u/qVWztYH2b1t6JzZ3mL0z8osZn/+0fSNiHlqnc7MrnBO9tlnE9rIIf+UqqVd4ts441yAbm1VzNMqe9tWAyjFqlT1Z1lKmifsvR1h6NBWEE5vge7ypR0UXoTe9JrhZZDRCnVfexLJPXZ1nzCMmz/mU2UUA01a2uNPs6YAPmXBW14aJa1x2LzZFwg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB6717.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(366004)(39860400002)(376002)(346002)(136003)(451199021)(41300700001)(6666004)(38100700002)(316002)(7696005)(8936002)(38070700005)(8676002)(53546011)(186003)(86362001)(33656002)(2906002)(83380400001)(5660300002)(52536014)(9686003)(966005)(6506007)(55016003)(478600001)(66476007)(66446008)(66556008)(64756008)(76116006)(66946007)(110136005)(122000001)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?YeARfpMYsdbxvMGHQn7/AzzgV9DH3OoG+wMV97LSuVBvXKsnkIzBew7ONIoD?=
 =?us-ascii?Q?fdpXCI9KvBUs5WCN6eCz2xtNEtAllMENqZPksYDKZclHPTyWwj8Ger3GX4aU?=
 =?us-ascii?Q?WNuYaGZ7yB+aDyunSqt8gQ6h8Pt5nHZPOmjpt9tTkxP03y7i2b7YGdW+f3e7?=
 =?us-ascii?Q?lVSe4h70IElnr7Jl2NWzTPJvXHK4G9gn+nlflzooT50KmuKpDTkInrfYnIvP?=
 =?us-ascii?Q?Te3KqOtLB5q7xqe6R0vHDX3fyoE9JgYSqnw2hKFTvmSJBsXt/qihmw61sASe?=
 =?us-ascii?Q?zOhqZyVAXozPFnClL16tGHX6IVCXvLbA9pge3ufqvbDuWziYfTHwhJx72tlX?=
 =?us-ascii?Q?YC/AOxcqI9NBv11mRH1+0ulvi45Z4xQ0r1wFgN1Pq/PpovREK+7STNQiYPwQ?=
 =?us-ascii?Q?0JypUjq6GKjZcB5GqxgoB5nDASuc5axdTYFMbuaRzJDhahfBXffMzV/x7h5y?=
 =?us-ascii?Q?9RCrmzaTNtiyQN3lLqHJ7brvHIZ5HYJosq3Knh4F5NUKV6rlHRfheCakK19i?=
 =?us-ascii?Q?fweHE0l7Wq8GD951u0G/Iw7BFRrwxH1M71dXci6Dx8slbZJ4KyXZ2zVI48Yn?=
 =?us-ascii?Q?w7L2J+LiIljd2eYZyBAKNkkKuioD9czeRx4o76uTPJS/U1MZWRyih3796gU3?=
 =?us-ascii?Q?Bpy7M/Bo7yj2QU69sifEP3knFjZWsBWPle23+t+j1cXz5+FvRuz40Wgxisil?=
 =?us-ascii?Q?dqtUTZM2+jVVH/bPRn95j1vHmBuvOyxESee0HXjh6ibdZq/+QiNCabYntu+p?=
 =?us-ascii?Q?oaTD0OOx6I0o89c/NS5GrpfLFcsEg31cGWVq5czIV7qfSaFVXNSlNm7OV1Rv?=
 =?us-ascii?Q?027fN+1u58J/LsThfheZFwlTrIxPnKyW6GCXaGq2jQD3tF3E+kwIPCRrk3uR?=
 =?us-ascii?Q?4NxiAvGUikMrz3mKppZ5BRkqBU6NJ4xhKmJXtAd95M3EJUSEd0DwEb49NGy4?=
 =?us-ascii?Q?DPIBUewKguSljTh071IiJ/9+IKvWy7wFzGkqX0Ech/H597AnvAmn8rInDHwf?=
 =?us-ascii?Q?iU0AmGI031hoBUzVh2271VjkNTvGHSRJfO8Cp5PBkWVOLXjnVmVP9KckJIUT?=
 =?us-ascii?Q?l8PXD1vggpi7Q7vA3TjHhvJjKvvUoe/tGUiBJpugLTYz6R+XrwB4VYgEQOus?=
 =?us-ascii?Q?m1eBvtRImxmFQ8ewUDJcMzS1tirhTdl4KzbVi2FtxMNIdRVYjsETY0x7T3v0?=
 =?us-ascii?Q?kOaNkalfvZcVmlzYbHFJuukLZKD8Nb3jh4KPAs+sbUoQmAhxWwMSJuWjVTB5?=
 =?us-ascii?Q?U7ywsXao63f03NgLjn34A1/8aED+CkXjJIhEMB+KUuijJbzTrbLTsGhdovlS?=
 =?us-ascii?Q?IqE4yETVoD6e5DUGb37avdRUNPDZ41yXHcC8onJrD3s1CNE9hTCSd63NGqdh?=
 =?us-ascii?Q?XAyUNVgEPHaG2UNMWBNwNQ1WeJx7pmFVQEFhnhWmHfKN92b2AJOV5cyuJhgb?=
 =?us-ascii?Q?Aovqamixl95nKg5DhqsPL2VNHGIpkpTAciCdgQH22EEwXTnpO8MutqNhh9tm?=
 =?us-ascii?Q?Ps3UZfU7AOvEnB7fV1F3xQ3IXJQYFGJyJakDUSr30Tyq3aqAmenBmTy8zi/M?=
 =?us-ascii?Q?/zi/h9glvIngEVHgXv+kVCzKpgK2ESHzRqpIRxUjfk64AyoGE03CRTDWm9Ao?=
 =?us-ascii?Q?PA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cisco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6717.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 524b251c-f5ac-4a4d-798a-08db5e5d9978
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2023 02:53:50.2698
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h3CP/xJAnI1dHMGtamt8TqCp/YSxf3eZ7pptAqWnleg2tWHxTkZsHcHOhHMc0cvHU7HfEb9GLJWN9Hn9yNAmDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4750
X-Outbound-SMTP-Client: 173.37.147.252, alln-opgw-4.cisco.com
X-Outbound-Node: alln-core-12.cisco.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 27 May 2023 02:53:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60131

Hi all,

Any update/comment ?

Thanks,
Sanjay

-----Original Message-----
From: Sanjay Chitroda <schitrod@cisco.com>=20
Sent: Friday, May 12, 2023 7:12 PM
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


