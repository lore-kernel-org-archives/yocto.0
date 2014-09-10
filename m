Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0EB1E00566; Tue,  9 Sep 2014 22:08:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A2BEE0054C
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 22:08:03 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by orsmga102.jf.intel.com with ESMTP; 09 Sep 2014 22:01:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,496,1406617200"; d="scan'208";a="476517156"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by azsmga001.ch.intel.com with ESMTP; 09 Sep 2014 22:07:48 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.117]) by
	ORSMSX109.amr.corp.intel.com ([169.254.2.80]) with mapi id
	14.03.0195.001; Tue, 9 Sep 2014 22:07:48 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Thread-Topic: [yocto] EXTERNALSRC
Thread-Index: AQHPzHhrZT9KgjMMA0+gRIaHv8YWN5v6McWA//+agnCAAHjFAP//iw9A
Date: Wed, 10 Sep 2014 05:07:48 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FE9C4D@ORSMSX101.amr.corp.intel.com>
References: <CAMSG=xW13=_vydq4ytYT_G2FTz+RH9EoTYpQqf667QO1mb_=pg@mail.gmail.com>
	<CAP71WjzYhpLsxEYHb+4OvfHYAMx7X+1oUMzX=3ySeH_M91==RA@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FE8C08@ORSMSX101.amr.corp.intel.com>
	<CAP71Wjx8Ck2hzrUE-XnDiBzkxoewPTT8pXaUKkoFh4EVgYv0Kg@mail.gmail.com>
In-Reply-To: <CAP71Wjx8Ck2hzrUE-XnDiBzkxoewPTT8pXaUKkoFh4EVgYv0Kg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Nemicolopterus Crypticus <ncrypticus@gmail.com>
Subject: Re: EXTERNALSRC
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
X-List-Received-Date: Wed, 10 Sep 2014 05:08:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBzaG91bGQgaGF2ZSB1c2VkIGEgZm9ybWF0dGluZyB0YWcgaW4gdGhlIG1hbnVhbCBzb3VyY2Ug
dG8gaW5kaWNhdGUgIm15cmVjaXBlIiBhcyB1c2VyIGlucHV0LiAgV2l0aG91dCB0aGUgZm9ybWF0
dGluZywgaXQgaW1wbGllcyB0aGF0ICJteXJlY2lwZSIgaXMgbGl0ZXJhbCB3aGVuIGl0IGlzIG5v
dC4gIEkgZ3Vlc3MgdGhlIGV4YW1wbGUgaXMgbm90IHRlY2huaWNhbGx5IHdyb25nIGlmIHRoZSBy
ZWNpcGUgaXMgYWN0dWFsbHkgbmFtZWQgIm15cmVjaXBlIi4gIEkgbGlrZSB5b3VyIGFkZGVkIGlu
Zm9ybWF0aW9uIGFib3V0IHNldHRpbmcgaXQgaW4gdGhlIHJlY2lwZS4gIEkgd2lsbCBhZGQgdGhh
dCBhcyB3ZWxsLiANCg0KU2NvdHQNCg0KPi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJv
bTogTmljb2xhcyBEZWNoZXNuZSBbbWFpbHRvOm5pY29sYXMuZGVjaGVzbmVAbGluYXJvLm9yZ10N
Cj5TZW50OiBUdWVzZGF5LCBTZXB0ZW1iZXIgMDksIDIwMTQgMTA6MDIgUE0NCj5UbzogUmlmZW5i
YXJrLCBTY290dCBNDQo+Q2M6IE5lbWljb2xvcHRlcnVzIENyeXB0aWN1czsgeW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZw0KPlN1YmplY3Q6IFJlOiBbeW9jdG9dIEVYVEVSTkFMU1JDDQo+DQo+T24gV2Vk
LCBTZXAgMTAsIDIwMTQgYXQgNjo1MSBBTSwgUmlmZW5iYXJrLCBTY290dCBNDQo+PHNjb3R0Lm0u
cmlmZW5iYXJrQGludGVsLmNvbT4gd3JvdGU6DQo+PiBUaGlzIGlzIGFuIGVycm9yIGluIHRoZSBt
YW51YWwuICBJIGhhdmUgYmVlbiBmb3JtYXR0aW5nIHRoZSB1c2VyLXN1cHBsaWVkDQo+cG9ydGlv
bnMgb2YgZXhhbXBsZXMgbm93IGluIGFuIGl0YWxpc2l6ZWQgZm9udC4gIFRoaXMgb25lIG5lZWRz
IHRvIGJlIGZpeGVkLg0KPg0KPmhtbS4gaSBkb24ndCBzZWVtIHRvIHNlZSB3aGF0J3Mgd3Jvbmcg
aW4gdGhlIHVzZXIgbWFudWFsLi4NCj4NCj5hbHNvLCB0aGUgX3BuLWJhbmFuYSBpcyBuZWVkZWQg
YmVjYXVzZSB0aGUgY2hhbmdlIGlzIGRvbmUgaW4gbG9jYWwuY29uZi4gaXQgaXMNCj5wb3NzaWJs
ZSB0byBzZXQgRVhURVJOQUxTUkMgdmFyaWFibGUgaW4gdGhlIHJlY2lwZSBkaXJlY3RseSAob3Ig
aW4gYSAuYmJhcHBlbmQNCj5maWxlKSwgaW4gd2hpY2ggY2FzZSBpdCBjYW4gc2ltcGx5IGJlOg0K
PkVYVEVSTkFMU1JDID0gIjxwYXRoPiINCj5FWFRFUk5BTFNSQ19CVUlMRCA9ICI8cGF0aD4iDQo+
DQo+bWF5YmUgaXMgdGhhdCB3b3J0aCBhZGRpbmcgdG8gdGhlIG1hbnVhbC4NCg==

