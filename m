Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ADEEE00D94; Thu, 24 Sep 2015 08:17:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F90DE00D6B
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 08:17:05 -0700 (PDT)
Received: by pacfv12 with SMTP id fv12so77020093pac.2
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 08:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-type:content-transfer-encoding;
	bh=q49KYoJVYgFbQjCgtLYEN797LlloIn+2yLatAaRdygg=;
	b=Bihb/QA1euu5CGLQK1mIZJXx+/lWsDFe64zTOwzbiUrRC2+9xB1cJVUGj+E7skbJS2
	emSQaj2FAhnUW6f2CEI7xJ0gQUjj1PIEN2beueXXM5DNupqP1BwCjojr+78MVBObT/8Z
	WYZgUcAnO9k6WXb9a7GF44Ryi9AMvsxTq3CutCgYdR8Qv1TbbG/GKW4tV3pcbP1eJbM2
	TnJztRUpk6gUCEnX3YyM5ZkMphGeHqIc89OPOXqpYm0pFd+8qAaKsHmgdFRXJ5sD2qtc
	F2OpmojIiuvhGFIUyZwdgxlG6dZmiZH1byDect0U/RKXpchemD7HuDZTSCqhLcfUVo2x
	mUGw==
X-Received: by 10.66.142.101 with SMTP id rv5mr257034pab.25.1443107825420;
	Thu, 24 Sep 2015 08:17:05 -0700 (PDT)
