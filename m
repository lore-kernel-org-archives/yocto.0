Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E29BE00D2F; Wed,  3 Apr 2019 20:08:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70646E00D28
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 20:08:39 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Apr 2019 20:08:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,306,1549958400"; d="scan'208";a="146442035"
Received: from pgsmsx105.gar.corp.intel.com ([10.221.44.96])
	by FMSMGA003.fm.intel.com with ESMTP; 03 Apr 2019 20:08:37 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.210]) by
	PGSMSX105.gar.corp.intel.com ([169.254.4.8]) with mapi id
	14.03.0415.000; Thu, 4 Apr 2019 11:07:47 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: Proposed new QA process
Thread-Index: AdTpA8p1v/O57UGcSFmNstkpN14rMAASkXKAAFEt/lA=
Date: Thu, 4 Apr 2019 03:07:46 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D043481ADBDB@PGSMSX109.gar.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D043481A33CC@PGSMSX109.gar.corp.intel.com>
	<849529a7b47d2ec9cf919089074cf4c5661bdd2b.camel@linuxfoundation.org>
In-Reply-To: <849529a7b47d2ec9cf919089074cf4c5661bdd2b.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGY3OWVhNTgtYzI3NS00MGZkLWEzMmMtNzc2MGNiYjcwNzc2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiREN6ckhQdU91OWNweDY1VlN5NEFyOXN3dmtzZ2lcL3dlczdWZnB5WmRzTVhCbE9adERoNCsyNjNmRFJTd2MxdGkifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: Proposed new QA process
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
X-List-Received-Date: Thu, 04 Apr 2019 03:08:41 -0000
X-Groupsio-MsgNum: 44633
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_005_9DDD2658D1FE414E99172D2DB1E4D043481ADBDBPGSMSX109garcor_"

