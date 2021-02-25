Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.11610.1614262104571606229
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Feb 2021 06:08:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=JeLOOEYn;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1614262104; x=1771942104;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=NyQanlvsvB74ksmQzvzZiUgCDSnjj2mp6Mhukv40o4o=;
  b=JeLOOEYntE9dBJI/5RTGHU8o5IYmFjD7ziYooSX4RrUkDC/pRJk8ADKX
   v1tobI7FG7mS44MnteM8A/jw1o4AfYZATiQFimoucPwzRT2UOGNF+atKX
   cgqfKBjHZXYZcUhSSFX3Gk1z2z/x7l8i2DpH4/bUlmv4O4LI7mEPd+dLa
   k=;
IronPort-PHdr: =?us-ascii?q?9a23=3AM6pxFxWavDzkdXAe3wmi+2EIxUnV8LGtZVwlr6E/?=
 =?us-ascii?q?grcLSJyIuqrYZRWHtadThVPEFb/W9+hDw7KP9fy5CCpQsd3f7TgrS99lb1c9k8?=
 =?us-ascii?q?IYnggtUoauKHbQC7rUVRE8B9lIT1R//nu2YgB/Ecf6YEDO8DXptWZBUhrwOhBo?=
 =?us-ascii?q?KevrB4Xck9q41/yo+53Ufg5EmCexbal9IRmrqQjdrMobjIhtJqswyhbCv2dFdf?=
 =?us-ascii?q?lRyW50P1yYggzy5t23/J5t8iRQv+wu+stdWqjkfKo2UKJVAi0+P286+MPkux/D?=
 =?us-ascii?q?TRCS5nQHSWUZjgBIAwne4x7kWJr6rzb3ufB82CmeOs32UKw0VDG/5KplVBPklC?=
 =?us-ascii?q?EKPCMi/WrJlsJ/kr5UoBO5pxx+3YHUZp2VNOFjda/ZZN8WWHZNUtpUWyFHH4iy?=
 =?us-ascii?q?bZYAD/AZMOhYsYfzukcOoxW9CwmiBuzvyyNHiHD50qAhz+QuCgPG0BA8E94Ssn?=
 =?us-ascii?q?nZqsj+OqcIUeCyyanF1TvPYfRR2Tf784jHbA4uoeqUUbltbMTR1VcgFx3bgVWW?=
 =?us-ascii?q?tIfoIS6e2uADvGaG6uZsW/+khmk8qwFtvDev2Nkjio/TioIQzVDE8z55z5grKt?=
 =?us-ascii?q?2jU0N0esSrH4VLtyCaLIt2Xt0tQ2RzuCog1rIGvpu7cTEMxZ86yBHRd+aJfJKU?=
 =?us-ascii?q?4hL/SumROzF4iWpldb+7iRi+7UmtxvPiWsS73lhGsyVIn8fRu34D1xHe9MiJRu?=
 =?us-ascii?q?Vh80u9xDuB2QLe5O5LL040m6TWNYIszqI/mJcOt0nIAyH4mELzjKCMd0Uk/PCl?=
 =?us-ascii?q?6uTgYrr6up+cMJd0ihv5MqQshMOwHfg4PhIJX2iB9uSwzKbj/VHjQLpUlPI2l7?=
 =?us-ascii?q?TZsJbeJcQao665AhNV3Zg+5BqlEzim19EYkH8aJ1xGYBKKl5XlN03ULP32D/qz?=
 =?us-ascii?q?mUqgnClryvzcP7DsAo3BImXfnLv7crtw5FRQxQUpwdxC559ZDKwKLujpVU/rrt?=
 =?us-ascii?q?PYCwc0Mwmzw+n6FtpwzpgeWWeTAq+BN6PSrEOI6vovI+aSYI8Vvy7wK+Qq5vH0?=
 =?us-ascii?q?i385nEQdcK210ZcLdHy0A+5qI0ODbnb2mdgOC3kFvhE+TezxlF2NTztTZ22oU6?=
 =?us-ascii?q?0g4TE7DZqqDYbFRo+znLyMxDq3EoFMam1ICF2AC2nke5uEVvsWaS+fItdtkjke?=
 =?us-ascii?q?WrigT48h2wuutAj/y7d/NerU5jMXtYz929hz/eHTkBYy9TpvD8uDzW6NVHp5kX?=
 =?us-ascii?q?gSSDAox6B+oVd9ykud3qh9mPxUD8Bc5/RMUgsiL57T0/R6C8zuWgLGZtqISFGm?=
 =?us-ascii?q?Tcm6ATE2Vd8xx94OY11hG9W5lBzC3y2qDKMJl7yMHJw06KXc33rvKMlh13bKzq?=
 =?us-ascii?q?4hj0MpQpgHCWrzv7Ny8RTSAcbymEWEk7TiIb0B0SjR9WHF1mGOoUVKeBVsS6jM?=
 =?us-ascii?q?WG0ZYkrTrMj06gXJSLr4Wpo9NQ4Ug+uFLLBHZ8atxW5aSenuPpz1KyKMoCb6TU?=
 =?us-ascii?q?KT2r6SYYysfmIbxyjQE2AOmg0I7G2aOA0lQCympjSNX3RVCVvzbha0oqFFo3Sh?=
 =?us-ascii?q?QxpxllnSYg=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2A+AwA9rjdg/0HhJQpiHQEBAQEJARIBB?=
 =?us-ascii?q?QUBQIFPgyGBQQqEN5FkA48ahgGFR4FoCwEBAQEBAQEBAQgBHQcQBAEBhE0CF4F?=
 =?us-ascii?q?iJjgTAhABAQYBAQEBAQYEAYZRDYI4KQGDYgEBAQEDASIRFTAMBAIBCBEEAQEBA?=
 =?us-ascii?q?gIRFQICAiYKFQgIAQEEDgUIgmQFsh08doEyhViFAAkBgQQqhn6GRYIEQYQrPoJ?=
 =?us-ascii?q?dBYEWCAoBEgE4FROCV4JfBIFvFIEBUntBB5Izgn6lZAcDgnyJP4tUhwErgzWBN?=
 =?us-ascii?q?IkZkFCEey2xOwwGNoQ4AgQCBAUCFoFrMFpwcFCCaQlHFwINkg6FFIVFczgCBgE?=
 =?us-ascii?q?JAQEDCYsEgQ8BAQ?=
