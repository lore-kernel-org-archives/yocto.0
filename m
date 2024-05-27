Return-Path: <deeratho@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6E6C25B74
	for <webhook@archiver.kernel.org>; Mon, 27 May 2024 07:32:11 +0000 (UTC)
Received: from alln-iport-2.cisco.com (alln-iport-2.cisco.com [173.37.142.89])
 by mx.groups.io with SMTP id smtpd.web11.22369.1716795123283105999
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 May 2024 00:32:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: message contains an insecure body length tag" header.i=@cisco.com header.s=iport header.b=fdZIgAR9;
 dkim=pass header.i=@cisco.com header.s=selector1 header.b=BDL0f8bF;
 spf=pass (domain: cisco.com, ip: 173.37.142.89, mailfrom: deeratho@cisco.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=cisco.com; i=@cisco.com; l=6890; q=dns/txt; s=iport;
  t=1716795123; x=1718004723;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=LvB5mj9Pqj+EKDAhO04x4t2zhcNcpJtQ+ZBvkmR+7nI=;
  b=fdZIgAR9bj+r5HjKV1ydKajS7BGkUtQqxgiu9Mjc9F+z78APLBVLdMMu
   EjSWLQwj+Wl3dkQRzQqXURnrDJZrZ1frHfr+TeF5Y1B8UPvwifMV/ojFp
   L/zIiR03E4cWQBGDw8xHQksbdw77cWxsZLuiRlh5YiqrrmUlHFj9tWJMi
   E=;
X-CSE-ConnectionGUID: GTBsG6PlS4qz52wca6OufA==
X-CSE-MsgGUID: c3125RZzSmqeGQuEw++MCw==
X-IPAS-Result: =?us-ascii?q?A0CeAQB0NlRmmIENJK1aHgEBCxIMZYEfC4FBMVJ6AoEcS?=
 =?us-ascii?q?IRVg0wDhS2GTIIllzmGUoElA1YPAQEBDQEBLgEVBAEBhQYCFog1AiY1CA4BA?=
 =?us-ascii?q?gICAQEBAQMCAwEBAQEBAQEBBgEBBQEBAQIBBwUUAQEBAQEBAQEeGQUOECeFd?=
 =?us-ascii?q?A2GWQEBAQEDARERChMBATgPAgEIEQQBASsCAgIlCh0IAgQBEggagl4BghxIA?=
 =?us-ascii?q?wGiYwGBQAKKKHqBMoEBggwBAQYEBd13CYFIgWCGTgEkgTECAohjJxtAgU2BF?=
 =?us-ascii?q?UKCaD6CYQKBYhWDRDqCL5lbDoJKiFqIFVR3IgMmMyECEQFVExcLPh0CFgMbF?=
 =?us-ascii?q?AQwDwkLJioGNgISDAYGBlk0CQQjAwgEA0IDIHERAwQaBAsHdYFxgTQEE0eBN?=
 =?us-ascii?q?waJbQyDBwIFIQSBcSmBDBaCeEtsgR4CgmeBaw5hhFWDRGOBEIFEgWkBdx1AA?=
 =?us-ascii?q?wttPTUGDhsFBIE1BaQqBIUsMFCBYJNBgyiLK6NQCiiDa5lAiCcXqjWYYyCoQ?=
 =?us-ascii?q?AIEAgQFAg8BAQaBZgE4gVtwFYMiUhkPjiEZg2HMAmAYOwIHCwEBAwmIcC2BS?=
 =?us-ascii?q?wEB?=
IronPort-PHdr: A9a23:X6+6+B0w4R7LFRFDsmDPY1BlVkEcU/3cNwoR7N8gk71RN/7l9JX5N
 0uZ7vJo3xfFXoTevupNkPGe87vhVmoJ/YubvTgcfYZNWR4IhYRenwEpDMOfT0yuBPXrdCc9W
 s9FUQwt5Gm1ZHBcA922fFjOuju35D8WFA/4MF95K+nvE5LSiOy81vu5/NvYZAAbzDa4aKl5e
 Q2/th6Z9tFDm4ZgJ60tghfIuS5OfOJbhCtkcFmShB37oMy3+fZe
IronPort-Data: A9a23:ZCMVHaJHEFr5ERa+FE+R05UlxSXFcZb7ZxGr2PjKsXjdYENSgjUEn
 zAbCG+FaKrfMzH9ft53btu/p0gGv8DRyYNkT1cd+CA2RRqmiyZq6fd1j6vUF3nPRiEWZBs/t
 63yUvGZcYZsCCea/0/xWlTYhSEU/bmSQbbhA/LzNCl0RAt1IA8skhsLd9QR2uaEuvDnRVvd0
 T/Oi5eHYgP9hmQrajt8B5+r8XuDgtyj4Fv0gXRmDRx7lAe2v2UYCpsZOZawIxPQKmWDNrfnL
 wpr5OjRElLxp3/BOPv8+lrIWhFirorpAOS7oiE+t55OLfR1jndaPq4TbJLwYKrM4tmDt4gZJ
 N5l7fRcReq1V0HBsLx1bvVWL81xFYJ60qTof0C7ipCK3RCcbHDlndJzAmhjaOX0+s4vaY1P3
 fUcLDZIZReZiqfnhrm6UeJrwM8kKaEHPqtG5Somlm+fVK1gGMqSK0nJzYcwMDMYis1DB//CZ
 80xYjt0ZxOGaBpKUrsSIMhuxrvx1imkLFW0rnqe/vNtvlLh3jd0ybXCCcf4ZZ/JYO5KyxPwS
 mXupDmhXUpAa7Rz0wGt43WnmujnmSLgRJlUBbqz6vlymlqRy2cPThoMWjOGTeKRg0q6XZdUL
 FYZv3topqkp/0vtRd74N/GlnJKaljEgccF/TdU+012U2PeO/A2QWE8ZQBcUPbTKq/QKbTAt0
 1aImfbgCjpurKCZRBqhGlG88G3a1c89czZqWMMUcTbp9eUPt23as/4iZt9nFKjwhdrvFHShh
 TuLtyM5wb4UiKbnNplXH3iZ01pARbCQEmbZAzk7uEr/v2uVg6b+OOSVBaDzt6ooEWpgZgDpU
 II4s8af9vsSKpqGiTaARu4AdJnwuK/bb2CF2wQ/Q8F6n9hIx5JFVd0LiN2ZDBo5WvvohRe2C
 KMukVoIu88NZifCgVFfOtzpV6zGMpQM5fy+C6iLNYARCnSAXASG5yppLVWBxHzglVNkkKc0f
 /+mnTWEUx4n5VBc5GPuHY81iOZzrghnnD+7bc6glXyPj+HBDEN5vJ9YajNimMhjsvPdyOgUm
 v4CX/a3J+J3ALOuP3CNodVNRb3IRFBiba3LRwVsXrfrCiJtGXoqDLnaxrZJRmCvt/49ejvgl
 p1lZnJl9Q==
IronPort-HdrOrdr: A9a23:jxP3K6iwBb93n5rIa5+qKP510HBQX5J23DAbv31ZSRFFG/FwyP
 re/8jzhCWVtN9OYhAdcIi7Sde9qBPnmaKdkrNhTItKPTOW9FdASbsSj7cKrAeQYREWmtQtsp
 uINpIOd+EYbmIKwvoSgjPIburIqePvmMvH9IKuq0uFDzsaF52IhD0JczpzZ3cGPzWucqBJbK
 Z0iPA3wQaISDA8VOj+LH8DWOTIut3Mk7zbQTNuPXQawTjLpwmFrJrhHTal/jp2aV5yKLEZnl
 Ttokjc3OGOovu7whjT2yv49JJNgubszdNFGYilltUVAi+EsHfoWK1RH5m5+BwlquCm71gn1P
 PWpQ07Ash143TNOkmovBrW3RX62jpG0Q6j9bbYuwqhnSXKfkN+NyNzv/McTvIf0TtmgDhI6t
 MI44tejesQMfqPplWl2zGCbWAbqqP9mwtQrQdUtQ0QbWPbA4Uh9rD2OyhuYc89NTO/54Y9HO
 Z0CsbAoP5QbFOBdnjc+nJi2dq2Qx0Ib1y7q2U5y4WoOgJt7ThE5lpdwNZakmYL9Zo7RZUB7+
 PYMr5wnLULSsMNd6pyCOoIXMPyUwX2MF/xGXPXJU6iGLAMOnrLpZKy6LIp5PuycJhNyJcpgp
 zOXF5RqGZ3cUPzDs+F2oFN73n2MS+AdCWoztsb64lyu7X6SrauOSqfSEo2m8/luPkbCt2zYY
 fEBHuXOY6VEYLDI/c84+SlYeghFZA3arxhhuoG
X-Talos-CUID: 9a23:YrBCxWEbDZsWIaK/qmJIyGQPNZ4ddkaB1WWNeVCzADhOVbO8HAo=
X-Talos-MUID: 9a23:Lw4Ytgv8sbhaWowIks2nj2o7bppS0baVDVkAvqwbltbHdglbJGLI
X-IronPort-Anti-Spam-Filtered: true
Received: from alln-core-9.cisco.com ([173.36.13.129])
  by alln-iport-2.cisco.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2024 07:32:02 +0000
Received: from alln-opgw-2.cisco.com (alln-opgw-2.cisco.com [173.37.147.250])
	by alln-core-9.cisco.com (8.15.2/8.15.2) with ESMTPS id 44R7W2Kf010094
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 07:32:02 GMT
X-CSE-ConnectionGUID: XsqN1IlzSRKtSluwO7P/hw==
X-CSE-MsgGUID: kGccqrZERR+U2Wz5G6fv4g==
Authentication-Results: alln-opgw-2.cisco.com; dkim=pass (signature verified) header.i=@cisco.com; spf=Pass smtp.mailfrom=deeratho@cisco.com; dmarc=pass (p=reject dis=none) d=cisco.com
X-IronPort-AV: E=Sophos;i="6.08,192,1712620800"; 
   d="scan'208,217";a="7856752"
Received: from mail-dm6nam12lp2169.outbound.protection.outlook.com (HELO NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.169])
  by alln-opgw-2.cisco.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2024 07:32:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jBoQnancVTeqyuzKwOlPTwgmJ2hqIoYCclCD/WCjMPE7jWZnzYbFKGYn9BmJBwyIWzur/hS02EIMeEIbbeXLoLDXCIyVeAuxy9gLZMPDK8Q+oGqhgBNiiBnmAuklgdim2VB+j3aVFPzyn+mE9uSTEVor7KSNf0djzMBqpf8Xacxp9cRPBjXtauAok6qFEmliQl/0arWaGccKJ2J8+9HNkeGumypYuK5E6hiLN4g+Fd9LXV7VJtXq9ttJ42h4bUju1aezfs0DvSdA2BMgYNvZElmq7C6I/+4sfjqa8N25qxi4CmGM9XDXGu69QZy7oFDqzRhfqoKzsUrdFhj3tqhlQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LvB5mj9Pqj+EKDAhO04x4t2zhcNcpJtQ+ZBvkmR+7nI=;
 b=cANcn+fTEjtmXEUxyQhvLdXHxvNCT3gVvoTYwVuue5DyB4e8QzliAzbxjA72bjjjgY10LZKNf8ZRFi+g8lKH+jfUK47PPp29jBrgZZvu+K7zae93JG2cJge1gF1PU7d771AEpHeGf5dFse2KoQACCYx0JA/d6OwRTeTW1+2TnyVDLxY+0pAVrHngxseFTpLV5i3B41XITW8J0hwfsNj4LxkNpYBlDBO7n9RJ7hQ1VaOgLuWngHrGEYZ1LtLm8GwJv8Mi1NdVp5ddbmuQOGogFJAwCFv1AMyKauRlZAcTvNzs4WeGznvyzn8a94iXLCY2wDDn6lHQFYsNvYw22i+Y/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LvB5mj9Pqj+EKDAhO04x4t2zhcNcpJtQ+ZBvkmR+7nI=;
 b=BDL0f8bFY/X0qpW/2cZmIzX1/616SKmCqtdd4QOEQlSQJMOIFiBC4Awl/v9Sevxr8Nv+X3wM7gqZr7+CLGdtgeGnHRf1ymD4QDhHfnJFaR3shhZi4+nEd/EtnXe/5Znl8JllLIUW07X9uy+J0EqXgxJcn+lxHMjIwldpUlrChZA=
