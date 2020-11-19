Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web11.13236.1605808448335830726
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 09:54:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lists.yoctoproject.org header.s=20140610 header.b=ZgQ5apEX;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Thu, 19 Nov 2020 04:00:55 +0000
X-Sender: bounce+53643+51424+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 7537
X-Received: by 127.0.0.2 with SMTP id ohU8YY3619394x8YUMjVoWiH; Wed, 18 Nov 2020 19:58:45 -0800
X-Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web11.4402.1605756723422466650
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Nov 2020 19:32:03 -0800
IronPort-SDR: zOKXiPYy/fvZMJB8Wan+ZsAU1REd3zhzJdYpCh2244IV8GtKDo/T5+8MO85bAzpOzWrMWEx84c
 ei15h0ZF9mwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="170444487"
X-IronPort-AV: E=Sophos;i="5.77,489,1596524400"; 
   d="scan'208";a="170444487"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
X-Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Nov 2020 19:32:01 -0800
IronPort-SDR: 9Mkx2ciibgYlWwKW4vQ2XNa1/ze10TJjsLTNnCre0W+nViAqebWsbXDEu6JyMb+EIL5AnQV/At
 TerX9uYJIhrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,489,1596524400"; 
   d="scan'208";a="359778360"
X-Received: from kmsmsx601.gar.corp.intel.com ([172.21.219.141])
  by fmsmga004.fm.intel.com with ESMTP; 18 Nov 2020 19:32:00 -0800
X-Received: from pgsmsx601.gar.corp.intel.com (10.108.199.136) by
 kmsmsx601.gar.corp.intel.com (172.21.219.141) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Nov 2020 11:31:59 +0800
X-Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136]) by
 pgsmsx601.gar.corp.intel.com ([10.108.199.136]) with mapi id 15.01.1713.004;
 Thu, 19 Nov 2020 11:31:59 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "ross@burtonini.com" <ross@burtonini.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [yocto-autobuilder2 PATCH] config.json: drop redundant meta-kernel mentions
Thread-Topic: [yocto] [yocto-autobuilder2 PATCH] config.json: drop redundant
 meta-kernel mentions
Thread-Index: AQHWvCkrR1R/qvj9R0uiFCuy6Gnv7KnOSqMA
Date: Thu, 19 Nov 2020 03:31:59 +0000
X-OldMsgId: <0958f2d64707ab1f8619d03bfebffe66b3bcaaf3.camel@intel.com>
References: <20201116145955.7393-1-ross@burtonini.com>
In-Reply-To: <20201116145955.7393-1-ross@burtonini.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
X-Gm-Message-State: Nhr3MGzdR4JRPLSE8GSDI9oCx3618059AA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=lists.yoctoproject.org; q=dns/txt; s=20140610; t=1605758325;
 bh=7JsbtAOr+IXoF4Ci08x9I6FEVJrz8douHAdrMBSGjvE=;
 h=Content-Type:Date:From:Subject:To;
 b=ZgQ5apEXEDRnEyZtgAfezCbSQnavg5dVXNy6FClMIRqiUZFxMpFJJr+HFCAZjBmhFoy
 /PSkqmdSHsMY6Gd8f0KcXX8FcWN0si4JrLsq8POTiXamgejC/jWWvx9ZBqZYqNasCpxOo
 ud78VnVQrELlEkw5mYpxMmiiaS3rC0gsGWg=
Return-Path: bounce+53643+51424+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of
 yocto@lists.yoctoproject.org designates 66.175.222.12 as permitted sender)
 receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
X-OldMsgId: <888a382972384477b015a904c47168da@Exchange.sewerin.de>
Message-ID: <MADEUP.1648FA46C6C361C3.2089@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="HgI8PZCHNrPdBVAEiTr2"

--HgI8PZCHNrPdBVAEiTr2
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <EEAB3ACA6EC71A4A84C0E1CCF4894B98@intel.com>
Content-Transfer-Encoding: base64

SGkgUm9zcw0KDQpPbiBNb24sIDIwMjAtMTEtMTYgYXQgMTQ6NTkgKzAwMDAsIFJvc3MgQnVydG9u
IHdyb3RlOg0KPiBGcm9tOiBSb3NzIEJ1cnRvbiA8cm9zcy5idXJ0b25AYXJtLmNvbT4NCj4gDQoN
CkZvciBnYXRlc2dhcnRoLCB0aGlzIGlzIGNhdXNpbmc6DQoNCkZpbGVOb3RGb3VuZEVycm9yOiBb
RXJybm8gMl0gTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeToNCicvaG9tZS9wb2t5YnVpbGQveW9j
dG8td29ya2VyL21ldGEtYXJtL2J1aWxkL3JlcG9zL21ldGEta2VybmVsJw0KDQpodHRwczovL2F1
dG9idWlsZGVyLnlvY3RvcHJvamVjdC5vcmcvdHlwaG9vbi8jL2J1aWxkZXJzLzExMy9idWlsZHMv
NDcyDQoNCm1ldGEtYXJtIGdhdGVzZ2FydGggbmVlZHMgbWV0YS1rZXJuZWw/DQoNClRoYW5rcywN
Cg0KQW51ag0KDQo+IFNpZ25lZC1vZmYtYnk6IFJvc3MgQnVydG9uIDxyb3NzLmJ1cnRvbkBhcm0u
Y29tPg0KPiAtLS0NCj4gwqBjb25maWcuanNvbiB8IDMgKy0tDQo+IMKgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2NvbmZp
Zy5qc29uIGIvY29uZmlnLmpzb24NCj4gaW5kZXggMTFhMjY2NC4uYzU3MjYwYSAxMDA2NDQNCj4g
LS0tIGEvY29uZmlnLmpzb24NCj4gKysrIGIvY29uZmlnLmpzb24NCj4gQEAgLTI3NSw5ICsyNzUs
OCBAQA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIlRFTVBMQVRFIiA6ICJsdHAtcWVtdSIN
Cj4gwqDCoMKgwqDCoMKgwqDCoCB9LA0KPiDCoMKgwqDCoMKgwqDCoMKgICJtZXRhLWFybSIgOiB7
DQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJORUVEUkVQT1MiIDogWyJwb2t5IiwgIm1ldGEt
YXJtIiwgIm1ldGEta2VybmVsIl0sDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJORUVEUkVQ
T1MiIDogWyJwb2t5IiwgIm1ldGEtYXJtIl0sDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAi
QURETEFZRVIiIDogWw0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICIke0JVSUxE
RElSfS8uLi9tZXRhLWtlcm5lbCIsDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICIke0JVSUxERElSfS8uLi9tZXRhLWFybS9tZXRhLWFybS10b29sY2hhaW4iLA0KPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiJHtCVUlMRERJUn0vLi4vbWV0YS1hcm0vbWV0YS1h
cm0iLA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiJHtCVUlMRERJUn0vLi4v
bWV0YS1hcm0vbWV0YS1hcm0tYnNwIg0KPiANCj4gDQo+IA0KDQoNCg0KDQo=

--HgI8PZCHNrPdBVAEiTr2--
