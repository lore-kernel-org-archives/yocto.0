Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1362E00C6E; Sat,  2 Jul 2016 02:22:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.8 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E697E00C1E
	for <yocto@yoctoproject.org>; Sat,  2 Jul 2016 02:22:16 -0700 (PDT)
Received: from [216.82.250.51] by server-8.bemta-12.messagelabs.com id
	0C/0A-27267-7C787775; Sat, 02 Jul 2016 09:22:15 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrGKsWRWlGSWpSXmKPExsXinSZ8TPdYe3m
	4wfP1ehaHGqaxWly72MJsMW+HvcWkl2vYHFg8vuyZyuSxc9Zddo/Fe14yebSf6GMLYIlizcxL
	yq9IYM34vfA5S8E2z4qzT1rYGxjnenQxcnEICWxmlFhwfyMTnDNtTh+Uc4BR4saWVsYuRk4ON
	gFDiSs9d8FsEYEKiSe/F7CB2MwCphKTZ7Qwg9jCAhoSF0+tZYao0ZRY9nQ+lJ0nsWJaK1g9i4
	CKxLcvi5lAbF4Bd4nTh+6xQSybwSpxb9dJVpAEp0CgxJxPV8CKGAVkJb40rmaGWCYucevJfLC
	4hICIxMOLp9kgbFGJl4//sULYBhJbl+5jgbDlJJZtf84E0Zsm0fy4lxVisaDEyZlPwGqEBFQl
	tiz8zTKBUWwWkhWzkLTMQtIyi5EDKK4psX6XPkSJosSU7ofsELaDxJS1vcwQtprEjP9r2WYBv
	cYssJpRoqfnBAuyhgWMnKsYNYpTi8pSi3SNzPWSijLTM0pyEzNzdA0NjfRyU4uLE9NTcxKTiv
	WS83M3MQLjv56BgXEH46ZGr0OMkhxMSqK8XM7l4UJ8SfkplRmJxRnxRaU5qcWHGGU4OJQkePP
	bgHKCRanpqRVpmTnARASTluDgURLhTQZJ8xYXJOYWZ6ZDpE4xKkqJ89aCJARAEhmleXBtsOR3
	iVFWSpiXkYGBQYinILUoN7MEVf4VozgHo5IwbwbIFJ7MvBK46a+AFjMBLWaNBVtckoiQkmpgv
	HjeNvKc89lP+z88X2t5LGl785F/M/lOpRROC/q39bOEinrR74w7u7vzrQ93TDlZ2lCjnb75/6
	Pb5pHfQu5/PrrqobvHpf1+p25dqeW9eME0nC9bJ9p5+eYWgaDHctNL9tquPLT/7tuFJo+FJvy
	o9OutfDVhr5jyjTsR95PYtL/e+WGfN59tS4sSS3FGoqEWc1FxIgCoM+poeQMAAA==
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-3.tower-108.messagelabs.com!1467451334!41973647!1
X-Originating-IP: [75.102.19.198]
X-StarScan-Received: 
X-StarScan-Version: 8.46; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 18444 invoked from network); 2 Jul 2016 09:22:14 -0000
Received: from unknown.ord.scnet.net (HELO HICGWSEXHC04.ad.harman.com)
	(75.102.19.198)
	by server-3.tower-108.messagelabs.com with AES128-SHA encrypted SMTP;
	2 Jul 2016 09:22:14 -0000
Received: from HIBDWSMB01.ad.harman.com (10.99.236.91) by
	HICGWSEXHC04.ad.harman.com (10.10.23.59) with Microsoft SMTP Server
	(TLS) id 14.3.235.1; Sat, 2 Jul 2016 04:22:13 -0500
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB01.ad.harman.com (10.99.236.91) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Sat, 2 Jul 2016 14:52:09 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::a85e:aadb:8944:9f72]) by
	HIBDWSMB02.ad.harman.com ([fe80::a85e:aadb:8944:9f72%16]) with mapi id
	15.00.1130.005; Sat, 2 Jul 2016 14:52:09 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: Daniel. <danielhilst@gmail.com>, Mathieu Allard
	<mathieu.allard@evalan.com>, "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] setcap using recipe
