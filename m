Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6F33E0083A; Mon, 19 Jan 2015 06:55:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=1.0 required=5.0 tests=BASE64_LENGTH_79_INF, BAYES_00,
	DKIM_ADSP_CUSTOM_MED, FREEMAIL_FROM, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_LOW, 
	RCVD_NUMERIC_HELO,SPF_HELO_PASS,T_FSL_HELO_BARE_IP_2 autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sm0ketst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* 1.2 RCVD_NUMERIC_HELO Received: contains an IP address used for HELO
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.5 BASE64_LENGTH_79_INF BODY: base64 encoded email part uses line
	*      length greater than 79 characters
	*  0.0 T_FSL_HELO_BARE_IP_2 T_FSL_HELO_BARE_IP_2
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
X-Greylist: delayed 903 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 Jan 2015 06:55:09 PST
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BF0DE00571
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 06:55:09 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1YDDUq-000315-Gu
	for yocto@yoctoproject.org; Mon, 19 Jan 2015 15:40:04 +0100
Received: from 185.46.212.60 ([185.46.212.60])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 15:40:04 +0100
Received: from sm0ketst by 185.46.212.60 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 15:40:04 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: J.J. Garcia <sm0ketst@gmail.com>
Date: Mon, 19 Jan 2015 14:36:48 +0000 (UTC)
Message-ID: <loom.20150119T153212-14@post.gmane.org>
References: <CABMtxuza7K7iQOKC+zTeq77wZqgqeL9KoFPjsz50aYd3sqJKqw@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 185.46.212.60 (Mozilla/5.0 (X11;
	Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)
	Chrome/39.0.2171.99 Safari/537.36)
Subject: Re: [meta-mingw] No recipes available for:	gdb-cross-canadian_7.8.1.bbappend
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
X-List-Received-Date: Mon, 19 Jan 2015 14:55:14 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

Si5KLiBHYXJjaWEgPHNtMGtldHN0QC4uLj4gd3JpdGVzOgoKPiAKPiBIZWxsbyBhbGwsCj4gSSdtIHRyeWluZyB0byBnZXQgdGhlIHRvb2xjaGFpbiBmb3Igd2luZG93cy9taW5ndyBhbmQgaW0gaGF2aW5nIHRoZSAKZm9sbG93aW5nIG1lc3NhZ2Ugd2hlbiAiYml0YmFrZSBtZXRhLXRvb2xjaGFpbiLCoAo+IAo+IAo+IEVSUk9SOiBObyByZWNpcGVzIGF2YWlsYWJsZSBmb3I6Cj4gwqAgL2hvbWUvampnYXJjaWEvRGV2ZWxvcG1lbnQveW9jdG8vZXMtZGV2ZWwveW9jdG8vcG9reS9tZXRhLW1pbmd3L3JlY2lwZXMtCmRldnRvb2xzL2dkYi9nZGItY3Jvc3MtY2FuYWRpYW5fNy44LjEuYmJhcHBlbmQKPiAKPiAKPiBJJ20gdHJ5aW5nIHdpdGg6Cj4gCj4gJCBnaXQgY2xvbmUgLWIgZGl6enkgZ2l0Oi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvcG9reS5naXQKPiAKPiAkIGNkIHBva3k7IGdpdCBjbG9uZSBnaXQ6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9tZXRhLW1pbmd3Cj4gCj4gCj4gQ29uZmlndXJpbmcgYXMgZm9sbG93Ogo+IC0gbG9jYWwuY29uZiB3aXRowqAKPiAKPiBNQUNISU5FID8/PSAiZ2VuZXJpY3g4NiIKPiBTREtNQUNISU5FID89ICJpNjg2LW1pbmd3MzIiCj4gCj4gCj4gUEFDS0FHRV9DTEFTU0VTID89ICJwYWNrYWdlX2RlYiIKPiAKPiBhbmTCoAo+IC0gYmJsYXllcnMuY29uZsKgCj4gCj4gQkJMQVlFUlMgPz0gIiBcCj4gwqAgLi4uIChhZGRpbmcpCj4gwqAgL2hvbWUvampnYXJjaWEvRGV2ZWxvcG1lbnQveW9jdG8vZXMtZGV2ZWwveW9jdG8vcG9reS9tZXRhLW1pbmd3IFwKPiAKPiAKPiAKPiBIZWxwIGFwcHJlY2lhdGVkLAo+IAo+IFRoYW5rcyBpbiBhZHZhbmNlLAo+IAo+IFJlZ2FyZHMKPiAKPiBKSgo+IAo+IAo+IAoKW1NPTFZFRF0KCkkgd2FzIG1pc3NpbmcgYXJvdW5kIHRoZSB2ZXJzaW9ucy4gSSBoYXZlIG5vdGljZWQgdGhlIHJlY2lwZSB3YXMgbm90IAptYXRjaGluZyB0aGUgZ2RiLWNyb3NzLWNhbmFkaWFuXzcuOC4xLmJiYXBwZW5kIHZlcnNpb24gbnVtYmVyL3N0cmluZyBhbmQgaW0gCm5vdyB1c2luZyB0aGUgbWFzdGVyIGZvciBib3RoLCBwb2t5IGFuZCBtZXRhLW1pbmd3IChiZWZvcmUgdXNpbmcgZGl6enkgZnJvbSAKcG9reSBhbmQgbWFzdGVyIGZvciBtZXRhLW1pbmd3KQoKU29ycnkgZm9yIHRoZSBub2lzZS4gU2hvdWxkIGNoZWNrIGl0IGJlZm9yZS4KClRoYW5rcyBhbGwgYW5kIGFsbCB0aGUgYmVzdCBmb3IgdGhlIHByb2plY3QhISEKCkpKCgoK