--_005_9DDD2658D1FE414E99172D2DB1E4D043481ADBDBPGSMSX109garcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwgDQoNCkFncmVlZCB0byB5b3UgaW5wdXRzISANCkkgaGFkIGNyZWF0ZWQgYSBu
ZXcgUUEgcHJvY2VzcyB3aWtpIHBhZ2UgdG8gY29tcGlsZSBhbGwgaW5wdXRzLiANCmh0dHBzOi8v
d2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvTmV3X1FBX3Byb2Nlc3MNCg0KPiBEbyB3ZSBuZWVk
IHRvIGFkZCBzb21ldGhpbmcgdG8gdGhlIHJlc3VsdHMgdG8gaW5kaWNhdGUgd2hpY2ggcmVzdWx0
cyBhcmUgZnJvbSAid2hvIj8gKGkuZS4gZnJvbSA+IHRoZSBwdWJsaWMgYXV0b2J1aWxkZXIsIElu
dGVsIFFBLCBXUiBRQSwgYW55IG90aGVyIHNvdXJjZXM/KS4gV2UgbWF5IHdhbnQgdG8gYWRkIHNv
bWV0aGluZyA+c3VjaCBhcyBhIHBhcmFtZXRlciB0byB0aGUgcmVzdWx0dG9vbCBzdG9yZSBjb21t
YW5kIHNvIHdlIGNhbiBhZGQgdGhpcyBpbmZvIHRvIHJlc3VsdHM/DQoNCkkgaGFkIGVuaGFuY2Vk
IHRoZSByZXN1bHR0b29sIGZvbGxvd2luZyB5b3VyIHN1Z2dlc3Rpb24uIFBhdGNoZXMgc3VibWl0
dGVkIHRvIG9wZW5lbWJlZGRlZC1jb3JlIG1haWxpbmcgbGlzdC4NCg0KQmVzdCByZWdhcmRzLA0K
WWVvaCBFZSBQZW5nIA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogcmljaGFy
ZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZyBbbWFpbHRvOnJpY2hhcmQucHVyZGllQGxpbnV4
Zm91bmRhdGlvbi5vcmddIA0KU2VudDogV2VkbmVzZGF5LCBBcHJpbCAzLCAyMDE5IDQ6MTggQU0N
ClRvOiBZZW9oLCBFZSBQZW5nIDxlZS5wZW5nLnllb2hAaW50ZWwuY29tPjsgJ3lvY3RvQHlvY3Rv
cHJvamVjdC5vcmcnIDx5b2N0b0B5b2N0b3Byb2plY3Qub3JnPg0KU3ViamVjdDogUmU6IFByb3Bv
c2VkIG5ldyBRQSBwcm9jZXNzDQoNClRoaXMgaXMgYSBnb29kIHN0YXJ0LiBJJ3ZlIGZpbGxlZCBv
dXQgc29tZSBkZXRhaWxzIGJlbG93IGFuZCBoYWQgc29tZSBxdWVzdGlvbnMuDQoNCk9uIFR1ZSwg
MjAxOS0wNC0wMiBhdCAwMzoyOCArMDAwMCwgWWVvaCwgRWUgUGVuZyB3cm90ZToNCj4gR2l2ZW4g
dGhlIG5ldyBRQSB0b29saW5nIChyZXN1bHR0b29sKSBhdmFpbGFibGUgdG8gbWFuYWdlIFFBIHRl
c3QgDQo+IHJlc3VsdHMgYW5kIHJlcG9ydGluZywgaGVyZSB3YXMgdGhlIHByb3Bvc2VkIG5ldyBR
QSBwcm9jZXNzLg0KPiAgDQo+IFRoZSBuZXcgUUEgcHJvY2VzcyBjb25zaXN0cyBiZWxvdzoNCj4g
wrcgICAgICAgVGVzdCBUcmlnZ2VyDQo+IMK3ICAgICAgIFRlc3QgUGxhbm5pbmcNCj4gwrcgICAg
ICAgVGVzdCBFeGVjdXRpb24NCj4gwrcgICAgICAgVGVzdCBSZXN1bHQgU3RvcmUNCj4gwrcgICAg
ICAgVGVzdCBNb25pdG9yaW5nICYgUmVwb3J0aW5nDQo+IMK3ICAgICAgIFJlbGVhc2UgRGVjaXNp
b24NCj4gIA0KPiBUZXN0IFRyaWdnZXI6IEVhY2ggUUEgdGVhbSB3aWxsIHN1YnNjcmliZSB0byBR
QSBub3RpZmljYXRpb24gZW1haWwgDQo+IChyZXF1ZXN0IHRocm91Z2ggUmljaGFyZCBQdXJkaWUp
Lg0KDQpUaGUgbGlzdCBvZiBub3RpZmljYXRpb25zIGlzIG1haW50YWluZWQgb24gY29uZmlnLmpz
b24gaW4gdGhlIHlvY3RvLSBhdXRvYnVpbGRlci1oZWxwZXIgd2hpY2ggaGFzIGEgYnJhbmNoIHBl
ciByZWxlYXNlLg0KIA0KPiBUZXN0IFBsYW5uaW5nOiBUaGUgbGVhZCBRQSB0ZWFtIG5vIGxvbmdl
ciBuZWVkIHRvIHNldHVwIFRlc3RvcGlhIGFuZCANCj4gd2lraSBwYWdlLiAgRWFjaCBRQSB0ZWFt
IChlZy4gaW50ZWwsIHdpbmRyaXZlciwgZXRjKSB3aWxsIHBlcmZvcm0gDQo+IHBsYW5uaW5nIG9u
IHdoYXQgZXh0cmEgdGVzdHMgdGhleSBwbGFuIHRvIHJ1biBhbmQgd2hlbiB0aGV5J2xsIHNlbmQg
DQo+IHRoZSByZXN1bHRzIGJhY2ssIHRoZW4gc2VuZCB0aGVzZSBwbGFubmluZyBpbmZvcm1hdGlv
biBhcyBhY2tub3dsZWRnZSANCj4gZW1haWwgdG8gUUEgc3Rha2Vob2xkZXJzIChlZy4gUmljaGFy
ZCBQdXJkaWUsIFN0ZXBoZW4gSm9sbGV5KSBhbmQgdGhlIA0KPiBsZWFkIFFBIHRlYW0uICBFYWNo
IFFBIHRlYW0gY2FuIHJlZmVyIHRvIE9FUUEgZm9yIGF1dG9tYXRlZCBhbmQgbWFudWFsIA0KPiB0
ZXN0IGNhc2VzIGZvciB0aGVpciBwbGFubmluZy4NCg0KV2hhdCBmb3JtIHdpbGwgdGhlc2Ugbm90
aWZpY2F0aW9ucyB0YWtlPyBJcyB0aGVyZSBhIHRpbWUgbGltaXQgZm9yIHdoZW4gdGhleSdsbCBi
ZSByZWNlaXZlZCBhZnRlciBhIFFBIG5vdGlmaWNhdGlvbiBlbWFpbD8gQ2FuIHdlIGFncmVlIHRv
IGluY2x1ZGUgYW4gZXN0aW1hdGUgb2YgZXhlY3V0aW9uIHRpbWUgaW4gdGhpcyBub3RpZmljYXRp
b24/DQoNCj4gVGVzdCBFeGVjdXRpb246IEVhY2ggUUEgdGVhbSB3aWxsIGV4ZWN1dGUgdGhlIHBs
YW5uZWQgZXh0cmEgdGVzdHMuIFRvIA0KPiBtYWtlIHN1cmUgdGVzdCByZXN1bHQgZnJvbSB0aGUg
dGVzdCBleGVjdXRpb24gY291bGQgZnVsbHkgaW50ZWdyYXRlZCANCj4gdG8gdGhlIG5ldyBRQSB0
b29saW5nIChyZXN1bHR0b29sIGZvciB0ZXN0IHJlc3VsdCBtYW5hZ2VtZW50IGFuZCANCj4gcmVw
b3J0aW5nL3JlZ3Jlc3Npb24pLCBleGVjdXRlIE9FUUEgYXV0b21hdGVkIHRlc3RzIGFuZCBPRVFB
IG1hbnVhbCANCj4gdGVzdHMgdGhyb3VnaCByZXN1bHR0b29sIChyZWZlciANCj4gaHR0cHM6Ly93
aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9SZXN1bHR0b29sI21hbnVhbGV4ZWN1dGlvbikuDQo+
ICANCj4gVGVzdCBSZXN1bHQgU3RvcmU6IEVhY2ggUUEgdGVhbSB3aWxsIHN0b3JlIHRlc3QgcmVz
dWx0IHRvIHRoZSByZW1vdGUgDQo+IHlvY3RvLXRlc3RyZXN1bHRzIGdpdCByZXBvc2l0b3J5IHVz
aW5nIHJlc3VsdHRvb2wgKHJlZmVyIA0KPiBodHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93
aWtpL1Jlc3VsdHRvb2wjc3RvcmUpLCB0aGVuIHNlbmQgdGhlIFFBIA0KPiBjb21wbGV0aW9uIGVt
YWlsIChpbmNsdWRlIG5ldyBkZWZlY3RzIGluZm9ybWF0aW9uKSB0byBib3RoIFFBIA0KPiBzdGFr
ZWhvbGRlciBhbmQgdGhlIGxlYWQgUUEgdGVhbS4gIEVhY2ggUUEgdGVhbSB3aWxsIHJlcXVlc3Qg
d3JpdGUgDQo+IGFjY2VzcyB0byByZW1vdGUgeW9jdG8tdGVzdHJlc3VsdHMgZ2l0IHJlcG9zaXRv
cnkgKHJlcXVlc3QgdGhyb3VnaCANCj4gUmljaGFyZCBQdXJkaWUpLg0KDQpVbHRpbWF0ZWx5LCB5
ZXMgYnV0IEkgd2FudCB0byBoYXZlIHRoaW5ncyB3b3JraW5nIGJlZm9yZSB3ZSBoYXZlIG11bHRp
cGxlIHBlb3BsZSBwdXNoaW5nIHRoaW5ncyB0aGVyZS4gTmVlZCB0byBkb2N1bWVudCB0aGUgY29t
bWFuZHMgdXNlZCBoZXJlIHRvIGFkZCB0aGUgcmVzdWx0cyB0b28uDQoNCkRvIHdlIG5lZWQgdG8g
YWRkIHNvbWV0aGluZyB0byB0aGUgcmVzdWx0cyB0byBpbmRpY2F0ZSB3aGljaCByZXN1bHRzIGFy
ZSBmcm9tICJ3aG8iPyAoaS5lLiBmcm9tIHRoZSBwdWJsaWMgYXV0b2J1aWxkZXIsIEludGVsIFFB
LCBXUiBRQSwgYW55IG90aGVyIHNvdXJjZXM/KS4gV2UgbWF5IHdhbnQgdG8gYWRkIHNvbWV0aGlu
ZyBzdWNoIGFzIGEgcGFyYW1ldGVyIHRvIHRoZSByZXN1bHR0b29sIHN0b3JlIGNvbW1hbmQgc28g
d2UgY2FuIGFkZCB0aGlzIGluZm8gdG8gcmVzdWx0cz8NCiANCj4gVGVzdCBNb25pdG9yaW5nICYg
UmVwb3J0aW5nOiBRQSBzdGFrZWhvbGRlciB3aWxsIG1vbml0b3IgdGVzdGluZyANCj4gcHJvZ3Jl
c3MgZnJvbSByZW1vdGUgeW9jdG8tdGVzdHJlc3VsdHMgZ2l0IHJlcG9zaXRvcnkgdXNpbmcgcmVz
dWx0dG9vbCANCj4gKHJlZmVyIGh0dHBzOi8vd2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvUmVz
dWx0dG9vbCNyZXBvcnQpLiAgT25jZSANCj4gZXZlcnkgUUEgdGVhbSBjb21wbGV0ZWQgdGhlIHRl
c3QgZXhlY3V0aW9uLCB0aGUgbGVhZCBRQSB0ZWFtIHdpbGwgDQo+IGNyZWF0ZSBRQSB0ZXN0IHJl
cG9ydCBhbmQgcmVncmVzc2lvbiB1c2luZyByZXN1bHR0b29sLiBTZW5kIGVtYWlsIA0KPiByZXBv
cnQgdG8gUUEgc3Rha2Vob2xkZXIgYW5kIHB1YmxpYyB5b2N0byBtYWlsaW5nIGxpc3QuDQoNCldl
IHNob3VsZCBkb2N1bWVudCB0aGUgY29tbWFuZCB0byBkbyB0aGlzLiBJJ20gYWxzbyB3b25kZXJp
bmcgd2hlcmUgdGhlIGxpc3Qgb2Ygc3Rha2Vob2xkZXJzIHdvdWxkIGJlIG1haW50YWluZWQ/DQoN
CklzIEludGVsIHZvbHVudGVlcmluZyB0byBoZWxwIHdpdGggdGhpcyByb2xlIGZvciB0aGUgdGlt
ZSBiZWluZyBvciBkb2VzIHNvbWVvbmUgZWxzZSBuZWVkIHRvIHN0YXJ0IGRvaW5nIHRoaXMuDQoN
CkEga2V5IHRoaW5nIHdlIG5lZWQgdG8gZG9jdW1lbnQgaGVyZSBpcyB0aGF0IHNvbWVvbmUsIHNv
bWV3aGVyZSBpbiB0aGlzIHByb2Nlc3MgbmVlZHMgdG86DQoNCmEpIE9wZW4gYSBidWcgZm9yIGVh
Y2ggdW5pcXVlIFFBIHRlc3QgZmFpbHVyZQ0KYikgTGlzdCB0aGUgYnVncyBmb3VuZCBpbiB0aGUg
UUEgcmVwb3J0DQpjKSBOb3RpY2UgYW55IHB0ZXN0IHRpbWVvdXRzIGFuZCBmaWxlIGJ1Z3MgZm9y
IHRob3NlIHRvbw0KDQo+IFJlbGVhc2UgRGVjaXNpb246IFFBIHN0YWtlaG9sZGVyIHdpbGwgbWFr
ZSB0aGUgZmluYWwgZGVjaXNpb24gZm9yIA0KPiByZWxlYXNlLg0KDQpUaGUgcmVsZWFzZSBkZWNp
c2lvbiB3aWxsIHVsdGltYXRlbHkgYmUgbWFkZSBieSB0aGUgWW9jdG8gUHJvamVjdCBUU0Mgd2hv
IHdpbGwgcmV2aWV3IHRoZSByZXNwb25zZXMgdG8gdGhlIFFBIHJlcG9ydCAoaW5jbHVkaW5nIHN1
Z2dlc3Rpb25zIGZyb20gUUEpIGFuZCBtYWtlIGEgZ28vbm9nbyBkZWNpc2lvbiBvbiB0aGF0IGlu
Zm9ybWF0aW9uIChleGFjdCBwcm9jZXNzIHRvIGJlIGFncmVlZCBieSB0aGUgVFNDKS4NCg0KQ2hl
ZXJzLA0KDQpSaWNoYXJkDQoNCg0K

