Return-Path: <earwigz@naver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE593E0093F; Wed, 22 Mar 2017 02:04:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.9 required=5.0 tests=BAYES_50,HTML_IMAGE_ONLY_12,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [125.209.208.213 listed in list.dnswl.org]
	* 2.1 HTML_IMAGE_ONLY_12 BODY: HTML: images with 800-1200 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4993]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Mar 2017 02:04:51 PDT
Received: from cmailsend04.nm.naver.com (cmailsend04.nm.naver.com
	[125.209.208.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76B5BE00655
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 02:04:51 -0700 (PDT)
Received: (qmail 30722 invoked by uid 100); 22 Mar 2017 08:58:10 -0000
Received: from 10.114.52.100 (HELO cweb29.nm.nhnsystem.com) (10.114.52.100)
	by cmailsend04.nm.naver.com with SMTP;22 Mar 2017 08:58:10 -0000
Date: Wed, 22 Mar 2017 17:58:10 +0900 (KST)
From: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
To: yoctoproject <yocto@yoctoproject.org>
Message-ID: <e8ebee466331a613ef4786c7fc3c6@cweb29.nm.nhnsystem.com>
MIME-Version: 1.0
Importance: normal
X-Priority: 3 (Normal)
X-Naver-CIP: 61.107.31.52
Subject: Can I change the value of D in a task?
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
X-List-Received-Date: Wed, 22 Mar 2017 09:04:55 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_228222_634405570.1490173090506"

------=_Part_228222_634405570.1490173090506
Content-Type: text/plain;
	charset=UTF-8
Content-Transfer-Encoding: base64

SGksIAogCkkgd2FudCB0byBjaGFuZ2UgdGhlIHZhbHVlIG9mIEQgaW4gdGFza3MsIGxpa2UgZG9f
aW5zdGFsbCwgZG9fY29tcGlsZSAuLi4KLSBJdCBpcyB1c2VsZXNzIHRvIGNoYW5nZSBvdXRzaWRl
LgogCldoYXQgc2hvdWxkIEkgZG8/CiAKSSB0cmllZCB0aGUgZm9sbG93aW5nIGJ1dCBpdCBkaWQg
bm90IHdvcmsuCjEuCmRvX2luc3RhbGwgKCkgewogICAgRCA9ICImbHQ7cGF0aCZndDsiCn0KIAoy
Lgpkb19pbnN0YWxsICgpIHsKICAgIGV4cG9ydCBEID0gIiZsdDtwYXRoJmd0OyIKfQogClRoYW5r
cwo=

------=_Part_228222_634405570.1490173090506
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PHN0eWxlPnB7bWFyZ2luLXRvcDowcHg7bWFyZ2luLWJvdHRvbTowcHg7fTwv
c3R5bGU+PC9oZWFkPjxib2R5PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyBmb250LWZhbWls
eTpHdWxpbTsiPjxwPkhpLCZuYnNwOzwvcD48cD4mbmJzcDs8L3A+PHA+SSB3YW50IHRvIGNoYW5n
ZSB0aGUgdmFsdWUgb2YgRCBpbiB0YXNrcywgbGlrZSBkb19pbnN0YWxsLCBkb19jb21waWxlIC4u
LjwvcD48cD4tIEl0IGlzIHVzZWxlc3MgdG8gY2hhbmdlIG91dHNpZGUuPC9wPjxwPiZuYnNwOzwv
cD48cD5XaGF0IHNob3VsZCBJIGRvPzwvcD48cD4mbmJzcDs8L3A+PHA+SSB0cmllZCB0aGUgZm9s
bG93aW5nIGJ1dCBpdCBkaWQgbm90IHdvcmsuPC9wPjxwPjEuPC9wPjxwPmRvX2luc3RhbGwgKCkg
ezwvcD48cD4mbmJzcDsgJm5ic3A7IEQgPSAiJmx0O3BhdGgmZ3Q7IjwvcD48cD59PC9wPjxwPiZu
YnNwOzwvcD48cD4yLjwvcD48cD5kb19pbnN0YWxsICgpIHs8L3A+PHA+Jm5ic3A7ICZuYnNwOyBl
eHBvcnQgRCA9ICImbHQ7cGF0aCZndDsiPC9wPjxwPn08L3A+PHA+Jm5ic3A7PC9wPjxwPlRoYW5r
czwvcD48L2Rpdj48L2JvZHk+PC9odG1sPgo8dGFibGUgc3R5bGU9ImRpc3BsYXk6bm9uZSI+PHRy
Pjx0ZD48aW1nIHNyYz0iaHR0cHM6Ly9tYWlsLm5hdmVyLmNvbS9yZWFkUmVjZWlwdC9ub3RpZnkv
P2ltZz1mZmVOMUIlMkJaTTZrU3B4QzBoQVJQcDZFZEZvTXFLcUpDRm91cXA2TWRGcTJyTXElMkI0
TXFGb0Z2SW8lMkJya1NLb3Y1VzRkNVc0QzViWDBxJTJCemtSNzRGVFd4JTJGc0Q2ZW8lMkJ6ZWdE
NmVvJTJCemVtYjRlOHA2RmQ3NGVacG0lM0QlM0QuZ2lmIiBib3JkZXI9IjAiPjwvdGQ+PC90cj48
L3RhYmxlPg==

------=_Part_228222_634405570.1490173090506--
