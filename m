Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E669E00BAB; Tue, 18 Jul 2017 06:43:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.171 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00CC0E00B67
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 06:43:55 -0700 (PDT)
Received: by mail-ua0-f171.google.com with SMTP id z22so23642850uah.1
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 06:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=fcXl9FyzKhf91faQsRfHWlntr+Ky5NJ/zBOl6e7e584=;
	b=kLItgzDtg55ZQx8q3nQ3RFsE3EEx5DmK6WGbg9/mN3NDIbfjWM8ASAV7CDxJUUDk/j
	I9cWKrQSxe3gjpZFc/Zb5dSQUQbqTXtfKI2m0VJ1qi322CUSpvCj1rkfP6dWxzNisvK/
	9iYdmGm3o28pbhKsg+8edwczhQQm8mjl08n70uHxGhaFOPTtBGsTAJK0sJyajl6nqEDl
	kko8yz+3UKlEFwF/XSktRdCaL4J4bYmUWrTj4HNWxgVm+QjWBZK8ndl5ZLh+rc5cJ3ck
	hVSwpN17LIA4xNsNNqbEU8r+AsT0AILVjtIyo8Z1AXGKxFrdnOYOd6F74HH5vrWdwIQ1
	6LHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=fcXl9FyzKhf91faQsRfHWlntr+Ky5NJ/zBOl6e7e584=;
	b=J1p461Ai1F1epR7DDy4em2eqEx70S8yiH5q6DQNzbGwNsLNQPA1dKIoaXJRBgp3fIk
	VzWSqWAPCibmeOko59jBq8V2pd0KvWMT82GWUuz90iTXTanj0OBzf/35N53bfI+nqh2m
	6XkKxZka3P/DOEziOHA5o9ER1a+HxW2Ykn7orfhq6ddZett66CHDyU23J/lBsN5+G6It
	KC6IZ9bBF6hw/T5L3QdtbNEgIb2ROagKGBnlwwLgnLqy7NIvN+z2zlc+uvIFL8JUld52
	Y5ujoxQpwrA+fl63U8fieDa0GV5vbI6LPYLS6yZpD/apdqtPx0vy04I4w/QOw1Vy1r4r
	Aicw==
X-Gm-Message-State: AIVw113/a8pV6Oc1xA1i5Au0YwMhclYVyj8rs1wkwJYlQPvZ1rWJCO1B
	GgSjA/PvEBpHSiW3QXcPcwfTd+U5oIz6dv8=
X-Received: by 10.31.63.79 with SMTP id m76mr799828vka.79.1500385434803; Tue,
	18 Jul 2017 06:43:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.101 with HTTP; Tue, 18 Jul 2017 06:43:54 -0700 (PDT)
From: Paulo Neves <ptsneves@gmail.com>
Date: Tue, 18 Jul 2017 15:43:54 +0200
Message-ID: <CAJO0J4hEcDr36TMJtBO+nb8cFMubct7yhUuu4HDjEQyQntvuQw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: [PATCH] fetch2/__init_.py removed bb.error which caused exit code 1
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
X-List-Received-Date: Tue, 18 Jul 2017 13:43:56 -0000
X-Groupsio-MsgNum: 37074
Content-Type: multipart/mixed; boundary="001a114dbbccde4189055497b479"

--001a114dbbccde4189055497b479
Content-Type: text/plain; charset="UTF-8"

http://lists.openembedded.org/pipermail/openembedded-core/2012-September/069448.html

Workaround to avoid exit 1 status.

    The reason it happens is that there are 2 missions
    the state cache uses the normal fetcher to get
    its's stuff and it is acceptable for it to fail.
    On the other hand it is not acceptable for fetch
    to fail.

    In it's code the state cache code catches the exception that the
    fetcher launches and discards. The problem
    is that before this exception is caught it prints
    a bb.error and bb.error prints something and
    continues on like no problem happened.  but marks
    the exit code as 1 which is a disaster.

--001a114dbbccde4189055497b479
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-Workaround-to-avoid-exit-1-status.patch"
Content-Disposition: attachment; 
	filename="0001-Workaround-to-avoid-exit-1-status.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_j59mpjst0