--_005_9DDD2658D1FE414E99172D2DB1E4D043481ADBDBPGSMSX109garcor_
Content-Type: message/rfc822
Content-Disposition: attachment;
	creation-date="Thu, 04 Apr 2019 03:07:46 GMT";
	modification-date="Thu, 04 Apr 2019 03:07:46 GMT"

Received: from fmsmsx106.amr.corp.intel.com (10.18.124.204) by
 PGSMSX102.gar.corp.intel.com (10.221.44.80) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 4 Apr 2019 11:02:07 +0800
Received: from orsmga001.jf.intel.com (10.7.209.18) by
 FMSMSX106.amr.corp.intel.com (10.18.124.213) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 3 Apr 2019 20:02:05 -0700
Received: from andromeda02.png.intel.com ([10.221.183.11])  by
 orsmga001.jf.intel.com with ESMTP; 03 Apr 2019 20:01:36 -0700
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
CC: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
Subject: [PATCH v03] resulttool/merge: enhance merge and control testseries
Thread-Topic: [PATCH v03] resulttool/merge: enhance merge and control
 testseries
Thread-Index: AQHU6pLK4hnk1eipo0S5amgvHUeLVA==
Date: Thu, 4 Apr 2019 02:30:34 +0000
Message-ID: <1554345037-72697-1-git-send-email-ee.peng.yeoh@intel.com>
Content-Language: en-US
X-MS-Exchange-Organization-AuthMechanism: 10
X-MS-Exchange-Organization-AuthSource: FMSMSX106.amr.corp.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

