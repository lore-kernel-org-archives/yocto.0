Return-Path: <earwigz@naver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE773E00BE8; Sun, 20 Mar 2016 22:31:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.7 required=5.0 tests=BAYES_40,HTML_IMAGE_ONLY_08,
	HTML_MESSAGE,T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3677]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.7 HTML_IMAGE_ONLY_08 BODY: HTML: images with 400-800 bytes of words
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Sun, 20 Mar 2016 22:31:38 PDT
Received: from cmailsend26.nm.naver.com (cmailsend26.nm.naver.com
	[125.209.239.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19EA8E007B5
	for <yocto@yoctoproject.org>; Sun, 20 Mar 2016 22:31:38 -0700 (PDT)
Received: (qmail 3850 invoked by uid 100); 21 Mar 2016 05:24:57 -0000
Received: from 10.114.49.164 (HELO cweb02.nm.nhnsystem.com) (10.114.49.164)
	by cmailsend26.nm.naver.com with SMTP;21 Mar 2016 05:24:57 -0000
Date: Mon, 21 Mar 2016 14:24:57 +0900 (KST)
From: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
To: yoctoproject <yocto@yoctoproject.org>
Message-ID: <bbaea51dfd2a872c4252d933d6ac97cf@cweb02.nm.nhnsystem.com>
MIME-Version: 1.0
Importance: normal
X-Priority: 3 (Normal)
X-Naver-CIP: 61.107.31.52
Subject: what is your way to flash for target using own image?
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
X-List-Received-Date: Mon, 21 Mar 2016 05:31:42 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_649041_783377148.1458537897766"

------=_Part_649041_783377148.1458537897766
Content-Type: text/plain;
	charset=UTF-8
Content-Transfer-Encoding: base64

SGksCiAKSSBoYXZlIGFsd2F5cyBmbGFzaCBvd24gY29tcGlsZWQgYmluYXJ5IGZvciB0byBjaGVj
ayBzb21lIG1vZGlmaWNhdGlvbi4KdGhpcyB3YXksIGl0IHdhcyBzcGVuZGluZyB0b28gbXVjaCB0
aW1lLgogClNvLCBpIHJlYWxseSB3YW50IHRvIGtub3cgdGhlIGVmZmVjdGl2ZSB3YXkuClBsZWFz
ZSBoZWxwIGFuZCBzaGFyZXMgeW91ciB3aXNkb20uCiAKVGhhbmsgeW91LgpCZXN0IFJlZ2FyZHMu
Cg==

------=_Part_649041_783377148.1458537897766
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PHN0eWxlPnB7bWFyZ2luLXRvcDowcHg7bWFyZ2luLWJvdHRvbTowcHg7fTwv
c3R5bGU+PC9oZWFkPjxib2R5PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyBmb250LWZhbWls
eTpHdWxpbTsiPjxwPkhpLDwvcD48cD4mbmJzcDs8L3A+PHA+SSBoYXZlIGFsd2F5cyBmbGFzaCBv
d24gY29tcGlsZWQgYmluYXJ5IGZvciB0byBjaGVjayBzb21lIG1vZGlmaWNhdGlvbi48L3A+PHA+
dGhpcyB3YXksIGl0IHdhcyBzcGVuZGluZyB0b28gbXVjaCB0aW1lLjwvcD48cD4mbmJzcDs8L3A+
PHA+U28sIGkgcmVhbGx5IHdhbnQgdG8ga25vdyB0aGUgZWZmZWN0aXZlIHdheS48L3A+PHA+UGxl
YXNlIGhlbHAgYW5kIHNoYXJlcyB5b3VyIHdpc2RvbS48L3A+PHA+Jm5ic3A7PC9wPjxwPlRoYW5r
IHlvdS48L3A+PHA+QmVzdCBSZWdhcmRzLjwvcD48L2Rpdj48L2JvZHk+PC9odG1sPgo8dGFibGUg
c3R5bGU9ImRpc3BsYXk6bm9uZSI+PHRyPjx0ZD48aW1nIHNyYz0iaHR0cDovL21haWwubmF2ZXIu
Y29tL3JlYWRSZWNlaXB0L25vdGlmeS8/aW1nPWZtRk4xQiUyQlpNNmswTTZpU2hBUlBNeEV3cHpw
dks0dSUyRkZxaW9GQVU5SzR0bEtxRnZGNEpvYXglMkJvcHZJbyUyQnJrU0tBVTVXNGQ1VzRDNWJY
MHElMkJ6a1I3NEZUV3glMkZzRDZlbyUyQnplZ0Q2ZW8lMkJ6ZW1iNGU4cDZGZDc0ZVpwbSUzRCUz
RC5naWYiIGJvcmRlcj0iMCI+PC90ZD48L3RyPjwvdGFibGU+

------=_Part_649041_783377148.1458537897766--
