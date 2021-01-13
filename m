Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web08.7778.1610543821720214445
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jan 2021 05:17:04 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=X5UsiLs/;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1610543821; x=1768223821;
  h=from:to:cc:subject:date:content-transfer-encoding:
   mime-version;
  bh=63b0sLq9/ET6hdyIna5aNk8Ho/f+lrszeDvvLjVJBbA=;
  b=X5UsiLs/hCPTk+mXzxByKrf9otEaMPvMlFZ66TrYAQEUcdHEUJrQZ7ld
   9cveTRSCw0e2FgPdAchRnsM7qcb1mWgA6bxr5SBhfaNptRwurgpG98/hS
   6ucyob75DRW1R2q6UFJJFyaWEg/p+IdiMpo5EIwLy5NcZxmr7ibR4rHw/
   M=;
IronPort-PHdr: =?us-ascii?q?9a23=3A/00KMxcqsHp68JcIguRVMkJVlGMj4u6mDksu8pMi?=
 =?us-ascii?q?zoh2WeGdxc27bBKN2/xhgRfzUJnB7Loc0qyK6vCmATdLvcrJ8ChbNsAVCFld0Y?=
 =?us-ascii?q?RetjdjKfbNMVf8Iv/uYn5yN+V5f3ghwUuGN1NIEt31fVzYry76xzcTHhLiKVg9?=
 =?us-ascii?q?fbytScbdgMutyu+95YDYbRlWizqhe7NyKwi9oRnMusUMjoZuN6U8xgHVrnZGdO?=
 =?us-ascii?q?hbymxlLk+Xkxrg+8u85pFu/zlStv4768JMTaD2dLkkQLJFCzgrL3o779DxuxnZ?=
 =?us-ascii?q?SguP6HocUmEInRdNHgPI8hL0UIrvvyXjruZy1zWUMsPwTbAvRDSt9LxrRwPyiC?=
 =?us-ascii?q?cGLDE27mfagdFtga1BoRKhoxt/w5PIYIyQKfFzcL/Rcc8cSGFcRctaSTBPDZ2g?=
 =?us-ascii?q?YIsOF+oBPPhXr4/hp1sVsBCyARCgCP7zxjNUg3P727Ax3eY8HgHcxAEuH8wAvm?=
 =?us-ascii?q?nIrNv7N6kSX+G1w7XHwzrMdP5WxSzy6IrUfhw9vf2BX7R9etfRx0k1EAPFi02d?=
 =?us-ascii?q?pYLiMTOS0OQNqHaU4PR7Ve63lmUpth1xrSaxxsgyjInCm5wYwU3A+Sp33Yg5IN?=
 =?us-ascii?q?O0Q1N8bN6/DJtfqT+aOJVwQs84RmFovyA6yqYYtpGlZygH048oyATBZPycc4mI?=
 =?us-ascii?q?+Q7jW/iUITdjnn5qZLW/hxOr/EWm1+bzWdW63kxQoSpZjtnDqGoN1xrL58SaVP?=
 =?us-ascii?q?Zw/Eis1DSL2g3P6OxJPV44mK7FJpM93rM8iIcfvVneEyL5mEj4jLOaelg69uWo?=
 =?us-ascii?q?6+rqYrfrqJCCOoJ1jgzzNLkllMK4AeQ9KAcOXm6b9Py81b3k4UL5XLJKjuUskq?=
 =?us-ascii?q?nespDVO9gUprKjDw9SyIYj5BCyBCql3tQAhXQLMU5JdAiJgoXrIV3CPu70APel?=
 =?us-ascii?q?j1mtkTpn3+3KMqH7DpjCIXXPirjscaxg50Nczgc40MpR6IhOCr4bJfL+QkrxtN?=
 =?us-ascii?q?vFARAnKwG02OPnCMll1oMZRGKPHreVMKPMvl+M4eIiO/WDa5UOuDnhLvgl/Prj?=
 =?us-ascii?q?gHs6lFMBY6Wlx50XZ2qiEvt9OUqWf2Hsg9caEWcWoAU+SffqhEeeXj5UYna+R6?=
 =?us-ascii?q?M85jclB4K6FYrPW5yhjKaP0Sq5BJFaeH5KB1CWHXrpdoiIQ/IMZziTIs9lnDwE?=
 =?us-ascii?q?T7+hS4o52BG1qA/11aRnIfTS+iECsJLj09515/bNmh4s7jx5FN+S3HuTQGFvnm?=
 =?us-ascii?q?IIXCM20756oUxm0FuMza94g/lAGdxJ+/xJShs6NYLbz+FiC9HyXR7OfsuOSFu9?=
 =?us-ascii?q?RtWmACoxTs4qw9MUY0d9HMmtjgzE3yqyGb8VkL6LC4Io/aLAxXTxINx9y3mVnJ?=
 =?us-ascii?q?QnlEQsF8tTKXW91Ok48wnIG5WPgkKSi6Gyb6Me0SXRsmCZwi2B+1BfWxJ3FrjD?=
 =?us-ascii?q?Rm0VNXbQtsnz2k7SU+quFag/KVkGjsqDMbdRLMzuhklBXO3kOtnVfyS2gWj3Cl?=
 =?us-ascii?q?GZwbiQa833fX4A1nbhDx0nkw0WtUyPN0BqHC6j5WHeATlGGlfmYkeq+u57/iCV?=
 =?us-ascii?q?VEgxmkuvaEt62reuvlYumfGCRvVb9fpEhRxg4X0gB0qwwd/QTd+HoRFscb50a9?=
 =?us-ascii?q?ow+0ZcyW/crEp2OZn2fPMqvUIXbwki5xCm7B5wEIgV1JFy9H4=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DrAwDe8f5f/0LhJQpigQmEcIE4CoQ1k?=
 =?us-ascii?q?UIDihyQOIFoCwEBAQEBAQEBAQgBGAsMBAEBhEoCF4FUJjgTAhABAQYBAQEBAQY?=
 =?us-ascii?q?EAYZRDII4BQIDHwEGgwsBAQEDAQEiERorDAQCAQgRBAEBAQICJgICAh8HCQEVC?=
 =?us-ascii?q?AgBAQQOBQgVBIMGglUDDi+tWnaBMoQ/AYEYgl0NgiSBDiqGZQ6BCoU0ggM+hCo?=
 =?us-ascii?q?+ghtCBAGBJwESATiDAYJgBIIRgSsbJIEPCAFNGmKPWIMlpElYBwOCd4kri0CBV?=
 =?us-ascii?q?4UUK4RZngefKIJ4jxKEIAIEAgQFAhaBbYEKcHCDOQlHFwINlyaFRHQCATQCBgE?=
 =?us-ascii?q?JAQEDCYtuXIERAQE?=