v01:
Enable merging results where both base and target are directory.

v02:
Follow suggestion from RP to reused the existing resultutils code base wher=
e it will merge results to flat file.
Refactor resultutils code base to enable merging results where both base an=
d target are directory.
Add control for creation of testseries configuration.

v03:
Follow suggestion from RP to breakdown the patches to ease reviewing.
Enable resultutils library to control the adding of "TESTSERIES"
configuration as well as allow adding extra configurations when needed.
Enable store to add "EXECUTED_BY" configuration to track who executed
each results file.
Enable merge to control the adding of "TESTSERIES" configuration
as well as allow adding "EXECUTED_BY" configuration when needed.

Yeoh Ee Peng (3):
  resulttool/resultutils: Enable add extra configurations to results
  resulttool/store: Enable add EXECUTED_BY config to results
  resulttool/merge: Enable control TESTSERIES and extra configurations

 scripts/lib/resulttool/merge.py       | 20 ++++++++++++++------
 scripts/lib/resulttool/resultutils.py | 19 ++++++++++++-------
 scripts/lib/resulttool/store.py       |  7 ++++++-
 3 files changed, 32 insertions(+), 14 deletions(-)

--
2.7.4


--_005_9DDD2658D1FE414E99172D2DB1E4D043481ADBDBPGSMSX109garcor_
Content-Type: message/rfc822
Content-Disposition: attachment;
	creation-date="Thu, 04 Apr 2019 03:07:46 GMT";
	modification-date="Thu, 04 Apr 2019 03:07:46 GMT"

Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
 KMSMSX152.gar.corp.intel.com (172.21.73.87) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 4 Apr 2019 11:02:23 +0800
