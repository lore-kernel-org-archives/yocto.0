Return-Path: <rsrinivasan@abiomed.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32CF2E00AD1; Thu,  9 Aug 2018 06:13:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A1B5E00875
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 06:13:15 -0700 (PDT)
Received: from mail.abiomed.com (webmail.abiomed.com [4.53.60.36]) (Using
	TLS) by us-smtp-1.mimecast.com with ESMTP id
	us-mta-148-H9t0dhHWM6W7bjDJUCAsfw-1; Thu, 09 Aug 2018 09:13:13 -0400
Received: from USDVREX02.abiomed.com (172.16.1.94) by USDVREX01.abiomed.com
	(172.16.1.91) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
	Thu, 9 Aug 2018 09:13:13 -0400
Received: from USDVREX02.abiomed.com (172.16.1.94) by USDVREX02.abiomed.com
	(172.16.1.94) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
	Thu, 9 Aug 2018 09:13:12 -0400
Received: from USDVREX02.abiomed.com ([fe80::ed18:25eb:f9e8:c0b7]) by
	USDVREX02.abiomed.com ([fe80::ed18:25eb:f9e8:c0b7%12]) with mapi id
	15.00.1395.000; Thu, 9 Aug 2018 09:13:12 -0400
From: "Srinivasan, Raja" <rsrinivasan@abiomed.com>
To: =?utf-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>
Thread-Topic: [yocto] uBoot, kernel and device tree files
Thread-Index: AdQvSH1kxyZSth4qQu+yA8y1Atl7eAAlcaSAAAEaDPA=
Date: Thu, 9 Aug 2018 13:13:12 +0000
Message-ID: <8942ab2fde024ed58de522d899183640@USDVREX02.abiomed.com>
References: <eac20ac1c8474178a386d580c971227b@USDVREX02.abiomed.com>
	<ab917312-b40a-1943-6cfe-8a0ec3e23624@ysoft.com>
In-Reply-To: <ab917312-b40a-1943-6cfe-8a0ec3e23624@ysoft.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.10.96.159]
MIME-Version: 1.0
X-MC-Unique: H9t0dhHWM6W7bjDJUCAsfw-1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 09 Aug 2018 13:13:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative; boundary="MCBoundary=_11808090913141401"

--MCBoundary=_11808090913141401
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

