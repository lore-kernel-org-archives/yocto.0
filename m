Return-Path: <harshjain32@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24A8DE00873; Tue, 23 Sep 2014 11:14:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (harshjain32[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46835E0086E
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 11:14:02 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id lj1so6778366pab.18
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 11:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:subject:from:to:cc:mime-version:content-type
	:content-transfer-encoding;
	bh=PFCt33Dqkk2lVLgC6RimwjZJB24iEGEpJZQmJQPaHO8=;
	b=e/iPvYdEwz46TerzqlGZthnpCEmmiwBn7LiImh5wbjqz4vSaeoo9NvFd3tJ6InTZht
	jay1LLTuUjb2XmAnhguH8x6bhD1wAKiBqBG6JVgPpqeYhdAPlh4qdowtBh4UTH82XPzq
	GGZcHTxtfWGSgSYLQMeE+D1O41ZDBMZvyHrj+ag3KrO1uSG0BHMJGvhBOrp50bDHsi0O
	G1azGcC/1nluCqvXcubLPBFe6kMlPRkIfmolzF6/yLLcTZGsYxsKhlY1Ap+SrAaM+BD2
	sYd17uYYNkDt8ncxHVe7Ua/VJ3wwuRP686w5lTHKW8Wm2MR6rJIJPtuBvHpliUstt9pV
	a/UA==
X-Received: by 10.68.171.33 with SMTP id ar1mr1854895pbc.148.1411496042105;
	Tue, 23 Sep 2014 11:14:02 -0700 (PDT)
Received: from [10.215.32.213] ([1.39.24.235]) by mx.google.com with ESMTPSA id
	ip3sm12650497pbc.58.2014.09.23.11.13.59 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 23 Sep 2014 11:14:01 -0700 (PDT)
Message-ID: <5421b869.e3c4440a.217d.5311@mx.google.com>
Date: Tue, 23 Sep 2014 23:43:55 +0530
From: harsh jain <harshjain32@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Update recipe file to avoid conflict with other dependant packages
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
X-List-Received-Date: Tue, 23 Sep 2014 18:14:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

VGhhbmtzIEkgZ290IHRoZSB2YXJpYWJsZSBpbiBjb25naWd1cmF0aW9uIGZpbGUKCk9uIDIyIFNl
cCAyMDE0IDE1OjAyLCAiQnVydG9uLCBSb3NzIiA8cm9zcy5idXJ0b25AaW50ZWwuY29tPiB3cm90
ZToKPgo+IE9uIDIyIFNlcHRlbWJlciAyMDE0IDA3OjUyLCBoYXJzaCBqYWluIDxoYXJzaGphaW4z
MkBnbWFpbC5jb20+IHdyb3RlOiAKPiA+IEdpdmVuIGJlbG93IGxvZ3MgbWVzc2FnZSB3aGVuIEkg
dHJpZWQgd2l0aCBweXRob24gMi43LjQgCj4gPiAKPiA+IE5PVEU6IFJlc29sdmluZyBhbnkgbWlz
c2luZyB0YXNrIHF1ZXVlIGRlcGVuZGVuY2llcyAKPiA+IE5PVEU6IHByZWZlcnJlZCB2ZXJzaW9u
IDIuNy4zIG9mIHB5dGhvbiBub3QgYXZhaWxhYmxlIChmb3IgaXRlbSBweXRob24tY29yZSkgCj4g
PiBOT1RFOiB2ZXJzaW9ucyBvZiBweXRob24gYXZhaWxhYmxlOiAyLjcuNCAKPiA+IE5PVEU6IHBy
ZWZlcnJlZCB2ZXJzaW9uIDIuNy4zIG9mIHB5dGhvbiBub3QgYXZhaWxhYmxlIChmb3IgaXRlbSBw
eXRob24tMnRvMykgCj4gPiBOT1RFOiB2ZXJzaW9ucyBvZiBweXRob24gYXZhaWxhYmxlOiAyLjcu
NCAKPiA+IE5PVEU6IHByZWZlcnJlZCB2ZXJzaW9uIDIuNy4zIG9mIHB5dGhvbiBub3QgYXZhaWxh
YmxlIChmb3IgaXRlbSBweXRob24tYXVkaW8pIAo+ID4gTk9URTogdmVyc2lvbnMgb2YgcHl0aG9u
IGF2YWlsYWJsZTogMi43LjQgCj4gPiBOT1RFOiBwcmVmZXJyZWQgdmVyc2lvbiAyLjcuMyBvZiBw
eXRob24gbm90IGF2YWlsYWJsZSAoZm9yIGl0ZW0gcHl0aG9uLWJzZGRiKSAKPiA+IE5PVEU6IHZl
cnNpb25zIG9mIHB5dGhvbiBhdmFpbGFibGU6IDIuNy40IAo+ID4gTk9URTogcHJlZmVycmVkIHZl
cnNpb24gMi43LjMgb2YgcHl0aG9uIG5vdCBhdmFpbGFibGUgKGZvciBpdGVtIHB5dGhvbi1jb2Rl
Y3MpIAo+ID4gTk9URTogdmVyc2lvbnMgb2YgcHl0aG9uIGF2YWlsYWJsZTogMi43LjQgCj4gPiBO
T1RFOiBwcmVmZXJyZWQgdmVyc2lvbiAyLjcuMyBvZiBweXRob24gbm90IGF2YWlsYWJsZSAoZm9y
IGl0ZW0gcHl0aG9uLWNvbXBpbGUpIAo+ID4gTk9URTogdmVyc2lvbnMgb2YgcHl0aG9uIGF2YWls
YWJsZTogMi43LjQgCj4gPiBOT1RFOiBwcmVmZXJyZWQgdmVyc2lvbiAyLjcuMyBvZiBweXRob24g
bm90IGF2YWlsYWJsZSAoZm9yIGl0ZW0gcHl0aG9uLWNvbXBpbGVyKSAKPiA+IE5PVEU6IHZlcnNp
b25zIG9mIHB5dGhvbiBhdmFpbGFibGU6IDIuNy40IAo+ID4gTk9URTogcHJlZmVycmVkIHZlcnNp
b24gMi43LjMgb2YgcHl0aG9uIG5vdCBhdmFpbGFibGUgKGZvciBpdGVtIAo+ID4gcGx5dGhvbi1j
b21wcmVzc2lvbikgCj4gPiBOT1RFOiB2ZXJzaW9ucyBvZiBweXRob24gYXZhaWxhYmxlOiAyLjcu
NCAKPgo+IFlvdXIgZGlzdHJvIGNvbmZpZ3VyYXRpb24gaGFzIGEgcHJlZmVycmVkIHByb3ZpZGVy
IGZvciBQeXRob24sIGFuZCAKPiBpdCdzIHNldCB0byAyLjcuMy7CoCBJIGNhbid0IHNlZW0gdG8g
c2VlIGFueXRoaW5nIGluIG9lLWNvcmUgdGhhdCBzZXRzIAo+IHRoaXMsIHNvIGl0J3MgcG9zc2li
bHkgeW91ciBvd24gZGlzdHJpYnV0aW9uIChvciBhbm90aGVyIGxheWVyKS7CoCBHcmVwIAo+IHlv
dXIgbGF5ZXJzIG9yIHVzZSBiaXRiYWtlIC1lIHB5dGhvbiB0byBmaW5kIG91dCB3aGVyZSB0aGUg
Cj4gUFJFRkVSUkVEX1BST1ZJREVSIGlzIGJlaW5nIHNldCwgYW5kIGNoYW5nZSBpdC4gCj4KPiBS
b3NzIAo=