Received: from orsmga001.jf.intel.com (10.7.209.18) by
 ORSMSX102.amr.corp.intel.com (10.22.225.135) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 3 Apr 2019 20:02:08 -0700
Received: from andromeda02.png.intel.com ([10.221.183.11])  by
 orsmga001.jf.intel.com with ESMTP; 03 Apr 2019 20:01:40 -0700
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
CC: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
Subject: [PATCH 2/3] resulttool/store: Enable add EXECUTED_BY config to
 results
Thread-Topic: [PATCH 2/3] resulttool/store: Enable add EXECUTED_BY config to
 results
Thread-Index: AQHU6pLTmcO6HRlrhEuEtjbbMDEeFQ==
Date: Thu, 4 Apr 2019 02:30:36 +0000
Message-ID: <1554345037-72697-3-git-send-email-ee.peng.yeoh@intel.com>
References: <1554345037-72697-1-git-send-email-ee.peng.yeoh@intel.com>
In-Reply-To: <1554345037-72697-1-git-send-email-ee.peng.yeoh@intel.com>
Content-Language: en-US
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 10
X-MS-Exchange-Organization-AuthSource: ORSMSX102.amr.corp.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

Current results stored does not have information needed to trace who
executed the tests. Enable store to add EXECUTED_BY configuration
to results file in order to track who executed the tests.