X-IPAS-Result: =?us-ascii?q?A2A+AwA9rjdg/0HhJQpiHQEBAQEJARIBBQUBQIFPgyGBQQq?=
 =?us-ascii?q?EN5FkA48ahgGFR4FoCwEBAQEBAQEBAQgBHQcQBAEBhE0CF4FiJjgTAhABAQYBA?=
 =?us-ascii?q?QEBAQYEAYZRDYI4KQGDYgEBAQEDASIRFTAMBAIBCBEEAQEBAgIRFQICAiYKFQg?=
 =?us-ascii?q?IAQEEDgUIgmQFsh08doEyhViFAAkBgQQqhn6GRYIEQYQrPoJdBYEWCAoBEgE4F?=
 =?us-ascii?q?ROCV4JfBIFvFIEBUntBB5Izgn6lZAcDgnyJP4tUhwErgzWBNIkZkFCEey2xOww?=
 =?us-ascii?q?GNoQ4AgQCBAUCFoFrMFpwcFCCaQlHFwINkg6FFIVFczgCBgEJAQEDCYsEgQ8BA?=
 =?us-ascii?q?Q?=
X-IronPort-AV: E=Sophos;i="5.81,205,1610409600"; 
   d="scan'208";a="350640016"
X-IronPort-AV: E=Sophos;i="5.81,205,1610409600"; 
   d="scan'208";a="99903952"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] BB_HASHBASE_WHITELIST