X-IPAS-Result: =?us-ascii?q?A2DrAwDe8f5f/0LhJQpigQmEcIE4CoQ1kUIDihyQOIFoCwE?=
 =?us-ascii?q?BAQEBAQEBAQgBGAsMBAEBhEoCF4FUJjgTAhABAQYBAQEBAQYEAYZRDII4BQIDH?=
 =?us-ascii?q?wEGgwsBAQEDAQEiERorDAQCAQgRBAEBAQICJgICAh8HCQEVCAgBAQQOBQgVBIM?=
 =?us-ascii?q?GglUDDi+tWnaBMoQ/AYEYgl0NgiSBDiqGZQ6BCoU0ggM+hCo+ghtCBAGBJwESA?=
 =?us-ascii?q?TiDAYJgBIIRgSsbJIEPCAFNGmKPWIMlpElYBwOCd4kri0CBV4UUK4RZngefKIJ?=
 =?us-ascii?q?4jxKEIAIEAgQFAhaBbYEKcHCDOQlHFwINlyaFRHQCATQCBgEJAQEDCYtuXIERA?=
 =?us-ascii?q?QE?=
X-IronPort-AV: E=Sophos;i="5.79,344,1602547200"; 
   d="scan'208";a="477141217"
X-IronPort-AV: E=Sophos;i="5.79,344,1602547200"; 
   d="scan'208";a="176325222"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel
