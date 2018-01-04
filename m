Return-Path: <joshua.g.lock@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0405BE00DAA; Thu,  4 Jan 2018 07:41:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 907A9E00D90
	for <yocto@yoctoproject.org>; Thu,  4 Jan 2018 07:41:49 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Jan 2018 07:41:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,507,1508828400"; 
   d="scan'208";a="7853716"
Received: from jlock-mobl3.ger.corp.intel.com ([10.252.24.82])
	by orsmga007.jf.intel.com with ESMTP; 04 Jan 2018 07:41:44 -0800
To: pokybuild@debian8.yocto.io, yocto@yoctoproject.org
References: <1515080106.729068.49849@debian8.yocto.io>
From: Joshua Lock <joshua.g.lock@intel.com>
Message-ID: <ba873465-05db-49b8-89df-51a905caa9c0@intel.com>
Date: Thu, 4 Jan 2018 15:41:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <1515080106.729068.49849@debian8.yocto.io>
Cc: apoorv.sangal@intel.com, jose.perez.carranza@intel.com,
	otavio@ossystems.com.br, aaron.chun.yew.chan@intel.com,
	ee.peng.yeoh@intel.com
Subject: Re: Release Candidate Build for yocto-2.5_M1.rc2 now available.
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
X-List-Received-Date: Thu, 04 Jan 2018 15:41:50 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

VGhpcyBidWlsZCBoYWQgYSBjb3VwbGUgb2YgZmFpbHVyZXMsIEknbSBnb2luZyB0byBzcGluIGFu
b3RoZXIgcmMuCgpRQTogcGxlYXNlIGRvbid0IHRha2UgYW55IGFjdGlvbiB3aXRoIHRoaXMgYnVp
bGQuCgpKb3NodWEKCk9uIDA0LzAxLzE4IDE1OjM1LCBwb2t5YnVpbGRAZGViaWFuOC55b2N0by5p
byB3cm90ZToKPiAKPiBBIHJlbGVhc2UgY2FuZGlkYXRlIGJ1aWxkIGZvciB5b2N0by0yLjVfTTEu
cmMyIGlzIG5vdyBhdmFpbGFibGUgYXQ6Cj4gCj4gCj4gICAgICBodHRwczovL2F1dG9idWlsZGVy
LnlvY3RvLmlvL3B1Yi9yZWxlYXNlcy95b2N0by0yLjVfTTEucmMyCj4gCj4gCj4gUGxlYXNlIGJl
Z2luIFFBIG9uIHRoaXMgYnVpbGQgYXMgc29vbiBhcyBwb3NzaWJsZS4KPiAKPiAKPiBCdWlsZCBo
YXNoIGluZm9ybWF0aW9uOgo+IG1ldGEtaW50ZWwgOiAxNTgwOTEzNjc0YmM4NGM4ZTZjMTBjZjg1
NWRiZjM4ZDJlZThmM2QyCj4gbWV0YS1xdDQgOiBmMzEzZGJlZTJhYzNkNWZjYzk4MDE0MDc5NDdk
M2NiNmNmYjkwYjVkCj4gbWV0YS1taW5ndyA6IGEyYzVmYjgyZTU1OTVkNWJiNTZiNTc5YjdjOTMx
NDdjNGZiMDY1YTUKPiBtZXRhLXF0MyA6IGYzM2I3M2E5NTYzZjJkZmRmZDBlZTM3YjYxZDY1ZDkw
MTk3YTQ1NmYKPiBtZXRhLWdwbHYyIDogYTBmODcxNmQwNzMyNGU5NDVmMDQ2MmI4MmY5MzA5ZmEw
OTM0YWYxNwo+IHBva3kgOiA4ZjQzNmFmOTQ2NDhjOGMxNDI0NGI3MTE4M2U3ZGE1ZjZjZDA5ODEz
Cj4gCj4gCj4gVGhpcyBpcyBhbiBhdXRvbWF0ZWQgbWVzc2FnZSBmcm9tCj4gVGhlIFlvY3RvIFBy
b2plY3QgQXV0b2J1aWxkZXIKPiBHaXQ6IGdpdDovL2dpdC55b2N0b3Byb2plY3Qub3JnL3lvY3Rv
LWF1dG9idWlsZGVyCj4gRW1haWw6IGpvc2h1YS5nLmxvY2tAaW50ZWwuY29tCj4gCi0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQpJbnRlbCBDb3Jwb3JhdGlvbiAoVUspIExpbWl0ZWQKUmVnaXN0ZXJlZCBOby4gMTEzNDk0
NSAoRW5nbGFuZCkKUmVnaXN0ZXJlZCBPZmZpY2U6IFBpcGVycyBXYXksIFN3aW5kb24gU04zIDFS
SgpWQVQgTm86IDg2MCAyMTczIDQ3CgpUaGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1h
eSBjb250YWluIGNvbmZpZGVudGlhbCBtYXRlcmlhbCBmb3IKdGhlIHNvbGUgdXNlIG9mIHRoZSBp
bnRlbmRlZCByZWNpcGllbnQocykuIEFueSByZXZpZXcgb3IgZGlzdHJpYnV0aW9uCmJ5IG90aGVy
cyBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQKcmVj
aXBpZW50LCBwbGVhc2UgY29udGFjdCB0aGUgc2VuZGVyIGFuZCBkZWxldGUgYWxsIGNvcGllcy4K


