Return-Path: <karavolt@broadwave.co.kr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0563DE00B51; Mon, 15 May 2017 21:41:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.9 required=5.0 tests=BAYES_50,HTML_IMAGE_ONLY_16,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [125.209.215.141 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4467]
	* 1.1 HTML_IMAGE_ONLY_16 BODY: HTML: images with 1200-1600 bytes of
	words
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Mon, 15 May 2017 21:41:31 PDT
Received: from cmailsend002.wmail.naver.com (cmailsend002.wmail.naver.com
	[125.209.215.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96C88E00B05
	for <yocto@yoctoproject.org.>; Mon, 15 May 2017 21:41:31 -0700 (PDT)
Received: (qmail 20737 invoked by uid 100); 16 May 2017 04:34:50 -0000
Received: from 10.112.74.145 (HELO cvweb020.wmail.nhnsystem.com)
	(10.112.74.145)
	by cmailsend002.wmail.naver.com with SMTP;16 May 2017 04:34:50 -0000
Date: Tue, 16 May 2017 13:34:50 +0900 (KST)
From: =?UTF-8?B?6rmA7J6s7ZmY?= <karavolt@broadwave.co.kr>
To: yocto@yoctoproject.org
Message-ID: <cc94c62ce1abb8729b3f7047e11749e5@cvweb020.wmail.nhnsystem.com>
MIME-Version: 1.0
Importance: normal
X-Priority: 3 (Normal)
X-Naver-CIP: 106.246.190.121
X-Naver-Sender-Locale: envfrom=karavolt@broadwave.co.kr; locale=ko_kr
Subject: [meta-raspberrypi] rpi0-w wifi&bluetooth problem
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: =?UTF-8?B?6rmA7J6s7ZmY?= <karavolt@broadwave.co.kr>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 May 2017 04:41:37 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_130243_1609225278.1494909290551"

------=_Part_130243_1609225278.1494909290551
Content-Type: text/plain;
	charset=UTF-8
Content-Transfer-Encoding: base64

SGkuCiAKaSBidWlsZCBjb3JlLWltYWdlLW1pbmltYWwgZm9yIHJwaTAtdy4KaXQgd29ya3Mgbmlj
ZWx5IGJ1dCBub3Qgd29ya2luZyB3bGFuMCBhbmQgYmx1ZXRvb3RoLgogCnNvIGkgdHJpZWQgdGhp
cyBwb3N0LiBidXQgc3RpbGwgbm90IHdvcmtpbmcuCiAKdGhlIGVycm9yIHdhcyAKJGlmdXAgd2xh
bjAKU3VjY2Vzc2Z1bGx5IGluaXRpYWxpemVkIHdwYV9zdXBwbGljYW50CnJma2lsbDogY2Fubm90
IGdldCB3aXBoeSBpbmZvcm1hdGlvbgpDb3VsZCBub3QgcmVhZCBpbnRlcmZhY2Ugd2xhbjAgZmxh
Z3M6IE5vIHN1Y2ggZGV2aWNlCldFWFQ6IGNvdWxkIG5vdCBzZXQgaW50ZXJmYWNlICd3bGFuMCcg
VVAKd2xhbjA6IEZhaWxlZCB0byBpbml0aWFsaXplIGRyaXZlciBpbnRlcmZhY2UKaWZjb25maWc6
IFNJT0NHSUZGTEFHUyBObyBzdWNoIGRldmljZQogCmFueWJvZHkgc29sdmUgdGhpcyBwcm9ibGVt
PyAK

------=_Part_130243_1609225278.1494909290551
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PHN0eWxlPnB7bWFyZ2luLXRvcDowcHg7bWFyZ2luLWJvdHRvbTowcHg7fTwv
c3R5bGU+PC9oZWFkPjxib2R5PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyBmb250LWZhbWls
eTpHdWxpbTsiPjxwPkhpLjwvcD48cD4mbmJzcDs8L3A+PHA+aSBidWlsZCBjb3JlLWltYWdlLW1p
bmltYWwgZm9yIHJwaTAtdy48L3A+PHA+aXQgd29ya3MgbmljZWx5IGJ1dCBub3Qgd29ya2luZyB3
bGFuMCBhbmQgYmx1ZXRvb3RoLjwvcD48cD4mbmJzcDs8L3A+PHA+c28gaSB0cmllZCA8c3BhbiBp
ZD0iaHVza3lfYm9va21hcmtfc3RhcnRfMTQ5NDkwODc4MTQ1MiI+PC9zcGFuPjxhIGhyZWY9Imh0
dHBzOi8vcmFzcGludGVyZXN0LndvcmRwcmVzcy5jb20vMjAxNy8wMi8yOC9jb25maWd1cmUtd2xh
bjAtYW5kLWJsdWV0b290aC1pbi15b2N0by1yYXNwYmVycnktcGktMy8iIHRhcmdldD0iX3NlbGYi
IHN0eWxlPSJjdXJzb3I6IHBvaW50ZXI7IHdoaXRlLXNwYWNlOiBwcmU7Ij50aGlzIHBvc3Q8L2E+
LiBidXQgc3RpbGwgbm90IHdvcmtpbmcuPHNwYW4gaWQ9Imh1c2t5X2Jvb2ttYXJrX2VuZF8xNDk0
OTA4NzgxNDUyIj48L3NwYW4+PC9wPjxwPiZuYnNwOzwvcD48cD50aGUgZXJyb3Igd2FzJm5ic3A7
PC9wPjxwPiRpZnVwIHdsYW4wPC9wPjxwPlN1Y2Nlc3NmdWxseSBpbml0aWFsaXplZCB3cGFfc3Vw
cGxpY2FudDwvcD48cD5yZmtpbGw6IGNhbm5vdCBnZXQgd2lwaHkgaW5mb3JtYXRpb248L3A+PHA+
Q291bGQgbm90IHJlYWQgaW50ZXJmYWNlIHdsYW4wIGZsYWdzOiBObyBzdWNoIGRldmljZTwvcD48
cD5XRVhUOiBjb3VsZCBub3Qgc2V0IGludGVyZmFjZSAnd2xhbjAnIFVQPC9wPjxwPndsYW4wOiBG
YWlsZWQgdG8gaW5pdGlhbGl6ZSBkcml2ZXIgaW50ZXJmYWNlPC9wPjxwPmlmY29uZmlnOiZuYnNw
OzxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEwcHQ7IGxpbmUtaGVpZ2h0OiAxLjU7Ij5TSU9DR0lG
RkxBR1MgTm8gc3VjaCBkZXZpY2U8L3NwYW4+PC9wPjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6
IDEwcHQ7IGxpbmUtaGVpZ2h0OiAxLjU7Ij4mbmJzcDs8L3NwYW4+PC9wPjxwPjxzcGFuIHN0eWxl
PSJmb250LXNpemU6IDEwcHQ7IGxpbmUtaGVpZ2h0OiAxLjU7Ij5hbnlib2R5IHNvbHZlIHRoaXMg
cHJvYmxlbT8mbmJzcDs8L3NwYW4+PC9wPjwvZGl2PjwvYm9keT48L2h0bWw+Cjx0YWJsZSBzdHls
ZT0iZGlzcGxheTpub25lIj48dHI+PHRkPjxpbWcgc3JjPSJodHRwczovL2tyMS1tYWlsLndvcmtz
bW9iaWxlLmNvbS9yZWFkUmVjZWlwdC9ub3RpZnkvP2ltZz1DZUttS0FnbUtBdW1GQUtaYXh0bEtB
dXNoekZvYXgzb0ZvaW9weEpDTTRVJTJGRnFVbE1vRjRGcWdkRnJFd0t4YmRhNkU5dHpGciUyQnJr
U0tBVW03TiUyQlJNNjBuNzRsY1dORmxiWDMwV0xsb1dyZFFhWDBUTVgzVHRIMFRNWDNUYkhpVDE0
a28lMkJWbFRiNGI1LmdpZiIgYm9yZGVyPSIwIj48L3RkPjwvdHI+PC90YWJsZT4=

------=_Part_130243_1609225278.1494909290551--
