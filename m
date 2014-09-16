Return-Path: <Neil.Wu@Emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA533E00846; Mon, 15 Sep 2014 19:04:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [144.191.128.190 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from USSTLZ-PINFEZ06.extemr.org (usstlz-pinfez06.extemr.org
	[144.191.128.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12165E0078A
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 19:04:45 -0700 (PDT)
Received: from USSTLZ-PMSG001.emrsn.org (10.16.72.26) by
	USSTLZ-PINFEZ06.extemr.org (10.16.8.79) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Tue, 16 Sep 2014 02:04:43 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.186]) by
	USSTLZ-PMSG001.emrsn.org ([169.254.1.153]) with mapi id 14.03.0158.001;
	Tue, 16 Sep 2014 02:04:44 +0000
From: <Neil.Wu@Emerson.com>
To: <ross.burton@intel.com>
Thread-Topic: [yocto] create_image.tar fail
Thread-Index: AQHP0M2IndNYhRkOn0KFNtCkIN7eppwDALuA
Date: Tue, 16 Sep 2014 02:04:42 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C85215B7FFEF@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C85215B7EF55@USSTLZ-PMSG012.emrsn.org>
	<CAJTo0LZUpwsx7T_c6MBEc-CnhfAJq5oYRPVtYjNa+C46Rs-3RQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZUpwsx7T_c6MBEc-CnhfAJq5oYRPVtYjNa+C46Rs-3RQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: create_image.tar fail
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
X-List-Received-Date: Tue, 16 Sep 2014 02:04:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQnVydG9uIDoNCglZb3UgYXJlIHNvIGdyZWF0ISBUaGFuayB5b3UgdmVyeSBtdWNoIC5NeSBw
cm9ibGVtIGhhcyByZXNvbHZlZC4gDQoJQWx0aG91Z2ggSSBkb24ndCBpbnN0YWxsIHRoZSBidXN5
Ym94LCBidXQgSSAgZmluZCB0aGUgYnVzeWJveC1zdGF0aWMgYW5kIHVidW50dS1zdGFuZGFyZCBp
biBteSBzeXN0ZW0uIEFmZXIgcmVtb3ZlIHRoZW0gLCBjb21waWxpbmcgaXMgc3VjY2Vzc2Z1bC4N
CiAgICAgIA0KCWJ1c3lib3gtc3RhdGljOiAvdXNyL3NoYXJlL2RvYy9idXN5Ym94LXN0YXRpYy9l
eGFtcGxlcy91ZGhjcC9zYW1wbGUucmVuZXcNCiAgICAgIGJ1c3lib3gtc3RhdGljOiAvdXNyL3No
YXJlL2RvYy9idXN5Ym94LXN0YXRpYy9leGFtcGxlcy9tZGV2X2ZhdC5jb25mDQogICAgICBidXN5
Ym94LXN0YXRpYzogL3Vzci9zaGFyZS9kb2MvYnVzeWJveC1zdGF0aWMvZXhhbXBsZXMvbWRldi5j
b25mDQogICAgICBidXN5Ym94LXN0YXRpYzogL3Vzci9zaGFyZS9kb2MvYnVzeWJveC1zdGF0aWMv
ZXhhbXBsZXMNCiAgICAgIGJ1c3lib3gtc3RhdGljOiAvdXNyL3NoYXJlL2RvYy9idXN5Ym94LXN0
YXRpYy9leGFtcGxlcy91ZGhjcC9zYW1wbGUubmFrDQoNCiAgICAgIEZpbmFsbHksIHNpbmNlcmVs
eSB0aGFua3MgZm9yIHlvdXIgaGVscC4NCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9t
OiBCdXJ0b24sIFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dIA0KU2VudDogTW9u
ZGF5LCBTZXB0ZW1iZXIgMTUsIDIwMTQgNjoxMiBQTQ0KVG86IFd1LCBOZWlsIFtDTElNQVRFL1JT
L0NOXQ0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIGNy
ZWF0ZV9pbWFnZS50YXIgZmFpbA0KDQpPbiAxNSBTZXB0ZW1iZXIgMjAxNCAwOTo0OCwgIDxOZWls
Lld1QGVtZXJzb24uY29tPiB3cm90ZToNCj4gQnVzeUJveCB2MS4yMS4xIChVYnVudHUgMToxLjIx
LjAtMXVidW50dTEpIG11bHRpLWNhbGwgYmluYXJ5Lg0KDQpJdHMgdXNpbmcgYnVzeWJveCdzIHRh
ciwgZG9uJ3QgZG8gdGhpcy4gIEVpdGhlciB1bmluc3RhbGwgYnVzeWJveCwgb3IgY2hhbmdlIHRo
ZSBhbHRlcm5hdGl2ZXMgc28gdGhhdCAvdXNyL2Jpbi90YXIgaXMgR05VIHRhciwgbm90IGJ1c3li
b3ggdGFyLg0KDQpSb3NzDQo=