Signed-off-by: Yeoh Ee Peng <ee.peng.yeoh@intel.com>
---
 scripts/lib/resulttool/store.py | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/scripts/lib/resulttool/store.py b/scripts/lib/resulttool/store=
.py
index 5e33716..7e89692 100644
--- a/scripts/lib/resulttool/store.py
+++ b/scripts/lib/resulttool/store.py
@@ -27,13 +27,16 @@ import oeqa.utils.gitarchive as gitarchive
 def store(args, logger):
     tempdir =3D tempfile.mkdtemp(prefix=3D'testresults.')
     try:
+        configs =3D resultutils.extra_configs.copy()
+        if args.executed_by:
+            configs['EXECUTED_BY'] =3D args.executed_by
         results =3D {}
         logger.info('Reading files from %s' % args.source)
         for root, dirs,  files in os.walk(args.source):
             for name in files:
                 f =3D os.path.join(root, name)
                 if name =3D=3D "testresults.json":
-                    resultutils.append_resultsdata(results, f)
+                    resultutils.append_resultsdata(results, f, configs=3Dc=
onfigs)
                 elif args.all:
                     dst =3D f.replace(args.source, tempdir + "/")
                     os.makedirs(os.path.dirname(dst), exist_ok=3DTrue)
@@ -96,4 +99,6 @@ def register_commands(subparsers):
                               help=3D'include all files, not just testresu=