Thread-Index: AdHOBQLlITj3tknLQROeJDdrbt+En///s+KA//+ZVkCAAHOlgP//opCggABp4AD/9KlccALMZyuAAABV1IAAALEtAP/+Z+wQ
Date: Sat, 2 Jul 2016 09:22:09 +0000
Message-ID: <f7f70173e1304433b5bb00c0f8cec5bf@HIBDWSMB02.ad.harman.com>
References: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
	<CAJTo0LYiA-mxZUuK8bOx64tFMvPmvRBBzExcQNfxsc5q6JvxMw@mail.gmail.com>
	<b57493dfacad490388b9bd3600179e65@HIBDWSMB02.ad.harman.com>
	<CAJTo0Lbu3O3Qqo2be_t4=pXr-B=q=J-diKNm-ZuJsbW0C=0wpQ@mail.gmail.com>
	<c3c0e392db09430d91496cf4def6c395@HIBDWSMB02.ad.harman.com>
	<CAJTo0LZCxCYNL-C0LU5oKVwSzeQfY5DCJXsiHR1N_PwdcBHHTw@mail.gmail.com>
	<0821b36bfa664ed49614099e658e46b9@HIBDWSMB02.ad.harman.com>
	<CAF3SDA4+4NhbBskh=PxDGqJP1PFcwFOEHYEK04DOTVv7mKTRrg@mail.gmail.com>
	<1980608174.6503.1467381831219.JavaMail.zimbra@evalan.com>
	<CAF3SDA5jrx7n5C6WpFGKJSxnnwY=VJJ-EDdUYwYt45Z5xfTw9Q@mail.gmail.com>
In-Reply-To: <CAF3SDA5jrx7n5C6WpFGKJSxnnwY=VJJ-EDdUYwYt45Z5xfTw9Q@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.70.50.4]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setcap using recipe
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
X-List-Received-Date: Sat, 02 Jul 2016 09:22:23 -0000
X-Groupsio-MsgNum: 30867
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_f7f70173e1304433b5bb00c0f8cec5bfHIBDWSMB02adharmancom_"

