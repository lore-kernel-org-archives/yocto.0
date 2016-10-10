Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D60A0E0097C; Sun,  9 Oct 2016 23:44:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [108.163.243.189 listed in list.dnswl.org]
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [108.163.243.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 493DFE00932
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2016 23:44:42 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8] helo=siteground282.com)
	by se7.mailspamprotection.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1btUKG-0004BQ-Dh
	for yocto@yoctoproject.org; Mon, 10 Oct 2016 01:44:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:Subject:Cc:To:From:Date:
	Content-Type:MIME-Version;
	bh=ZNBAiT1gtJlrOLligP9I+kVFjOzB8WzYtgf/jii7ihM=; 
	b=DVObxJYVLtto0HI2t0ttzlOg5p+UQRQO5GqwWwqEhZPwMEv5ScZyL0Km6IpI8Wrlghh5wGwuF0
	51HpqBKkzHcMAROQPPLK8TG92rh+l8UJF2wf6QjzluuRBxsI79rET6JfukZ7QpHwQEJCctX7vJ9y+
	WLhTq4rF8AR5JSe8NDiE=;
Received: from [127.0.0.1] (port=34480 helo=secure282.sgcpanel.com)
	by siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1btUKG-0004jK-5F; Mon, 10 Oct 2016 01:44:40 -0500
MIME-Version: 1.0
Date: Mon, 10 Oct 2016 01:44:40 -0500
From: gmane@reliableembeddedsystems.com
To: yocto@yoctoproject.org
Message-ID: <35ab47fa82f7707f84e445919ddbbef5@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/1.1.4
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Filter-ID: s0sct1PQhAABKnZB5plbIWEcM0d9a2K3OcfFeaASvaIT05e+4t99MpEggFbXzbnhttgCKkcBtGCa
	+yWmGXl+/0OdHUzGyIWSzveO/M+HlaVWShQ0+uJXiDSCp280tJFsbX/3TQnYbqlNHxpi9XBHG8Jz
	8WfReHqUOdh1n/PPcFy3zqUM1f1PZP2+vCB7hhhds3dlCgbPUNHLAiuulU0jOVz1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S7iXkMXDFHgBzeWjk6Zbtb6ZULs/
	x/wiY4bOQVH/H0QQPBfyCUQPGRfAuQJyQcUhQ4/Ia6YN5m0MsQWfYUYaa1Lo0EEGTh9WNZgruaGG
	pyvdI7qaN8yfURviR8OTeMmKUqzo7AcUqNzrkO1kQ1IW8ac6xxrycw2ScA+2hbCxTNV1lHIbmw+x
	cBDSXBmIVsiBPGIW1l+d5u2ITozWClL6/rEu//nzk76lak4ojODbJHHE/Dw6ORF2hyiPywks80fx
	SU3VhpzTalbJG9pSL0Hyv/WnnxF0rh7QmTz7opAw1zOCx6AoM/sstGqwASJuN0ZI7cesr1PnPryu
	VKjB4aKIPn7I0WkU2DaIvSyZINaqxL7/6J1fhOzjF0b4LXcjJZ5lou43BWDx6OWATCrmAjDU/Vlk
	DSi+R1QeWHGeD/ozkhX48xvhmpkqK6lzdXhhHwmzyvpmzdQjXE961MSkPADU05Y=
X-Report-Abuse-To: spam@quarantine1.mailspamprotection.com
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.28)
X-Recommended-Action: accept
Cc: joshua.g.lock@intel.com, robert.berger@reliableembeddedsystems.com
Subject: [yocto-autobuilder][PATCH] PublishArtifacts.py: deal only with built toolchains, cp also md5 and manifests
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
X-List-Received-Date: Mon, 10 Oct 2016 06:44:44 -0000
X-Groupsio-MsgNum: 32308
Content-Type: multipart/mixed;
 boundary="=_270de57f9f84a3975777b08516c25f25"

--=_270de57f9f84a3975777b08516c25f25
Content-Transfer-Encoding: base64
Content-Type: text/x-diff;
 name=0001-deal-only-with-built-toolchains-cp-also-md5-and-mani.patch