Thread-Topic: [yocto] #yocto #kernel
Thread-Index: AdbpHa4uv+X65smLT56sbWhYtNALIwARKvQAABDJg2AAAi/tkA==
Date: Wed, 13 Jan 2021 13:16:56 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.1659CD13328A69B6.15401@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBhbSB1c2luZyBzeXN2aW5pdC4uLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJv
bTogTW9uc2VlcywgU3RldmVuIEMgKFVTKSANClNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxMywg
MjAyMSA3OjE1IEFNDQpUbzogJ0toZW0gUmFqJyA8cmFqLmtoZW1AZ21haWwuY29tPg0KQ2M6IHlv
Y3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJFOiBbeW9jdG9dICN5b2N0byAj
a2VybmVsDQoNCg0KV2hlbiBJIGRvIHRoaXMgSSBhbSBzZWVpbmcgIk5vdGhpbmcgUFJPVklERVMg
J2luaXQtc3lzdGVtLWhlbHBlcnMnLCwsDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpG
cm9tOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPiANClNlbnQ6IFR1ZXNkYXksIEphbnVh
cnkgMTIsIDIwMjEgNjoxMyBQTQ0KVG86IE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgPHN0ZXZlbi5t
b25zZWVzQGJhZXN5c3RlbXMuY29tPg0KQ2M6IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcN
ClN1YmplY3Q6IFJlOiBbeW9jdG9dICN5b2N0byAja2VybmVsDQoNCioqKiBXQVJOSU5HICoqKg0K
RVhURVJOQUwgRU1BSUwgLS0gVGhpcyBtZXNzYWdlIG9yaWdpbmF0ZXMgZnJvbSBvdXRzaWRlIG91
ciBvcmdhbml6YXRpb24uDQoNCg0KT24gVHVlLCBKYW4gMTIsIDIwMjEgYXQgMTI6MDkgUE0gTW9u
c2VlcywgU3RldmVuIEMgKFVTKSB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8c3RldmVuLm1v
bnNlZXM9YmFlc3lzdGVtcy5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+DQo+
DQo+DQo+IFdvcmtpbmcgb24gemV1cyAzLjAuNCwgZm9yIGFhcmNoNjQNCj4NCj4NCj4NCj4gSSAg
aGF2ZSBhIHN0YXJ0dXAgc2NyaXB0IG1ha2luZyB1c2Ugb2Yg4oCcc2VydmljZeKAnSBIb3cgZG8g
SSBwcm9wZXJseSBjb25maWd1cmUgaW4gc3VwcG9ydCBmb3IgdGhlIOKAnHNlcnZpY2XigJ0gY29t
bWFuZCA/DQo+DQo+IEkgZG8gbm90IGhhdmUgYW4gZXJyb3Igd2hlbiB3b3JraW5nIHVuZGVyIHJv
Y2tvLg0KPg0KPg0KPg0KPiBUaGUgZXJyb3Igc2VlbiBpcyA6ICAgIC9ldGMvcmM1LmQvUzE1bW91
bnRuZnMuc2g6IGxpbmUgNzA6IHNlcnZpY2U6IGNvbW1hbmQgbm90IGZvdW5kDQo+DQo+DQo+DQo+
IFVzYWdlOiBAIGxpbmUgNzA6ICDigJxzZXJ2aWNlIHJwY2JpbmQgc3RhdHVzID4vZGV2L251bGzi
gJ0NCj4NCj4NCg0KcGVyaGFwcyBqdXN0IGFkZCBpbml0LXN5c3RlbS1oZWxwZXJzIHRvIElNQUdF
X0lOU1RBTEwNCg0KPg0KPiBUaGFua3MsDQo+DQo+IFN0ZXZlDQo+DQo+DQo+IA0KPg0K
