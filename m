Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web12.5217.1605961599249201788
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 04:26:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lists.yoctoproject.org header.s=20140610 header.b=u1nSqbe7;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Fri, 20 Nov 2020 00:36:19 +0000
X-Sender: bounce+53643+51435+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 11760
X-Received: by 127.0.0.2 with SMTP id z87EYY3619394xjKtrQP1GRi; Thu, 19 Nov 2020 16:36:14 -0800
X-Received: from EUR03-VE1-obe.outbound.protection.outlook.com (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.49])
 by mx.groups.io with SMTP id smtpd.web11.9295.1605792571362641300
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 05:29:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aA2CqLGsXqkjnXZGy4f99vTGlrniVMtimE6rhgRv+GzM7K5fhDqVq8t4VrcVssVn1kYzv6UnKu5PJcl2vHPYm0Cxn7u075eXC4WDUgsAwudltTCwwu+BlwHvU4c4t3mtqegDS35odGqkKWQXgWHWZUWN4W08ehprsGLKEdMpiDdh6J9gTKqWYE7w7TCk/4TWKd+hamprIHLOlY94aoX8ItfXGDMTZhvKfUOcQYYBx8OELXG7WpDNx33ATYgXc0FioBd/EVD7wqCSJFIuFFJZjS8AUfDQ7OcDIe2KXQSV7/WfRrp3prUJecehj8cg8ajYrNVDbEEivFqCzStyILLknQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pnvY8DVS5IvOH8LU1Lp7a+ohluEI1hwBN3E3Jk0ASWw=;
 b=SwuI91Nm90nS4HrJZfps04jRG+tz5fWL9JyvInAnLkT6eD4sWF9LDb8w3H+5xAa6Zx22OiJbkCtWY2X49/p2w4sJv+Uns0LDhQQPoYKmScCdhNmnzzbeglNftZKC9KWTY6LwK7pHYlY03VjF6PMEchAzWaC1ShESptEDsJrhwvJsrIRyWyNvKYTfDJscONlq3ntng4l7idcPtYFOx6KzjgICZ4aRmFmJzG8YZ/ZRwbvZQLUGg7ZaxyMVslbA2JJJMLfU8bkIE/bg99dkstKRWsWWcsiGU3RE5nn2CdNky+CoQR5iXgjiUkuNCVS64KicZtRs+46r5jKHPnY6S/pG5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=tagmaster.com; dmarc=pass action=none
 header.from=tagmaster.com; dkim=pass header.d=tagmaster.com; arc=none
X-Received: from HE1PR0102MB3194.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:85::22) by HE1PR0102MB2811.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:25::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 19 Nov
 2020 13:29:27 +0000
X-Received: from HE1PR0102MB3194.eurprd01.prod.exchangelabs.com
 ([fe80::ade5:f0f1:7ca7:7e1a]) by
 HE1PR0102MB3194.eurprd01.prod.exchangelabs.com
 ([fe80::ade5:f0f1:7ca7:7e1a%5]) with mapi id 15.20.3589.020; Thu, 19 Nov 2020
 13:29:27 +0000
