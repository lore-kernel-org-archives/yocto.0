Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C6DDC433F5
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 13:37:15 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.31771.1652103425287143039
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 May 2022 06:37:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=NCTjsXou;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1652103425; x=1809783425;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=ilfkrXZfEAZc+i15A0YByLsG5/+BdGf1UQcW4Y4TRzQ=;
  b=NCTjsXounxyOkxNo0fUc7Z4/61nyOzJEsZvMOdgM8VqiPuscxQZZZVNr
   ef6io34WRDgL7h1Dnkqt2QUSmug7ATSiv7819Ylp+EQC58iSvZEVsVsNg
   2IEULXzW6nlGnzsemIY9SU2NFKUqTY9KzHhDZmkHbXGWKm1onSRNLNID7
   4=;
IronPort-SDR: 
 faG8aC8CDOJ9Pj2pKEaJ/5xwTAiP981vGIvrqtLgCEJWoNxlWnlCqrlzpZeP1tC8RUV5G2JUOJ
 UhMGwVcvNFTA==
IronPort-PHdr: =?us-ascii?q?A9a23=3AO3GfnhHJuNOJOoxiP5x26p1GfzBLhN3EVzX9C?=
 =?us-ascii?q?rIZgr5DOp6u447ldBSGo6k31xmSDM6FtroE07OQ7/q6HzRYoN6oizMrSNR0T?=
 =?us-ascii?q?RgLiMEbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdF?=
 =?us-ascii?q?Q/iOgVrO+/7BpDdj9it1+C15pbffxhEiCCybL9sIhi6twvcu80ZjYZjKqs61?=
 =?us-ascii?q?x/FrmdVd+hMym5kO0yfkwzg6sus+ZJo7jhdte8m+8NcS6vxYr42TaZfDDQoM?=
 =?us-ascii?q?mA14NPkuBzeRgaR5XUST3sbnANQDwfK8B/1UJHxsjDntuVmwymVIdf2TbEvV?=
 =?us-ascii?q?ju86apgVQLlhz0GNz4992HXl9BwgadGqx+vuxBz34jZa5yOOfFgYq3SY88VR?=
 =?us-ascii?q?WtZXsZQSSNBBJ+8b5ASBOYFJOpUspXxq0cLoRa4GAKiBv7gyiVQi3H2w6M0z?=
 =?us-ascii?q?vghHw/F0gwuHd0OsWjbotr6O6oJTeC616vIwSnfY/9K2zrw7pXDfBA7ofGLW?=
 =?us-ascii?q?LJ9acTdx04oFwPDlVWft5LqPyiN2u8Qrmab8/RvVfyxhG4htgp8vCWkysMih?=
 =?us-ascii?q?YfUg44ZxE3P+CJiwIYpO9K4VlB0Ydi+HJtVsCGaMZB2Td08TGFzoys10acJt?=
 =?us-ascii?q?oCgfCkK05Qn2wDQa/mcc4SS/h3jU+ORLC5+iXl4d72xmwy8/lK8yu3gSMa0y?=
 =?us-ascii?q?lBKozJFnNfCq30BygHe59WHR/Z/4kqs3SuD2g/X5+xHIU44i6vWJoMuzLMsi?=
 =?us-ascii?q?5YevljPEjL4lknqg6GbdkQp9vWr5urpZLjtu5GSN4hxig7kM6QunNSyAes+M?=
 =?us-ascii?q?ggTRWSb/v681LL78Uz5R7VFkuE2kq7BsJDAIsQbpLC2DBNJ0oo57Ba/FTim3?=
 =?us-ascii?q?dIFlncENFJIYA+Lg5TzN1zAIv30F+qzjlCinTtxxv3LPqXtDojRInTZn7rsc?=
 =?us-ascii?q?qxx5kFGxAYuzd1S4Y9fBKsbL/LpQEDxscTVDho+MwOp3enqEM591oYCWWKXB?=
 =?us-ascii?q?a+ZLb/SvUeI5u0xJ+mMY5cYuCjnJPgl4f7uiGQ5lFsZcKStwZcbdWq0HvJ8L?=
 =?us-ascii?q?EmDenXjmMkOEXwKvwolUOzllliCUSVJa3muWKI84yk3CIOgDYjdWoCgmKGN0?=
 =?us-ascii?q?DuhEpBYZG1KEE2AHHPmeomeWvoBaDqeIsp7nTwFUbihRZUh1RartALi0LpnM?=
 =?us-ascii?q?vTb+jMGupLlztR14urTlRcp9TNqEcudyHqAQHpukWwWXD833Lt/oVBjxVeGy?=
 =?us-ascii?q?qh0meBXFdtW5/9RVAc1LobTz/ZmBNDqRgLBYtCJRU67Ttm+GzE+Usoxw8MSY?=
 =?us-ascii?q?0Z6A9ijjhfD0Da2A78SjLGLAJ008rnA33jqPcp8y3HG27U9j1khWstPL2qmh?=
 =?us-ascii?q?qxh+AfPG47FiUKZl7yldfdU4CmYzmCY1iKkoVtEVwg4Bb/CRmtZbFbMsdP/z?=
 =?us-ascii?q?krYSvmlDrFxYSVbzsvXYI5NbMbkgE4CDMz/NcrTZSqa0yeNPlfCjueXcIf0d?=
 =?us-ascii?q?mNb2SLbE0UJiCgZ9HudJBMiCyK65WnZCWo9RhrUf0rw/Lwm+zuARUguwlTPN?=
 =?us-ascii?q?hU5v4c=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BUAwBkGHli/0HBJQpagQkJgUaBfIE?=
 =?us-ascii?q?kAoFUF4Q3kQsDhguKO4wdFIFoCwEBAQEBAQEBAQgBLAsLBAEBgg6CdAIWhSg?=
 =?us-ascii?q?mNgcOAQIEAQEBEgEBBgEBAQEBBwQBgRuFaA2CNSkBg2MBAQEBAgEBIhE8CQU?=
 =?us-ascii?q?HBAIBCA0EBAEBAQICERUCAgImChUICAEBBA4FCAGCcAWCczOrNDV6gTEaAmW?=
 =?us-ascii?q?DZUFHhRGBECyBZoQyWEyGJnuCDUMmhBk+gksMCwMBAYEWCAIIARIBYIMXgmU?=
 =?us-ascii?q?ElFYUQzIrMhQWAVEzDQEHAzJwkjALSYMgqVyBFwcDg0mLGIx7cYZsLhWDdUi?=
 =?us-ascii?q?BB4prhkQDi3qFY5ZigkqKWJQWDQgWBB2EcQIEAgQFAhaBaAFBXHBwgwQBMwk?=
 =?us-ascii?q?WMhcCjjsWgQQBAmGGfIVKdQIBOAIGAQoBAQMJkF2BEgEB?=
