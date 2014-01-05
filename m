Return-Path: <sipke.vriend@xilinx.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0188.outbound.messaging.microsoft.com [213.199.154.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FEB9E006CA;
	Sun,  5 Jan 2014 15:11:41 -0800 (PST)
Received: from mail161-db8-R.bigfish.com (10.174.8.234) by
	DB8EHSOBE016.bigfish.com (10.174.4.79) with Microsoft SMTP Server id
	14.1.225.22; Sun, 5 Jan 2014 23:11:39 +0000
Received: from mail161-db8 (localhost [127.0.0.1])	by
	mail161-db8-R.bigfish.com (Postfix) with ESMTP id D2FA7CE010A;
	Sun,  5 Jan 2014 23:11:39 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:149.199.60.83; KIP:(null); UIP:(null); IPV:NLI;
	H:xsj-gw1; RD:unknown-60-83.xilinx.com; EFVD:NLI
X-SpamScore: -1
X-BigFish: VPS-1(zz9371Ic89bh1432Izz1f42h2148h208ch1ee6h1de0h1fdah2073h2146h1202h1e76h2189h1d1ah1d2ah1fc6hzz1de098h8275dh1de097hz2fh95h109h839h93fhd24hf0ah119dh1288h12a5h12a9h12bdh137ah13b6h1441h14ddh1504h1537h153bh162dh1631h1758h18e1h1946h19b5h1b0ah224fh1d0ch1d2eh1d3fh1dfeh1dffh1e1dh1fe8h1ff5h2216h2336h906i1155h)
Received-SPF: pass (mail161-db8: domain of xilinx.com designates 149.199.60.83
	as permitted sender) client-ip=149.199.60.83;
	envelope-from=sipke.vriend@xilinx.com; helo=xsj-gw1 ;
	helo=xsj-gw1 ; 
Received: from mail161-db8 (localhost.localdomain [127.0.0.1]) by mail161-db8
	(MessageSwitch) id 1388963498615910_2124;
	Sun,  5 Jan 2014 23:11:38 +0000 (UTC)
Received: from DB8EHSMHS029.bigfish.com (unknown [10.174.8.230])	by
	mail161-db8.bigfish.com (Postfix) with ESMTP id 86D7CA40047;
	Sun,  5 Jan 2014 23:11:38 +0000 (UTC)
Received: from xsj-gw1 (149.199.60.83) by DB8EHSMHS029.bigfish.com
	(10.174.4.39) with Microsoft SMTP Server id 14.16.227.3; Sun, 5 Jan 2014
	23:11:37 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-smtp1)	by
	xsj-gw1 with esmtp (Exim 4.63)	(envelope-from
	<sipke.vriend@xilinx.com>)	id
	1Vzwr3-0007WJ-8T; Sun, 05 Jan 2014 15:11:37 -0800
