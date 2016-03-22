Return-Path: <earwigz@naver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8963E006AE; Mon, 21 Mar 2016 18:25:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=5.0 tests=BAYES_50,HTML_IMAGE_ONLY_08,
	HTML_MESSAGE,T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.7 HTML_IMAGE_ONLY_08 BODY: HTML: images with 400-800 bytes of words
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4316]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from cmailsend34.nm.naver.com (cmailsend34.nm.naver.com
	[125.209.239.211])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16EFEE00443
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2016 18:25:37 -0700 (PDT)
Received: (qmail 16028 invoked by uid 100); 22 Mar 2016 01:25:35 -0000
Received: from 10.114.49.82 (HELO cweb15.nm.nhnsystem.com) (10.114.49.82)
	by cmailsend34.nm.naver.com with SMTP;22 Mar 2016 01:25:35 -0000
Date: Tue, 22 Mar 2016 10:25:35 +0900 (KST)
From: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
To: yoctoproject <yocto@yoctoproject.org>
Message-ID: <15af963349a492e32566a8f49141d89@cweb15.nm.nhnsystem.com>
References: <bbaea51dfd2a872c4252d933d6ac97cf@cweb02.nm.nhnsystem.com>
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
X-List-Received-Date: Tue, 22 Mar 2016 01:25:41 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1075349_1833199680.1458609935679"

------=_Part_1075349_1833199680.1458609935679
Content-Type: text/plain;
	charset=UTF-8
Content-Transfer-Encoding: base64

SGksCiAKSSBoYXZlIGFsd2F5cyBmbGFzaCBvd24gY29tcGlsZWQgYmluYXJ5IGZvciB0byBjaGVj
ayBzb21lIG1vZGlmaWNhdGlvbi4KdGhpcyB3YXksIGl0IHdhcyBzcGVuZGluZyB0b28gbXVjaCB0
aW1lLgogClNvLCBpIHJlYWxseSB3YW50IHRvIGtub3cgdGhlIGVmZmVjdGl2ZSB3YXkuClBsZWFz
ZSBoZWxwIGFuZCBzaGFyZXMgeW91ciB3aXNkb20uCiAKVGhhbmsgeW91LgpCZXN0IFJlZ2FyZHMu
CgoKCgo=

------=_Part_1075349_1833199680.1458609935679
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PHN0eWxlPnB7bWFyZ2luLXRvcDowcHg7bWFyZ2luLWJvdHRvbTowcHg7fTwv
c3R5bGU+PC9oZWFkPjxib2R5PjwhLS0gIC0tPjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyBm
b250LWZhbWlseTpHdWxpbTsiPjxwPkhpLDwvcD48cD4mbmJzcDs8L3A+PHA+SSBoYXZlIGFsd2F5
cyBmbGFzaCBvd24gY29tcGlsZWQgYmluYXJ5IGZvciB0byBjaGVjayBzb21lIG1vZGlmaWNhdGlv
bi48L3A+PHA+dGhpcyB3YXksIGl0IHdhcyBzcGVuZGluZyB0b28gbXVjaCB0aW1lLjwvcD48cD4m
bmJzcDs8L3A+PHA+U28sIGkgcmVhbGx5IHdhbnQgdG8ga25vdyB0aGUgZWZmZWN0aXZlIHdheS48
L3A+PHA+UGxlYXNlIGhlbHAgYW5kIHNoYXJlcyB5b3VyIHdpc2RvbS48L3A+PHA+Jm5ic3A7PC9w
PjxwPlRoYW5rIHlvdS48L3A+PHA+QmVzdCBSZWdhcmRzLjwvcD48L2Rpdj4KCgoKPC9ib2R5Pjwv
aHRtbD4KPHRhYmxlIHN0eWxlPSJkaXNwbGF5Om5vbmUiPjx0cj48dGQ+PGltZyBzcmM9Imh0dHA6
Ly9tYWlsLm5hdmVyLmNvbS9yZWFkUmVjZWlwdC9ub3RpZnkvP2ltZz1mUUZOMUIlMkJaTTZrNE14
RXdoQVJQYXhNcUtxdGxNeHRsSzRFcUtvRXJGNHUlMkZwb3RsS3h0d3BBMmx0ekZYcDZVd0ZMbDVX
TGw1MXpscURCRmRwNmQ1TXJlUmhvUmxXckZkV2RJbFdyRmRXWElaV3JHME1YdDVXWGlOLmdpZiIg
Ym9yZGVyPSIwIj48L3RkPjwvdHI+PC90YWJsZT4=

------=_Part_1075349_1833199680.1458609935679--
