Return-Path: <Oliver.Novakovic@alpine.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4898AE00857; Thu,  2 Oct 2014 02:38:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_BASE64_TEXT,X_IP autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 X_IP Message has X-IP header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0078]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.7 MIME_BASE64_TEXT RAW: Message text disguised using base64
	encoding
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Thu, 02 Oct 2014 02:37:59 PDT
Received: from ipmx01.kddinet.de (ipmx01.kddinet.de [195.82.33.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B10BE0074B
	for <yocto@yoctoproject.org>; Thu,  2 Oct 2014 02:37:59 -0700 (PDT)
X-SBRS: 3.2
X-Policy: $RELAYED_Alpine
X-Group: Alpine_RLY
X-IP: 195.82.37.30
X-MID: 17038837
X-IronPort-AV: E=Sophos;i="5.04,638,1406584800"; d="scan'208,217";a="17038837"
Received: from unknown (HELO demnln02.corp.alpine.eu) ([195.82.37.30])
	by ipmx01.kddinet.de with ESMTP; 02 Oct 2014 11:36:39 +0200
From: Oliver Novakovic <Oliver.Novakovic@alpine.de>
To: yocto@yoctoproject.org
X-Mailer: IBM Lotus Domino Access for MS Outlook (Unknown) Release 8.0.2
	August 07, 2008
Message-ID: <OF2C69ED33.175EBBCF-ONC1257D65.0034C92B@alpine.de>
X-Priority: 3 (Normal)
Importance: Normal
Date: Thu, 2 Oct 2014 11:36:31 +0200
X-MIMETrack: Itemize by Notes Client on Oliver
	Novakovic/AOGE-ST/AOEU/SPEED(Release
	8.0.2|August 07, 2008) at 02.10.2014 11:36:36,
	Serialize by Router on AOGMLN003/SRV/AOEU/SPEED(Release 8.5.3FP6
	HF646|June 13, 2014) at 02.10.2014 11:36:39,
	Serialize complete at 02.10.2014 11:36:39
MIME-Version: 1.0
Subject: Recommended Hardware for building
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
X-List-Received-Date: Thu, 02 Oct 2014 09:38:02 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 0034CA2AC1257D65_="

--=_alternative 0034CA2AC1257D65_=
Content-Type: text/plain; charset="us-ascii"

Dear all,

 

since we are using Yocto in our projects, I'd like to set up a dedicated
Build PC or server for the Yocto build tasks (including Jenkins).

 

Can anyone recommend a reasonable performant hardware setup to use ?

What should be considered ? Are there any pitfalls ? What about
bottlenecks in the build system ?

 

Specifically:

How many cores are recommended ? And how much cache is necessary ?
How much of the main memory does Yocto really use ? Is 32 GB sufficient
or should I go for 64 ?

Does it make sense to use two SSDs as Raid0  to get builds faster ?

 

Any hints, recommendations or links to further reading will be highly
appreciated.

 

Thanks in advance,

Oliver


Alpine Electronics R&D Europe GmbH, Vor dem Lauch 14, 70567 Stuttgart,
Registergericht Stuttgart, HRB 25265
Geschaeftsfuehrer: Toshinori Kobayashi, Shuji Taguchi
Working office: Vor dem Lauch 14, 70567 Stuttgart

ATTENTION: This e-mail and any files transmitted with it may be privileged
and/or confidential, and are intended solely for the use of the individual
or entity to whom this  e-mail is addressed. If you are not one of the
named recipients or otherwise  have reason to believe that you have
received this e-mail in error, please notify  the sender and delete this
message immediately from your computer. We thank you for your cooperation.

--=_alternative 0034CA2AC1257D65_=
Content-Type: text/html; charset="us-ascii"
content-transfer-encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+PGhlYWQ+PG1ldGEgaHR0cC1lcXVpdj1Db250ZW50LVR5cGUgY29udGVu
dD0idGV4dC9odG1sOyBjaGFyc2V0PXVzLWFzY2lpIj48bWV0YSBuYW1lPUdlbmVyYXRvciBjb250
ZW50PSJNaWNyb3NvZnQgV29yZCAxNCAoZmlsdGVyZWQgbWVkaXVtKSI+PHN0eWxlPjwhLS0NCi8q
IEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsN
CglwYW5vc2UtMToyIDE1IDUgMiAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAq
Lw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGNt
Ow0KCW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQtZmFt
aWx5OiJDYWxpYnJpIiwic2Fucy1zZXJpZiI7DQoJbXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVM7
fQ0KYTpsaW5rLCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJ
Y29sb3I6Ymx1ZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCmE6dmlzaXRlZCwgc3Bh
bi5Nc29IeXBlcmxpbmtGb2xsb3dlZA0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6
cHVycGxlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTcN
Cgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtY29tcG9zZTsNCglmb250LWZhbWlseToiQ2FsaWJy
aSIsInNhbnMtc2VyaWYiOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7
bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLCJzYW5z
LXNlcmlmIjsNCgltc28tZmFyZWFzdC1sYW5ndWFnZTpFTi1VUzt9DQpAcGFnZSBXb3JkU2VjdGlv
bjENCgl7c2l6ZTo2MTIuMHB0IDc5Mi4wcHQ7DQoJbWFyZ2luOjcwLjg1cHQgNzAuODVwdCAyLjBj
bSA3MC44NXB0O30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+
PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9
ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBt
c28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0
PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPjwv
aGVhZD48Ym9keSBsYW5nPURFIGxpbms9Ymx1ZSB2bGluaz1wdXJwbGU+PGRpdiBjbGFzcz1Xb3Jk
U2VjdGlvbjE+PHAgY2xhc3M9TXNvTm9ybWFsPjxzcGFuIGxhbmc9RU4tVVM+RGVhciBhbGwsPG86
cD48L286cD48L3NwYW4+PC9wPjxwIGNsYXNzPU1zb05vcm1hbD48c3BhbiBsYW5nPUVOLVVTPjxv
OnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+PHNwYW4gbGFuZz1F
Ti1VUz5zaW5jZSB3ZSBhcmUgdXNpbmcgWW9jdG8gaW4gb3VyIHByb2plY3RzLCBJJiM4MjE3O2Qg
bGlrZSB0byBzZXQgdXAgYSBkZWRpY2F0ZWQgQnVpbGQgUEMgb3Igc2VydmVyIGZvciB0aGUgWW9j
dG8gYnVpbGQgdGFza3MgKGluY2x1ZGluZyBKZW5raW5zKS48bzpwPjwvbzpwPjwvc3Bhbj48L3A+
PHAgY2xhc3M9TXNvTm9ybWFsPjxzcGFuIGxhbmc9RU4tVVM+PG86cD4mbmJzcDs8L286cD48L3Nw
YW4+PC9wPjxwIGNsYXNzPU1zb05vcm1hbD48c3BhbiBsYW5nPUVOLVVTPkNhbiBhbnlvbmUgcmVj
b21tZW5kIGEgcmVhc29uYWJsZSBwZXJmb3JtYW50IGhhcmR3YXJlIHNldHVwIHRvIHVzZSA/PG86
cD48L286cD48L3NwYW4+PC9wPjxwIGNsYXNzPU1zb05vcm1hbD48c3BhbiBsYW5nPUVOLVVTPldo
YXQgc2hvdWxkIGJlIGNvbnNpZGVyZWQgPyBBcmUgdGhlcmUgYW55IHBpdGZhbGxzID8gV2hhdCBh
Ym91dCBib3R0bGVuZWNrcyBpbiB0aGUgYnVpbGQgc3lzdGVtID88bzpwPjwvbzpwPjwvc3Bhbj48
L3A+PHAgY2xhc3M9TXNvTm9ybWFsPjxzcGFuIGxhbmc9RU4tVVM+PG86cD4mbmJzcDs8L286cD48
L3NwYW4+PC9wPjxwIGNsYXNzPU1zb05vcm1hbD48c3BhbiBsYW5nPUVOLVVTPlNwZWNpZmljYWxs
eTo8bzpwPjwvbzpwPjwvc3Bhbj48L3A+PHAgY2xhc3M9TXNvTm9ybWFsPjxzcGFuIGxhbmc9RU4t
VVM+SG93IG1hbnkgY29yZXMgYXJlIHJlY29tbWVuZGVkID8gQW5kIGhvdyBtdWNoIGNhY2hlIGlz
IG5lY2Vzc2FyeSA/PGJyPkhvdyBtdWNoIG9mIHRoZSBtYWluIG1lbW9yeSBkb2VzIFlvY3RvIHJl
YWxseSB1c2UgPyBJcyAzMiBHQiBzdWZmaWNpZW50IG9yIHNob3VsZCBJIGdvIGZvciA2NCA/PG86
cD48L286cD48L3NwYW4+PC9wPjxwIGNsYXNzPU1zb05vcm1hbD48c3BhbiBsYW5nPUVOLVVTPkRv
ZXMgaXQgbWFrZSBzZW5zZSB0byB1c2UgdHdvIFNTRHMgYXMgUmFpZDAmbmJzcDsgdG8gZ2V0IGJ1
aWxkcyBmYXN0ZXIgPzxvOnA+PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+PHNw
YW4gbGFuZz1FTi1VUz48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+PHAgY2xhc3M9TXNvTm9y
bWFsPjxzcGFuIGxhbmc9RU4tVVM+QW55IGhpbnRzLCByZWNvbW1lbmRhdGlvbnMgb3IgbGlua3Mg
dG8gZnVydGhlciByZWFkaW5nIHdpbGwgYmUgaGlnaGx5IGFwcHJlY2lhdGVkLjxvOnA+PC9vOnA+
PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+PHNwYW4gbGFuZz1FTi1VUz48bzpwPiZuYnNw
OzwvbzpwPjwvc3Bhbj48L3A+PHAgY2xhc3M9TXNvTm9ybWFsPjxzcGFuIGxhbmc9RU4tVVM+VGhh
bmtzIGluIGFkdmFuY2UsPG86cD48L286cD48L3NwYW4+PC9wPjxwIGNsYXNzPU1zb05vcm1hbD48
c3BhbiBsYW5nPUVOLVVTPk9saXZlcjxvOnA+PC9vOnA+PC9zcGFuPjwvcD48L2Rpdj48YnI+DQo8
Zm9udCBzaXplPSIyIiBmYWNlPSJBcmlhbCI+QWxwaW5lIEVsZWN0cm9uaWNzIFImYW1wO0QgRXVy
b3BlIEdtYkgsIFZvciBkZW0gTGF1Y2ggMTQsIDcwNTY3IFN0dXR0Z2FydCw8L2ZvbnQ+PGJyPg0K
PGZvbnQgc2l6ZT0iMiIgZmFjZT0iQXJpYWwiPlJlZ2lzdGVyZ2VyaWNodCBTdHV0dGdhcnQsIEhS
QiAyNTI2NTwvZm9udD48YnI+DQo8Zm9udCBzaXplPSIyIiBmYWNlPSJBcmlhbCI+R2VzY2hhZWZ0
c2Z1ZWhyZXI6IDwvZm9udD48Zm9udCBzaXplPSIyIiBmYWNlPSJBcmlhbCI+VG9zaGlub3JpIEtv
YmF5YXNoaSwgU2h1amkgVGFndWNoaTwvZm9udD48YnI+DQo8Zm9udCBzaXplPSIyIiBmYWNlPSJB
cmlhbCI+V29ya2luZyBvZmZpY2U6IFZvciBkZW0gTGF1Y2ggMTQsIDcwNTY3IFN0dXR0Z2FydDwv
Zm9udD48YnI+DQo8YnI+DQo8Zm9udCBzaXplPSIyIiBmYWNlPSJBcmlhbCI+QVRURU5USU9OOiBU
aGlzIGUtbWFpbCBhbmQgYW55IGZpbGVzIHRyYW5zbWl0dGVkIHdpdGggaXQgbWF5IGJlIHByaXZp
bGVnZWQ8L2ZvbnQ+PGJyPg0KPGZvbnQgc2l6ZT0iMiIgZmFjZT0iQXJpYWwiPmFuZC9vciBjb25m
aWRlbnRpYWwsIGFuZCBhcmUgaW50ZW5kZWQgc29sZWx5IGZvciB0aGUgdXNlIG9mIHRoZSBpbmRp
dmlkdWFsPC9mb250Pjxicj4NCjxmb250IHNpemU9IjIiIGZhY2U9IkFyaWFsIj5vciBlbnRpdHkg
dG8gd2hvbSB0aGlzICBlLW1haWwgaXMgYWRkcmVzc2VkLiBJZiB5b3UgYXJlIG5vdCBvbmUgb2Yg
dGhlPC9mb250Pjxicj4NCjxmb250IHNpemU9IjIiIGZhY2U9IkFyaWFsIj5uYW1lZCByZWNpcGll
bnRzIG9yIG90aGVyd2lzZSAgaGF2ZSByZWFzb24gdG8gYmVsaWV2ZSB0aGF0IHlvdSBoYXZlPC9m
b250Pjxicj4NCjxmb250IHNpemU9IjIiIGZhY2U9IkFyaWFsIj5yZWNlaXZlZCB0aGlzIGUtbWFp
bCBpbiBlcnJvciwgcGxlYXNlIG5vdGlmeSAgdGhlIHNlbmRlciBhbmQgZGVsZXRlIHRoaXM8L2Zv
bnQ+PGJyPg0KPGZvbnQgc2l6ZT0iMiIgZmFjZT0iQXJpYWwiPm1lc3NhZ2UgaW1tZWRpYXRlbHkg
ZnJvbSB5b3VyIGNvbXB1dGVyLiBXZSB0aGFuayB5b3UgZm9yIHlvdXIgY29vcGVyYXRpb24uPC9m
b250PjwvYm9keT48L2h0bWw+

--=_alternative 0034CA2AC1257D65_=--
