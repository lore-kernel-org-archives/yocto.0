Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3454EE00A3C; Fri, 24 Jul 2015 12:25:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BASE64_LENGTH_79_INF, BAYES_00,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.5 BASE64_LENGTH_79_INF BODY: base64 encoded email part uses line
	*      length greater than 79 characters
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DD2FE00942
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 12:25:07 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1ZIiad-0002e3-Hx
	for yocto@yoctoproject.org; Fri, 24 Jul 2015 21:25:03 +0200
Received: from modemcable148.153-160-184.mc.videotron.ca ([184.160.153.148])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 21:25:03 +0200
Received: from adam by modemcable148.153-160-184.mc.videotron.ca with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 21:25:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Adam Sherman <adam@alembicinst.com>
Date: Fri, 24 Jul 2015 19:20:22 +0000 (UTC)
Message-ID: <loom.20150724T210947-218@post.gmane.org>
References: <3070750398d841b6866b97073c1bbeaa@nivm320.nibe.se>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 184.160.153.148 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:39.0) Gecko/20100101 Firefox/39.0)
Subject: Re: Sftp deploy hangs when using dropbear and yocto fido.
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
X-List-Received-Date: Fri, 24 Jul 2015 19:25:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

TcOlbnMgQW5kZXJzc29uIDxNYW5zLkFuZGVyc3NvbkAuLi4+IHdyaXRlczoKCj4gCj4gRG9lcyBhbnlvbmUga25vdyBhYm91dCBhIHByb2JsZW0gd2l0aCBkcm9wYmVhciBhbmQgb3BlbnNzaC1zZnRwLXNlcnZlciBvbgpZb2N0byBGaWRvPwo+IAo+IEFmdGVyIHVwZ3JhZGluZyBteSBidWlsZCBmcm9tIERvcmEgdG8gRmlkbyB0aGUgZGVwbG95bWVudCBvZiBidWlsZHMgZnJvbQpRdENyZWF0b3IgKDMuMi4yKSB0byBteSBxZW11YXJtCj4gYnVpbGQgc3RvcHBlZCB3b3JraW5nLiBJdCBqdXN0IGhhbmdzIHdhaXRpbmcgYXMgaWYgaXQncyB3b3JraW5nLCBpLmUuIG5vCmVycm9yIG1lc3NhZ2UuIEkndmUgc3dpdGNoZWQKPiB0b29sY2hhaW5zIGFuZCBlbXVsYXRvciBpbWFnZXMgZnJvbSBteSBEb3JhIGFuZCBGaWRvIGJ1aWxkcyBiYWNrIGFuZCBmb3J0aAphbmQgdGhlIG9ubHkgY29tbW9uIGRlbm9taW5hdG9yCj4gd2hlbiBpdCBkb2Vzbid0IHdvcmsgaXMgd2hlbiB1c2luZyB0aGUgRmlkbyBxZW11YXJtIGJ1aWxkLiBSZWd1bGFyIFNTSApjb25uZWN0aW9ucyBhbmQgbWFudWFsIHNmdHAKPiB0cmFuc2ZlcnMgKGkuZS4gbm90IGluaXRpYXRlZCBieSBRdCBDcmVhdG9yKSB3b3Jrcywgd2hpY2gganVzdCBtYWtlcyBpdApldmVuIGhhcmRlciB0byBkZWJ1Zy4KPiAKPiBUaGFua3MgaW4gYWR2YW5jZS4KPiAvLyBNw6Vucwo+IAoKSnVzdCB0byBsZXQgeW91IGtub3csIEkgaGF2ZSB0aGUgc2FtZSBiZWhhdmlvciB3aXRoIFF0Q3JlYXRvciAoMy40LjIpIC8KdHJ5aW5nIHRvIGRlcGxveSBvbiB0aGUgQXJtYWRldXMgQVBGMjcgZW1iZWRkZWQgTGludXggQXJtIFBsYXRmb3JtIAooQnVpbGRyb290IDIwMTUuMDIgLyBEcm9wYmVhciAvIG9wZW5zc2ggc2Z0cCBzZXJ2ZXIpLgoKU2ltaWxhcmx5LCBzdGFuZC1hbG9uZSBzZnRwIHRyYW5zZmVycyBvdXRzaWRlIG9mIFF0Q3JlYXRvciB3b3JrIGp1c3QgZmluZS4KCkFkYW0gU2hlcm1hbgo=


