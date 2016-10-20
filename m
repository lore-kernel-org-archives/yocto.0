Return-Path: <earwigz@naver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA224E00A0A; Thu, 20 Oct 2016 05:13:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=5.0 tests=BAYES_50,HTML_IMAGE_ONLY_08,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.7 HTML_IMAGE_ONLY_08 BODY: HTML: images with 400-800 bytes of words
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.5000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [125.209.208.221 listed in list.dnswl.org]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 401 seconds by postgrey-1.32 at yocto-www;
	Thu, 20 Oct 2016 05:13:12 PDT
Received: from cmailsend12.nm.naver.com (cmailsend12.nm.naver.com
	[125.209.208.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A7F8E009BB
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 05:13:12 -0700 (PDT)
Received: (qmail 29489 invoked by uid 100); 20 Oct 2016 12:06:30 -0000
Received: from 10.114.52.98 (HELO cweb27.nm.nhnsystem.com) (10.114.52.98)
	by cmailsend12.nm.naver.com with SMTP;20 Oct 2016 12:06:30 -0000
Date: Thu, 20 Oct 2016 21:06:30 +0900 (KST)
From: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
To: yoctoproject <yocto@yoctoproject.org>
Message-ID: <a38828bc8f0ba53bf239ff3f1c1097@cweb27.nm.nhnsystem.com>
MIME-Version: 1.0
Importance: normal
X-Priority: 3 (Normal)
X-Naver-CIP: 61.107.31.52
Subject: confusion about DEPENDS vs RDEPENDS vs PROVIDES
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 20 Oct 2016 12:13:16 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_882049_1000712997.1476965190085"

------=_Part_882049_1000712997.1476965190085
Content-Type: text/plain;
	charset=UTF-8
Content-Transfer-Encoding: base64

SGksIApJcyB0aGVyZSBhbnlvbmUgd2hvIGV4cGxhaW4gdG8gbWUuLj8KIAp0aGFua3MgCg==

------=_Part_882049_1000712997.1476965190085
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PHN0eWxlPnB7bWFyZ2luLXRvcDowcHg7bWFyZ2luLWJvdHRvbTowcHg7fTwv
c3R5bGU+PC9oZWFkPjxib2R5PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyBmb250LWZhbWls
eTpHdWxpbTsiPjxwPkhpLCZuYnNwOzwvcD48cD5JcyB0aGVyZSBhbnlvbmUgd2hvIGV4cGxhaW4g
dG8gbWUuLj88L3A+PHA+Jm5ic3A7PC9wPjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEwcHQ7
IGxpbmUtaGVpZ2h0OiAxLjU7Ij50aGFua3M8L3NwYW4+Jm5ic3A7PC9wPjwvZGl2PjwvYm9keT48
L2h0bWw+Cjx0YWJsZSBzdHlsZT0iZGlzcGxheTpub25lIj48dHI+PHRkPjxpbWcgc3JjPSJodHRw
Oi8vbWFpbC5uYXZlci5jb20vcmVhZFJlY2VpcHQvbm90aWZ5Lz9pbWc9ZmxSTjFCJTJCWk02RSUy
RmFBRkNoQVJQS29DU01xQzRLemlDRnhGU3BvVXFhNnA0S3JNd01xdW1heCUyQmdNWCUyQjBNb1VY
NzRsUjc0bGNXTkZsYlgzMFdMbG9XcmRRYVgwVE1YM1R0SDBUTVgzVGJIaVQxNGtvJTJCVmxUYjRi
JTNELmdpZiIgYm9yZGVyPSIwIj48L3RkPjwvdHI+PC90YWJsZT4=

------=_Part_882049_1000712997.1476965190085--
