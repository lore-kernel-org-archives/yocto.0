Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EAC7E00DEE; Tue, 29 Sep 2015 02:04:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E65B4E006F1
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 02:04:57 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 29 Sep 2015 02:04:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,607,1437462000"; d="scan'208";a="654204737"
Received: from gegelmee-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.7.91])
	by orsmga003.jf.intel.com with ESMTP; 29 Sep 2015 02:04:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rudolf J Streif <rudolf.streif@gmail.com>
Date: Tue, 29 Sep 2015 10:04:54 +0100
Message-ID: <1669590.fvIgRMTgGi@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.6-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <7720054.5AybCaxdE3@rjs-mbpro.streifs.net>
References: <5603f9ce.e9d1440a.dc3ac.43adSMTPIN_ADDED_BROKEN@mx.google.com>
	<CAF3SDA7LLcZP5D8Tr7=fZ+xsBK2DbW8GtKVi4SVng-dPnuog2g@mail.gmail.com>
	<7720054.5AybCaxdE3@rjs-mbpro.streifs.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Setting root password
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
X-List-Received-Date: Tue, 29 Sep 2015 09:04:59 -0000
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="iso-8859-1"

T24gVGh1cnNkYXkgMjQgU2VwdGVtYmVyIDIwMTUgMDg6MTc6MDIgUnVkb2xmIEogU3RyZWlmIHdy
b3RlOgo+IE9uIFRodXJzZGF5LCBTZXB0ZW1iZXIgMjQsIDIwMTUgMTE6MjA6MzcgQU0gRGFuaWVs
LiB3cm90ZToKPiA+IFN0aWxsLCBJIHRoaW5rIGlzIGEgZ29vZCBpZGVpYSB0byB1bmRlcnN0YW5k
IHdoYXQgaXMgZ29pbmcgd3Jvbmcgd2l0aAo+ID4gRVhUUkFfVVNFUlNfUEFSQU1TLCBvdGhlciB1
c2VycyBtYXkgaGF2aW5nIHRoZSBzYW1lIHByb2JsZW0uCj4gCj4gRVhUUkFfVVNFUlNfUEFSQU1T
IHdvcmtzIGZvciBtZSBhbGwgdGhlIHRpbWUuIFRoZSBzdGFuemEgaXMgd2hhdCBJIGFtIHVzaW5n
Cj4gaW4gbXkgaW1hZ2UgcmVjaXBlczoKPiAKPiBFWFRSQV9VU0VSU19QQVJBTVMgPSAiXGdyb3Vw
YWRkIGRldmVsb3BlcnM7IFx1c2VyYWRkIC1wIGBvcGVuc3NsIHBhc3N3ZAo+ICR7REVWX1BBU1NX
T1JEfWAgZGV2ZWxvcGVyOyBcdXNlcmFkZCAtZyBkZXZlbG9wZXJzIGRldmVsb3BlcjsgXAo+IHVz
ZXJtb2QgLXAgYG9wZW5zc2wgcGFzc3dkICR7Uk9PVF9QQVNTV09SRH1gIHJvb3Q7IFwKPiAiCj4g
Cj4gSWYgdGhpcyBpcyBhbiBhY2N1cmF0ZSBjb3B5IG9mIHdoYXQgeW91IGFyZSB1c2luZwAgKGZy
b20geW91IGZpcnN0IGVtYWlsKQo+IAo+ID4gRVhUUkFfVVNFUlNfUEFSQU1TID0gInVzZXJtb2Qg
LVAgPGVuY3J5cHRlZF9wYXNzd29yZD4gcm9vdDsiCj4gCj4gdGhlbiB0aGUgaXNzdWUgcHJvYmFi
bHkgaXMgdGhlIGNhcGl0YWwgLVAuIEl0IHNob3VsZCBiZSBsb3dlcmNhc2UuCgpGWUkgdGhlIC1Q
IG9wdGlvbiBpcyBhIGN1c3RvbSBvcHRpb24gdGhhdCB3ZSBoYXZlIHBhdGNoZWQgaW50byB0aGUg
bmF0aXZlIAp2ZXJzaW9ucyBvZiB0aGUgdXNlcmFkZC91c2VybW9kIGNvbW1hbmRzIHRoYXQgd2Ug
YnVpbGQuIEl0J3MgdGhlIG9ubHkgd2F5IHlvdSAKY2FuIHNldCBhIHBhc3N3b3JkIGluIHBsYWlu
IHRleHQgcmF0aGVyIHRoYW4gaGF2aW5nIHRvIGVuY3J5cHQgaXQgZmlyc3QuCgpDaGVlcnMsClBh
dWwKCi0tIAoKUGF1bCBFZ2dsZXRvbgpJbnRlbCBPcGVuIFNvdXJjZSBUZWNobm9sb2d5IENlbnRy
ZQ==


