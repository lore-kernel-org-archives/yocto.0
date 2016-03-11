Return-Path: <earwigz@naver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59918E00CE1; Fri, 11 Mar 2016 01:20:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.9 required=5.0 tests=BAYES_50,HTML_IMAGE_ONLY_16,
	HTML_MESSAGE,T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4897]
	* 1.1 HTML_IMAGE_ONLY_16 BODY: HTML: images with 1200-1600 bytes of
	words
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Mar 2016 01:20:24 PST
Received: from cmailsend13.nm.naver.com (cmailsend13.nm.naver.com
	[125.209.208.222])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5968E00CD8
	for <yocto@yoctoproject.org>; Fri, 11 Mar 2016 01:20:24 -0800 (PST)
Received: (qmail 3280 invoked by uid 100); 11 Mar 2016 09:13:43 -0000
Received: from 10.114.49.74 (HELO cweb07.nm.nhnsystem.com) (10.114.49.74)
	by cmailsend13.nm.naver.com with SMTP;11 Mar 2016 09:13:43 -0000
Date: Fri, 11 Mar 2016 18:13:43 +0900 (KST)
From: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
To: yocto@yoctoproject.org
Message-ID: <5addf060acc4ab8f159ee2ff87fb4b5@cweb07.nm.nhnsystem.com>
MIME-Version: 1.0
Importance: normal
X-Priority: 3 (Normal)
X-Naver-CIP: 61.107.31.52
Subject: how to compile ozone-wayland in own recipes?
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
X-List-Received-Date: Fri, 11 Mar 2016 09:20:27 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_674984_14446627.1457687623618"

------=_Part_674984_14446627.1457687623618
Content-Type: text/plain;
	charset=UTF-8
Content-Transfer-Encoding: base64

IApIaSwKSSB3aWxsIGNvbXBpbGUgb3pvbmUtd2F5bGFuZCB1c2luZyBteSBjdXN0b20gcmVjaXBl
cy4KaWYgeW91IHdhbnQgdG8ga25vdyB3aGF0IGlzIG96b25lLXdheWxhbmQsIHBsZWFzZSByZWZl
cmVuY2UgdGhpcyBzaXRlLiAiaHR0cHM6Ly9naXRodWIuY29tLzAxb3JnL296b25lLXdheWxhbmQi
CiAKYmVsb3cgcGFja2FnZSBzaG91bGQgYmUgbmVlZCB0byBjb21waWxlIG96b25lLXdheWxhbmQg
aW4gdWJ1bnR1IGRlc2t0b3AgUEMuCnN1ZG8gYXB0LWdldCBpbnN0YWxsIGdwZXJmIGxpYm5zczMt
ZGV2IGxpYnB1bHNlLWRldiBsaWJkYnVzLTEtZGV2IGxpYmV4aWYtZGV2IGxpYnBjaS1kZXYgbGli
cGFuZ28xLjAtZGV2IGxpYmVsZi1kZXYgbGliY2FwLWRldiBsaWJhc291bmQyLWRldiBsaWJzc2wt
ZGV2IGxpYmN1cHMyLWRldiBsaWJnY29uZjItZGV2IGxpYmdub21lLWtleXJpbmctZGV2IAogCmkg
dGhpbmsuLC4gaXQgbWF5IHdvcmtzIG5vcm1hbGx5LCAgCmJ1dCBpIGFtIG5vdCBzdXJlLiBiZWNh
dXNlIGkgaGF2ZW4ndCBkb25lIHlldCBpbiB1YnVudHUgZGVza3RvcCBwYy4KYW55d2F5IAogCkJ1
dCB3aGF0IGRvIGkgZG8gaW4geW9jdG8gcHJvamVjdD8KIAp0aGFua3MuCiAK