Received: from DM4PR11MB6189.namprd11.prod.outlook.com (2603:10b6:8:ae::18) by
 IA0PR11MB8380.namprd11.prod.outlook.com (2603:10b6:208:485::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Mon, 27 May
 2024 07:32:01 +0000
Received: from DM4PR11MB6189.namprd11.prod.outlook.com
 ([fe80::eaaf:7239:c677:ee95]) by DM4PR11MB6189.namprd11.prod.outlook.com
 ([fe80::eaaf:7239:c677:ee95%5]) with mapi id 15.20.7611.025; Mon, 27 May 2024
 07:32:00 +0000
From: "Deepak Rathore -X (deeratho - E-INFO CHIPS INC at Cisco)"
	<deeratho@cisco.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "bratiranjan12@gmail.com" <bratiranjan12@gmail.com>
Subject: RE: [yocto] Migration Issue
Thread-Topic: [yocto] Migration Issue
Thread-Index: AQHasAHoFUzXJLMcSEuLh4Hkw1nCkbGqr3qA
Date: Mon, 27 May 2024 07:32:00 +0000
Message-ID: 
 <DM4PR11MB61892B84B565134821579579C4F02@DM4PR11MB6189.namprd11.prod.outlook.com>
References: 
 <CALSmAY50gqYRw5Qqk0HVKsaj6JVLF7GKwrMaaTaBzMuGB+HQgA@mail.gmail.com>
In-Reply-To: 
 <CALSmAY50gqYRw5Qqk0HVKsaj6JVLF7GKwrMaaTaBzMuGB+HQgA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6189:EE_|IA0PR11MB8380:EE_
x-ms-office365-filtering-correlation-id: 9453f6f0-eed2-4104-2d00-08dc7e1f190c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: 
 =?utf-8?B?ZW9pOFJNSDZ0dFVaTktkTGNpSXQzYnpZaFpZYTZHYVhNSnNHN0dEeHk5alB2?=
 =?utf-8?B?eDhmelJlVFdlNjNucllyYmtoUlJyMHdJaFZTN0hCNDlzTzlBMTJxY0hPRFFB?=
 =?utf-8?B?ekFrZlV6cEVaY1NaYThBY1NqSjloQUxGSnRSOXI4aGdqNkdVQWtCK1hCUVQx?=
 =?utf-8?B?T2JVVnlTQmFRb1A1bzFSNnowNk9rZW1iVEVhUEhjdVdyTnlXcHhlNXBhUjVv?=
 =?utf-8?B?YWpaRTlTeWZwdTNlVzdrck1jMDUvK1B0WUQ4QWNJeFFGSFdCWHZmaW8xSWR3?=
 =?utf-8?B?TVlQS0VUanJ1clQzL1VCWkdxZjRpSGNnYjBtMGlyNjhNRjRLaW51amt1TDQw?=
 =?utf-8?B?Tis0VFdjb0JEcmlPVVVXaDRJazBoZ0hXL1VqR2hVeWd5VDE2aVNwT1pQeFpw?=
 =?utf-8?B?YkZGdzZWaCtSa0tJczFBZmJSekJIblNDN1BkdWxtYVY2SGNiRnFod1pjSk1n?=
 =?utf-8?B?UG9BRVVoYUQyOWE0dFJiVStmL2llcnR2Zlg2SDAvM0RsMGJjU1pqVXpGdDRX?=
 =?utf-8?B?K1dzVWxabTlHc2NFb0xVWStxb1BmMXJNZjZVMmFNRXA4RkdhVDFsS3pWbEQx?=
 =?utf-8?B?WjBXcklqMlkxT2x6OEthd2I0K0s1ZktuYnhJR09tT1ZpNXFPTEJacEt4TjVB?=
 =?utf-8?B?NXZqMVdTKzY3Z1JGSHp2VERwNVFvVENuUU1jQzdtY3l6VnV5Uk5JWTFwUFFJ?=
 =?utf-8?B?SnBUaC9iNXBqREdMdzlPbU9pd2tPaC9Wa3grRkZVMWV4YVAxR04wek1iSHQx?=
 =?utf-8?B?cFN1UDNGZ0NBWmVTQ2c5aDJwTUlId3k2cmhpc2w4WFpvSjdCL0l4RmszYk9y?=
 =?utf-8?B?Qk9vRUdkQWo5VGM1c1IvUVRwbTdhN0cyWjF2M2ZabU5DalJWRmtQbnowcUph?=
 =?utf-8?B?NCtDVGVnY3dFV0lTTEN5TlcyR0g3UzdpWVl4K3dRTzdYa3NRdEpzNzYrd0dt?=
 =?utf-8?B?ZGpnZUJkN3I2Rm5vSnM5MzJGanJZUTQxVDdtMVJDaXBMbkVEU3BXbXZVRkUy?=
 =?utf-8?B?VXgzTVNWaGY2ZWJBVlNZK1hzRjcvcjYrQ3JSOWNWRkpDU3JBM2FleTZQZ1dR?=
 =?utf-8?B?SCtqZm5udjVBTFNhcHJqM0hpVysrYlM0RS9IYm9WK3pnQldVNlEzYWd0ZElN?=
 =?utf-8?B?a1pCdFVWZWZJMDQ5cjF3NjNiY1hJdHIwY2tuNWF1RThYNGhtWkJTQTJuMjNa?=
 =?utf-8?B?ZUZpcW9OR24reGxYKzVtUE5mek43bHdkVkxEaG1Tbk4rVEl1RUpVUkxZRHVD?=
 =?utf-8?B?QzEybmtNQWdJaTdNSHI0U1MyTDZPUU1NOTRBYS95VEJraFFTNU1Uanp5Rm5B?=
 =?utf-8?B?ZTc4N0JLa3dQVFVydDh6ZElyTzZNaVJreEg3RHFQdmRONFAvWXN2TG1BV2ZI?=
 =?utf-8?B?VytINHVuUm1KbUJuelVWZlBXMjVxNVVqcjdnWFRmYUdHN0JFRGppM3Z4ajNY?=
 =?utf-8?B?OXZCTnFla3ZZc2dCYjM3U2Jad3dwblJCUjJxMUVCRnlSdDVhaUZyZEFCci9r?=
 =?utf-8?B?N1NCNE9oN0JtY01VVWt1SitvVHhrTDRBSWE5NlVxZGxkckU4MWVCQXl0cHJF?=
 =?utf-8?B?WnJwMGx0LzhuWTFxQTFSdmhJbXYyczQxWDgyenRySERtZHpmd3l1Z3QxMEow?=
 =?utf-8?B?ZnRuRE91bmpGUnVXTkxCQkpMZXpqSjlYN0lkU3dIRzFwZzZYdXVrUW5rbm5Z?=
 =?utf-8?B?UVFLL1pONHduK1JlZ3F1aC9NZUpVN0IrdC9GWVpRSldzVnNLU0NteVZZaEIw?=
 =?utf-8?B?MVY3MlFBQkhKYS9kMlIxSEcyeEdQMktKejlmUWFkek5GUWx2THp0YjcwQVRp?=
 =?utf-8?B?MlM5NmFMWE95Q05oczY5QT09?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR11MB6189.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Q251RWh4RmZmSm1LUUIxRXFrUHVVZ05GWmhYbjZPUldYdDZvR2xNMWdLK1lS?=
 =?utf-8?B?S1kwUGpwKzY4SkR2VEYzNzViNGhmcVNGd2xyMmZZK2MrUmd5Nk9xMncwTlFp?=
 =?utf-8?B?MEY2ZmNKak5kN1V0dzRqTFMzQktTaVBlRGhmTDErVjA4Yi9rMFdUMjM3N2lm?=
 =?utf-8?B?NG1Zc0ZDdXh2SU9sSnVad3V2TzBTZVQxSlZMOWdxd1dNSlUwNXJETlgyQm5O?=
 =?utf-8?B?R0JxS1ZjZDdSczJocSt4b3QrK1lJSjZNdDV6ak54VTRKZmlSVU9DblhqaGNW?=
 =?utf-8?B?TTFIWlZGVndUSXlHSVRWY216TnMrcUNFY3UvU0NKSUM0UHNBR1gyNTJzM2xy?=
 =?utf-8?B?cG9yMlRHckpBMU92a2puWmhpcStDcG91L250ZW5GZk1GWUJOdGl5Q1oyU2FY?=
 =?utf-8?B?dGcybDJVNTN5QytYTWx1dUtLUllRTlAwWFA0Zzk0dnk2WWJCcDJCbThzYmxv?=
 =?utf-8?B?dXdRT0VINmQ2Rkx0bWFxOGRjNFlkU3VuWjVvLzBPN2N3amFlcTdOa29DeTdZ?=
 =?utf-8?B?c1QyN1NEaElhcSszODlLSnVScmJmQnN0bDlhSUdTaEMwTVUvUzBsL3p3SStu?=
 =?utf-8?B?dzZHcHJrQjU0YlRlTmgvMGlVWkxkNlFPalA3eEgzNEhpTXlZNlJzdVU1dU10?=
 =?utf-8?B?S1BEZVpZY2pxZzlFaU1lcitMdjZhSVFyRlF2c0hGYkl3cXFKZUREcExkNm53?=
 =?utf-8?B?M0p0OWZkciszcGRTcnRnekdsbVg2UVMzaU1DbG1CV0didzh1SmFDQ2VMVm5m?=
 =?utf-8?B?aFFvNjIxdWpFYTRVajY0cGROSkYrTFdCQllCT2NMNUFSUWVkMjh1bjdaTFFZ?=
 =?utf-8?B?bG9meXNzNlg2c3IzWkhOSnY4cVdZVVJ4Q0xQLy9HdzZuWVMra2lkamM1VmVz?=
 =?utf-8?B?K01oZU0rQk1HVDl5WWpHUTI0K2tudk9vakZ3UHNmRm5Ma0RlSWVHZm90ckdu?=
 =?utf-8?B?d0loaWdLcytGNzB4OTd5cFlKZVJOOGI0c0FLY1o4bG1ENWg4QWFXNmF0LzVi?=
 =?utf-8?B?VFVWWEdBcjNybEtLc0FGdm9ORytnNUgybkZuR3BQTVZiSUVGUUNMelBnK211?=
 =?utf-8?B?ZGducSs1M0czR2NnUXIyZTF5V1ptZjRvdkl3YU11WngwcDRMdzBETXJWNFQw?=
 =?utf-8?B?Szk1QTR1bGNuc2VRbWRuZ25QZStwb1R6MlVpcVRuL0pBclBPVWdEakY4ckhV?=
 =?utf-8?B?UklEZENnYkpMM1pUekEwdGtBd21uR0MxY2dQNlA5Ni9jMUlXeXEyRTJ0NXdm?=
 =?utf-8?B?bU5tZU9xWXlpamlVVllUUndnTkExdTJSa0NJZDFsTkdLR1JDMkpkQllDWGRV?=
 =?utf-8?B?VGNmV1NFRDlFSENJMmw3RFJzd0IvaGtwWWswVW9KOHdKK09GRUVjNFJ2YXJ4?=
 =?utf-8?B?bjNyZlhWdEtPTE1zVkJrUGREZTRzZEF4a2pvTDlmUUpPWDcza1p2R3NDOEUr?=
 =?utf-8?B?cVhYQ1JjYzh2WjV4YThqbFhFY0Nvd1ZhWXpBUnQvNXBtcFdIOHV3MlE3bmh2?=
 =?utf-8?B?WlpVSkhIeDFHRnU1LzBTVGQwL21maVdtMmdjWW1ubXU3cTlnWE5yM0ZKbERQ?=
 =?utf-8?B?UURZVExxbXlnSXY3K241ZzBKV3EyTmNTbytYYzRtdVlob05QZG9VR3o2ZG1H?=
 =?utf-8?B?aDJWSGFzNVhwYmI1a2N4TVh1MlNWdmlQK2ViOFl1Z1FUNmJlVHBOTWh3clcr?=
 =?utf-8?B?M2R6dTQxTlUrQzhWa3BDNUhSaFl0WldsZ0NkWHJkL1VabVo4Umhoc0Nldm9V?=
 =?utf-8?B?cUNkSTNYdGI2SDFid2o1eTBkWktQMEh0cjlxVnA1dmkrekJpRSt1N2t5S2Za?=
 =?utf-8?B?NEUrUVRVTTJDUldmSDluOENuVG50d0xZdHQ3RWV6UWxtZzVqRDBnNFNMdG81?=
 =?utf-8?B?U3pZbjI2QnBpL3ZUbU5QdStmNnhFUmg5cUY1eWU1RzVaQXE1WC8zSTJwMElR?=
 =?utf-8?B?cUNYT0Q2RVRNSGxnd1BHWU4xTFVTUXYvNTcxWXdoUjZjNFZ1TTJaQUtnOG1E?=
 =?utf-8?B?alpKcUk5Vk1LRFZvU21vK2RRRGNubExFblRJUjE0L0F6L1h1UVVjNjg1MGhl?=
 =?utf-8?B?VVN5RngrTkVMQnkzeVpGdW1lZmJOVTZLMTVWRERvbmdBbFh6MnFTMGdldnhn?=
 =?utf-8?B?L2w2WW1QZ0NZQjF2cWJ3WHJMOHlpZ3p2K0d2b1FGdlJSK1V3cC9uRkJZOGxK?=
 =?utf-8?B?SEE9PQ==?=
Content-Type: multipart/alternative;
	boundary="_000_DM4PR11MB61892B84B565134821579579C4F02DM4PR11MB6189namp_"
MIME-Version: 1.0
X-OriginatorOrg: cisco.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6189.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9453f6f0-eed2-4104-2d00-08dc7e1f190c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2024 07:32:00.8629
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W1kv2pvXGCHO2sjaHcAwE1y67T9BtPqMgKOQ5IocUVWS3hua0ESW43WpjQcts+Wq5ibZhWg/1ZrU3oAkMKXIyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8380
X-Outbound-SMTP-Client: 173.37.147.250, alln-opgw-2.cisco.com
X-Outbound-Node: alln-core-9.cisco.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 May 2024 07:32:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63204

--_000_DM4PR11MB61892B84B565134821579579C4F02DM4PR11MB6189namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQnJhdGksDQoNCldlIGhhdmUgYWxzbyB2YWxpZGF0ZWQgTGludXgga2VybmVsIHZlcnNpb24g
djYuMSB3aXRoIFNjYXJ0aGdhcCBTREsgd2l0aCBRRU1VIGdlbmVyaWMgbWFjaGluZS4gSXQgaXMg
d29ya2luZyB3aXRob3V0IGFueSBpc3N1ZS4gWW91IGNhbiB1c2UgdjYuMSBrZXJuZWwgc291cmNl
IHdpdGggc2NhcnRoZ2FwIFNESy4NCg0KUmVnYXJkcywNCkRlZXBhaw0KRnJvbTogeW9jdG9AbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVo
YWxmIE9mIEJyYXRpcmFuamFuIEFjaGFyeWENClNlbnQ6IE1vbmRheSwgTWF5IDI3LCAyMDI0IDEy
OjE4IFBNDQpUbzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogW3lvY3Rv
XSBNaWdyYXRpb24gSXNzdWUNCg0KSGksIGkgYW0gbWlncmF0aW5nIHlvY3RvIGZyb20ga2lzcmtz
dG9uZSB0byBzY2FydGhnYXAgd2l0aCBrZWVwaW5nIG15IGN1c3RvbSBsYXllcnMgYXMgaXQgaXMs
IGkgaGF2ZSBjaGVja2VkLW91dCB0byB0aGUgc2NhcnRoZ2FwIGJyYW5jaCBib3RoIGluIHBva3kg
YW5kIG1ldGEtb3BlbmVtYmVkZGVkIGFuZCBteSBrZXJuZWwgdmVyc2lvbiBpcyA2LjEuIEp1c3Qg
YSBzbWFsbCBlbnF1aXJ5LCB3aWxsIHRoaXMga2VybmVsIHNtb290aGx5IHdvcmtzIG9uIHRoZSBz
Y2FydGhnYXA/IE9yIGVsc2Ugd2UgaGF2ZSB0byB1cGdyYWRlIGl0IHRvIHRoZSBwcmVmZXJyZWQg
dmVyc2lvbiBpbiB0aGUgc2NhcnRoZ2FwIHJlbGVhc2Ugd2hpY2ggaXMgNi42LiBCZWNhdXNlIGFm
dGVyIG1pZ3JhdGluZyBpIGFtIGdldHRpbmcgZXJyb3JzIHRoYXQgbGludXgteW9jdG8qIGFyZSBu
b3QgY29tcGF0aWJsZSB3aXRoIHlvdXIgbWFjaGluZSBjb25maWd1cmF0aW9uIHNvIGkgYW0gYSBi
aXQgY29uZnVzZWQuIEFueSBoZWxwIGlzIGdvb2QuDQoNClRoYW5rcyAmIFJlZ2FyZHMNCkJyYXRp
DQo=

--_000_DM4PR11MB61892B84B565134821579579C4F02DM4PR11MB6189namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpBcHRvczt9DQovKiBTdHlsZSBEZWZpbml0
aW9ucyAqLw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJn
aW46MGNtOw0KCWZvbnQtc2l6ZToxMi4wcHQ7DQoJZm9udC1mYW1pbHk6IkFwdG9zIixzYW5zLXNl
cmlmO30NCnNwYW4uRW1haWxTdHlsZTE4DQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5
Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7
fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1z
aXplOjExLjBwdDsNCgltc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUzt9DQpAcGFnZSBXb3JkU2Vj
dGlvbjENCgl7c2l6ZTo2MTIuMHB0IDc5Mi4wcHQ7DQoJbWFyZ2luOjcyLjBwdCA3Mi4wcHQgNzIu
MHB0IDcyLjBwdDt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0t
Pjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0
PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUg
bXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4
dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0tLT4N
CjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLUlOIiBsaW5rPSIjMDU2M0MxIiB2bGluaz0iIzk1NEY3
MiIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9u
MSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtm
b250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7bXNvLWZhcmVhc3QtbGFu
Z3VhZ2U6RU4tVVMiPkhpIEJyYXRpLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90
O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjttc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+PG86
cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5
bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5z
LXNlcmlmO21zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj5XZSBoYXZlIGFsc28gdmFsaWRhdGVk
IExpbnV4IGtlcm5lbCB2ZXJzaW9uIHY2LjEgd2l0aCBTY2FydGhnYXAgU0RLIHdpdGggUUVNVSBn
ZW5lcmljIG1hY2hpbmUuIEl0IGlzIHdvcmtpbmcgd2l0aG91dCBhbnkgaXNzdWUuIFlvdSBjYW4g
dXNlIHY2LjENCiBrZXJuZWwgc291cmNlIHdpdGggc2NhcnRoZ2FwIFNESy48bzpwPjwvbzpwPjwv
c3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjEx
LjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7bXNvLWZhcmVh
c3QtbGFuZ3VhZ2U6RU4tVVMiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZx
dW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjttc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUyI+
UmVnYXJkcyw8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3Bh
biBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7
LHNhbnMtc2VyaWY7bXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVMiPkRlZXBhazxvOnA+PC9vOnA+
PC9zcGFuPjwvcD4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci10b3A6c29saWQgI0Ux
RTFFMSAxLjBwdDtwYWRkaW5nOjMuMHB0IDBjbSAwY20gMGNtIj4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZh
bWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPkZyb206PC9zcGFuPjwvYj48c3Bh
biBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7
Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj4geW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyAm
bHQ7eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyZndDsNCjxiPk9uIEJlaGFsZiBPZiA8L2I+
QnJhdGlyYW5qYW4gQWNoYXJ5YTxicj4NCjxiPlNlbnQ6PC9iPiBNb25kYXksIE1heSAyNywgMjAy
NCAxMjoxOCBQTTxicj4NCjxiPlRvOjwvYj4geW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZzxi
cj4NCjxiPlN1YmplY3Q6PC9iPiBbeW9jdG9dIE1pZ3JhdGlvbiBJc3N1ZTxvOnA+PC9vOnA+PC9z
cGFuPjwvcD4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48
L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SGksIGkgYW0gbWlncmF0aW5nIHlvY3Rv
IGZyb20ga2lzcmtzdG9uZSB0byBzY2FydGhnYXAmbmJzcDt3aXRoIGtlZXBpbmcgbXkgY3VzdG9t
IGxheWVycyBhcyBpdCBpcywgaSBoYXZlIGNoZWNrZWQtb3V0IHRvIHRoZSBzY2FydGhnYXAmbmJz
cDticmFuY2ggYm90aCBpbiBwb2t5IGFuZCBtZXRhLW9wZW5lbWJlZGRlZCBhbmQgbXkga2VybmVs
IHZlcnNpb24gaXMgNi4xLiBKdXN0IGEgc21hbGwgZW5xdWlyeSwgd2lsbCB0aGlzIGtlcm5lbA0K
IHNtb290aGx5IHdvcmtzIG9uIHRoZSBzY2FydGhnYXA/IE9yIGVsc2Ugd2UgaGF2ZSB0byB1cGdy
YWRlIGl0IHRvIHRoZSBwcmVmZXJyZWQgdmVyc2lvbiBpbiB0aGUgc2NhcnRoZ2FwIHJlbGVhc2Ug
d2hpY2ggaXMgNi42LiBCZWNhdXNlIGFmdGVyIG1pZ3JhdGluZyBpIGFtIGdldHRpbmcgZXJyb3Jz
IHRoYXQgbGludXgteW9jdG8qIGFyZSBub3QgY29tcGF0aWJsZSB3aXRoIHlvdXIgbWFjaGluZSBj
b25maWd1cmF0aW9uIHNvIGkgYW0gYSBiaXQgY29uZnVzZWQuDQogQW55IGhlbHAgaXMgZ29vZC48
YnI+DQo8YnI+DQpUaGFua3MgJmFtcDsgUmVnYXJkczxicj4NCkJyYXRpPG86cD48L286cD48L3A+
DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_DM4PR11MB61892B84B565134821579579C4F02DM4PR11MB6189namp_--

