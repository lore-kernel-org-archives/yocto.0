Return-Path: <joshua.g.lock@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A089E00CF9; Fri, 22 Sep 2017 02:06:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D5ADE00CF2
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 02:06:19 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 22 Sep 2017 02:06:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,427,1500966000"; d="scan'208";a="138240548"
Received: from jlock-mobl3.ger.corp.intel.com ([10.252.25.109])
	by orsmga002.jf.intel.com with ESMTP; 22 Sep 2017 02:06:15 -0700
To: "Cruz, Libertad" <libertad.cruz@intel.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <58D9E2E50A021A45AD740492365FCDC532A26323@fmsmsx107.amr.corp.intel.com>
From: Joshua Lock <joshua.g.lock@intel.com>
Message-ID: <5151a135-a614-a4ce-13ff-8269a63b8b47@intel.com>
Date: Fri, 22 Sep 2017 10:06:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <58D9E2E50A021A45AD740492365FCDC532A26323@fmsmsx107.amr.corp.intel.com>
Cc: "Cruz Alcaraz, Juan M" <juan.m.cruz.alcaraz@intel.com>, "Jordan,
	Robin L" <robin.l.jordan@intel.com>
Subject: Re: QA cycle report for 2.3.2 rc1
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
X-List-Received-Date: Fri, 22 Sep 2017 09:06:20 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

CgpPbiAyMi8wOS8xNyAwMDo0MiwgQ3J1eiwgTGliZXJ0YWQgd3JvdGU6Cj4gPT09PT09PSBRQS1I
aW50cz09PT09PT09Cj4gCj4gUUEgbmVlZHMgaGVscCBmcm9tIEpvc2h1YSBhbmQgdGhlIG9mZmlj
aWFsIEFCIHNvIHRoYXQgd2UgbWF5IHJ1biB0aGUgCj4gVWJ1bnR1IDE3LjA0IGRpc3RybyB0ZXN0
aW5nLCBpZiB5b3UgaGF2ZSBhbiBVYnVudHUgMTcuMDQgd29ya2VyLiBXaXRoIAo+IHRoZSBvYmpl
Y3RpdmUgdGhhdCB0aGUgcmVwb3J0IHdvdWxkIGJlIGNvbXBsZXRlIGJlZm9yZSBDQ0Igc2Vzc2lv
biAKPiBmaW5pc2hlcyBhbmFseXppbmcgdGhlIHJlc3VsdHMgZnJvbSB0aGlzIHJlbGVhc2UuCgpB
cG9sb2dpZXMsIEkgbWlzc2VkIHRoaXMgZGV0YWlsICh0aGFua3MgUmljaGFyZCBmb3IgcG9pbnRp
bmcgaXQgb3V0KS4gCkkndmUgdHJpZ2dlcmVkIGFuIG5pZ2h0bHktb2Utc2VsZnRlc3Qgb24gdWJ1
bnR1MTcwNDoKCmh0dHBzOi8vYXV0b2J1aWxkZXIueW9jdG8uaW8vYnVpbGRlcnMvbmlnaHRseS1v
ZS1zZWxmdGVzdC9idWlsZHMvNTM2CgpKb3NodWEKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkludGVsIENvcnBvcmF0
aW9uIChVSykgTGltaXRlZApSZWdpc3RlcmVkIE5vLiAxMTM0OTQ1IChFbmdsYW5kKQpSZWdpc3Rl
cmVkIE9mZmljZTogUGlwZXJzIFdheSwgU3dpbmRvbiBTTjMgMVJKClZBVCBObzogODYwIDIxNzMg
NDcKClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50
aWFsIG1hdGVyaWFsIGZvcgp0aGUgc29sZSB1c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChz
KS4gQW55IHJldmlldyBvciBkaXN0cmlidXRpb24KYnkgb3RoZXJzIGlzIHN0cmljdGx5IHByb2hp
Yml0ZWQuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZApyZWNpcGllbnQsIHBsZWFzZSBjb250
YWN0IHRoZSBzZW5kZXIgYW5kIGRlbGV0ZSBhbGwgY29waWVzLgo=


