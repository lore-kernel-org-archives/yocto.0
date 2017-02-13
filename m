Return-Path: <earwigz@naver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EC11E0082E; Mon, 13 Feb 2017 01:09:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.5 required=5.0 tests=BAYES_50,HTML_IMAGE_ONLY_08,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [125.209.239.215 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.7 HTML_IMAGE_ONLY_08 BODY: HTML: images with 400-800 bytes of words
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4098]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from cmailsend38.nm.naver.com (cmailsend38.nm.naver.com
	[125.209.239.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0E56E00726
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 01:09:13 -0800 (PST)
Received: (qmail 28959 invoked by uid 100); 13 Feb 2017 09:09:12 -0000
Received: from 10.114.49.76 (HELO cweb09.nm.nhnsystem.com) (10.114.49.76)
	by cmailsend38.nm.naver.com with SMTP;13 Feb 2017 09:09:12 -0000
Date: Mon, 13 Feb 2017 18:09:12 +0900 (KST)
From: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
To: yoctoproject <yocto@yoctoproject.org>
Message-ID: <beec767d8cd8eca1c8f9e156533174d3@cweb09.nm.nhnsystem.com>
MIME-Version: 1.0
Importance: high
X-Priority: 1 (Highest)
X-Naver-CIP: 61.107.31.52
Subject: How do you increase the speed of packages that take a long time to build, such as qt (in meta-qt5) ?
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
X-List-Received-Date: Mon, 13 Feb 2017 09:09:19 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_501444_491974685.1486976952581"

------=_Part_501444_491974685.1486976952581
Content-Type: text/plain;
	charset=UTF-8
Content-Transfer-Encoding: base64

V2UgYXJlIGFscmVhZHkgdXNlIHNvdXJjZS1taXJyb3IgYW5kIHNzdGF0ZS1jYWNoZSB3aXRoIG5m
cy4KIAphZGRpdGlvbmFsIHF1ZXN0aW9uLCBJIHdvbmRlciBpZiB0aGVyZSBpcyBhIHdheSB0byB1
c2UgdGhlIGJpbmFyaWVzLCBoZWFkZXJzLCBhbmQgbGlicmFyaWVzIGNyZWF0ZWQgYWZ0ZXIgdGhl
IGJ1aWxkLiAKIApUaGFua3MKIAogCg==

------=_Part_501444_491974685.1486976952581
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PHN0eWxlPnB7bWFyZ2luLXRvcDowcHg7bWFyZ2luLWJvdHRvbTowcHg7fTwv
c3R5bGU+PC9oZWFkPjxib2R5PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyBmb250LWZhbWls
eTpHdWxpbTsiPjxwPjxzcGFuIHN0eWxlPSJmb250LXNpemU6IDEwcHQ7Ij5XZSBhcmUgYWxyZWFk
eSB1c2Ugc291cmNlLW1pcnJvciBhbmQgc3N0YXRlLWNhY2hlIHdpdGggbmZzLjwvc3Bhbj48L3A+
PHA+Jm5ic3A7PC9wPjxwPmFkZGl0aW9uYWwgcXVlc3Rpb24sIEkgd29uZGVyIGlmIHRoZXJlIGlz
IGEgd2F5IHRvIHVzZSB0aGUgYmluYXJpZXMsIGhlYWRlcnMsIGFuZCBsaWJyYXJpZXMgY3JlYXRl
ZCBhZnRlciB0aGUgYnVpbGQuJm5ic3A7PC9wPjxwPiZuYnNwOzwvcD48cD5UaGFua3M8L3A+PHA+
Jm5ic3A7PC9wPjxwPiZuYnNwOzwvcD48L2Rpdj48L2JvZHk+PC9odG1sPgo8dGFibGUgc3R5bGU9
ImRpc3BsYXk6bm9uZSI+PHRyPjx0ZD48aW1nIHNyYz0iaHR0cHM6Ly9tYWlsLm5hdmVyLmNvbS9y
ZWFkUmVjZWlwdC9ub3RpZnkvP2ltZz1mUWVOMUIlMkJaTTZrb3A2a1NoQVJQRnFNWHBBQ29wQUMw
TXJ1d01xQzRhNkV3RnhNOUtxS3dGcTN2S2RJbyUyQnJrU0tBdjVXNGQ1VzRDNWJYMHElMkJ6a1I3
NEZUV3glMkZzRDZlbyUyQnplZ0Q2ZW8lMkJ6ZW1iNGU4cDZGZDc0ZVpwbSUzRCUzRC5naWYiIGJv
cmRlcj0iMCI+PC90ZD48L3RyPjwvdGFibGU+

------=_Part_501444_491974685.1486976952581--