--_002_f7f70173e1304433b5bb00c0f8cec5bfHIBDWSMB02adharmancom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVhciBBbGwsDQoNClRoZSBhaW0gb2YgbXkgZXhlcmNpc2UgaXMgdG8gYXBwbHkgInNldGNhcCAi
IG9uIGFuIGV4ZWN1dGFibGUgZHVyaW5nIHJvb3RmcyBjcmVhdGlvbi4gDQpJIHNob3VsZCBiZSBh
YmxlIHRvIHZpZXcgdGhlIHNldCBjYXBhYmlsaXR5IHVzaW5nIGdldGNhcCB1dGlsaXR5IHdoZW4g
dGhpcyByb290ZnMgaXMgbW91bnRlZCBvbiB0aGUgdGFyZ2V0LiANCkFzIEkgc2FpZCBlYXJsaWVy
IG5vbmUgb2YgdGhlIHN1Z2dlc3RlZCBhcHByb2FjaCBpcyB3b3JraW5nIGhlcmUuQ3VycmVudGx5
IEkgYW0gcWVtdXg4NiBpcyBteSB0YXJnZXQuIA0KIA0KQ2FuIHNvbWVvbmUgcmV2aWV3IHRoZSBh
dHRhY2hlZCByZWNpcGUgYW5kIGhlbHAgc29sdmUgdGhlIHByb2JsZW0gc3RhdGVtZW50ICA/DQoN
Cg0KDQpSZWdhcmRzDQpTaHJhd2FuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9t
OiBEYW5pZWwuIFttYWlsdG86ZGFuaWVsaGlsc3RAZ21haWwuY29tXSANClNlbnQ6IEZyaWRheSwg
SnVseSAwMSwgMjAxNiA3OjU0IFBNDQpUbzogTWF0aGlldSBBbGxhcmQNCkNjOiBLdW1hciwgU2hy
YXdhbjsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gc2V0Y2Fw
IHVzaW5nIHJlY2lwZQ0KDQpIbW1tIEkgc2VlLA0KDQpXZWxsLCBJIGRpZG4ndCBub3RlIHRoYXQu
IEFuZCB5ZWFoLCB0aGF0IGNvbW1hbmQgc2hvdWxkIGJlIHJhbiBhdCBmaXJzdCBib290LCAodGhh
dCBmZWF0dXJlIHNhdmVkIG15IGxpZmUgYSBidW5jaCBvZiB0aW1lcyA6KSApDQoNClJlZ2FyZHMs
DQoNCjIwMTYtMDctMDEgMTE6MDMgR01ULTAzOjAwIE1hdGhpZXUgQWxsYXJkIDxtYXRoaWV1LmFs
bGFyZEBldmFsYW4uY29tPjoNCj4gSGVsbG8sDQo+DQo+IEkgdGhpbmsgdGhhdCB0aGUgbWFpbiBp
c3N1ZSBoZXJlIGlzIHRoYXQgdGhlIHBrZ19wb3N0aW5zdCBmdW5jdGlvbiBydW5zIGl0cyBhY3Rp
b24gYXQgdGhlIHJvb3RmcyBjcmVhdGlvbiB0aW1lLCBhbmQgbm90IG9uIHRoZSB0YXJnZXQgYXMg
YWR2aXNlZCBieSBSb3NzLg0KPg0KPiBUaGUgY2hhcHRlciA1LjMuMTYsICJwb3N0LWluc3RhbGxh
dGlvbiBzY3JpcHRzIiBpbiB0aGUgbWVnYS1tYW51YWwgb2ZmZXJzIHNvbWUgZGV0YWlsZWQgZXhw
bGFuYXRpb25zIG9uIGhvdyB0byBtYWtlIGl0IHJ1biBhZnRlciB0aGUgZmlyc3QgYm9vdC4NCj4N
Cj4NCj4gUmVnYXJkcywNCj4NCj4gTWF0aGlldQ0KPg0KPg0KPiAtLS0tLSBPcmlnaW5hbCBNZXNz
YWdlIC0tLS0tDQo+IEZyb206ICJEYW5pZWwuIiA8ZGFuaWVsaGlsc3RAZ21haWwuY29tPg0KPiBU
bzogIkt1bWFyLCBTaHJhd2FuIiA8U2hyYXdhbi5LdW1hckBoYXJtYW4uY29tPg0KPiBDYzogeW9j
dG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBTZW50OiBGcmlkYXksIEp1bHkgMSwgMjAxNiAzOjU0OjE1
IFBNDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIHNldGNhcCB1c2luZyByZWNpcGUNCj4NCj4gRG9l
cyB5b3VyIHRhcmdldCBmaWxlc3lzdGVtIHN1cHBvcnQgaXQ/IHViaWZzIGRvZXNuJ3QgOiggDQo+
IGh0dHA6Ly93d3cubGludXgtbXRkLmluZnJhZGVhZC5vcmcvZG9jL3ViaWZzLmh0bWwjTF94YXR0
cg0KPg0KPiAyMDE2LTA3LTAxIDk6NTMgR01ULTAzOjAwIEt1bWFyLCBTaHJhd2FuIDxTaHJhd2Fu
Lkt1bWFyQGhhcm1hbi5jb20+Og0KPj4gSGVsbG8gUm9zcywNCj4+DQo+Pg0KPj4NCj4+IE5vbmUg
b2YgdGhlIGFwcHJvYWNoIGlzIHdvcmtpbmcgLiAgSSBoYXZlIGF0dGFjaGVkIHRoZSAgcmVjaXBl
IHdoZXJlIA0KPj4gSSBhbSB0cnlpbmcgdG8gZXhlY3V0ZSBwb3N0aW5zdCAuIEl0IGJ1aWxkcyBz
dWNjZXNzZnVsbHkgLCBCdXQgd2hlbiBJIA0KPj4gcnVuIGdldGNhcCBvbiB0aGUgdGFyZ2V0ICwg
ZG9lcyBub3QgcmV0dXJuIHRoZSBzZXQgY2FwYWJpbGl0aWVzLg0KPj4NCj4+DQo+Pg0KPj4gSGVs
cCB3aWxsIGJlIGhpZ2hseSBhcHByZWNpYXRlZCAuDQo+Pg0KPj4NCj4+DQo+PiBSZWdhcmRzDQo+
Pg0KPj4gU2hyYXdhbg0KPj4NCj4+IEZyb206IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVy
dG9uQGludGVsLmNvbV0NCj4+IFNlbnQ6IEZyaWRheSwgSnVuZSAyNCwgMjAxNiA2OjQwIFBNDQo+
Pg0KPj4NCj4+IFRvOiBLdW1hciwgU2hyYXdhbg0KPj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5v
cmcNCj4+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIHNldGNhcCB1c2luZyByZWNpcGUNCj4+DQo+Pg0K
Pj4NCj4+IExvb2tzIGxpa2UgdXNpbmcgc2V0Y2FwIGRpcmVjdGx5IGlzIGJyb2tlbiBjdXJyZW50
bHksIHRoZXJlIGFyZSB0d28NCj4+IHdvcmthcm91bmRzOg0KPj4NCj4+DQo+Pg0KPj4gMSkgdXNl
IGEgcG9zdGluc3QgdG8gaW52b2tlIHNldGNhcCBvbiB0aGUgdGFyZ2V0IGluc3RlYWQNCj4+DQo+
PiAyKSB0ZXN0IHRoZSBwYXRjaCBmb3IgcHNldWRvIHRoYXQgaXMgb24gdGhpcyBsaXN0IChbUEFU
Q0hdIEFkZCBjYXBzZXQgDQo+PiBwc2V1ZG8gZnVuY3Rpb24gdGhhdCBhbHdheXMgc3VjY2VlZHMp
IGFuZCB2ZXJpZnkgdGhhdCBpdCBmaXhlcyB0aGUgcHJvYmxlbSBmb3IgeW91Lg0KPj4NCj4+DQo+
Pg0KPj4gUm9zcw0KPj4NCj4+DQo+Pg0KPj4gT24gMjQgSnVuZSAyMDE2IGF0IDEzOjMxLCBLdW1h
ciwgU2hyYXdhbiA8U2hyYXdhbi5LdW1hckBoYXJtYW4uY29tPiB3cm90ZToNCj4+DQo+PiBJIGFt
IHVzaW5nIFlvY3RvIDIuMC4yDQo+Pg0KPj4NCj4+DQo+PiBUaGFua3MgYW5kIFJlZ2FyZHMNCj4+
DQo+PiBTaHJhd2FuDQo+Pg0KPj4NCj4+DQo+PiBGcm9tOiBCdXJ0b24sIFJvc3MgW21haWx0bzpy
b3NzLmJ1cnRvbkBpbnRlbC5jb21dDQo+PiBTZW50OiBGcmlkYXksIEp1bmUgMjQsIDIwMTYgNTo1
NiBQTQ0KPj4NCj4+DQo+PiBUbzogS3VtYXIsIFNocmF3YW4NCj4+IENjOiB5b2N0b0B5b2N0b3By
b2plY3Qub3JnDQo+PiBTdWJqZWN0OiBSZTogW3lvY3RvXSBzZXRjYXAgdXNpbmcgcmVjaXBlDQo+
Pg0KPj4NCj4+DQo+PiBXaGF0IHZlcnNpb24gb2YgT0UvWW9jdG8gYXJlIHlvdSB1c2luZz8gIE9s
ZCB2ZXJzaW9ucyBvZiBwc2V1ZG8gDQo+PiBkaWRuJ3Qgc3VwcG9ydCB4YXR0cnMgYXQgYWxsLg0K
Pj4NCj4+DQo+Pg0KPj4gUm9zcw0KPj4NCj4+DQo+Pg0KPj4gT24gMjQgSnVuZSAyMDE2IGF0IDEz
OjIzLCBLdW1hciwgU2hyYXdhbiA8U2hyYXdhbi5LdW1hckBoYXJtYW4uY29tPiB3cm90ZToNCj4+
DQo+PiBUaGFua3MgUm9zcyBmb3IgeW91ciBxdWljayB0dXJuIGFyb3VuZCAsIEkgYW0gZ2V0dGlu
ZyBiZWxvdyBlcnJvcg0KPj4NCj4+DQo+Pg0KPj4g4oCcVW5hYmxlIGxlIHRvIHNldCBDQVBfU0VU
RkNBUCBlZmZlY3RpdmUgY2FwYWJpbGl0eTogT3BlcmF0aW9uIG5vdCANCj4+IHBlcm1pdHRlZC7i
gJ0NCj4+DQo+Pg0KPj4NCj4+IEJ1dCB3aGVuIEkgdXNlICAgICMgc3VkbyBzZXRjYXAgY2FwX25l
dF9yYXcrZXAgIGhlbGxvd29ybGQgICAgICAgIG9uIGNvbW1hbmQNCj4+IGxpbmUgSSBhbSBhYmxl
IHRvIHNldCB0aGUgY2FwLg0KPj4NCj4+DQo+Pg0KPj4gVG8gYWNoaWV2ZSB0aGUgc3VkbyByZWFs
aXphdGlvbiAgaW4gcmVjaXBlICwgSSB0cmllZCAgYXMgYmVsb3cgLCBidXQgDQo+PiBubyBsdWNr
4oCm4oCmIENhbiB5b3Ugc3VnZ2VzdCBzb21ldGhpbmcgaGVyZSAgPw0KPj4NCj4+DQo+Pg0KPj4g
ZmFrZXJvb3QgZG9faW5zdGFsbCgpIHsNCj4+DQo+PiAgICAgICAgICAgICAgICAgICAgIGluc3Rh
bGwgLWQgJHtEfSR7YmluZGlyfQ0KPj4NCj4+ICAgICAgICAgICAgICAgICAgICAgaW5zdGFsbCAt
bSAwNzU1IGhlbGxvd29ybGQgJHtEfSR7YmluZGlyfQ0KPj4NCj4+ICAgICAgICAgICAgICAgICAg
ICAgaW5zdGFsbCAtZCAke0R9L2xpYi9zeXN0ZW1kL3N5c3RlbQ0KPj4NCj4+ICAgICAgICAgICAg
ICAgICAgICAgaW5zdGFsbCAtbSAwNzU1IGhlbGxvLnNlcnZpY2UgDQo+PiAke0R9L2xpYi9zeXN0
ZW1kL3N5c3RlbS8NCj4+DQo+PiAgICAgICAgICAgICAgc2V0Y2FwIGNhcF9uZXRfcmF3K2VwICAk
e0R9JHtiaW5kaXJ9L2hlbGxvd29ybGQNCj4+DQo+Pg0KPj4NCj4+IH0NCj4+DQo+Pg0KPj4NCj4+
IFRoYW5rcyBhbmQgUmVnYXJkcw0KPj4NCj4+IFNocmF3YW4NCj4+DQo+Pg0KPj4NCj4+IEZyb206
IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0NCj4+IFNlbnQ6IEZy
aWRheSwgSnVuZSAyNCwgMjAxNiA1OjA5IFBNDQo+PiBUbzogS3VtYXIsIFNocmF3YW4NCj4+IENj
OiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+PiBTdWJqZWN0OiBSZTogW3lvY3RvXSBzZXRjYXAg
dXNpbmcgcmVjaXBlDQo+Pg0KPj4NCj4+DQo+PiBIaSwNCj4+DQo+Pg0KPj4NCj4+IE9uIDI0IEp1
bmUgMjAxNiBhdCAxMTo0MSwgS3VtYXIsIFNocmF3YW4gPFNocmF3YW4uS3VtYXJAaGFybWFuLmNv
bT4gd3JvdGU6DQo+Pg0KPj4gSXMgdGhlcmUgYSB3YXkgdG8gIGFkZCBhIGNhcGFiaWxpdHkgdG8g
YSBiaW5hcnkgKGNhcF9uZXRfcmF3K2VwKSxpbnRvIA0KPj4gYSByZWNpcGU/DQo+Pg0KPj4NCj4+
DQo+PiBFeGFtcGxlIDoNCj4+DQo+PiBkb19pbnN0YWxsKCkgew0KPj4NCj4+ICAgICAgICAgICAg
aW5zdGFsbCAtZCAke0R9JHtiaW5kaXJ9DQo+Pg0KPj4gICAgICAgICAgICBpbnN0YWxsIC1tIDA3
NTUgaGVsbG93b3JsZCAke0R9JHtiaW5kaXJ9DQo+Pg0KPj4gICAgICAgICAgICBpbnN0YWxsIC1k
ICR7RH0vbGliL3N5c3RlbWQvc3lzdGVtDQo+Pg0KPj4gICAgICAgICAgICBpbnN0YWxsIC1tIDA3
NTUgaGVsbG8uc2VydmljZSAke0R9L2xpYi9zeXN0ZW1kL3N5c3RlbS8NCj4+DQo+PiAgICAgICAg
ICAgIHNldGNhcCBjYXBfbmV0X3JhdytlcCAgJHtEfSR7YmluZGlyfS9oZWxsb3dvcmxkDQo+Pg0K
Pj4gfQ0KPj4NCj4+DQo+Pg0KPj4gSWYgeWVzIGlzIHRoaXMgY29ycmVjdCBhcHByb2FjaCB0byBh
Y2hpZXZlIHRoZSBzYW1lIGZyb20gIHBhY2thZ2UgDQo+PiByZWNpcGUgaXRzZWxmID8NCj4+DQo+
Pg0KPj4gY2FwYWJpbGl0aWVzIG9uIGZpbGVzIGFyZSBqdXN0IGV4dGVuZGVkIGF0dHJpYnV0ZXMs
IHNvIGFzc3VtaW5nIHRoYXQgDQo+PiB5b3UgaGF2ZSBhIGZhaXJseSByZWNlbnQgWW9jdG8gYW5k
IHlvdXIgaG9zdCBhbmQgdGFyZ2V0IGZpbGVzeXN0ZW1zIA0KPj4gc3VwcG9ydCBleHRlbmRlZCBh
dHRyaWJ1dGVzLCB5ZXMgdGhpcyBzaG91bGQgd29yay4NCj4+DQo+Pg0KPj4NCj4+IFJvc3MNCj4+
DQo+Pg0KPj4NCj4+DQo+Pg0KPj4NCj4+IC0tDQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPj4geW9jdG8gbWFpbGluZyBsaXN0DQo+PiB5b2N0b0B5
b2N0b3Byb2plY3Qub3JnDQo+PiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGlu
Zm8veW9jdG8NCj4+DQo+DQo+DQo+DQo+IC0tDQo+ICJEbyBvciBkbyBub3QuIFRoZXJlIGlzIG5v
IHRyeSINCj4gICBZb2RhIE1hc3Rlcg0KPiAtLQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4geW9jdG9AeW9j
dG9wcm9qZWN0Lm9yZw0KPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8v
eW9jdG8NCg0KDQoNCi0tDQoiRG8gb3IgZG8gbm90LiBUaGVyZSBpcyBubyB0cnkiDQogIFlvZGEg
TWFzdGVyDQo=