Received: from rjs-mbpro.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	df2sm14281063pad.19.2015.09.24.08.17.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 24 Sep 2015 08:17:04 -0700 (PDT)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 24 Sep 2015 08:17:02 -0700
Message-ID: <7720054.5AybCaxdE3@rjs-mbpro.streifs.net>
User-Agent: KMail/4.14.6 (Linux/3.19.3-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <CAF3SDA7LLcZP5D8Tr7=fZ+xsBK2DbW8GtKVi4SVng-dPnuog2g@mail.gmail.com>
References: <5603f9ce.e9d1440a.dc3ac.43adSMTPIN_ADDED_BROKEN@mx.google.com>
	<CAF3SDA4j6h=5btgBtVVdxwFwR+eT+SdtmYXk7Wd9mrXk9WyL5g@mail.gmail.com>
	<CAF3SDA7LLcZP5D8Tr7=fZ+xsBK2DbW8GtKVi4SVng-dPnuog2g@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Setting root password
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
X-List-Received-Date: Thu, 24 Sep 2015 15:17:06 -0000
Content-Type: multipart/alternative; boundary="nextPart21868170.yRdZpcOMlu"
Content-Transfer-Encoding: 7Bit

--nextPart21868170.yRdZpcOMlu
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="iso-8859-1"

SGkgQW5keSwgRGFuaWVsCgpPbiBUaHVyc2RheSwgU2VwdGVtYmVyIDI0LCAyMDE1IDExOjIwOjM3
IEFNIERhbmllbC4gd3JvdGU6CgoKPiBTdGlsbCwgSSB0aGluayBpcyBhIGdvb2QgaWRlaWEgdG8g
dW5kZXJzdGFuZCB3aGF0IGlzIGdvaW5nIHdyb25nIHdpdGgKPiBFWFRSQV9VU0VSU19QQVJBTVMs
IG90aGVyIHVzZXJzIG1heSBoYXZpbmcgdGhlIHNhbWUgcHJvYmxlbS4KCgpFWFRSQV9VU0VSU19Q
QVJBTVMgd29ya3MgZm9yIG1lIGFsbCB0aGUgdGltZS4gVGhlIHN0YW56YSBpcyB3aGF0IEkgYW0g
dXNpbmcgaW4gCm15IGltYWdlIHJlY2lwZXM6CgpFWFRSQV9VU0VSU19QQVJBTVMgPSAiXGdyb3Vw
YWRkIGRldmVsb3BlcnM7IFx1c2VyYWRkIC1wIGBvcGVuc3NsIHBhc3N3ZCAKJHtERVZfUEFTU1dP
UkR9YCBkZXZlbG9wZXI7IFx1c2VyYWRkIC1nIGRldmVsb3BlcnMgZGV2ZWxvcGVyOyBcCnVzZXJt
b2QgLXAgYG9wZW5zc2wgcGFzc3dkICR7Uk9PVF9QQVNTV09SRH1gIHJvb3Q7IFwKIgoKSWYgdGhp
cyBpcyBhbiBhY2N1cmF0ZSBjb3B5IG9mIHdoYXQgeW91IGFyZSB1c2luZwAgKGZyb20geW91IGZp
cnN0IGVtYWlsKQoKPiBFWFRSQV9VU0VSU19QQVJBTVMgPSAidXNlcm1vZCAtUCA8ZW5jcnlwdGVk
X3Bhc3N3b3JkPiByb290OyIKCnRoZW4gdGhlIGlzc3VlIHByb2JhYmx5IGlzIHRoZSBjYXBpdGFs
IC1QLiBJdCBzaG91bGQgYmUgbG93ZXJjYXNlLgoKQ2hlZXJzLApSdWRpCgo=

--nextPart21868170.yRdZpcOMlu
Content-Transfer-Encoding: base64
Content-Type: text/html; charset="iso-8859-1"

PCFET0NUWVBFIEhUTUwgUFVCTElDICItLy9XM0MvL0RURCBIVE1MIDQuMC8vRU4iICJodHRwOi8v
d3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwL3N0cmljdC5kdGQiPgo8aHRtbD48aGVhZD48bWV0YSBu
YW1lPSJxcmljaHRleHQiIGNvbnRlbnQ9IjEiIC8+PHN0eWxlIHR5cGU9InRleHQvY3NzIj4KcCwg
bGkgeyB3aGl0ZS1zcGFjZTogcHJlLXdyYXA7IH0KPC9zdHlsZT48L2hlYWQ+PGJvZHkgc3R5bGU9
IiBmb250LWZhbWlseTonU2FucyBTZXJpZic7IGZvbnQtc2l6ZToxMHB0OyBmb250LXdlaWdodDo0
MDA7IGZvbnQtc3R5bGU6bm9ybWFsOyI+CjxwIHN0eWxlPSIgbWFyZ2luLXRvcDowcHg7IG1hcmdp
bi1ib3R0b206MHB4OyBtYXJnaW4tbGVmdDowcHg7IG1hcmdpbi1yaWdodDowcHg7IC1xdC1ibG9j
ay1pbmRlbnQ6MDsgdGV4dC1pbmRlbnQ6MHB4OyAtcXQtdXNlci1zdGF0ZTowOyI+SGkgQW5keSwg
RGFuaWVsPC9wPgo8cCBzdHlsZT0iLXF0LXBhcmFncmFwaC10eXBlOmVtcHR5OyBtYXJnaW4tdG9w
OjBweDsgbWFyZ2luLWJvdHRvbTowcHg7IG1hcmdpbi1sZWZ0OjBweDsgbWFyZ2luLXJpZ2h0OjBw
eDsgLXF0LWJsb2NrLWluZGVudDowOyB0ZXh0LWluZGVudDowcHg7ICI+Jm5ic3A7PC9wPgo8cCBz
dHlsZT0iIG1hcmdpbi10b3A6MHB4OyBtYXJnaW4tYm90dG9tOjBweDsgbWFyZ2luLWxlZnQ6MHB4
OyBtYXJnaW4tcmlnaHQ6MHB4OyAtcXQtYmxvY2staW5kZW50OjA7IHRleHQtaW5kZW50OjBweDsg
LXF0LXVzZXItc3RhdGU6MDsiPk9uIFRodXJzZGF5LCBTZXB0ZW1iZXIgMjQsIDIwMTUgMTE6MjA6
MzcgQU0gRGFuaWVsLiB3cm90ZTo8YnIgLz48L3A+CjxwIHN0eWxlPSIgbWFyZ2luLXRvcDowcHg7
IG1hcmdpbi1ib3R0b206MHB4OyBtYXJnaW4tbGVmdDowcHg7IG1hcmdpbi1yaWdodDowcHg7IC1x
dC1ibG9jay1pbmRlbnQ6MDsgdGV4dC1pbmRlbnQ6MHB4OyAtcXQtdXNlci1zdGF0ZTowOyI+Jmd0
OyBTdGlsbCwgSSB0aGluayBpcyBhIGdvb2QgaWRlaWEgdG8gdW5kZXJzdGFuZCB3aGF0IGlzIGdv
aW5nIHdyb25nIHdpdGg8L3A+CjxwIHN0eWxlPSIgbWFyZ2luLXRvcDowcHg7IG1hcmdpbi1ib3R0
b206MHB4OyBtYXJnaW4tbGVmdDowcHg7IG1hcmdpbi1yaWdodDowcHg7IC1xdC1ibG9jay1pbmRl
bnQ6MDsgdGV4dC1pbmRlbnQ6MHB4OyAtcXQtdXNlci1zdGF0ZTowOyI+Jmd0OyBFWFRSQV9VU0VS
U19QQVJBTVMsIG90aGVyIHVzZXJzIG1heSBoYXZpbmcgdGhlIHNhbWUgcHJvYmxlbS48YnIgLz48
L3A+CjxwIHN0eWxlPSIgbWFyZ2luLXRvcDowcHg7IG1hcmdpbi1ib3R0b206MHB4OyBtYXJnaW4t
bGVmdDowcHg7IG1hcmdpbi1yaWdodDowcHg7IC1xdC1ibG9jay1pbmRlbnQ6MDsgdGV4dC1pbmRl
bnQ6MHB4OyAtcXQtdXNlci1zdGF0ZTowOyI+RVhUUkFfVVNFUlNfUEFSQU1TIHdvcmtzIGZvciBt
ZSBhbGwgdGhlIHRpbWUuIFRoZSBzdGFuemEgaXMgd2hhdCBJIGFtIHVzaW5nIGluIG15IGltYWdl
IHJlY2lwZXM6PC9wPgo8cCBzdHlsZT0iLXF0LXBhcmFncmFwaC10eXBlOmVtcHR5OyBtYXJnaW4t
dG9wOjBweDsgbWFyZ2luLWJvdHRvbTowcHg7IG1hcmdpbi1sZWZ0OjBweDsgbWFyZ2luLXJpZ2h0
OjBweDsgLXF0LWJsb2NrLWluZGVudDowOyB0ZXh0LWluZGVudDowcHg7ICI+Jm5ic3A7PC9wPgo8
cCBzdHlsZT0iIG1hcmdpbi10b3A6MHB4OyBtYXJnaW4tYm90dG9tOjBweDsgbWFyZ2luLWxlZnQ6
MHB4OyBtYXJnaW4tcmlnaHQ6MHB4OyAtcXQtYmxvY2staW5kZW50OjA7IHRleHQtaW5kZW50OjBw
eDsgLXF0LXVzZXItc3RhdGU6MDsiPjxzcGFuIHN0eWxlPSIgZm9udC1mYW1pbHk6J2RlamF2dSBz
YW5zJzsgY29sb3I6IzAwMDAwMDsiPkVYVFJBX1VTRVJTX1BBUkFNUyA9ICZxdW90O1w8YnIgLz5n
cm91cGFkZCBkZXZlbG9wZXJzOyBcPGJyIC8+dXNlcmFkZCAtcCBgb3BlbnNzbCBwYXNzd2QgJHtE
RVZfUEFTU1dPUkR9YCBkZXZlbG9wZXI7IFw8YnIgLz51c2VyYWRkIC1nIGRldmVsb3BlcnMgZGV2
ZWxvcGVyOyBcPC9zcGFuPjwvcD4KPHAgc3R5bGU9IiBtYXJnaW4tdG9wOjBweDsgbWFyZ2luLWJv
dHRvbTowcHg7IG1hcmdpbi1sZWZ0OjBweDsgbWFyZ2luLXJpZ2h0OjBweDsgLXF0LWJsb2NrLWlu
ZGVudDowOyB0ZXh0LWluZGVudDowcHg7IC1xdC11c2VyLXN0YXRlOjA7Ij48c3BhbiBzdHlsZT0i
IGZvbnQtZmFtaWx5OidkZWphdnUgc2Fucyc7IGNvbG9yOiMwMDAwMDA7Ij51c2VybW9kIC1wIGBv
cGVuc3NsIHBhc3N3ZCAke1JPT1RfUEFTU1dPUkR9YCByb290OyBcPC9zcGFuPjwvcD4KPHAgc3R5
bGU9IiBtYXJnaW4tdG9wOjBweDsgbWFyZ2luLWJvdHRvbTowcHg7IG1hcmdpbi1sZWZ0OjBweDsg
bWFyZ2luLXJpZ2h0OjBweDsgLXF0LWJsb2NrLWluZGVudDowOyB0ZXh0LWluZGVudDowcHg7IC1x
dC11c2VyLXN0YXRlOjA7Ij48c3BhbiBzdHlsZT0iIGZvbnQtZmFtaWx5OidkZWphdnUgc2Fucyc7
IGNvbG9yOiMwMDAwMDA7Ij4mcXVvdDs8L3NwYW4+PC9wPgo8cCBzdHlsZT0iLXF0LXBhcmFncmFw
aC10eXBlOmVtcHR5OyBtYXJnaW4tdG9wOjBweDsgbWFyZ2luLWJvdHRvbTowcHg7IG1hcmdpbi1s
ZWZ0OjBweDsgbWFyZ2luLXJpZ2h0OjBweDsgLXF0LWJsb2NrLWluZGVudDowOyB0ZXh0LWluZGVu
dDowcHg7ICI+Jm5ic3A7PC9wPgo8cCBzdHlsZT0iIG1hcmdpbi10b3A6MHB4OyBtYXJnaW4tYm90
dG9tOjBweDsgbWFyZ2luLWxlZnQ6MHB4OyBtYXJnaW4tcmlnaHQ6MHB4OyAtcXQtYmxvY2staW5k
ZW50OjA7IHRleHQtaW5kZW50OjBweDsgLXF0LXVzZXItc3RhdGU6MDsiPklmIHRoaXMgaXMgYW4g
YWNjdXJhdGUgY29weSBvZiB3aGF0IHlvdSBhcmUgdXNpbmcAIChmcm9tIHlvdSBmaXJzdCBlbWFp
bCk8L3A+CjxwIHN0eWxlPSItcXQtcGFyYWdyYXBoLXR5cGU6ZW1wdHk7IG1hcmdpbi10b3A6MHB4
OyBtYXJnaW4tYm90dG9tOjBweDsgbWFyZ2luLWxlZnQ6MHB4OyBtYXJnaW4tcmlnaHQ6MHB4OyAt
cXQtYmxvY2staW5kZW50OjA7IHRleHQtaW5kZW50OjBweDsgIj4mbmJzcDs8L3A+CjxwIHN0eWxl
PSIgbWFyZ2luLXRvcDowcHg7IG1hcmdpbi1ib3R0b206MHB4OyBtYXJnaW4tbGVmdDowcHg7IG1h
cmdpbi1yaWdodDowcHg7IC1xdC1ibG9jay1pbmRlbnQ6MDsgdGV4dC1pbmRlbnQ6MHB4OyAtcXQt
dXNlci1zdGF0ZTowOyI+Jmd0OyBFWFRSQV9VU0VSU19QQVJBTVMgPSAmcXVvdDt1c2VybW9kIC1Q
ICZsdDtlbmNyeXB0ZWRfcGFzc3dvcmQmZ3Q7IHJvb3Q7JnF1b3Q7PC9wPgo8cCBzdHlsZT0iLXF0
LXBhcmFncmFwaC10eXBlOmVtcHR5OyBtYXJnaW4tdG9wOjBweDsgbWFyZ2luLWJvdHRvbTowcHg7
IG1hcmdpbi1sZWZ0OjBweDsgbWFyZ2luLXJpZ2h0OjBweDsgLXF0LWJsb2NrLWluZGVudDowOyB0
ZXh0LWluZGVudDowcHg7ICI+Jm5ic3A7PC9wPgo8cCBzdHlsZT0iIG1hcmdpbi10b3A6MHB4OyBt
YXJnaW4tYm90dG9tOjBweDsgbWFyZ2luLWxlZnQ6MHB4OyBtYXJnaW4tcmlnaHQ6MHB4OyAtcXQt
YmxvY2staW5kZW50OjA7IHRleHQtaW5kZW50OjBweDsgLXF0LXVzZXItc3RhdGU6MDsiPnRoZW4g
dGhlIGlzc3VlIHByb2JhYmx5IGlzIHRoZSBjYXBpdGFsIC1QLiBJdCBzaG91bGQgYmUgbG93ZXJj
YXNlLjwvcD4KPHAgc3R5bGU9Ii1xdC1wYXJhZ3JhcGgtdHlwZTplbXB0eTsgbWFyZ2luLXRvcDow
cHg7IG1hcmdpbi1ib3R0b206MHB4OyBtYXJnaW4tbGVmdDowcHg7IG1hcmdpbi1yaWdodDowcHg7
IC1xdC1ibG9jay1pbmRlbnQ6MDsgdGV4dC1pbmRlbnQ6MHB4OyAiPiZuYnNwOzwvcD4KPHAgc3R5
bGU9IiBtYXJnaW4tdG9wOjBweDsgbWFyZ2luLWJvdHRvbTowcHg7IG1hcmdpbi1sZWZ0OjBweDsg
bWFyZ2luLXJpZ2h0OjBweDsgLXF0LWJsb2NrLWluZGVudDowOyB0ZXh0LWluZGVudDowcHg7IC1x
dC11c2VyLXN0YXRlOjA7Ij5DaGVlcnMsPC9wPgo8cCBzdHlsZT0iIG1hcmdpbi10b3A6MHB4OyBt
YXJnaW4tYm90dG9tOjBweDsgbWFyZ2luLWxlZnQ6MHB4OyBtYXJnaW4tcmlnaHQ6MHB4OyAtcXQt
YmxvY2staW5kZW50OjA7IHRleHQtaW5kZW50OjBweDsgLXF0LXVzZXItc3RhdGU6MDsiPlJ1ZGk8
L3A+CjxwIHN0eWxlPSItcXQtcGFyYWdyYXBoLXR5cGU6ZW1wdHk7IG1hcmdpbi10b3A6MHB4OyBt
YXJnaW4tYm90dG9tOjBweDsgbWFyZ2luLWxlZnQ6MHB4OyBtYXJnaW4tcmlnaHQ6MHB4OyAtcXQt
YmxvY2staW5kZW50OjA7IHRleHQtaW5kZW50OjBweDsgIj4mbmJzcDs8L3A+PC9ib2R5PjwvaHRt
bD4=

--nextPart21868170.yRdZpcOMlu--