X-IPAS-Result: =?us-ascii?q?A2BUAwBkGHli/0HBJQpagQkJgUaBfIEkAoFUF4Q3kQsDh?=
 =?us-ascii?q?guKO4wdFIFoCwEBAQEBAQEBAQgBLAsLBAEBgg6CdAIWhSgmNgcOAQIEAQEBE?=
 =?us-ascii?q?gEBBgEBAQEBBwQBgRuFaA2CNSkBg2MBAQEBAgEBIhE8CQUHBAIBCA0EBAEBA?=
 =?us-ascii?q?QICERUCAgImChUICAEBBA4FCAGCcAWCczOrNDV6gTEaAmWDZUFHhRGBECyBZ?=
 =?us-ascii?q?oQyWEyGJnuCDUMmhBk+gksMCwMBAYEWCAIIARIBYIMXgmUElFYUQzIrMhQWA?=
 =?us-ascii?q?VEzDQEHAzJwkjALSYMgqVyBFwcDg0mLGIx7cYZsLhWDdUiBB4prhkQDi3qFY?=
 =?us-ascii?q?5ZigkqKWJQWDQgWBB2EcQIEAgQFAhaBaAFBXHBwgwQBMwkWMhcCjjsWgQQBA?=
 =?us-ascii?q?mGGfIVKdQIBOAIGAQoBAQMJkF2BEgEB?=
X-IronPort-AV: E=Sophos;i="5.91,211,1647302400";
   d="scan'208";a="473028176"
IronPort-SDR: 
 n9ZbJhstpQHRvgF3HlG48Olo90CQtrI5Hcv+HIpZIAiC3G1FfeQhX0+8IpVLOXcV2rN7k3fbdI
 f7dJ5zXVwJmA==
