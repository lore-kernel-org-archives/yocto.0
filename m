Return-Path: <felix.lelchuk@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90973E00D79; Thu, 14 Dec 2017 05:08:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (felix.lelchuk[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Dec 2017 05:08:24 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8FB5E00D6D
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 05:08:24 -0800 (PST)
Received: from [100.84.192.149] ([109.44.2.85]) by mail.gmx.com (mrgmx001
	[212.227.17.190]) with ESMTPSA (Nemesis) id 0Ln8Tl-1exy2N3pzZ-00hKYV
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 14:03:20 +0100
Date: Thu, 14 Dec 2017 14:03:13 +0100
X-Priority: 3
Message-ID: <duc9vz4w0njk-8063wf-kvss1z-4ikhy45qrtn4-lmalcu4i18vb0560a-i6iq3w-jjmme2nj2iah-w6548dnwr4o0-wi5igi-kd09k0q536wcz0f5th-3wstwr-nwzz3b51lzak-gjejixew9qjbc50hza.1513256599585@email.android.com>
From: "felix.lelchuk@gmx.de" <felix.lelchuk@gmx.de>
To: yocto <yocto@yoctoproject.org>
MIME-Version: 1.0
X-Provags-ID: V03:K0:FdnyG5QEHi7BhdgAsIwr/Z6taATI1Sw68J9nh+RxYQvybd9O2ri
	q7qIt61Hp1CPub4Y1Ck4ZcAN9Bson9KLPGIYLmHKuYhQ5lQ6DxItc8v2lKfsptwYmbUKAfd
	J/BPziIIrf3aw22m3/vtv7Qn6gDmZtBxrLOr0D2Wxlia3ydeLJJ/aL81rCHw1NT2MuCwh1X
	/3E/y+KuHBb4XbFm6WGeA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Bw2TWiqHklQ=:NYTsTgslag/uYyew9bP4gO
	IGC9E8W2lXPo6RHMQetvCpy9PvwIJPPm+0ORJCHSgTt8C6J61JzwVBH9x4Nh7D+wnOIaG9P2X
	SZ436QIlN+HFmLI5Lf7SuksnHM7cHR0ac57lBX0om+gd0DM83V87nDMCzN4+iZhzwzPb0QjAv
	nChOSzwM6tsr4iD7Qd4YGv4egm4wnlbgwHCGBuW7LADZWLmXL+uqtEFQVCqwO/ft8F2HSCtMk
	K0zUbGtdn+7AKhOuq3WNunkLkZoH6i57575Ijvw8CM1ihf9x/uMHxPJoOkV2gqsADTVtUe3h2
	7l5xzqM8fnq+7V9X54IAYI8BbNk9Lw2S/muaMTzk0xfynsTYRzY5pTFwz+Kh9hLaIM/guZDag
	ozATYc2hVh2JLb+oGacCztlE1bFDSSBF/JiiL6uoCxAaqoUQ+rIDVEscq22nwp/A1P3gs6pzp
	FXnGt21wbCwG1DF0Whss0aah3xfzfzPz3c5b5JOUhAFj//L0zIG9T8YbY8AJ0OF+DvlGXd51W
	ncEF1dbh4zuD4raV6JpyIvoa9XucC4eN8rxk6MtXCLMpn+3OLn32QZITNFWi6wyJCeCR5RSBm
	PuxPn3Oh8uBoKjXf0zCuqVS/KqUYFDQj0RCs3HGX6++JS9ES7DobwFZt8zX70PXSLkF5QTD7o
	7Z32lWIyFNWvrdEKzOfQO7l3MkOOqCwsxh7ajEgT0JmV6fB5Mj38PJpO8atX4y6if152I5EGU
	s+JX5P2/0Es07G9InJzUkZt0z/kUmihrjQpYVev33wjz8RO824S/lM0J0fkjY3Z76S+9RkYYy
	zJutQs2y0pDFoieljExFTbYYf8d9XJ0jPKe7LnDBx7t/NMNuwI=
Subject: Ownership issues in rootfs but not in rpms
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
X-List-Received-Date: Thu, 14 Dec 2017 13:08:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

SGkgZXZlcnlvbmUsCgpJJ20gdHJ5aW5nIHRvIHNldCB1cCBteSBKZXRocm8gYmFzZWQgRGlzdHJv
IGluIHN1Y2ggd2F5IHRoYXQgYSBkYWVtb24gZ2V0cyBpdHMgb3duIHVzZXIgYW5kIGdyb3VwIHRv
IHJ1biBhcy4KClRoZSB1c2VyIGFuZCBncm91cCBhcmUgYm90aCBjcmVhdGVkIHByb3Blcmx5LgpJ
IGFsc28gaGF2ZSB0aGUgZmlsZXMgYW5kIGRpcmVjdG9yaWVzIGNob3duZWQgaW4gdGhlIHNhbWUg
bWFubmVyIHVzZXJhZGQtZXhhbXBsZSBkb2VzIGluIGRvX2luc3RhbGwuClRoZSByb290ZnMgaG93
ZXZlciBhbHdheXMgY29udGFpbnMgcm9vdDpyb290IG93bmVkIGZpbGVzL2RpcnMuIExvb2tpbmcg
aW50byB0aGUgUlBNIHBhY2thZ2VzIGhvd2V2ZXIsIG93bmVyc2hpcCBpcyB3ZWxsIGFzIGV4cGVj
dGVkLgoKTm90ZSB0aGF0IEkgbWFudWFsbHkgYWRkZWQgdXNlcmFkZC1leGFtcGxlIHRvIG15IGlt
YWdlIHdpdGggdGhlIHNhbWUgcmVzdWx0cy4KCklzIHRoZXJlIGEgcmVhc29uIHlvdSBjYW4gdGhp
bmsgb2YgdGhhdCBjYXVzZXMgdGhpcz8gQSBrbm93biBidWc/Ckkgd291bGQgbGlrZSB0byBrbm93
IGhvdyB0aGUgb3duZXJzaGlwIGFuZCBwZXJtaXNzaW9ucyBhcmUgY29uc2lkZXJlZCB3aGVuIHRo
ZSBpbWFnZSBpcyBjcmVhdGVkIChhcmUgdGhleSB2aXJ0dWFsIGF0IGJ1aWxkIHRpbWUgZHVlIHRv
IHBldWRvIGFuZCBkbyB0aGV5IGJlY29tZSBhY3R1YWwgd2hlbiB0aGUgaW1hZ2UgaXMgY3JlYXRl
ZD8pCklmIHRoaXMgaXMgZG9jdW1lbnRlZCBzb21ld2hlcmUgSSdkIHJlYWxseSBhcHByZWNpYXRl
IGEgbGluay4KClRoYW5rIHlvdSEKClJlZ2FyZHMKCkZlbGl4CgoKVm9uIG1laW5lbSBIdWF3ZWkt
TW9iaWx0ZWxlZm9uIGdlc2VuZGV0