QXBwcmVjaWF0ZSB0aGUgc3VnZ2VzdGlvbnMuIEkgd2lsbCB0cnkgdGhlbSBvdXQuIHRoYW5rcywg
c3JpbmkNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IE1pY2hhbCBWb2vDocSN
IFttYWlsdG86bWljaGFsLnZva2FjQHlzb2Z0LmNvbV0NClNlbnQ6IFRodXJzZGF5LCBBdWd1c3Qg
OSwgMjAxOCA0OjQxIEFNDQpUbzogU3Jpbml2YXNhbiwgUmFqYSA8cnNyaW5pdmFzYW5AYWJpb21l
ZC5jb20+DQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10g
dUJvb3QsIGtlcm5lbCBhbmQgZGV2aWNlIHRyZWUgZmlsZXMNCg0KSGkgU3JpbmksDQoNCk9uIDgu
OC4yMDE4IDIwOjUxLCBTcmluaXZhc2FuLCBSYWphIHdyb3RlOg0KPiBBbGwNCj4NCj4gV2UgYXJl
IHVzaW5nIHJvY2tvLm9uIHZhcmlzY2l0ZSB2YXItc29tLW14Ni4NCj4NCj4gSW4gb3JkZXIgdG8g
aW5jcmVhc2UgdGhlIHNlY3VyaXR5IG9mIG91ciBzeXN0ZW0gKGR1cmluZyBhIHN5c3RlbSB1cGdy
YWRlKSwgd2UgYXJlIGxvb2tpbmcgdG8gbWVyZ2UgdUltYWdlIChrZXJuZWwgaW1hZ2UpIGFuZCB0
aGUgZGV2aWNlIHRyZWUgZmlsZSBpbnRvIDEgZmlsZS4gQ3VycmVudGx5IHRoZXNlIGFyZSAyIGRp
ZmZlcmVudCBmaWxlcyBhbmQgYXJlIHdvcnJpZWQgdGhhdCBhIGZpbGUgY29weSBvcGVyYXRpb24g
bWlnaHQgZ2V0IGFib3J0ZWQuDQoNCkkgdW5kZXJzdGFuZCB0aGF0IHdoYXQgeW91IHdhbnQgdG8g
YWNoaXZlIGJ5IGNvbWJpbmluZyB0aGUgZmlsZXMgaXMgInJlbHlhYmlsaXR5IiBhbmQgbm90ICJz
ZWN1cml0eSIuIFRob3NlIGFyZSB0b3RhbHkgZGlmZmVyZW50IHRoaW5ncy4NCg0KPiBNeSByZXNl
YXJjaCBzbyBmYXIgaW5kaWNhdGVzIG1rdWJvb3QgY2FuIGJlIHVzZWQgdG8gbWVyZ2UgdGhlc2Uu
IGJ1dCBoYXZpbmcgdHJvdWJsZSBtYWtpbmcgdGhpcyB3b3JrLg0KPg0KPiBOZWVkIHNvbWUgaWRl
YXMuDQo+DQo+IEFueSBwb2ludGVycyBhcHByZWNpYXRlZC4gc3JpbmkNCg0KSSBhbSBhd2FyZSBv
ZiBhdCBsZWFzdCB0d28gb3B0aW9ucyB0byBjb21iaW5lIGtlcm5lbCBpbWFnZXMgYW5kIGRldmlj
ZSB0cmVlIGZpbGVzLg0KDQpPcHRpb24gMSkgQXBwZW5kIERUQiBkaXJlY3RseSB0byB0aGUga2Vy
bmVsIGltYWdlDQoNClRoaXMgaXMgdGhlIHNpbXBsZXN0IG9wdGlvbi4gSnVzdCB1c2UgY2F0IHRv
IGNvbmNhdGVuYXRlIHRoZSBmaWxlcyBhbmQgZW5hYmxlIHRoZSBDT05GSUdfQVJNX0FQUEVOREVE
X0RUQiBrZXJuZWwgb3B0aW9uLg0KUmVhZCB0aGUgaGVscCBmb3IgdGhlIG9wdGlvbiwgaXQgaXMg
cXVpdGUgaW5mb3JtYXRpdmUuDQoNCkluIHRoaXMgY2FzZSB5b3UgZG8gbm90IG5lZWQgdG8gY2hh
bmdlIGFueXRoaW5nIGluIHlvdXIgYm9vdCBsb2FkZXIuDQpKdXN0IGxvYWQgYW5kIGJvb3QgdGhl
IGNvbWJpbmVkIGltYWdlIGFzIHVzdWFsIGFuZCBrZXJuZWwgd2lsbCBkbyB0aGUgcmVzdC4NCg0K
T3B0aW9uIDIpIFVzZSBGSVQgaW1hZ2VzDQoNCkkgc3Ryb25nbHkgcmVjb21tZW5kIHRoaXMgb3B0
aW9uIG92ZXIgdGhlIGZpcnN0IG9uZS4NCkZJVCBpbWFnZXMgYXJlIHNvbWV0aGluZyBsaWtlIGNv
bnRhaW5lcnMgdGhhdCBjYW4gY29udGFpbiBtdWx0aXBsZSBrZXJuZWwgaW1hZ2VzLCBtdWx0aXBs
ZSBkZXZpY2UgdHJlZSBibG9icywgbXVsdGlwbGUgaW5pdHJhbSBmaWxlIHN5c3RlbXMuDQpQYXJ0
IG9mIHRoZSBGSVQgaW1hZ2UgdGhlbiBkZXNjcmliZXMgd2hhdCBjb21iaW5hdGlvbnMgb2YgdGhv
c2UgZmlsZXMgY2FuIGJlIHVzZWQgdG8gYm9vdC4NCg0KSWYgeW91ciBjb25jZXJuIGlzIG5vdCBq
dXN0IHJlbGlhYmlsaXR5IGJ1dCBhbHNvIHNlY3VyaXR5IHRoYW4gRklUIGltYWdlcyBhcmUgYWxz
byBiZXR0ZXIuIFlvdSBjYW4gcHV0IGhhc2hlcy9zaWduYXR1cmVzIG9mIGFsbCB0aGUgZmlsZXMg
aW50byB0aGUgZGVzY3JpcHRpb24gb2YgdGhlIGZpbGVzIGFuZCB1c2UgdGhlIGhhc2hlcyBpbiB0
aGUgYm9vdGxvYWRlciB0byB2ZXJpZnkgdGhlIGltYWdlcyAoSSBuZXZlciB1c2VkIHRoYXQuKQ0K
DQpJbiB0aGlzIG9wdGlvbiB5b3UgbmVlZCB0byBjaGFuZ2UgeW91ciBib290IGNvbW1hbmQuDQoN
CkhvcGUgdGhpcyBoZWxwcywNCk1pY2hhbA0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQoNCkNPTkZJREVOVElBTElUWSBOT1RJQ0U6IFRoaXMgZW1haWwgbWVzc2FnZSBhbmQg
YW55IGF0dGFjaG1lbnRzIGFyZSBjb25maWRlbnRpYWwgYW5kIG1heSBiZSBwcml2aWxlZ2VkIGFu
ZCBhcmUgbWVhbnQgdG8gYmUgcmVhZCBieSB0aGUgaW50ZW5kZWQgcmVjaXBpZW50IG9ubHkuIElm
IHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZSBub3RpZnkgc2VuZGVy
IGltbWVkaWF0ZWx5IGFuZCBkZXN0cm95IGFsbCBjb3BpZXMgb2YgdGhpcyBtZXNzYWdlIGFuZCBh
bnkgYXR0YWNobWVudHMgd2l0aG91dCByZWFkaW5nIG9yIGRpc2Nsb3NpbmcgdGhlaXIgY29udGVu
dHMuIFRoYW5rIHlvdQ0K