IronPort-Data: =?us-ascii?q?A9a23=3A8Yfy6qvy9vcsE/Ty2vtN1JPsgOfnVLBcMUV32?=
 =?us-ascii?q?f8akzHdYApBsoF/qtZmKW2APqvbYDbyL9kibInjphwAvcfSydY2HAds+X1jF?=
 =?us-ascii?q?H8SpJueD7x1DG+pZHrKcZeroGGLTikmh1KpwPkcFhcwnT/wdOm4xZVA/fvQH?=
 =?us-ascii?q?OCkVbaVYnkZqTJME0/NtzoywobVvaY42bBVMyvV0T/Di5W31G2NglaYAUpIg?=
 =?us-ascii?q?063ky6Didyp0N8uUv3SUtgQ1LPWvyF94JvyvshdJVOgKmVfNrbSq+ouUNhVV?=
 =?us-ascii?q?44ElirBBO9Jkp6jGqELapH2ES212icOBvPkjR9Gqig00eAhM/0AbUFUgnOPk?=
 =?us-ascii?q?swZJNdl7MT2ElhvZ/OV3r1GDnG0EAknVUFC0KTbLGayt4qWyEvdfnb36/9nA?=
 =?us-ascii?q?VonJpEV//0xCmZLnRAdAG9VNUHZ2L7mqF68Yqw27ig5F+HxO5gE/Ht91y3eC?=
 =?us-ascii?q?94vW5WFSKLPjfdJ2zwsgehKHO3CfIwIbjFzawzaZB9CMUtRD4gx9NpELFGXn?=
 =?us-ascii?q?yZwp1aZoLFnvjCOl0p+17zhNNzWPMaNQtlRmEWR4GTL4wzE7tghHIT34VK4H?=
 =?us-ascii?q?riE34cjRR/GZb8=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3APNPn2K4HGlJwN0KqVQPXwPrXdLJyesId70?=
 =?us-ascii?q?hD6qkRc202TiX8rauTdZsguCMc5Ax8ZJhYo6H5BEDiewK+yXcW2+gs1N6ZNW?=
 =?us-ascii?q?GNhILPFu5fBODZowEIdReRygcT79YFT0E7MqyXMbBG5fyKhTVRLL4bsaC6GI?=
 =?us-ascii?q?LBv5a480tQ?=
X-IronPort-AV: E=Sophos;i="5.91,211,1647302400";
   d="scan'208";a="70392748"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Ross Burton <ross.burton@arm.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] enabling symbols for debug in clinfo
Thread-Topic: [yocto] enabling symbols for debug in clinfo
Thread-Index: AdhjkoL47clQSZawRfWEU5kzbcuRPwACS/sAAAN4ilA=
Date: Mon, 9 May 2022 13:36:02 +0000
In-Reply-To: <C43FA290-46CE-41F9-84ED-BF78D35BA152@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 May 2022 13:37:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57030
Message-Id: <20220509133715.3C6DDC433F5@smtp.lore.kernel.org>

