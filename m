Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0943E0089B; Wed, 19 Oct 2016 18:56:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -7.5 USER_IN_DEF_DKIM_WL From: address is in the default
	DKIM white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [173.37.142.93 listed in list.dnswl.org]
Received: from alln-iport-6.cisco.com (alln-iport-6.cisco.com [173.37.142.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D404E0081E
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2016 18:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=1754; q=dns/txt; s=iport;
	t=1476928607; x=1478138207;
	h=from:to:cc:subject:date:message-id:mime-version;
	bh=E4YJg0wnScJ561CX92ghwYUfqVNuqDAxEgqlt1lE7kY=;
	b=ANtdaIp0UuYk9Bt+CES9/99pb9iu+rBIgsoSrm4RPyr8n+DkthKdGiS5
	X44tq1iCQQjjvcLJWPBAVe4WDfuXAeXLhCi5vWu6TrRPjLzERjRTiydDO
	oLTnxqyXEqSwQaNyM8B1tq2ssiD+ocvdqjCDKMyDfOs++KXj7eqAkQ3AP g=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0B9AgBwIwhY/4UNJK1cGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgwg2AQEBAQEdV30HhCSJCaYhhRWCCCeFehyBYT8UAQIBAQEBAQEBYh0?=
	=?us-ascii?q?LhFkQI1YSAQsBPgIEMCcEDohXDrZVjQgBAQEBAQEBAQEBAQEBAQEBAQEBAQEXB?=
	=?us-ascii?q?YY9gX2CWIdLLIIvBZoNAYE6hG6JYY95kH0BHjZUhHRyh0GBAAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.31,516,1473120000"; 
	d="scan'208,217";a="337943035"
Received: from alln-core-11.cisco.com ([173.36.13.133])
	by alln-iport-6.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	20 Oct 2016 01:56:45 +0000
Received: from XCH-RTP-003.cisco.com (xch-rtp-003.cisco.com [64.101.220.143])
	by alln-core-11.cisco.com (8.14.5/8.14.5) with ESMTP id
	u9K1uicC016964
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 01:56:45 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-003.cisco.com
	(64.101.220.143) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Wed, 19 Oct 2016 21:56:44 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Wed, 19 Oct 2016 21:56:44 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Recipe for Turbo.lua ?
Thread-Index: AQHSKnU1Y5RWDfpDaUm24s6/npM3eA==
Date: Thu, 20 Oct 2016 01:56:44 +0000
Message-ID: <845509FD-6E43-42F8-9F9F-8B1BF8F9F264@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.41.56.30]
MIME-Version: 1.0
Subject: Recipe for Turbo.lua ?
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
X-List-Received-Date: Thu, 20 Oct 2016 01:56:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_845509FD6E4342F89F9F8B1BF8F9F264ciscocom_"

--_000_845509FD6E4342F89F9F8B1BF8F9F264ciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpIaSBZb2N0byBHdXJ1cywNCg0KSSBhbSB0cnlpbmcgdG8gdXNlIHRoZSBUdXJibyBMdWEgYXMg
YSBmcmFtZXdvcmsgZm9yIGJ1aWxkaW5nIEx1YSBKSVQuDQpodHRwczovL2dpdGh1Yi5jb20va2Vy
bmVsc2F1Y2UvdHVyYm8uZ2l0DQoNCklzIHRoZXJlIGFueSBleGlzdGluZyByZWNpcGUgZm9yIOKA
nHR1cmJvIGx1YeKAnSA/DQoNCk1hbnkgdGhhbmtzIGluIGFkdmFuY2UsDQogIOKAlERpbmgNCg==

--_000_845509FD6E4342F89F9F8B1BF8F9F264ciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <C5C25F245DD6604D8BB7A7A0FE410754@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsgY29sb3I6IHJnYigwLCAwLCAwKTsgZm9udC1zaXplOiAx
NHB4OyBmb250LWZhbWlseTogQ2FsaWJyaSwgc2Fucy1zZXJpZjsiPg0KPGRpdj48YnI+DQo8L2Rp
dj4NCjxkaXY+SGkgWW9jdG8gR3VydXMsPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5J
IGFtIHRyeWluZyB0byB1c2UgdGhlIFR1cmJvIEx1YSBhcyBhIGZyYW1ld29yayBmb3IgYnVpbGRp
bmcgTHVhIEpJVC4mbmJzcDs8L2Rpdj4NCjxkaXY+PGEgaHJlZj0iaHR0cHM6Ly9naXRodWIuY29t
L2tlcm5lbHNhdWNlL3R1cmJvLmdpdCI+aHR0cHM6Ly9naXRodWIuY29tL2tlcm5lbHNhdWNlL3R1
cmJvLmdpdDwvYT48L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PklzIHRoZXJlIGFueSBl
eGlzdGluZyByZWNpcGUgZm9yIOKAnHR1cmJvIGx1YeKAnSA/PC9kaXY+DQo8ZGl2Pjxicj4NCjwv
ZGl2Pg0KPGRpdj5NYW55IHRoYW5rcyBpbiBhZHZhbmNlLDwvZGl2Pg0KPGRpdj4mbmJzcDsg4oCU
RGluaCZuYnNwOzwvZGl2Pg0KPGRpdj4NCjxkaXYgaWQ9Ik1BQ19PVVRMT09LX1NJR05BVFVSRSI+
PC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_845509FD6E4342F89F9F8B1BF8F9F264ciscocom_--
