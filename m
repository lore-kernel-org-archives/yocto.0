Return-Path: <groovy@mail.ru>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89655E00B45; Fri, 18 Dec 2015 03:24:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	SPF_HELO_PASS,XPRIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (groovy[at]mail.ru)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [94.100.181.110 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.6 XPRIO Has X-Priority header
X-Greylist: delayed 2174 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Dec 2015 03:24:35 PST
Received: from fallback8.mail.ru (fallback8.mail.ru [94.100.181.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3E1DE0033E
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 03:24:35 -0800 (PST)
Received: from f354.i.mail.ru (f354.i.mail.ru [217.69.140.250])
	by fallback8.mail.ru (mPOP.Fallback_MX) with ESMTP id 2C8FA9122A4D
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 13:35:27 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru;
	s=mail2; 
	h=Content-Type:Message-ID:Reply-To:Date:MIME-Version:Subject:To:From;
	bh=EtzeNIRrod1fViE6hsvifoQLGXzA42DLhazWmaat5Ow=; 
	b=m7YVXknMk7RM/v3XS3/Xzy2uTEf/mvihUIPkwVogVFKCehY7g0N1+o3o/afL3B9KHsSzjQRYbpzYm449+mGXe8pLywMfqVZmkixMqwHv8Q8rzBUVon/ygYVOp1mIznk4lwkKsI6s6w9QREsl/MudzhXxrXRcknHp4YTvNDA0Sk0=;
Received: from [93.120.193.123] (ident=mail)
	by f354.i.mail.ru with local (envelope-from <groovy@mail.ru>)
	id 1a9sNg-00018x-9w
	for yocto@yoctoproject.org; Fri, 18 Dec 2015 13:35:24 +0300
Received: from [93.120.193.123] by e.mail.ru with HTTP;
	Fri, 18 Dec 2015 13:35:24 +0300
From: =?UTF-8?B?0JXQstCz0LXQvdC40Lkg0JDRgdGC0LDRhNGM0LXQsg==?= <groovy@mail.ru>
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-Mailer: Mail.Ru Mailer 1.0
X-Originating-IP: [93.120.193.123]
Date: Fri, 18 Dec 2015 13:35:24 +0300
X-Priority: 3 (Normal)
Message-ID: <1450434924.569396788@f354.i.mail.ru>
X-Mras: Ok
X-Spam: undefined
Subject: Different *.so content in recipe and rootfs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: =?UTF-8?B?0JXQstCz0LXQvdC40Lkg0JDRgdGC0LDRhNGM0LXQsg==?=
	<groovy@mail.ru>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Dec 2015 11:24:38 -0000
Content-Type: multipart/alternative;
	boundary="--ALT--AZKoEn18m9QoykI7GrnVjFR9nQmEfQJD1450434924"

----ALT--AZKoEn18m9QoykI7GrnVjFR9nQmEfQJD1450434924
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

IEhpLAoKWW9jdG8gMi4wCgpJIGhhdmUgYSByZWNpcGUgcXRiYXNlLgoKUkVDSVBFIFNJREU6CkZp
bGUgL3BhY2thZ2VzLXNwbGl0L3F0YmFzZS91c3IvbGliL2xpYlF0NUNvcmUuc28uNS41LjEKU2l6
ZTogNTE4Njc2MApUaW1lOiAwMToyMQrCoApST09URlMgU0lERToKRmlsZSAvdXNyL2xpYi9saWJR
dDVDb3JlLnNvLjUuNS4xClNpemU6IDUyMDYwODAKVGltZTogMDE6MjEKClRoZSBTREsgY29uc3Ry
dWN0ZWQgYnkgLWMgcG9wdWxhdGVfc2RrIGhhcyBzYW1lIHZlcnNpb24gb2YgZmlsZSBhcyBhIHJl
Y2lwZSBzaWRlIGhhcy4KQWN0dWFsbHkgSSBoYXZlIG5vIGZpbGUgd2l0aCBzaXplIDUyMDA2ODAg
YW55d2hlcmUgaW4gbXkgL3RtcCBkaXIuIFRoZSBvbmx5IHBsYWNlIGl0IGV4aXN0cyAtIHJvb3Rm
cyBpbWFnZS7CoArCoApJIGhhdmUgbWFueSBzdWNoIGRpZmZlcmVuY2llcywgaW5jbHVkaW5nIGxp
YmMuCgpUaGUgaW1hZ2Ugd29ya3MuIFF0IHdvcmtzLiBMb2NhbCBkZWJ1Z2dpbmcgaW4gYSBkZXZp
Y2UgY29uc29sZSB3b3Jrcy4KUmVtb3RlIGRlYnVnZ2luZyBmYWlscy4gVGhlIGRlYnVnZ2VyIHNh
eXMgSSBoYXZlIGRpZmZlcmVudCB2ZXJzaW9ucyBvZiBsaWJzIGluIG15IFNESydzIHN5c3Jvb3Qg
YW5kIHRoZSBkZXZpY2UuCgpJZiBJIHZpZXcgdGhlIGZpbGVzIGluIE1DJ3Mgdmlld2VyIC0gaXQg
c2hvd3MgdGhlIHNhbWUgZnVuY3Rpb24gbmFtZXMsIGJ1dCBkaWZmZXJlbnQgYWRkcmVzc2VzLgoK
SWYgSSBwdXQgdGhlIGZpbGUgbGliUXQ1Q29yZS5zby41LjUuMcKgZnJvbSB0aGUgcmVjaXBlIHRv
IHJvb3RmcyBtYW51YWxseSAtIGltYWdlIHN0aWxsIHdvcmtzLiBSZW1vdGUgZGVidWdnZXIgcmVw
b3J0cyBubyBlcnJvcnMuCgpCdXQgSSBzdGlsbCB3YW50IHRvIGNsZWFyIG91dCB3aGF0J3MgZ29p
bmcgb24gYW5kIGhvdyB0byBtYWtlIGRlYnVnZ2FibGUgaW1hZ2Ugdy5vLiBoYW5kIG1hbmlwdWxh
dGlvbnMuCgpCVFcgSSBkaWQgYSBmdWxsIHJlYnVpbGQgb2YgdGhlIGltYWdlLiBObyBzdWNjZXNz
LCBsaWJzIGFyZSBzdGlsbCBkaWZmZXJlbnQKCkFueSBoZWxwIGlzIGFwcHJlY2lhdGVkLgoKRXVn
ZW5l

----ALT--AZKoEn18m9QoykI7GrnVjFR9nQmEfQJD1450434924
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

CjxIVE1MPjxCT0RZPkhpLDxicj48YnI+WW9jdG8gMi4wPGJyPjxicj5JIGhhdmUgYSByZWNpcGUg
cXRiYXNlLjxicj48YnI+UkVDSVBFIFNJREU6PGJyPkZpbGUgL3BhY2thZ2VzLXNwbGl0L3F0YmFz
ZS91c3IvbGliL2xpYlF0NUNvcmUuc28uNS41LjE8YnI+U2l6ZTogNTE4Njc2MDxicj5UaW1lOiAw
MToyMTxicj4mbmJzcDs8YnI+Uk9PVEZTIFNJREU6PGJyPkZpbGUgL3Vzci9saWIvbGliUXQ1Q29y
ZS5zby41LjUuMTxicj5TaXplOiA1MjA2MDgwPGJyPlRpbWU6IDAxOjIxPGJyPjxicj5UaGUgU0RL
IGNvbnN0cnVjdGVkIGJ5IC1jIHBvcHVsYXRlX3NkayBoYXMgc2FtZSB2ZXJzaW9uIG9mIGZpbGUg
YXMgYSByZWNpcGUgc2lkZSBoYXMuPGJyPkFjdHVhbGx5IEkgaGF2ZSBubyBmaWxlIHdpdGggc2l6
ZSA1MjAwNjgwIGFueXdoZXJlIGluIG15IC90bXAgZGlyLiBUaGUgb25seSBwbGFjZSBpdCBleGlz
dHMgLSByb290ZnMgaW1hZ2UuJm5ic3A7PGJyPiZuYnNwOzxicj5JIGhhdmUgbWFueSBzdWNoIGRp
ZmZlcmVuY2llcywgaW5jbHVkaW5nIGxpYmMuPGJyPjxicj5UaGUgaW1hZ2Ugd29ya3MuIFF0IHdv
cmtzLiBMb2NhbCBkZWJ1Z2dpbmcgaW4gYSBkZXZpY2UgY29uc29sZSB3b3Jrcy48YnI+UmVtb3Rl
IGRlYnVnZ2luZyBmYWlscy4gVGhlIGRlYnVnZ2VyIHNheXMgSSBoYXZlIGRpZmZlcmVudCB2ZXJz
aW9ucyBvZiBsaWJzIGluIG15IFNESydzIHN5c3Jvb3QgYW5kIHRoZSBkZXZpY2UuPGJyPjxicj5J
ZiBJIHZpZXcgdGhlIGZpbGVzIGluIE1DJ3Mgdmlld2VyIC0gaXQgc2hvd3MgdGhlIHNhbWUgZnVu
Y3Rpb24gbmFtZXMsIGJ1dCBkaWZmZXJlbnQgYWRkcmVzc2VzLjxicj48YnI+SWYgSSBwdXQgdGhl
IGZpbGUgbGliUXQ1Q29yZS5zby41LjUuMSZuYnNwO2Zyb20gdGhlIHJlY2lwZSB0byByb290ZnMg
bWFudWFsbHkgLSBpbWFnZSBzdGlsbCB3b3Jrcy4gUmVtb3RlIGRlYnVnZ2VyIHJlcG9ydHMgbm8g
ZXJyb3JzLjxicj48YnI+QnV0IEkgc3RpbGwgd2FudCB0byBjbGVhciBvdXQgd2hhdCdzIGdvaW5n
IG9uIGFuZCBob3cgdG8gbWFrZSBkZWJ1Z2dhYmxlIGltYWdlIHcuby4gaGFuZCBtYW5pcHVsYXRp
b25zLjxicj48YnI+QlRXIEkgZGlkIGEgZnVsbCByZWJ1aWxkIG9mIHRoZSBpbWFnZS4gTm8gc3Vj
Y2VzcywgbGlicyBhcmUgc3RpbGwgZGlmZmVyZW50PGJyPjxicj5BbnkgaGVscCBpcyBhcHByZWNp
YXRlZC48YnI+PGJyPkV1Z2VuZTwvQk9EWT48L0hUTUw+Cg==

----ALT--AZKoEn18m9QoykI7GrnVjFR9nQmEfQJD1450434924--