Thread-Topic: [yocto] BB_HASHBASE_WHITELIST
Thread-Index: AdcLekhCACdq46jaS7SNqv9mcQES3AAK64AAAAmWuKA=
Date: Thu, 25 Feb 2021 14:08:13 +0000
In-Reply-To: <20210225134226.2q56xzogi7vafuml@qschulz>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.166702D55E6BD6E8.10054@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGFua3MsIHdpbGwgdHJ5IGl0IG91dC4uLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KRnJvbTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QHN0cmVhbXVubGltaXRlZC5j
b20+IA0KU2VudDogVGh1cnNkYXksIEZlYnJ1YXJ5IDI1LCAyMDIxIDg6NDIgQU0NClRvOiBNb25z
ZWVzLCBTdGV2ZW4gQyAoVVMpIDxzdGV2ZW4ubW9uc2Vlc0BiYWVzeXN0ZW1zLmNvbT4NCkNjOiB5
b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBCQl9IQVNI
QkFTRV9XSElURUxJU1QNCg0KRXh0ZXJuYWwgRW1haWwgQWxlcnQNCg0KVGhpcyBlbWFpbCBoYXMg
YmVlbiBzZW50IGZyb20gYW4gYWNjb3VudCBvdXRzaWRlIG9mIHRoZSBCQUUgU3lzdGVtcyBuZXR3
b3JrLg0KDQpQbGVhc2UgdHJlYXQgdGhlIGVtYWlsIHdpdGggY2F1dGlvbiwgZXNwZWNpYWxseSBp
ZiB5b3UgYXJlIHJlcXVlc3RlZCB0byBjbGljayBvbiBhIGxpbmssIGRlY3J5cHQvb3BlbiBhbiBh
dHRhY2htZW50LCBvciBlbmFibGUgbWFjcm9zLiAgRm9yIGZ1cnRoZXIgaW5mb3JtYXRpb24gb24g
aG93IHRvIHNwb3QgcGhpc2hpbmcsIGFjY2VzcyDigJxDeWJlcnNlY3VyaXR5IE9uZVNwYWNlIFBh
Z2XigJ0gYW5kIHJlcG9ydCBwaGlzaGluZyBieSBjbGlja2luZyB0aGUgYnV0dG9uIOKAnFJlcG9y
dCBQaGlzaGluZ+KAnSBvbiB0aGUgT3V0bG9vayB0b29sYmFyLg0KDQoNCk9uIFRodSwgRmViIDI1
LCAyMDIxIGF0IDAxOjM3OjE4UE0gKzAwMDAsIE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgdmlhIGxp
c3RzLnlvY3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+IA0KPiBXaGVyZSBhbmQgd2hlbiBpcyBpdCBh
cHByb3ByaWF0ZSB0byBhZGQgdG8vbW9kaWZ5IEJCX0hBU0hCQVNFX1dISVRFTElTVCAiID8NCj4g
DQo+IEkgdHJpZWQgdG8gZG8gOiBCQl9IQVNIQkFTRV9XSElURUxJU1QgKz0gIkJCX1RSQUNFIiBp
biBteSBsb2NhbC5jb25mIGJ1dCBpdCBlbmRlZCB1cCByZXBsYWNpbmcgZXhpc3RpbmcgbGlzdCB3
aXRoIGp1c3QgIkJCX1RSQUNFIi4uLg0KPiANCg0KSW4gbG9jYWwuY29uZiwgb25lIHVzdWFsbHkg
d2FudHMgdG8gdXNlIF9hcHBlbmQgaW5zdGVhZCBvZiArPSBzaW5jZSBsb2NhbC5jb25mIGlzIHBh
cnNlZCBwcmV0dHkgZWFybHksICs9IHdpbGwgb3ZlcnJpZGUgY3VycmVudCB2YWx1ZXMgc2V0IHdp
dGggPz0gb3IgPz89LiBJdCBtaWdodCBhbHNvIGJlIG92ZXJyaWRkZW4gaWYgPSBpcyB1c2VkIGlu
IHJlY2lwZXMvY29uZiBmaWxlcy4NCg0KQ2hlZXJzLA0KUXVlbnRpbg0KLS0NClN0cmVhbVVubGlt
aXRlZCBFbmdpbmVlcmluZyBHbWJIDQpIaWdoIFRlY2ggQ2FtcHVzIFZpZW5uYSwgR3V0aGVpbC1T
Y2hvZGVyLUdhc3NlIDEwLCAxMTAwIFZpZW5uYSwgQXVzdHJpYQ0KRmF4OiArNDMgMSA2NjcgMjAg
MDIgNDQwMQ0KcXVlbnRpbi5zY2h1bHpAc3RyZWFtdW5saW1pdGVkLmNvbSwgd3d3LnN0cmVhbXVu
bGltaXRlZC5jb20NCg==