From: "Pelle Windestam" <pelle.windestam@tagmaster.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [yocto] multilib: lib32-libgdiplus complaining about qemuwrapper
Thread-Topic: multilib: lib32-libgdiplus complaining about qemuwrapper
Thread-Index: Ada+b2O4skHpPvIsR6e9Kcsx/YJvDQ==
Date: Thu, 19 Nov 2020 13:29:27 +0000
X-OldMsgId: <HE1PR0102MB3194BEC780B1BF7BBD0B7337FFE00@HE1PR0102MB3194.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [37.233.78.69]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e13f9a23-f95a-4c7c-db66-08d88c8f2395
x-ms-traffictypediagnostic: HE1PR0102MB2811:
x-microsoft-antispam-prvs: <HE1PR0102MB28116DD62647D884CABEDD57FFE00@HE1PR0102MB2811.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XyXNsGUHpeoVdgqdo6O/VKgJiCE5Lkn2VN1tknFEnD5/ZCKFDqgJf1rnkqKgZ4hc/gqLuhb18m3+I+8aFqqunjBQnsZgg9J4NYUNV4zWQMFSz9CSQj5WM2ok02qNNtoAvFZmZ2+d6Kn+eKoFVQWWL7mMjwBaHxQxu1duuZQaMnTQy9LL37RfMzy+6tLaULajwmZc25yFhks5XnteCPivfXM0QzH6Ra1tFISbvt5/odAqXkcRQ/y9WUNgHFEZ2ezhZoN5J8fmDhGUush2ngWace8gk+jh/jJrrNGWNNKfKW0e3tTgctl1ljyhocpsb4xwQd6Gqyt7GFvupra1Xicg//0aEzHYhTPVk3FuhG/JpG37RJYOhkktEbdEa5zLRHQlpyPrU1GYko+x8EzRdt8KDg==
x-ms-exchange-antispam-messagedata: UejqVnHBwwpUENCOQ0hjKh5rnZp7bOshIk5lJgsCSBXtow/9wrYI9cZcC81MTZ+Q7HJfWb/jNjUWSBZJlDQeHY4Xg61yJTMsx0uaJEg9QdB4xk++WUJ+ThotQAJWQbA6n+92WsFpUL3z/VLcAuwiioWaAdM3rD9Kpwfvcpg/65wzz91RIU+AkAr+KkL0teqqJ7ValQN7PUFAUW474PIU7kS44QJcPNxZRqG4wAPgJp5Be9yEApxuCWw7J8xWuXQgzfFFOpQo4YWoNu3vZo76zcnd1jZxFdzgdLGO8ane+44Hu8pGvbZsczkBI9zQn176jxYYCTksNEAkpdFYbq+e5q1sZnIJDtG8g6ayODUajLNfrlYrOAOqDRUGFvHFlD6PXxVma+yJ9a5XuWOCs6Hm20Ul3dvaWHLKQx93obQsxUGhh1Z72PykiFn6yaP4X1sBcQVEQq4i9mGYuNR0yl6zaKzO7XVyLp/vB/IFj66DoPBkN4yb0i2c0/rV+f4TqmbaoxKWrh3BTgd/1BNhg/+4HBinJVllZ7P51ZShgZ9qQMs0ZYw9xJbpgsCNQt14imgJD5kFz3jtPJ6YTrGB6DghvJGSaf1MsYovq6k7z16ejGNZwmANK39ZHUQTBwC7bgSmm1VsqvsQKxBDsxvCReBHStjCpN1kHr6CgD6SGydy7vbgcXWFAgd9wSV0753h6uX8aMEXMgZaZtHttGIRXnT1tw8I/85Qe6QFlrZ6XIzQdwfAfeTfbX/eN7NA/OadZq/M71/+/J4Ylpljj0bB/nAXEmSJt1ic+2F/sVkHS/Xbp5ffSRlEqRrDMwCXx85fzObKvUd5Gve/llEGq8drmgM6Z2jFrwRae31C+GTk9EQHBF6pRMBxC83ocyzQR0HLhVF59WYAs3NDvFBTPFOAtNBxTA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0102MB3194.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e13f9a23-f95a-4c7c-db66-08d88c8f2395
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2020 13:29:27.6991
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6a5b4421-c44a-46bd-a46f-b3a344133000
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ryYkmnDMdtTXzXUmq5z8/H7JmGfI7hMw3DAzRMkjcZ6sxqaqFdmZ3oqoeh5/2ttLoZwfUmqkYPRJRFznQKjTObsaV/yTETLEaljBc3eMhAM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0102MB2811
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
X-Gm-Message-State: gbWKNWjsah6oloDjxC96FRowx3618059AA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=lists.yoctoproject.org; q=dns/txt; s=20140610; t=1605832574;
 bh=z+h7He7luM8RbUAqylkRynbEGNfyDBIeq9Nvoaa2eiI=;
 h=Content-Type:Date:From:Subject:To;
 b=u1nSqbe7t5IZT6wRVwHTQ23moeEbIuJDzwKhQUJ37QzhE/UzPEuaBQqSaPGtgARoD82
 WAH7y0GNWjbgo4VVLZcCquYXPEgYQynLlDcBUwd3PT5ftbVl+eyDxuBQSNUzLRHCRsidW
 +hneYC/kOSWhc88zBeAk1YKUcg0Eemaw5b0=