--MCBoundary=_11808090913141401
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><style type=3D"text/css">.style1 {font-family: "Times New Roman=
";}</style></head><body>Appreciate the suggestions. I will try them out. th=
anks, srini<BR>
<BR>
-----Original Message-----<BR>
From: Michal Vok&aacute;=C4=8D [mailto:michal.vokac@ysoft.com]<BR>
Sent: Thursday, August 9, 2018 4:41 AM<BR>
To: Srinivasan, Raja &lt;rsrinivasan@abiomed.com&gt;<BR>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><BR=
>
Subject: Re: [yocto] uBoot, kernel and device tree files<BR>
<BR>
Hi Srini,<BR>
<BR>
On 8.8.2018 20:51, Srinivasan, Raja wrote:<BR>
&gt; All<BR>
&gt;<BR>
&gt; We are using rocko.on variscite var-som-mx6.<BR>
&gt;<BR>
&gt; In order to increase the security of our system (during a system upgra=
de), we are looking to merge uImage (kernel image) and the device tree file=
 into 1 file. Currently these are 2 different files and are worried that a =
file copy operation might get aborted.<BR>
<BR>
I understand that what you want to achive by combining the files is &quot;r=
elyability&quot; and not &quot;security&quot;. Those are totaly different t=
hings.<BR>
<BR>
&gt; My research so far indicates mkuboot can be used to merge these. but h=
aving trouble making this work.<BR>
&gt;<BR>
&gt; Need some ideas.<BR>
&gt;<BR>
&gt; Any pointers appreciated. srini<BR>
<BR>
I am aware of at least two options to combine kernel images and device tree=
 files.<BR>
<BR>
Option 1) Append DTB directly to the kernel image<BR>
<BR>
This is the simplest option. Just use cat to concatenate the files and enab=
le the CONFIG_ARM_APPENDED_DTB kernel option.<BR>
Read the help for the option, it is quite informative.<BR>
<BR>
In this case you do not need to change anything in your boot loader.<BR>
Just load and boot the combined image as usual and kernel will do the rest.=
<BR>
<BR>
Option 2) Use FIT images<BR>
<BR>
I strongly recommend this option over the first one.<BR>
FIT images are something like containers that can contain multiple kernel i=
mages, multiple device tree blobs, multiple initram file systems.<BR>
Part of the FIT image then describes what combinations of those files can b=
e used to boot.<BR>
<BR>
If your concern is not just reliability but also security than FIT images a=
re also better. You can put hashes/signatures of all the files into the des=
cription of the files and use the hashes in the bootloader to verify the im=
ages (I never used that.)<BR>
<BR>
In this option you need to change your boot command.<BR>
<BR>
Hope this helps,<BR>
Michal<BR>
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

--MCBoundary=_11808090913141401--