RnJvbSAxNDBkODIwOTg5NWUzZWZmZDRmOGVlNWM5MmU0OWYwYzY1M2JmM2UyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsbyBOZXZlcyA8cGF1bG8uZGVfc291c2FfbmV2ZXNAbm9r
aWEuY29tPgpEYXRlOiBXZWQsIDUgSnVsIDIwMTcgMTQ6NDk6MjggKzAyMDAKU3ViamVjdDogW1BB
VENIIDEvMl0gV29ya2Fyb3VuZCB0byBhdm9pZCBleGl0IDEgc3RhdHVzLgoKVGhlIHJlYXNvbiBp
dCBoYXBwZW5zIGlzIHRoYXQgdGhlcmUgYXJlIDIgbWlzc2lvbnMKdGhlIHN0YXRlIGNhY2hlIHVz
ZXMgdGhlIG5vcm1hbCBmZXRjaGVyIHRvIGdldAppdHMncyBzdHVmZiBhbmQgaXQgaXMgYWNjZXB0
YWJsZSBmb3IgaXQgdG8gZmFpbC4KT24gdGhlIG90aGVyIGhhbmQgaXQgaXMgbm90IGFjY2VwdGFi
bGUgZm9yIGZldGNoCnRvIGZhaWwuCgpJbiBpdCdzIGNvZGUgdGhlIHN0YXRlIGNhY2hlIGNvZGUg
Y2F0Y2hlcyB0aGUgZXhjZXB0aW9uIHRoYXQgdGhlCmZldGNoZXIgbGF1bmNoZXMgYW5kIGRpc2Nh
cmRzLiBUaGUgcHJvYmxlbQppcyB0aGF0IGJlZm9yZSB0aGlzIGV4Y2VwdGlvbiBpcyBjYXVnaHQg
aXQgcHJpbnRzCmEgYmIuZXJyb3IgYW5kIGJiLmVycm9yIHByaW50cyBzb21ldGhpbmcgYW5kCmNv
bnRpbnVlcyBvbiBsaWtlIG5vIHByb2JsZW0gaGFwcGVuZWQuICBidXQgbWFya3MKdGhlIGV4aXQg
Y29kZSBhcyAxIHdoaWNoIGlzIGEgZGlzYXN0ZXIuCi0tLQogYml0YmFrZS9saWIvYmIvZmV0Y2gy
L19faW5pdF9fLnB5IHwgMiAtLQogMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvYml0YmFrZS9saWIvYmIvZmV0Y2gyL19faW5pdF9fLnB5IGIvYml0YmFrZS9saWIv
YmIvZmV0Y2gyL19faW5pdF9fLnB5CmluZGV4IDQwNzllM2JiNGNhOWFiMjI5ZDkxNzE3MWQ3NmY0
MWQ5NjIyMThkZWQuLjk2YzMxODMwZWNiOGZiNjI3MmNhNTUyOGIyY2U1MTM4MmMyOTU5ZDUgMTAw
NjQ0Ci0tLSBhL2JpdGJha2UvbGliL2JiL2ZldGNoMi9fX2luaXRfXy5weQorKysgYi9iaXRiYWtl
L2xpYi9iYi9mZXRjaDIvX19pbml0X18ucHkKQEAgLTE2MjAsOCArMTYyMCw2IEBAIGNsYXNzIEZl
dGNoKG9iamVjdCk6CiAgICAgICAgICAgICAgICAgICAgICAgICBsb2NhbHBhdGggPSB0cnlfbWly
cm9ycyhzZWxmLCBzZWxmLmQsIHVkLCBtaXJyb3JzKQogCiAgICAgICAgICAgICAgICAgaWYgbm90
IGxvY2FscGF0aCBvciAoKG5vdCBvcy5wYXRoLmV4aXN0cyhsb2NhbHBhdGgpKSBhbmQgbG9jYWxw
YXRoLmZpbmQoIioiKSA9PSAtMSk6Ci0gICAgICAgICAgICAgICAgICAgIGlmIGZpcnN0ZXJyOgot
ICAgICAgICAgICAgICAgICAgICAgICAgbG9nZ2VyLmVycm9yKHN0cihmaXJzdGVycikpCiAgICAg
ICAgICAgICAgICAgICAgIHJhaXNlIEZldGNoRXJyb3IoIlVuYWJsZSB0byBmZXRjaCBVUkwgZnJv
bSBhbnkgc291cmNlLiIsIHUpCiAKICAgICAgICAgICAgICAgICB1cGRhdGVfc3RhbXAodWQsIHNl
bGYuZCkKLS0gCjIuNi4yCgo=

--001a114dbbccde4189055497b479--