Return-Path: bounce+53643+51435+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of
 yocto@lists.yoctoproject.org designates 66.175.222.12 as permitted sender)
 receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <5d4b8e7fc1b947d089cb3ee27ae14aca@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="pgocKmcGzmiVsk2ihAp1"

--pgocKmcGzmiVsk2ihAp1
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJIGFtIHVzaW5nIFlvY3RvIDIuNSBhbmQgaGF2ZSBhIHdvcmtpbmcgbXVsdGls
aWItZW5hYmxlZCBpbWFnZSBiYXNlZCBvbiBwb2t5IHdoaWNoIGluY2x1ZGVzIGxpYmdkaXBsdXMg
KDY0LWJpdCkuIER1ZSB0byByZXF1aXJlbWVudHMgSSBoYWQgdG8gYWRkIHRoZSAzMi1iaXQgdmVy
c2lvbiwgc28gSSBhZGRlZCBsaWIzMi1saWJnZGlwbHVzIHRvIG15IGltYWdlIHJlY2lwZS4gVGhp
cyBjYXVzZWQgdGhlIGZvbGxvd2luZyBlcnJvciBvdXRwdXQgZnJvbSBiaXRiYWtlOg0KDQpXQVJO
SU5HOiB0bWxpbnV4LWltYWdlLTEuMC1yMCBkb19yb290ZnM6IFRoZSBwb3N0aW5zdGFsbCBpbnRl
cmNlcHQgaG9vayAndXBkYXRlX2dpb19tb2R1bGVfY2FjaGUtbGliMzInIGZhaWxlZCwgZGV0YWls
cyBpbiAvaG9tZS9wZWxsZS9kZXZlbG9wbWVudC92YXItZnNsLXlvY3RvL2J1aWxkX2tvZGtvZC90
bXAvd29yay9pbXg4cXhwYjBfdmFyX3NvbS1wb2t5LWxpbnV4L3RtbGludXgtaW1hZ2UvMS4wLXIw
L3RlbXAvbG9nLmRvX3Jvb3Rmcw0KRVJST1I6IHRtbGludXgtaW1hZ2UtMS4wLXIwIGRvX3Jvb3Rm
czogVGhlIGZvbGxvd2luZyBwYWNrYWdlcyBjb3VsZCBub3QgYmUgY29uZmlndXJlZCBvZmZsaW5l
IGFuZCByb290ZnMgaXMgcmVhZC1vbmx5OiBbJzEwMC1saWIzMi1saWJnbGliLTIuMC0wJ10NCkVS
Uk9SOiB0bWxpbnV4LWltYWdlLTEuMC1yMCBkb19yb290ZnM6IEZ1bmN0aW9uIGZhaWxlZDogZG9f
cm9vdGZzDQpFUlJPUjogTG9nZmlsZSBvZiBmYWlsdXJlIHN0b3JlZCBpbjogL2hvbWUvcGVsbGUv
ZGV2ZWxvcG1lbnQvdmFyLWZzbC15b2N0by9idWlsZF9rb2Rrb2QvdG1wL3dvcmsvaW14OHF4cGIw
X3Zhcl9zb20tcG9reS1saW51eC90bWxpbnV4LWltYWdlLzEuMC1yMC90ZW1wL2xvZy5kb19yb290
ZnMuMzAxMDYNCkVSUk9SOiBUYXNrICgvaG9tZS9wZWxsZS9kZXZlbG9wbWVudC92YXItZnNsLXlv
Y3RvL3NvdXJjZXMvbWV0YS10YWdtYXN0ZXIvcmVjaXBlcy1jb3JlL2ltYWdlcy90bWxpbnV4LWlt
YWdlLmJiOmRvX3Jvb3RmcykgZmFpbGVkIHdpdGggZXhpdCBjb2RlICcxJw0KDQpXaGlsZSBzZWFy
Y2hpbmcgZm9yIHRoZSByb290IGNhdXNlIG9mIHRoaXMsIEkgZGlzY292ZXJlZCBhIGNoYW5nZSB0
byB1cGRhdGVfZ2lvX21vZHVsZV9jYWNoZSAoaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9j
Z2l0L2NnaXQuY2dpL3Bva3kvY29tbWl0L3NjcmlwdHMvcG9zdGluc3QtaW50ZXJjZXB0cy91cGRh
dGVfZ2lvX21vZHVsZV9jYWNoZT9pZD04NzYzMWFmNjQwMzJiMThlYTM1NGIyN2NjNTg2ZWMxMzM5
MWJkMTQzKSB0aGF0IEkgdGhvdWdodCBtaWdodCBoZWxwLiBJIGFwcGxpZWQgdGhpcyBjaGFuZ2Ug
KGFuZCB0aGUgY2hhbmdlcyBmcm9tIGh0dHBzOi8vZ2l0aHViLmNvbS9vcGVuZW1iZWRkZWQvb3Bl
bmVtYmVkZGVkLWNvcmUvY29tbWl0L2QxMGZkNmFlM2ZlNDYyOTBjNmUzYTUyNTA4Nzg5NjZkOWYx
MmNhM2YgZm9yIHRoZSBxZW11d3JhcHBlci1jcm9zc18xLjAuYmIgcmVjaXBlKSB0byBteSBsb2Nh
bCBjb2RlLCBhbmQgb25jZSBhZ2FpbiB0cmllZCBidWlsZGluZyB0aGUgaW1hZ2UuIFRoZSBlcnJv
ciBtZXNzYWdlIGZyb20gYml0YmFrZSBpcyB0aGUgc2FtZSwgYnV0IGluIHRoZSBkb19yb290ZnMg
bG9nIEkgZmluZCB0aGlzOg0KDQovaG9tZS9wZWxsZS9kZXZlbG9wbWVudC92YXItZnNsLXlvY3Rv
L2J1aWxkX2tvZGtvZC90bXAvd29yay9pbXg4cXhwYjBfdmFyX3NvbS1wb2t5LWxpbnV4L3RtbGlu
dXgtaW1hZ2UvMS4wLXIwL2ludGVyY2VwdF9zY3JpcHRzLWJkMWMzMTgyMGJmNzM2YTAwNGY0ZWJl
NzE0NjFkNmZhM2FlMjNmN2Q5Nzc4M2M4ZjI4YTYwNmUwODY3NDFkOGEvdXBkYXRlX2dpb19tb2R1
bGVfY2FjaGUtbGliMzI6IDE1OiAvaG9tZS9wZWxsZS9kZXZlbG9wbWVudC92YXItZnNsLXlvY3Rv
L2J1aWxkX2tvZGtvZC90bXAvd29yay9pbXg4cXhwYjBfdmFyX3NvbS1wb2t5LWxpbnV4L3RtbGlu
dXgtaW1hZ2UvMS4wLXIwL2ludGVyY2VwdF9zY3JpcHRzLWJkMWMzMTgyMGJmNzM2YTAwNGY0ZWJl
NzE0NjFkNmZhM2FlMjNmN2Q5Nzc4M2M4ZjI4YTYwNmUwODY3NDFkOGEvdXBkYXRlX2dpb19tb2R1
bGVfY2FjaGUtbGliMzI6IGxpYjMyLXFlbXV3cmFwcGVyOiBub3QgZm91bmQNCg0KSWYgSSBzZWFy
Y2ggbXkgdG1wIGRpcmVjdG9yeSwgdGhlcmUgaXMgbm90aGluZyBjYWxsZWQgImxpYjMyLXFlbXV3
cmFwcGVyIiwgYnV0IHRoZXJlIGlzICJsaWIzMi1xZW11d3JhcHBlci1jcm9zcyIuIA0KDQpEb2Vz
IGFueW9uZSBoYXZlIGFueSBpZGVhcyBvciBzdWdnZXN0aW9ucz8NCg0KLy9QZWxsZQ0KDQoNCg0K
DQo=

--pgocKmcGzmiVsk2ihAp1--
