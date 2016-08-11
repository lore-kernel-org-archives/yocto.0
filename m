Return-Path: <earwigz@naver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE0A6E0100E; Wed, 10 Aug 2016 22:19:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.9 required=5.0 tests=BAYES_50,HTML_IMAGE_ONLY_12,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [125.209.208.227 listed in list.dnswl.org]
	* 2.1 HTML_IMAGE_ONLY_12 BODY: HTML: images with 800-1200 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4954]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 400 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Aug 2016 22:19:19 PDT
Received: from cmailsend18.nm.naver.com (cmailsend18.nm.naver.com
	[125.209.208.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75CF3E0100B
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2016 22:19:19 -0700 (PDT)
Received: (qmail 29779 invoked by uid 100); 11 Aug 2016 05:12:38 -0000
Received: from 10.114.49.86 (HELO cweb19.nm.nhnsystem.com) (10.114.49.86)
	by cmailsend18.nm.naver.com with SMTP;11 Aug 2016 05:12:38 -0000
Date: Thu, 11 Aug 2016 14:12:38 +0900 (KST)
From: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
To: yoctoproject <yocto@yoctoproject.org>
Message-ID: <178dbf86a1c322ef74afcdaf5655d659@cweb19.nm.nhnsystem.com>
MIME-Version: 1.0
Importance: normal
X-Priority: 3 (Normal)
X-Naver-CIP: 61.107.31.52
Subject: can be designed don't using bb file?
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
X-List-Received-Date: Thu, 11 Aug 2016 05:19:23 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_27414_1236237833.1470892358007"

------=_Part_27414_1236237833.1470892358007
Content-Type: text/plain;
	charset=UTF-8
Content-Transfer-Encoding: base64

ZGVhciwgYWxsLgppIGhhdmUgYSBxdWVzdGlvbi4uCnBsZWFzZSByZWFkIG15IGNvbW1lbnQga2lu
ZGx5LgogCmZvciBleGFtcGxlLCBpZiBpIHdpbGwgYnVpbGQgdGVzdC5iYiByZWNpcGVzLiAKKGV4
IG1ldGEtdGVzdCAvIHJlY2lwZXMtdGVzdCAvIHRlc3QuYmIpCndoZW4gcnVuICJiaXRiYWtlIHRl
c3QiLApzb3VyY2UgY29kZSB0aGF0IHNldCBpbiBTUkNfVVJJIHdhcyBkb3dubG9hZGVkIGFuZCBi
dWlsdC4KIAppdCBpcyBub3QgdXNpbmcgdGhlIHRlc3QuYmIgcmVjaXBlcywgCmNhbiBiZSBkZXNp
Z25lZCB0aGF0IHByZXNlbnQgc291cmNlIGFyZSB0aGVyZSBpbiB0aGlzIGRpcmVjdG9yeT8KIAok
IGxzIG1ldGEtdGVzdC9yZWNpcGVzLXRlc3QvCiAgbWFpbi5jcHAKICBpbmNsdWRlCiAKIApUaGFu
ayB5b3UKYmVzdCByZWdhcmRzLgogCiAK

------=_Part_27414_1236237833.1470892358007
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PHN0eWxlPnB7bWFyZ2luLXRvcDowcHg7bWFyZ2luLWJvdHRvbTowcHg7fTwv
c3R5bGU+PC9oZWFkPjxib2R5PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyBmb250LWZhbWls
eTpHdWxpbTsiPjxwPmRlYXIsIGFsbC48L3A+PHA+aSBoYXZlIGEgcXVlc3Rpb24uLjwvcD48cD5w
bGVhc2UgcmVhZCBteSBjb21tZW50IGtpbmRseS48L3A+PHA+Jm5ic3A7PC9wPjxwPmZvciBleGFt
cGxlLCBpZiBpIHdpbGwgYnVpbGQgdGVzdC5iYiByZWNpcGVzLiZuYnNwOzwvcD48cD4oZXggbWV0
YS10ZXN0IC8gcmVjaXBlcy10ZXN0IC8gdGVzdC5iYik8L3A+PHA+d2hlbiBydW4gImJpdGJha2Ug
dGVzdCIsPC9wPjxwPnNvdXJjZSBjb2RlIHRoYXQgc2V0IGluIFNSQ19VUkkgd2FzIGRvd25sb2Fk
ZWQgYW5kIGJ1aWx0LjwvcD48cD4mbmJzcDs8L3A+PHA+aXQgaXMgbm90IHVzaW5nIHRoZSB0ZXN0
LmJiIHJlY2lwZXMsJm5ic3A7PC9wPjxwPmNhbiBiZSBkZXNpZ25lZCB0aGF0IHByZXNlbnQgc291
cmNlIGFyZSB0aGVyZSBpbiB0aGlzIGRpcmVjdG9yeT88L3A+PHA+Jm5ic3A7PC9wPjxwPiQgbHMg
bWV0YS10ZXN0L3JlY2lwZXMtdGVzdC88L3A+PHA+Jm5ic3A7IG1haW4uY3BwPC9wPjxwPiZuYnNw
OyBpbmNsdWRlPC9wPjxwPiZuYnNwOzwvcD48cD4mbmJzcDs8L3A+PHA+VGhhbmsgeW91PC9wPjxw
PmJlc3QgcmVnYXJkcy48L3A+PHA+Jm5ic3A7PC9wPjxwPiZuYnNwOzwvcD48L2Rpdj48L2JvZHk+
PC9odG1sPgo8dGFibGUgc3R5bGU9ImRpc3BsYXk6bm9uZSI+PHRyPjx0ZD48aW1nIHNyYz0iaHR0
cDovL21haWwubmF2ZXIuY29tL3JlYWRSZWNlaXB0L25vdGlmeS8/aW1nPWZRJTJCTjFCJTJCWk02
a3ZhQWJ3aEFSUE00TSUyRkY0dXdNcUtaSzRrNEZxM0NwNEZ2TTZNOUZvRTlwQU05YUVJbyUyQnJr
U0t4djVXNGQ1VzRDNWJYMHElMkJ6a1I3NEZUV3glMkZzRDZlbyUyQnplZ0Q2ZW8lMkJ6ZW1iNGU4
cDZGZDc0ZVpwbSUzRCUzRC5naWYiIGJvcmRlcj0iMCI+PC90ZD48L3RyPjwvdGFibGU+

------=_Part_27414_1236237833.1470892358007--