--_002_f7f70173e1304433b5bb00c0f8cec5bfHIBDWSMB02adharmancom_
Content-Type: application/octet-stream; name="HelloWorld_0.1.bb"
Content-Description: HelloWorld_0.1.bb
Content-Disposition: attachment; filename="HelloWorld_0.1.bb"; size=874;
	creation-date="Sat, 02 Jul 2016 09:15:04 GMT";
	modification-date="Sat, 02 Jul 2016 09:15:04 GMT"
Content-Transfer-Encoding: base64

IwojIFRoaXMgZmlsZSB3YXMgZGVyaXZlZCBmcm9tIHRoZSAnSGVsbG8gV29ybGQhJyBleGFtcGxl
IHJlY2lwZSBpbiB0aGUKIyBZb2N0byBQcm9qZWN0IERldmVsb3BtZW50IE1hbnVhbC4KIwoKU1VN
TUFSWSA9ICJTaW1wbGUgaGVsbG93b3JsZCBhcHBsaWNhdGlvbiIKU0VDVElPTiA9ICJleGFtcGxl
cyIKTElDRU5TRSA9ICJNSVQiCkxJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovLyR7Q09NTU9OX0xJ
Q0VOU0VfRElSfS9NSVQ7bWQ1PTA4MzVhZGU2OThlMGJjZjg1MDZlY2RhMmY3YjRmMzAyIgppbmhl
cml0IHN5c3RlbWQgCgoKU1JDX1VSSSA9ICJmaWxlOi8vaGVsbG93b3JsZC5jIFwKCWZpbGU6Ly9o
ZWxsby5zZXJ2aWNlICIKClMgPSAiJHtXT1JLRElSfSIKCmRvX2NvbXBpbGUoKSB7CgkgICAgICR7
Q0N9IGhlbGxvd29ybGQuYyAtbyBoZWxsb3dvcmxkCn0KCmRvX2luc3RhbGwoKSB7CgkgICAgIGlu
c3RhbGwgLWQgJHtEfSR7YmluZGlyfQoJICAgICBpbnN0YWxsIC1tIDA3NTUgaGVsbG93b3JsZCAk
e0R9JHtiaW5kaXJ9CgkgICAgIGluc3RhbGwgLWQgJHtEfS9saWIvc3lzdGVtZC9zeXN0ZW0KCSAg
ICAgaW5zdGFsbCAtbSAwNzU1IGhlbGxvLnNlcnZpY2UgJHtEfS9saWIvc3lzdGVtZC9zeXN0ZW0v
CiAgICAgICAgICAgICMgc2V0Y2FwIGNhcF9uZXRfcmF3K2VwICAke0R9JHtiaW5kaXJ9L2hlbGxv
d29ybGQKICAgICAgICAgICAgCgkgICAgCQp9Cgpwa2dfcG9zdGluc3RfJHtQTn0gKCkgewogCiBz
ZXRjYXAgY2FwX25ldF9yYXcrZXAgICREJHtiaW5kaXJ9L2hlbGxvd29ybGQKCn0KCgpTWVNURU1E
X1NFUlZJQ0VfJHtQTn0gPSAiaGVsbG8uc2VydmljZSIKClNZU1RFTURfQVVUT19FTkFCTEVfJHtQ
Tn0gPSAiZW5hYmxlIiAgCgoKCg==

--_002_f7f70173e1304433b5bb00c0f8cec5bfHIBDWSMB02adharmancom_--
