Return-Path: <earwigz@naver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CF45E00929; Mon, 28 Mar 2016 01:33:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.1 required=5.0 tests=BAYES_20,HTML_IMAGE_ONLY_12,
	HTML_MESSAGE,T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 2.1 HTML_IMAGE_ONLY_12 BODY: HTML: images with 800-1200
	bytes of words
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0962]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from cmailsend16.nm.naver.com (cmailsend16.nm.naver.com
	[125.209.208.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1059E0086B
	for <yocto@yoctoproject.org>; Mon, 28 Mar 2016 01:33:10 -0700 (PDT)
Received: (qmail 5110 invoked by uid 100); 28 Mar 2016 08:33:09 -0000
Received: from 10.114.52.104 (HELO cweb05.nm.nhnsystem.com) (10.114.52.104)
	by cmailsend16.nm.naver.com with SMTP;28 Mar 2016 08:33:09 -0000
Date: Mon, 28 Mar 2016 17:33:09 +0900 (KST)
From: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
To: yoctoproject <yocto@yoctoproject.org>
Message-ID: <426eab4493ea1ce18b994c8fd83b653@cweb05.nm.nhnsystem.com>
MIME-Version: 1.0
Importance: normal
X-Priority: 3 (Normal)
X-Naver-CIP: 61.107.31.52
Subject: how to patch except unpack?
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
X-List-Received-Date: Mon, 28 Mar 2016 08:33:14 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_830730_663570918.1459153989364"

------=_Part_830730_663570918.1459153989364
Content-Type: text/plain;
	charset=UTF-8
Content-Transfer-Encoding: base64

SSBhbSBtYWtpbmcgcmVjaXBlcyB1c2luZyBzb3VyY2UgdGhhdCBhcmUgcGFja2VkIHRhci4KZXgp
IGN1c3RvbXJlY2lwZS5iYgpleCkgc291cmNlLnRhci54egogClNvLCB3aGVuIGkgY29tcGlsZWQg
dGhpcyByZWNpcGVzIGkganVzdCB0eXBlZCBiZWxvdy4KJCBiaXRiYWtlIGN1c3RvbXJlY2lwZQog
CkV2ZXJ5IHRpbWVzLCB1bnBhY2sgbWV0aG9kIHdhcyBjYWxsZWQgZWFjaCBjb21waWxlIHRpbWVz
LgpDdXJyZW50bHkgMSBydW5uaW5nIHRhc2tzICg2NSBvZiA2Nik6CjA6IGN1c3RvbXJlY2lwZSBk
b191bnBhY2sgKHBpZCAyNjU1MCkKIApJIGp1c3Qgd2FudGVkIHRvIGtub3cgaWYgcGF0Y2hzIHdl
cmUgY29tcGxldGVkIG9yIG5vdC4KV2hhdCBkbyBpIGRvPwpDb3VsZCB5b3UgaGVscCBtZT8KIApU
aGFua3MuCgo=

------=_Part_830730_663570918.1459153989364
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PHN0eWxlPnB7bWFyZ2luLXRvcDowcHg7bWFyZ2luLWJvdHRvbTowcHg7fTwv
c3R5bGU+PC9oZWFkPjxib2R5PjxkaXYgc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyBmb250LWZhbWls
eTpHdWxpbTsiPjxwPkkgYW0gbWFraW5nIHJlY2lwZXMgdXNpbmcgc291cmNlIHRoYXQgYXJlIHBh
Y2tlZCB0YXIuPC9wPjxwPmV4KSBjdXN0b21yZWNpcGUuYmI8L3A+PHA+ZXgpIHNvdXJjZS50YXIu
eHo8L3A+PHA+Jm5ic3A7PC9wPjxwPlNvLCB3aGVuIGkgY29tcGlsZWQgdGhpcyByZWNpcGVzIGkg
anVzdCB0eXBlZCBiZWxvdy48L3A+PHA+JCBiaXRiYWtlIGN1c3RvbXJlY2lwZTwvcD48cD4mbmJz
cDs8L3A+PHA+RXZlcnkgdGltZXMsIHVucGFjayBtZXRob2Qgd2FzIGNhbGxlZCBlYWNoIGNvbXBp
bGUgdGltZXMuPC9wPjxwPkN1cnJlbnRseSAxIHJ1bm5pbmcgdGFza3MgKDY1IG9mIDY2KTo8L3A+
PHA+MDogY3VzdG9tcmVjaXBlIGRvX3VucGFjayAocGlkIDI2NTUwKTwvcD48cD4mbmJzcDs8L3A+
PHA+SSBqdXN0IHdhbnRlZCB0byBrbm93IGlmIHBhdGNocyB3ZXJlIGNvbXBsZXRlZCBvciBub3Qu
PC9wPjxwPldoYXQgZG8gaSBkbz88L3A+PHA+Q291bGQgeW91IGhlbHAgbWU/PC9wPjxwPiZuYnNw
OzwvcD48cD5UaGFua3MuPC9wPjxkaXY+PGJyPjwvZGl2PjwvZGl2PjwvYm9keT48L2h0bWw+Cjx0
YWJsZSBzdHlsZT0iZGlzcGxheTpub25lIj48dHI+PHRkPjxpbWcgc3JjPSJodHRwOi8vbWFpbC5u
YXZlci5jb20vcmVhZFJlY2VpcHQvbm90aWZ5Lz9pbWc9ZlhSTjFCJTJCWk02azBGb1VkaEFSUE02
VWRGQXZxcDZ1d01yRXdhelVsYXgzb2F6cHZhQUZTRm9FcXR6RlhwNlVtRkxsNVdMbDUxemxxREJG
ZHA2ZDVNcmVSaG9SbFdyRmRXZElsV3JGZFdYSVpXckcwTVh0NVdYaU4uZ2lmIiBib3JkZXI9IjAi
PjwvdGQ+PC90cj48L3RhYmxlPg==

------=_Part_830730_663570918.1459153989364--