From: Sipke Vriend <sipke.vriend@xilinx.com>
To: Edward Vidal <vidal.develone@gmail.com>
Thread-Topic: [yocto] boot zedboard with dylan yocto
Thread-Index: AQHPBLNNFucNMHn5qk+fkngrO+mopZp2v6lQ
Date: Sun, 5 Jan 2014 23:11:36 +0000
References: <CANwz6nwVfpHWosH8jzeTftyMBjG7-V0kVoKBxPiJ9jcAd-_voQ@mail.gmail.com>
In-Reply-To: <CANwz6nwVfpHWosH8jzeTftyMBjG7-V0kVoKBxPiJ9jcAd-_voQ@mail.gmail.com>
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.164.27]
MIME-Version: 1.0
X-RCIS-Action: ALLOW
Message-ID: <aa1cd9b2-c904-4978-bb00-845e9dd6e001@DB8EHSMHS029.ehs.local>
X-OriginatorOrg: xilinx.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>
Subject: Re: boot zedboard with dylan yocto
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
X-List-Received-Date: Sun, 05 Jan 2014 23:11:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVmlkYWwgDQpDYyttZXRhLXhpbGlueCwNCg0KSSB0aGluayB5b3XigJlsbCBuZWVkIHRvIHBy
b3ZpZGUgbW9yZSBpbmZvcm1hdGlvbiBvbiB5b3VyIGxheWVycyBieSBwcm92aWRpbmcgdGhlIA0K
c3VtbWFyeSBvZiB5b3VyIGJ1aWxkLg0KDQpTZWUgaW5saW5lDQoNCj5Gcm9tOiB5b2N0by1ib3Vu
Y2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzp5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5v
cmddIA0KPk9uIEJlaGFsZiBPZiBFZHdhcmQgVmlkYWwNCj5TZW50OiBNb25kYXksIDMwIERlY2Vt
YmVyIDIwMTMgMjoyOSBBTQ0KPlRvOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+U3ViamVjdDog
W3lvY3RvXSBib290IHplZGJvYXJkIHdpdGggZHlsYW4geW9jdG8NCj4NCj5IZWxsbywNCj5IYXMg
YW55b25lIGJvb3RlZCB3aXRoIHRoZSBmb2xsb3dpbmcgZmlsZXMgYnVpbHQgd2l0aCBiaXRiYWtl
Lg0KPmN1c3RvbS1pbWFnZS16ZWRib2FyZC0yMDEzMTIyMzAzMzM1NC5yb290ZnMuY3Bpbw0KPmN1
c3RvbS1pbWFnZS16ZWRib2FyZC0yMDEzMTIyMzAzMzM1NC5yb290ZnMuZXh0Mg0KPmN1c3RvbS1p
bWFnZS16ZWRib2FyZC0yMDEzMTIyMzAzMzM1NC5yb290ZnMuZXh0Mi5neg0KPmN1c3RvbS1pbWFn
ZS16ZWRib2FyZC0yMDEzMTIyMzAzMzM1NC5yb290ZnMuZXh0Mi5nei51LWJvb3QNCj5jdXN0b20t
aW1hZ2UtemVkYm9hcmQuY3Bpbw0KPmN1c3RvbS1pbWFnZS16ZWRib2FyZC5leHQyDQo+Y3VzdG9t
LWltYWdlLXplZGJvYXJkLmV4dDIuZ3oNCj5jdXN0b20taW1hZ2UtemVkYm9hcmQuZXh0Mi5nei51
LWJvb3QNCj5tb2R1bGVzLS0zLjgteGlsaW54K2dpdDArNmEwYmVkYWQ2MGUyYmNhOGQ5YjUwYmY4
MWI5ODk1ZTI5ZTMxYTZkNy1yMS16ZWRib2FyZC0yMDEzMTIyMjIzNDMzNC50Z3oNCj5SRUFETUVf
LV9ET19OT1RfREVMRVRFX0ZJTEVTX0lOX1RISVNfRElSRUNUT1JZLnR4dA0KPnVJbWFnZQ0KPnVJ
bWFnZS0tMy44LXhpbGlueCtnaXQwKzZhMGJlZGFkNjBlMmJjYThkOWI1MGJmODFiOTg5NWUyOWUz
MWE2ZDctcjEtemVkYm9hcmQtMjAxMzEyMjIyMzQzMzQuYmluDQo+dUltYWdlLS0zLjgteGlsaW54
K2dpdDArNmEwYmVkYWQ2MGUyYmNhOGQ5YjUwYmY4MWI5ODk1ZTI5ZTMxYTZkNy1yMS16eW5xLXpl
ZC0yMDEzMTIyMjIzNDMzNC5kdGINCj51SW1hZ2UtemVkYm9hcmQuYmluDQo+dUltYWdlLXp5bnEt
emVkLmR0Yg0KPkkgaGF2ZSB1c2VkIHRoZSBjdXN0b20taW1hZ2UtemVkYm9hcmQtMjAxMzEyMjMw
MzMzNTQucm9vdGZzLmV4dDIgd2l0aCBsaW51eC1kaWdpbGVudCBrZXJuZWwgYW5kIHUtYm9vdC1k
aWdpbGVudC4NCj5JbiBteSBkdGIgZmlsZSBJIGhhdmUgc2V0IHRoZSBmb2xsb3dpbmcNCj5tb2Rl
bCA9ICJYaWxpbnggWnlucSBaQzcwMiI7DQo+Y29tcGF0aWJsZSA9ICJ4bG54LHp5bnEtemM3MDIi
Ow0KDQpZb3VyIGltYWdlcyBhcmUgdGFyZ2V0aW5nIHplZGJvYXJkLCBzbyBjb21wYXJpbmcgdG8g
DQpnaXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9tZXRhLXhpbGlueCBsYXllciwNCkl0J3MgY29y
cmVzcG9uZGluZyBkeWxhbiBkdHMgaGFzLiANCmNvbXBhdGlibGUgPSAieGxueCx6eW5xLXpjNzcw
Ig0KbW9kZWwgPSAiWGlsaW54IFp5bnEiOw0KDQo+YnkgZWRpdGluZyBteSBkdHMgZmlsZS4NCj5U
aGUgZm9sbG93aW5nIGlzIHRoZSBlcnJvciBJIGFtIGdldHRpbmcuDQo+RXJyb3I6IHVucmVjb2du
aXplZC91bnN1cHBvcnRlZAltYWNoaW5lCUlEIChyMSA9IDB4MWZiNjk0ZWMpLg0KPg0KPkF2YWls
YWJsZSBtYWNoaW5lIHN1cHBvcnQ6DQo+DQo+SUQgKGhleCkgICAgICAgIE5BTUUNCj5mZmZmZmZm
ZiAgICAgICAgQVJNLVZlcnNhdGlsZSBFeHByZXNzDQo+MDAwMDA4ZTAgICAgICAgIEFSTS1WZXJz
YXRpbGUgRXhwcmVzcw0KPjAwMDAwZDMyICAgICAgICBYaWxpbnggWnlucSBQbGF0Zm9ybQ0KPkFs
c28gZG9lcyBhbnlvbmUgaGF2ZSBzb3VuZCB3b3JraW5nIG9uIHRoZSB6ZWRib2FyZC4NCj4NCg0K
SGF2ZW4ndCB0cmllZCBhcyB5ZXQuDQoNCj5BbnkgYW5kIGFsbCBoZWxwIGlzIGFwcHJlY2lhdGVk
Lg0KPlRoYW5rcw0KDQpSZWdhcmRzDQpTaXBrZQ0KCgo=