DQpJIHdpbGwgbmVlZCB0byB0ZXN0IGJ1dCwgdGhhdCBhcHBlYXJzIHRvIGhhdmUgZG9uZSB0aGUg
dHJpY2suLi4NCg0KDQpyb290QHNiY2ItZGVmYXVsdCBnZGIgY2xpbmZvDQpHTlUgZ2RiIChHREIp
IDguMy4xDQpDb3B5cmlnaHQgKEMpIDIwMTkgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9uLCBJbmMu
DQpMaWNlbnNlIEdQTHYzKzogR05VIEdQTCB2ZXJzaW9uIDMgb3IgbGF0ZXIgPGh0dHA6Ly9nbnUu
b3JnL2xpY2Vuc2VzL2dwbC5odG1sPg0KVGhpcyBpcyBmcmVlIHNvZnR3YXJlOiB5b3UgYXJlIGZy
ZWUgdG8gY2hhbmdlIGFuZCByZWRpc3RyaWJ1dGUgaXQuDQpUaGVyZSBpcyBOTyBXQVJSQU5UWSwg
dG8gdGhlIGV4dGVudCBwZXJtaXR0ZWQgYnkgbGF3Lg0KVHlwZSAic2hvdyBjb3B5aW5nIiBhbmQg
InNob3cgd2FycmFudHkiIGZvciBkZXRhaWxzLg0KVGhpcyBHREIgd2FzIGNvbmZpZ3VyZWQgYXMg
Ing4Nl82NC1wb2t5LWxpbnV4Ii4NClR5cGUgInNob3cgY29uZmlndXJhdGlvbiIgZm9yIGNvbmZp
Z3VyYXRpb24gZGV0YWlscy4NCkZvciBidWcgcmVwb3J0aW5nIGluc3RydWN0aW9ucywgcGxlYXNl
IHNlZToNCjxodHRwOi8vd3d3LmdudS5vcmcvc29mdHdhcmUvZ2RiL2J1Z3MvPi4NCkZpbmQgdGhl
IEdEQiBtYW51YWwgYW5kIG90aGVyIGRvY3VtZW50YXRpb24gcmVzb3VyY2VzIG9ubGluZSBhdDoN
CiAgICA8aHR0cDovL3d3dy5nbnUub3JnL3NvZnR3YXJlL2dkYi9kb2N1bWVudGF0aW9uLz4uDQoN
CkZvciBoZWxwLCB0eXBlICJoZWxwIi4NClR5cGUgImFwcm9wb3Mgd29yZCIgdG8gc2VhcmNoIGZv
ciBjb21tYW5kcyByZWxhdGVkIHRvICJ3b3JkIi4uLg0KUmVhZGluZyBzeW1ib2xzIGZyb20gY2xp
bmZvLi4uDQpSZWFkaW5nIHN5bWJvbHMgZnJvbSAvdXNyL2Jpbi8uZGVidWcvY2xpbmZvLi4uDQoo
Z2RiKQ0KDQpUaGFua3MNClN0ZXZlDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9t
OiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiBPbiBCZWhhbGYgT2YgUm9zcyBCdXJ0b24NClNlbnQ6IE1vbmRheSwgTWF5IDksIDIwMjIg
Nzo1NiBBTQ0KVG86IE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgPHN0ZXZlbi5tb25zZWVzQGJhZXN5
c3RlbXMuY29tPg0KQ2M6IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJl
OiBbeW9jdG9dIGVuYWJsaW5nIHN5bWJvbHMgZm9yIGRlYnVnIGluIGNsaW5mbw0KDQpFeHRlcm5h
bCBFbWFpbCBBbGVydA0KDQpUaGlzIGVtYWlsIGhhcyBiZWVuIHNlbnQgZnJvbSBhbiBhY2NvdW50
IG91dHNpZGUgb2YgdGhlIEJBRSBTeXN0ZW1zIG5ldHdvcmsuDQoNClBsZWFzZSB0cmVhdCB0aGUg
ZW1haWwgd2l0aCBjYXV0aW9uLCBlc3BlY2lhbGx5IGlmIHlvdSBhcmUgcmVxdWVzdGVkIHRvIGNs
aWNrIG9uIGEgbGluaywgZGVjcnlwdC9vcGVuIGFuIGF0dGFjaG1lbnQsIG9yIGVuYWJsZSBtYWNy
b3MuICBGb3IgZnVydGhlciBpbmZvcm1hdGlvbiBvbiBob3cgdG8gc3BvdCBwaGlzaGluZywgYWNj
ZXNzIOKAnEN5YmVyc2VjdXJpdHkgT25lU3BhY2UgUGFnZeKAnSBhbmQgcmVwb3J0IHBoaXNoaW5n
IGJ5IGNsaWNraW5nIHRoZSBidXR0b24g4oCcUmVwb3J0IFBoaXNoaW5n4oCdIG9uIHRoZSBPdXRs
b29rIHRvb2xiYXIuDQoNCg0KVW5sZXNzIGNsaW5mbyBpcyBkb2luZyBzb21ldGhpbmcgd3Jvbmcs
IGl0IHdpbGwgYmUgYnVpbHQgd2l0aCAtZyBhbnl3YXkuICBZb3XigJlsbCBqdXN0IG5lZWQgdG8g
aW5zdGFsbCBjbGluZm8tZGJnIHRvIGdldCB0aGUgc3ltYm9scywgYXMgdGhleeKAmWxsIGJlIHNw
bGl0IG91dCBpbnRvIGEgc2VwYXJhdGUgcGFja2FnZSBkdXJpbmcgcGFja2FnaW5nLg0KDQpSb3Nz
DQoNCj4gT24gOSBNYXkgMjAyMiwgYXQgMTE6NTQsIE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgdmlh
IGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHN0ZXZlbi5tb25zZWVzPWJhZXN5c3RlbXMuY29tQGxp
c3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3RlOg0KPg0KPg0KPiBIZWxsbzoNCj4NCj4gSeKAmWQg
bGlrZSB0byBidWlsZCBjbGluZm8gdy8g4oCcLWfigJ0gb3B0aW9uIHRvIGRvIHNvbWUgZGVidWdn
aW5nIHdpdGggR0RC4oCmDQo+DQo+IEkgYW0gbG9va2luZyBhdDogDQo+IG1ldGEtb3BlbmVtYmVk
ZGVkL21ldGEtb2UvcmVjaXBlcy1zdXBwb3J0L29wZW5jbC9jbGluZm9fMi4yLjE4LjA0LjA2LmIN
Cj4gYg0KPg0KPiBJIGNyZWF0ZWQgYSDigJxiYmFwZW5k4oCdIGZpbGUgdG8gbW9kaWZ5IHRoZSBi
dWlsZCByZWNpcGVzIOKAnE1ha2VmaWxlLmFt4oCdIGZpbGUgcHJpb3IgdG8gYnVpbGQsIHRvIGlu
dHJvZHVjZSDigJgtZ+KAmSBmb3IgQ0ZMQUdTICYgQ1BQRkxBR1MsIGkuZS4gYXQgdG9wIG9mIE1h
a2VmaWxlLmFtIGFkZGVkOg0KPg0KPiAgICAgICAgICAgICAgICAgQU1fQ0ZMQUdTIC0gLWcNCj4g
ICAgICAgICAgICAgICAgIEFNX0NQUEZMQUdTID0gLWcNCj4NCj4gSSBjaGVja2VkIHRoZSBidWls
ZCB0cmVlIGFuZCBzZWUgbXkgbW9kaWZpZWQg4oCcTWFrZWZpbGUuYW3igJ0gdXBkYXRlZCBhcyBl
eHBlY3RlZCwgdGhlIHVwZGF0ZSBvY2N1cnMgYXQgdGhlIGVuZCBvZiB0aGUgaW5zdGFsbCBwcm9j
ZXNzLCB1c2luZyBkb19pbnN0YWxsX2FwcGVuZOKApiBzbyB0aGUgYnVpbGQgc2hvdWxkIGhhdmUg
dXNlZCBteSBtb2RpZmllZCBmaWxl4oCmIGJ1dCBJIGRvIG5vdCBoYXZlIHN5bWJvbHMgZm9yIHRo
ZSBjbGluZm8gcGFja2FnZSB3aGVuIEkgZ28gdG8gdXNlIEdEQi4NCj4NCj4gSXMgdGhlcmUgYSBz
aW1wbGUgd2F5IHRvIGVuYWJsZSBkZWJ1ZyBzeW1ib2xzIGZvciB0aGlzIHBhY2thZ2UgPw0KPg0K
PiBEaWQgSSBtb2RpZnkgdGhlIHdyb25nIGNvbmZpZ3VyYXRpb24gZmlsZT8sIFNob3VsZCBJIGJl
IG1vZGlmeWluZyBjb25maWd1cmUgPw0KPg0KPiBJIGFtIG5ldyB0byBhdXRvLWJ1aWxkIGNvbmZp
Z3VyYXRpb25z4oCmIENvdWxkIHNvbWVvbmUgdGVsbCBtZSB0aGUgDQo+IGVhc2llc3Qgd2F5IHRv
IGFkZCDigJwtZ+KAnSB0byB0aGUgY2xpbmZvIHN0YW5kYXJkIGJ1aWxkID8NCj4NCj4gVGhhbmtz
LA0KPiBTdGV2ZQ0KPg0KPiANCg0KSU1QT1JUQU5UIE5PVElDRTogVGhlIGNvbnRlbnRzIG9mIHRo
aXMgZW1haWwgYW5kIGFueSBhdHRhY2htZW50cyBhcmUgY29uZmlkZW50aWFsIGFuZCBtYXkgYWxz
byBiZSBwcml2aWxlZ2VkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBw
bGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkgYW5kIGRvIG5vdCBkaXNjbG9zZSB0
aGUgY29udGVudHMgdG8gYW55IG90aGVyIHBlcnNvbiwgdXNlIGl0IGZvciBhbnkgcHVycG9zZSwg
b3Igc3RvcmUgb3IgY29weSB0aGUgaW5mb3JtYXRpb24gaW4gYW55IG1lZGl1bS4gVGhhbmsgeW91
Lg0K