lts.json files')
     parser_build.add_argument('-e', '--allow-empty', action=3D'store_true'=
,
                               help=3D'don\'t error if no results to store =
are found')
+    parser_build.add_argument('-x', '--executed-by', default=3D'',
+                              help=3D'add executed-by configuration to eac=
h result file')
=20
--=20
2.7.4


--_005_9DDD2658D1FE414E99172D2DB1E4D043481ADBDBPGSMSX109garcor_
Content-Type: message/rfc822
Content-Disposition: attachment;
	creation-date="Thu, 04 Apr 2019 03:07:46 GMT";
	modification-date="Thu, 04 Apr 2019 03:07:46 GMT"

Received: from fmsmsx105.amr.corp.intel.com (10.18.124.203) by
 KMSMSX154.gar.corp.intel.com (172.21.73.14) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 4 Apr 2019 11:02:12 +0800
Received: from orsmga001.jf.intel.com (10.7.209.18) by
 FMSMSX105.amr.corp.intel.com (10.18.124.212) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 3 Apr 2019 20:02:10 -0700
Received: from andromeda02.png.intel.com ([10.221.183.11])  by
 orsmga001.jf.intel.com with ESMTP; 03 Apr 2019 20:01:42 -0700
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
CC: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
Subject: [PATCH 3/3] resulttool/merge: Enable control TESTSERIES and extra
 configurations
Thread-Topic: [PATCH 3/3] resulttool/merge: Enable control TESTSERIES and
 extra configurations
Thread-Index: AQHU6pLNz3gIimDNt0aJbL6S+wB2BA==
Date: Thu, 4 Apr 2019 02:30:37 +0000
Message-ID: <1554345037-72697-4-git-send-email-ee.peng.yeoh@intel.com>
References: <1554345037-72697-1-git-send-email-ee.peng.yeoh@intel.com>
In-Reply-To: <1554345037-72697-1-git-send-email-ee.peng.yeoh@intel.com>
Content-Language: en-US
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 10
X-MS-Exchange-Organization-AuthSource: FMSMSX105.amr.corp.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

Current QA team need to merge test result files from multiple sources.
Adding TESTSERIES configuration too early will have negative
implication to report and regression. Enable control to add TESTSERIES
when needed. Also enable adding EXECUTED_BY configuration when
needed.

Signed-off-by: Yeoh Ee Peng <ee.peng.yeoh@intel.com>
---
 scripts/lib/resulttool/merge.py | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/scripts/lib/resulttool/merge.py b/scripts/lib/resulttool/merge=
.py
index 3e4b7a3..d40a72d 100644
--- a/scripts/lib/resulttool/merge.py
+++ b/scripts/lib/resulttool/merge.py
@@ -17,16 +17,21 @@ import json
 import resulttool.resultutils as resultutils
=20
 def merge(args, logger):
+    configs =3D {}
+    if not args.not_add_testseries:
+        configs =3D resultutils.extra_configs.copy()
+    if args.executed_by:
+        configs['EXECUTED_BY'] =3D args.executed_by
     if os.path.isdir(args.target_results):
-        results =3D resultutils.load_resultsdata(args.target_results, conf=
igmap=3Dresultutils.store_map)
-        resultutils.append_resultsdata(results, args.base_results, configm=
ap=3Dresultutils.store_map)
+        results =3D resultutils.load_resultsdata(args.target_results, conf=
igmap=3Dresultutils.store_map, configs=3Dconfigs)
+        resultutils.append_resultsdata(results, args.base_results, configm=
ap=3Dresultutils.store_map, configs=3Dconfigs)
         resultutils.save_resultsdata(results, args.target_results)
     else:
-        results =3D resultutils.load_resultsdata(args.base_results, config=
map=3Dresultutils.flatten_map)
+        results =3D resultutils.load_resultsdata(args.base_results, config=
map=3Dresultutils.flatten_map, configs=3Dconfigs)
         if os.path.exists(args.target_results):
-            resultutils.append_resultsdata(results, args.target_results, c=
onfigmap=3Dresultutils.flatten_map)
+            resultutils.append_resultsdata(results, args.target_results, c=
onfigmap=3Dresultutils.flatten_map, configs=3Dconfigs)
         resultutils.save_resultsdata(results, os.path.dirname(args.target_=
results), fn=3Dos.path.basename(args.target_results))
-
+    logger.info('Merged results to %s' % os.path.dirname(args.target_resul=
ts))
     return 0
=20
 def register_commands(subparsers):
@@ -39,4 +44,7 @@ def register_commands(subparsers):
                               help=3D'the results file/directory to import=
')
     parser_build.add_argument('target_results',
                               help=3D'the target file or directory to merg=
e the base_results with')
-
+    parser_build.add_argument('-t', '--not-add-testseries', action=3D'stor=
e_true',
+                              help=3D'do not add testseries configuration =
to results')
+    parser_build.add_argument('-x', '--executed-by', default=3D'',
+                              help=3D'add executed-by configuration to eac=
h result file')
--=20
2.7.4


--_005_9DDD2658D1FE414E99172D2DB1E4D043481ADBDBPGSMSX109garcor_
Content-Type: message/rfc822
Content-Disposition: attachment;
	creation-date="Thu, 04 Apr 2019 03:07:46 GMT";
	modification-date="Thu, 04 Apr 2019 03:07:46 GMT"

Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
 PGSMSX107.gar.corp.intel.com (10.221.44.105) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 4 Apr 2019 11:02:09 +0800
Received: from orsmga001.jf.intel.com (10.7.209.18) by
 ORSMSX105.amr.corp.intel.com (10.22.225.145) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 3 Apr 2019 20:02:06 -0700
Received: from andromeda02.png.intel.com ([10.221.183.11])  by
 orsmga001.jf.intel.com with ESMTP; 03 Apr 2019 20:01:38 -0700
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
CC: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
Subject: [PATCH 1/3] resulttool/resultutils: Enable add extra configurations
 to results
Thread-Topic: [PATCH 1/3] resulttool/resultutils: Enable add extra
 configurations to results
Thread-Index: AQHU6pLLzi3jxjXbSkiTyVumKkrJlQ==
Date: Thu, 4 Apr 2019 02:30:35 +0000
Message-ID: <1554345037-72697-2-git-send-email-ee.peng.yeoh@intel.com>
References: <1554345037-72697-1-git-send-email-ee.peng.yeoh@intel.com>
In-Reply-To: <1554345037-72697-1-git-send-email-ee.peng.yeoh@intel.com>
Content-Language: en-US
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 10
X-MS-Exchange-Organization-AuthSource: ORSMSX105.amr.corp.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

Current resultutils library always add "TESTSERIES" configuration
to results. Enhance this to allow control of adding "TESTSERIES"
configuration as well as allow adding extra configurations
when needed.

Signed-off-by: Yeoh Ee Peng <ee.peng.yeoh@intel.com>
---
 scripts/lib/resulttool/resultutils.py | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/scripts/lib/resulttool/resultutils.py b/scripts/lib/resulttool=
/resultutils.py
index 153f2b8..bfbd381 100644
--- a/scripts/lib/resulttool/resultutils.py
+++ b/scripts/lib/resulttool/resultutils.py
@@ -39,10 +39,12 @@ store_map =3D {
     "manual": ['TEST_TYPE', 'TEST_MODULE', 'MACHINE', 'IMAGE_BASENAME']
 }
=20
+extra_configs =3D {'TESTSERIES': ''}
+
 #
 # Load the json file and append the results data into the provided results=
 dict
 #
-def append_resultsdata(results, f, configmap=3Dstore_map):
+def append_resultsdata(results, f, configmap=3Dstore_map, configs=3Dextra_=
configs):
     if type(f) is str:
         with open(f, "r") as filedata:
             data =3D json.load(filedata)
@@ -51,12 +53,15 @@ def append_resultsdata(results, f, configmap=3Dstore_ma=
p):
     for res in data:
         if "configuration" not in data[res] or "result" not in data[res]:
             raise ValueError("Test results data without configuration or r=
esult section?")
-        if "TESTSERIES" not in data[res]["configuration"]:
-            data[res]["configuration"]["TESTSERIES"] =3D os.path.basename(=
os.path.dirname(f))
+        for config in configs:
+            if config =3D=3D "TESTSERIES" and "TESTSERIES" not in data[res=
]["configuration"]:
+                data[res]["configuration"]["TESTSERIES"] =3D os.path.basen=
ame(os.path.dirname(f))
+                continue
+            if config not in data[res]["configuration"]:
+                data[res]["configuration"][config] =3D configs[config]
         testtype =3D data[res]["configuration"].get("TEST_TYPE")
         if testtype not in configmap:
             raise ValueError("Unknown test type %s" % testtype)
-        configvars =3D configmap[testtype]
         testpath =3D "/".join(data[res]["configuration"].get(i) for i in c=
onfigmap[testtype])
         if testpath not in results:
             results[testpath] =3D {}
@@ -72,16 +77,16 @@ def append_resultsdata(results, f, configmap=3Dstore_ma=
p):
 # Walk a directory and find/load results data
 # or load directly from a file
 #
-def load_resultsdata(source, configmap=3Dstore_map):
+def load_resultsdata(source, configmap=3Dstore_map, configs=3Dextra_config=
s):
     results =3D {}
     if os.path.isfile(source):
-        append_resultsdata(results, source, configmap)
+        append_resultsdata(results, source, configmap, configs)
         return results
     for root, dirs, files in os.walk(source):
         for name in files:
             f =3D os.path.join(root, name)
             if name =3D=3D "testresults.json":
-                append_resultsdata(results, f, configmap)
+                append_resultsdata(results, f, configmap, configs)
     return results
=20
 def filter_resultsdata(results, resultid):
--=20
2.7.4


--_005_9DDD2658D1FE414E99172D2DB1E4D043481ADBDBPGSMSX109garcor_--
