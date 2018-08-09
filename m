Return-Path: <rsrinivasan@abiomed.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FD7CE00C3C; Thu,  9 Aug 2018 06:15:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [63.128.21.188 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from us-smtp-delivery-188.mimecast.com
	(us-smtp-delivery-188.mimecast.com [63.128.21.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6903E0090C
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 06:15:02 -0700 (PDT)
Received: from mail.abiomed.com (legacy.abiomed.com [4.53.60.36]) (Using
	TLS) by us-smtp-1.mimecast.com with ESMTP id
	us-mta-183-yx4VVlxBNImw6_OIC7bTaA-1; Thu, 09 Aug 2018 09:13:43 -0400
Received: from USDVREX02.abiomed.com (172.16.1.94) by USDVREX01.abiomed.com
	(172.16.1.91) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
	Thu, 9 Aug 2018 09:13:42 -0400
Received: from USDVREX02.abiomed.com (172.16.1.94) by USDVREX02.abiomed.com
	(172.16.1.94) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
	Thu, 9 Aug 2018 09:13:42 -0400
Received: from USDVREX02.abiomed.com ([fe80::ed18:25eb:f9e8:c0b7]) by
	USDVREX02.abiomed.com ([fe80::ed18:25eb:f9e8:c0b7%12]) with mapi id
	15.00.1395.000; Thu, 9 Aug 2018 09:13:42 -0400
From: "Srinivasan, Raja" <rsrinivasan@abiomed.com>
To: =?utf-8?B?TWF0aGlldSBBbGV4YW5kcmUtVMOpdHJlYXVsdA==?=
	<alexandretm@amotus.ca>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: uBoot, kernel and device tree files
Thread-Index: AdQvSH1kxyZSth4qQu+yA8y1Atl7eAAlkwsgAAD8nHA=
Date: Thu, 9 Aug 2018 13:13:42 +0000
Message-ID: <dfdbc304ca1547d0b8737ea997291715@USDVREX02.abiomed.com>
References: <eac20ac1c8474178a386d580c971227b@USDVREX02.abiomed.com>
	<BN6PR1101MB235685B83EB09147FBBBB7E4B2250@BN6PR1101MB2356.namprd11.prod.outlook.com>
In-Reply-To: <BN6PR1101MB235685B83EB09147FBBBB7E4B2250@BN6PR1101MB2356.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.10.96.159]
MIME-Version: 1.0
X-MC-Unique: yx4VVlxBNImw6_OIC7bTaA-1
Subject: Re: uBoot, kernel and device tree files
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
X-List-Received-Date: Thu, 09 Aug 2018 13:15:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative; boundary="MCBoundary=_11808090913433271"

--MCBoundary=_11808090913433271
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

TWF0aGlldQ0KDQpBcHByZWNpYXRlIHRoZSBzdWdnZXN0aW9uLiBXaWxsIGdpdmUgaXQgYSBzaG90
LiBUaGFua3MsIHNyaW5pDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBNYXRo
aWV1IEFsZXhhbmRyZS1Uw6l0cmVhdWx0IFttYWlsdG86YWxleGFuZHJldG1AYW1vdHVzLmNhXQ0K
U2VudDogVGh1cnNkYXksIEF1Z3VzdCA5LCAyMDE4IDg6NDUgQU0NClRvOiBTcmluaXZhc2FuLCBS
YWphIDxyc3Jpbml2YXNhbkBhYmlvbWVkLmNvbT47IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1
YmplY3Q6IFJFOiB1Qm9vdCwga2VybmVsIGFuZCBkZXZpY2UgdHJlZSBmaWxlcw0KDQpIZWxsbyBT
cmluaSwNCg0KSSB0aGluayB3aGF0IHlvdSBhcmUgbG9va2luZyBmb3IgaXMgdGhlIGZpdGltYWdl
LCBpdCB3aWxsIGFsbG93IHlvdSB0byBidW5kbGUgdGhlIGtlcm5lbCBhbmQgZGV2aWNldHJlZSB0
b2dldGhlciBpbiBhIHNpbmdsZSBmaWxlIGFuZCBpdCBhbHNvIGFsbG93cyB5b3UgYWRkIGEgc2ln
bmF0dXJlLg0KDQpUaGlzIHByb2Nlc3MgaXMgd2VsbCBpbnRlZ3JhdGVkIGluIHlvY3RvLCBmcm9t
IHdoYXQgSSByZW1lbWJlciBhY3RpdmF0aW5nIHRoZSBmaXRpbWFnZSBpcyByZWxhdGl2ZWx5IGVh
c3k6DQogICAtIGluIHlvdXIgbWFjaGluZS5jb25mDQogICAgICAgLSBkZWNsYXJlIEtFUk5FTF9D
TEFTU0VTICs9ICJrZXJuZWwtZml0aW1hZ2UiIGFuZCBLRVJORUxfSU1BR0VUWVBFID0gImZpdGlt
YWdlIg0KICAgLSBpbiB5b3VyIHUtYm9vdCBkZWZjb25maWcgKGNvbmZpZ3MveW91cmJvYXJkX2Rl
ZmNvbmZpZw0KICAgICAgIC0gZW5hYmxlIENPTkZJR19GSVQ9eQ0KICAgLSBpbiB5b3VyIGNvbmZp
ZyBpbmNsdWRlL2NvbmZpZ3MveW91cl9ib2FyZC5oIGNoYW5nZSB0aGUgc2NyaXB0IHRvIGJvb3Qg
eW91ciBmaXRpbWFnZQ0KDQpJIGhvcGUgdGhpcyBoZWxwcywNCg0KUmVnYXJkcywNCg0KTWF0aGll
dQ0KDQo+IC0tLS0tTWVzc2FnZSBkJ29yaWdpbmUtLS0tLQ0KPiBEZSA6IHlvY3RvLWJvdW5jZXNA
eW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnPg0KPiBEZSBs
YSBwYXJ0IGRlIFNyaW5pdmFzYW4sIFJhamEgRW52b3nDqSA6IEF1Z3VzdCA4LCAyMDE4IDI6NTEg
UE0gw4AgOg0KPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnIE9iamV0IDogW3lvY3RvXSB1Qm9vdCwg
a2VybmVsIGFuZCBkZXZpY2UgdHJlZQ0KPiBmaWxlcw0KPg0KPiBBbGwNCj4NCj4NCj4NCj4gV2Ug
YXJlIHVzaW5nIHJvY2tvLm9uIHZhcmlzY2l0ZSB2YXItc29tLW14Ni4NCj4NCj4gSW4gb3JkZXIg
dG8gaW5jcmVhc2UgdGhlIHNlY3VyaXR5IG9mIG91ciBzeXN0ZW0gKGR1cmluZyBhIHN5c3RlbQ0K
PiB1cGdyYWRlKSwgd2UgYXJlIGxvb2tpbmcgdG8gbWVyZ2UgdUltYWdlIChrZXJuZWwgaW1hZ2Up
IGFuZCB0aGUgZGV2aWNlDQo+IHRyZWUgZmlsZSBpbnRvIDEgZmlsZS4gQ3VycmVudGx5IHRoZXNl
IGFyZSAyIGRpZmZlcmVudCBmaWxlcyBhbmQgYXJlDQo+IHdvcnJpZWQgdGhhdCBhIGZpbGUgY29w
eSBvcGVyYXRpb24gbWlnaHQgZ2V0IGFib3J0ZWQuDQo+DQo+IE15IHJlc2VhcmNoIHNvIGZhciBp
bmRpY2F0ZXMgbWt1Ym9vdCBjYW4gYmUgdXNlZCB0byBtZXJnZSB0aGVzZS4gYnV0DQo+IGhhdmlu
ZyB0cm91YmxlIG1ha2luZyB0aGlzIHdvcmsuDQo+DQo+IE5lZWQgc29tZSBpZGVhcy4NCj4NCj4N
Cj4NCj4gQW55IHBvaW50ZXJzIGFwcHJlY2lhdGVkLiBzcmluaQ0KPg0KPg0KPg0KPg0KPg0KPg0K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPg0KPg0KPiBDT05GSURFTlRJQUxJ
VFkgTk9USUNFOiBUaGlzIGVtYWlsIG1lc3NhZ2UgYW5kIGFueSBhdHRhY2htZW50cyBhcmUNCj4g
Y29uZmlkZW50aWFsIGFuZCBtYXkgYmUgcHJpdmlsZWdlZCBhbmQgYXJlIG1lYW50IHRvIGJlIHJl
YWQgYnkgdGhlDQo+IGludGVuZGVkIHJlY2lwaWVudCBvbmx5LiBJZiB5b3UgYXJlIG5vdCB0aGUg
aW50ZW5kZWQgcmVjaXBpZW50LCBwbGVhc2UNCj4gbm90aWZ5IHNlbmRlciBpbW1lZGlhdGVseSBh
bmQgZGVzdHJveSBhbGwgY29waWVzIG9mIHRoaXMgbWVzc2FnZSBhbmQNCj4gYW55IGF0dGFjaG1l
bnRzIHdpdGhvdXQgcmVhZGluZyBvciBkaXNjbG9zaW5nIHRoZWlyIGNvbnRlbnRzLiBUaGFuaw0K
PiB5b3UNCj4NCj4NCj4NCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KDQpD
T05GSURFTlRJQUxJVFkgTk9USUNFOiBUaGlzIGVtYWlsIG1lc3NhZ2UgYW5kIGFueSBhdHRhY2ht
ZW50cyBhcmUgY29uZmlkZW50aWFsIGFuZCBtYXkgYmUgcHJpdmlsZWdlZCBhbmQgYXJlIG1lYW50
IHRvIGJlIHJlYWQgYnkgdGhlIGludGVuZGVkIHJlY2lwaWVudCBvbmx5LiBJZiB5b3UgYXJlIG5v
dCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBwbGVhc2Ugbm90aWZ5IHNlbmRlciBpbW1lZGlhdGVs
eSBhbmQgZGVzdHJveSBhbGwgY29waWVzIG9mIHRoaXMgbWVzc2FnZSBhbmQgYW55IGF0dGFjaG1l
bnRzIHdpdGhvdXQgcmVhZGluZyBvciBkaXNjbG9zaW5nIHRoZWlyIGNvbnRlbnRzLiBUaGFuayB5
b3UNCg==

--MCBoundary=_11808090913433271
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><style type=3D"text/css">.style1 {font-family: "Times New Roman=
";}</style></head><body>Mathieu<BR>
<BR>
Appreciate the suggestion. Will give it a shot. Thanks, srini<BR>
<BR>
-----Original Message-----<BR>
From: Mathieu Alexandre-T&eacute;treault [mailto:alexandretm@amotus.ca]<BR>
Sent: Thursday, August 9, 2018 8:45 AM<BR>
To: Srinivasan, Raja &lt;rsrinivasan@abiomed.com&gt;; <a href=3D"mailto:yoc=
to@yoctoproject.org">yocto@yoctoproject.org</a><BR>
Subject: RE: uBoot, kernel and device tree files<BR>
<BR>
Hello Srini,<BR>
<BR>
I think what you are looking for is the fitimage, it will allow you to bund=
le the kernel and devicetree together in a single file and it also allows y=
ou add a signature.<BR>
<BR>
This process is well integrated in yocto, from what I remember activating t=
he fitimage is relatively easy:<BR>
   - in your machine.conf<BR>
       - declare KERNEL_CLASSES +=3D &quot;kernel-fitimage&quot; and KERNEL=
_IMAGETYPE =3D &quot;fitimage&quot;<BR>
   - in your u-boot defconfig (configs/yourboard_defconfig<BR>
       - enable CONFIG_FIT=3Dy<BR>
   - in your config include/configs/your_board.h change the script to boot =
your fitimage<BR>
<BR>
I hope this helps,<BR>
<BR>
Regards,<BR>
<BR>
Mathieu<BR>
<BR>
&gt; -----Message d'origine-----<BR>
&gt; De : <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@y=
octoproject.org</a> &lt;yocto-bounces@yoctoproject.org&gt;<BR>
&gt; De la part de Srinivasan, Raja Envoy&eacute; : August 8, 2018 2:51 PM =
&Agrave; :<BR>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> O=
bjet : [yocto] uBoot, kernel and device tree<BR>
&gt; files<BR>
&gt;<BR>
&gt; All<BR>
&gt;<BR>
&gt;<BR>
&gt;<BR>
&gt; We are using rocko.on variscite var-som-mx6.<BR>
&gt;<BR>
&gt; In order to increase the security of our system (during a system<BR>
&gt; upgrade), we are looking to merge uImage (kernel image) and the device=
<BR>
&gt; tree file into 1 file. Currently these are 2 different files and are<B=
R>
&gt; worried that a file copy operation might get aborted.<BR>
&gt;<BR>
&gt; My research so far indicates mkuboot can be used to merge these. but<B=
R>
&gt; having trouble making this work.<BR>
&gt;<BR>
&gt; Need some ideas.<BR>
&gt;<BR>
&gt;<BR>
&gt;<BR>
&gt; Any pointers appreciated. srini<BR>
&gt;<BR>
&gt;<BR>
&gt;<BR>
&gt;<BR>
&gt;<BR>
&gt;<BR>
&gt; ________________________________<BR>
&gt;<BR>
&gt;<BR>
&gt; CONFIDENTIALITY NOTICE: This email message and any attachments are<BR>
&gt; confidential and may be privileged and are meant to be read by the<BR>
&gt; intended recipient only. If you are not the intended recipient, please=
<BR>
&gt; notify sender immediately and destroy all copies of this message and<B=
R>
&gt; any attachments without reading or disclosing their contents. Thank<BR=
>
&gt; you<BR>
&gt;<BR>
&gt;<BR>
&gt;<BR>
<BR>
<BR>
________________________________<BR>
<BR>
CONFIDENTIALITY NOTICE: This email message and any attachments are confiden=
tial and may be privileged and are meant to be read by the intended recipie=
nt only. If you are not the intended recipient, please notify sender immedi=
ately and destroy all copies of this message and any attachments without re=
ading or disclosing their contents. Thank you<BR>

<br /><br /><p style=3D"font-family: Verdana; font-size:10pt; color:#666666=
;"></p><p style=3D"font-family: Verdana; font-size:8pt; color:#666666;"></p=
></body></html>

--MCBoundary=_11808090913433271--