------=_Part_674984_14446627.1457687623618
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PHN0eWxlPnB7bWFyZ2luLXRvcDowcHg7bWFyZ2luLWJvdHRvbTowcHg7fTwv
c3R5bGU+PC9oZWFkPjxib2R5PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyBmb250LWZhbWls
eTpHdWxpbTsiPjxwPiZuYnNwOzwvcD48cD5IaSw8L3A+PHA+SSB3aWxsIGNvbXBpbGUgb3pvbmUt
d2F5bGFuZCB1c2luZyBteSBjdXN0b20gcmVjaXBlcy48L3A+PHA+aWYgeW91IHdhbnQgdG8ga25v
dyB3aGF0IGlzIG96b25lLXdheWxhbmQsIHBsZWFzZSByZWZlcmVuY2UgdGhpcyBzaXRlLiAiPGEg
aHJlZj0iaHR0cHM6Ly9naXRodWIuY29tLzAxb3JnL296b25lLXdheWxhbmQiPmh0dHBzOi8vZ2l0
aHViLmNvbS8wMW9yZy9vem9uZS13YXlsYW5kPC9hPiI8L3A+PHA+Jm5ic3A7PC9wPjxwPmJlbG93
IHBhY2thZ2Ugc2hvdWxkIGJlIG5lZWQgdG8gY29tcGlsZSBvem9uZS13YXlsYW5kIGluIHVidW50
dSBkZXNrdG9wIFBDLjwvcD48cD48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsOyBmb250
LXNpemU6IDE0LjY2NjdweDsgbGluZS1oZWlnaHQ6IDEuMzg7IHdoaXRlLXNwYWNlOiBwcmUtd3Jh
cDsiPnN1ZG8gYXB0LWdldCBpbnN0YWxsIGdwZXJmIGxpYm5zczMtZGV2IGxpYnB1bHNlLWRldiBs
aWJkYnVzLTEtZGV2IGxpYmV4aWYtZGV2IGxpYnBjaS1kZXYgbGlicGFuZ28xLjAtZGV2IGxpYmVs
Zi1kZXYgbGliY2FwLWRldiBsaWJhc291bmQyLWRldiBsaWJzc2wtZGV2IGxpYmN1cHMyLWRldiBs
aWJnY29uZjItZGV2IGxpYmdub21lLWtleXJpbmctZGV2PC9zcGFuPiZuYnNwOzwvcD48cD48c3Bh
biBzdHlsZT0iZm9udC1mYW1pbHk6IEFyaWFsOyBmb250LXNpemU6IDE0LjY2NjdweDsgbGluZS1o
ZWlnaHQ6IDEuMzg7IHdoaXRlLXNwYWNlOiBwcmUtd3JhcDsiPiZuYnNwOzwvc3Bhbj48L3A+PHA+
PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTogMTMuMzMzM3B4OyBsaW5lLWhlaWdodDogMS41OyI+aSB0
aGluay4sLiBpPC9zcGFuPnQgbWF5IHdvcmtzIG5vcm1hbGx5LCAmbmJzcDs8L3A+PHA+YnV0IGkg
YW0gbm90IHN1cmUuIGJlY2F1c2UgaSBoYXZlbid0IGRvbmUgeWV0IGluIHVidW50dSBkZXNrdG9w
IHBjLjwvcD48cD5hbnl3YXkmbmJzcDs8L3A+PHA+Jm5ic3A7PC9wPjxwPkJ1dCB3aGF0IGRvIGkg
ZG8gaW4geW9jdG8gcHJvamVjdD88L3A+PHA+Jm5ic3A7PC9wPjxwPnRoYW5rcy48L3A+PHA+Jm5i
c3A7PC9wPjwvZGl2PjwvYm9keT48L2h0bWw+Cjx0YWJsZSBzdHlsZT0iZGlzcGxheTpub25lIj48
dHI+PHRkPjxpbWcgc3JjPSJodHRwOi8vbWFpbC5uYXZlci5jb20vcmVhZFJlY2VpcHQvbm90aWZ5
Lz9pbWc9ZndlTjFCJTJCWk02a3ZwenU5aEFSUHBvZ3JLekpvTXEzQ01vQzRLeEVscDZFWnA0TSUy
RkZycFNGelU5dHpGWHA2VW1GWmw1V0xsNTF6bHFEQkZkcDZkNU1yZVJob1JsV3JGZFdkSWxXckZk
V1hJWldyRzBNWHQ1V1hpTi5naWYiIGJvcmRlcj0iMCI+PC90ZD48L3RyPjwvdGFibGU+

------=_Part_674984_14446627.1457687623618--