Content-Disposition: attachment;
 filename=0001-deal-only-with-built-toolchains-cp-also-md5-and-mani.patch;
 size=2971

RnJvbSA4ZjI4YWZiZmMyMWRjODRmMDc2YjBjYzYyMGU1NzhmOTYwN2QxNDY1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBSb2JlcnQgQmVyZ2VyIDxyb2JlcnQuYmVyZ2VyQFJlbGlhYmxl
RW1iZWRkZWRTeXN0ZW1zLmNvbT4gCkRhdGU6IE1vbiwgMTAgT2N0IDIwMTYgMDY6MjY6MDYgKzAw
MDAKU3ViamVjdDogW3lvY3RvLWF1dG9idWlsZGVyXVtQQVRDSF0gUHVibGlzaEFydGlmYWN0cy5w
eTogZGVhbCBvbmx5IHdpdGggYnVpbHQgdG9vbGNoYWlucywgY3AgYWxzbwogbWQ1IGFuZCBtYW5p
ZmVzdHMKClNpZ25lZC1vZmYtYnk6IFJvYmVydCBCZXJnZXIgPHJvYmVydC5iZXJnZXJAUmVsaWFi
bGVFbWJlZGRlZFN5c3RlbXMuY29tPgotLS0KIC4uLi9hdXRvYnVpbGRlci9idWlsZHN0ZXBzL1B1
Ymxpc2hBcnRpZmFjdHMucHkgICAgICAgICAgICAgfCAxNCArKysrKysrKy0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9s
aWIvcHl0aG9uMi43L3NpdGUtcGFja2FnZXMvYXV0b2J1aWxkZXIvYnVpbGRzdGVwcy9QdWJsaXNo
QXJ0aWZhY3RzLnB5IGIvbGliL3B5dGhvbjIuNy9zaXRlLXBhY2thZ2VzL2F1dG9idWlsZGVyL2J1
aWxkc3RlcHMvUHVibGlzaEFydGlmYWN0cy5weQppbmRleCA2MzM2MDBjLi40NmQ3YjQwIDEwMDY0
NAotLS0gYS9saWIvcHl0aG9uMi43L3NpdGUtcGFja2FnZXMvYXV0b2J1aWxkZXIvYnVpbGRzdGVw
cy9QdWJsaXNoQXJ0aWZhY3RzLnB5CisrKyBiL2xpYi9weXRob24yLjcvc2l0ZS1wYWNrYWdlcy9h
dXRvYnVpbGRlci9idWlsZHN0ZXBzL1B1Ymxpc2hBcnRpZmFjdHMucHkKQEAgLTE1NCwxNCArMTU0
LDE2IEBAIGNsYXNzIFB1Ymxpc2hBcnRpZmFjdHMoU2hlbGxDb21tYW5kKToKICAgICAgICAgICAg
ICAgICBlbGlmIGFydGlmYWN0ID09ICJ0b29sY2hhaW4iOgogICAgICAgICAgICAgICAgICAgICBh
cnRpZmFjdF9uYW1lLCBkZXBsb3lfaW1hZ2VfZGlyID0gc2VsZi5nZXREZXBsb3lOYW1lcyhhcnRp
ZmFjdCwgYnVpbGRlcm5hbWUpCiAgICAgICAgICAgICAgICAgICAgIGNvbW1hbmQ9Y29tbWFuZCtz
ZWxmLmdlbmVyYXRlTUQ1Y21kKGFydGlmYWN0LCBkZXBsb3lfaW1hZ2VfZGlyKQotICAgICAgICAg
ICAgICAgICAgICBjb21tYW5kPWNvbW1hbmQrIm1rZGlyIC1wICIgKyBvcy5wYXRoLmpvaW4oREVT
VCwgWDg2VENfUFVCTElTSF9ESVIpICsgIjsiCisgICAgICAgICAgICAgICAgICAgIGNvbW1hbmQ9
Y29tbWFuZCsiaWYgWyAtZSAiICsgb3MucGF0aC5qb2luKGRlcGxveV9pbWFnZV9kaXIsICJwb2t5
LSppNjg2LWNvcmUtaW1hZ2UqLnNoICIpICsgIiBdOyB0aGVuICIgKyBcCisgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAibWtkaXIgLXAgIiArIG9zLnBhdGguam9pbihERVNULCBY
ODZUQ19QVUJMSVNIX0RJUikgKyAiOyAiCiAgICAgICAgICAgICAgICAgICAgIGNvbW1hbmQ9Y29t
bWFuZCsiY3AgLVIgLS1uby1kZXJlZmVyZW5jZSAtLXByZXNlcnZlPWxpbmtzICIgKyBcCi0gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcy5wYXRoLmpvaW4oZGVwbG95X2ltYWdl
X2RpciwgInBva3ktKmk2ODYtY29yZS1pbWFnZSouc2ggIikgKyBcCi0gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBvcy5wYXRoLmpvaW4oREVTVCwgWDg2VENfUFVCTElTSF9ESVIp
ICsgcGlwZWxpbmUgKyAiOyIKLSAgICAgICAgICAgICAgICAgICAgY29tbWFuZD1jb21tYW5kKyJt
a2RpciAtcCAiICsgb3MucGF0aC5qb2luKERFU1QsIFg4NjY0VENfUFVCTElTSF9ESVIpICsgIjsi
CisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcy5wYXRoLmpvaW4oZGVwbG95
X2ltYWdlX2RpciwgInBva3ktKmk2ODYtY29yZS1pbWFnZSogIikgKyBcCisgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBvcy5wYXRoLmpvaW4oREVTVCwgWDg2VENfUFVCTElTSF9E
SVIpICsgcGlwZWxpbmUgKyAiOyBmaTsiCisgICAgICAgICAgICAgICAgICAgIGNvbW1hbmQ9Y29t
bWFuZCsiaWYgWyAtZSAiICsgb3MucGF0aC5qb2luKGRlcGxveV9pbWFnZV9kaXIsICJwb2t5LSp4
ODZfNjQtY29yZS1pbWFnZSouc2ggIikgKyAiIF07IHRoZW4gIiArIFwKKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICJta2RpciAtcCAiICsgb3MucGF0aC5qb2luKERFU1QsIFg4
NjY0VENfUFVCTElTSF9ESVIpICsgIjsgIgogICAgICAgICAgICAgICAgICAgICBjb21tYW5kPWNv
bW1hbmQrImNwIC1SIC0tbm8tZGVyZWZlcmVuY2UgLS1wcmVzZXJ2ZT1saW5rcyAiICsgXAotICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgb3MucGF0aC5qb2luKGRlcGxveV9pbWFn
ZV9kaXIsICJwb2t5LSp4ODZfNjQtY29yZS1pbWFnZSouc2ggIikgKyBcCi0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBvcy5wYXRoLmpvaW4oREVTVCwgWDg2NjRUQ19QVUJMSVNI
X0RJUikgKyBwaXBlbGluZSArICI7IgorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgb3MucGF0aC5qb2luKGRlcGxveV9pbWFnZV9kaXIsICJwb2t5LSp4ODZfNjQtY29yZS1pbWFn
ZSogIikgKyBcCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvcy5wYXRoLmpv
aW4oREVTVCwgWDg2NjRUQ19QVUJMSVNIX0RJUikgKyBwaXBlbGluZSArICI7IGZpOyIKICAgICAg
ICAgICAgICAgICBlbGlmIGFydGlmYWN0ID09ICJ1bmluYXRpdmUiOgogICAgICAgICAgICAgICAg
ICAgICBhcnRpZmFjdF9uYW1lLCBkZXBsb3lfaW1hZ2VfZGlyID0gc2VsZi5nZXREZXBsb3lOYW1l
cyhhcnRpZmFjdCwgYnVpbGRlcm5hbWUpCiAgICAgICAgICAgICAgICAgICAgIGNvbW1hbmQ9Y29t
bWFuZCtzZWxmLmdlbmVyYXRlTUQ1Y21kKGFydGlmYWN0LCBkZXBsb3lfaW1hZ2VfZGlyKQotLSAK
Mi43LjQKCg==

--=_270de57f9f84a3975777b08516c25f25--
