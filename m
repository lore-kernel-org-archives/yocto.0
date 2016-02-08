Return-Path: <Michael.Baumann@vector.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B90BBE00D97; Mon,  8 Feb 2016 08:39:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [217.89.139.142 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp2.vector.com (smtp2.vector.com [217.89.139.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C137CE00C34
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 08:39:10 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.vector.com (Postfix) with ESMTP id BDA3A852C9;
	Mon,  8 Feb 2016 17:39:09 +0100 (CET)
X-Virus-Scanned: amavisd-new at vector.com
Received: from smtp2.vector.com ([127.0.0.1])
	by localhost (smtp2.vector.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vaOsDR5Kx2ev; Mon,  8 Feb 2016 17:39:08 +0100 (CET)
Received: from vistrex6.vi.vector.int (unknown [10.49.3.66])
	by smtp2.vector.com (Postfix) with ESMTPS;
	Mon,  8 Feb 2016 17:39:08 +0100 (CET)
Received: from VISTREX4.vi.vector.int ([169.254.2.171]) by
	vistrex6.vi.vector.int ([10.49.3.66]) with mapi id 14.03.0279.002;
	Mon, 8 Feb 2016 17:39:09 +0100
From: "Baumann, Michael" <Michael.Baumann@vector.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] how to create a named_pipe in my image
Thread-Index: AdFiglSzvesxSbrsQM6AJUZMTpd6SQAB90Pw///ybwD//+sEsA==
Date: Mon, 8 Feb 2016 16:39:07 +0000
Message-ID: <D3B58608AFC8B244BA0ACD53B2AE612598EEF674@vistrex4.vi.vector.int>
References: <D3B58608AFC8B244BA0ACD53B2AE612598EEF5C6@vistrex4.vi.vector.int>
	<D3B58608AFC8B244BA0ACD53B2AE612598EEF622@vistrex4.vi.vector.int>
	<CAJTo0Lav44kxc8i-VDSEUrHdFAaC7kjrLG97w2pmOjw+TZvM0Q@mail.gmail.com>
In-Reply-To: <CAJTo0Lav44kxc8i-VDSEUrHdFAaC7kjrLG97w2pmOjw+TZvM0Q@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.72.45]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to create a named_pipe in my image
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
X-List-Received-Date: Mon, 08 Feb 2016 16:39:12 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_D3B58608AFC8B244BA0ACD53B2AE612598EEF674vistrex4vivecto_"

--_000_D3B58608AFC8B244BA0ACD53B2AE612598EEF674vistrex4vivecto_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IFJvc3MuDQpTd2l0Y2hpbmcgdG8gcnBtIHBhY2thZ2Ugc2hvd2VkIHRoZSBzYW1l
IGJlaGF2aW9yLg0KSXMgdGhlcmUgYW5vdGhlciB3b3JrYXJvdW5kIHRoYW4gYSBwb3N0IGluc3Rh
bGwgc2NyaXB0Pw0KDQpSZWdhcmRzLA0KTWljaGFlbA0KDQpGcm9tOiBCdXJ0b24sIFJvc3MgW21h
aWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dDQpTZW50OiBNb25kYXksIEZlYnJ1YXJ5IDA4LCAy
MDE2IDU6MTUgUE0NClRvOiBCYXVtYW5uLCBNaWNoYWVsDQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gaG93IHRvIGNyZWF0ZSBhIG5hbWVkX3BpcGUgaW4g
bXkgaW1hZ2UNCg0KDQpPbiA4IEZlYnJ1YXJ5IDIwMTYgYXQgMTY6MTIsIEJhdW1hbm4sIE1pY2hh
ZWwgPE1pY2hhZWwuQmF1bWFubkB2ZWN0b3IuY29tPG1haWx0bzpNaWNoYWVsLkJhdW1hbm5AdmVj
dG9yLmNvbT4+IHdyb3RlOg0KUG9zc2libHkgaXQncyBiZWNhdXNlIG5hbWVkIHBpcGVzIGNhbm5v
dCBiZSBwYWNrZWQgaW50byBhbiBhcmNoaXZlPyBJZiB5ZXMsIGhvdyBjYW4gSSBjaXJjdW12ZW50
IHRoaXM/DQoNCkl0IHdvdWxkIGJlIGludGVyZXN0aW5nIHRvIHNlZSB3aGF0IGhhcHBlbnMgaWYg
eW91IGNoYW5nZSBQQUNLQUdFX0NMQVNTRVMgdG8gdXNlIHJwbSBpbnN0ZWFkIG9mIGlwa2cuICBP
bmUgd29ya2Fyb3VuZCB3b3VsZCBiZSB0byBjcmVhdGUgdGhlIGZpZm8gaW4gYSBwb3N0aW5zdC4N
Cg0KUm9zcw0K

--_000_D3B58608AFC8B244BA0ACD53B2AE612598EEF674vistrex4vivecto_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTQgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUgMiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJ
e2ZvbnQtZmFtaWx5OlRhaG9tYTsNCglwYW5vc2UtMToyIDExIDYgNCAzIDUgNCA0IDIgNDt9DQov
KiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1z
b05vcm1hbA0KCXttYXJnaW46MGNtOw0KCW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNp
emU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5OiJUaW1lcyBOZXcgUm9tYW4iLCJzZXJpZiI7fQ0KYTps
aW5rLCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6
Ymx1ZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCmE6dmlzaXRlZCwgc3Bhbi5Nc29I
eXBlcmxpbmtGb2xsb3dlZA0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6cHVycGxl
Ow0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0Kc3Bhbi5FLU1haWxGb3JtYXR2b3JsYWdl
MTcNCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtcmVwbHk7DQoJZm9udC1mYW1pbHk6IkNhbGli
cmkiLCJzYW5zLXNlcmlmIjsNCgljb2xvcjojMUY0OTdEO30NCi5Nc29DaHBEZWZhdWx0DQoJe21z
by1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCW1zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTO30N
CkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQgNzkyLjBwdDsNCgltYXJnaW46NzAu
ODVwdCA3MC44NXB0IDIuMGNtIDcwLjg1cHQ7fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldv
cmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hh
cGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlm
XS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQi
Pg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94
bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJERSIgbGluaz0iYmx1ZSIgdmxp
bms9InB1cnBsZSI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFt
aWx5OiZxdW90O0NhbGlicmkmcXVvdDssJnF1b3Q7c2Fucy1zZXJpZiZxdW90Oztjb2xvcjojMUY0
OTdEIj5UaGFuayB5b3UgUm9zcy48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1m
YW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OywmcXVvdDtzYW5zLXNlcmlmJnF1b3Q7O2NvbG9yOiMx
RjQ5N0QiPlN3aXRjaGluZyB0byBycG0gcGFja2FnZSBzaG93ZWQgdGhlIHNhbWUgYmVoYXZpb3Iu
PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0i
RU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkm
cXVvdDssJnF1b3Q7c2Fucy1zZXJpZiZxdW90Oztjb2xvcjojMUY0OTdEIj5JcyB0aGVyZSBhbm90
aGVyIHdvcmthcm91bmQgdGhhbiBhIHBvc3QgaW5zdGFsbCBzY3JpcHQ/PG86cD48L286cD48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJm
b250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssJnF1b3Q7c2Fu
cy1zZXJpZiZxdW90Oztjb2xvcjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6
ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OywmcXVvdDtzYW5zLXNlcmlm
JnF1b3Q7O2NvbG9yOiMxRjQ5N0QiPlJlZ2FyZHMsPG86cD48L286cD48L3NwYW4+PC9wPg0KPGRp
dj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9udC1z
aXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LCZxdW90O3NhbnMtc2Vy
aWYmcXVvdDs7Y29sb3I6IzFGNDk3RCI+TWljaGFlbA0KPG86cD48L286cD48L3NwYW4+PC9wPg0K
PC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+PG86cD4mbmJz
cDs8L286cD48L3NwYW4+PC9wPg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLWxlZnQ6
c29saWQgYmx1ZSAxLjVwdDtwYWRkaW5nOjBjbSAwY20gMGNtIDQuMHB0Ij4NCjxkaXY+DQo8ZGl2
IHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItdG9wOnNvbGlkICNCNUM0REYgMS4wcHQ7cGFkZGlu
ZzozLjBwdCAwY20gMGNtIDBjbSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj48c3BhbiBsYW5n
PSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7VGFob21h
JnF1b3Q7LCZxdW90O3NhbnMtc2VyaWYmcXVvdDsiPkZyb206PC9zcGFuPjwvYj48c3BhbiBsYW5n
PSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7VGFob21h
JnF1b3Q7LCZxdW90O3NhbnMtc2VyaWYmcXVvdDsiPiBCdXJ0b24sIFJvc3MgW21haWx0bzpyb3Nz
LmJ1cnRvbkBpbnRlbC5jb21dDQo8YnI+DQo8Yj5TZW50OjwvYj4gTW9uZGF5LCBGZWJydWFyeSAw
OCwgMjAxNiA1OjE1IFBNPGJyPg0KPGI+VG86PC9iPiBCYXVtYW5uLCBNaWNoYWVsPGJyPg0KPGI+
Q2M6PC9iPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnPGJyPg0KPGI+U3ViamVjdDo8L2I+IFJlOiBb
eW9jdG9dIGhvdyB0byBjcmVhdGUgYSBuYW1lZF9waXBlIGluIG15IGltYWdlPG86cD48L286cD48
L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxh
bmc9IkVOLVVTIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8ZGl2Pg0KPGRpdj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj48bzpwPiZuYnNwOzwvbzpwPjwv
c3Bhbj48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+T24gOCBGZWJydWFyeSAyMDE2
IGF0IDE2OjEyLCBCYXVtYW5uLCBNaWNoYWVsICZsdDs8YSBocmVmPSJtYWlsdG86TWljaGFlbC5C
YXVtYW5uQHZlY3Rvci5jb20iIHRhcmdldD0iX2JsYW5rIj5NaWNoYWVsLkJhdW1hbm5AdmVjdG9y
LmNvbTwvYT4mZ3Q7IHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0KPGRpdiBpZD0iOm13NiI+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj5Qb3NzaWJseSBpdCdzIGJlY2F1c2UgbmFtZWQgcGlwZXMgY2Fubm90
IGJlIHBhY2tlZCBpbnRvIGFuIGFyY2hpdmU/IElmIHllcywgaG93IGNhbiBJIGNpcmN1bXZlbnQg
dGhpcz88bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48YnI+DQpJdCB3b3VsZCBiZSBpbnRlcmVzdGluZyB0byBzZWUgd2hhdCBoYXBwZW5zIGlmIHlv
dSBjaGFuZ2UgUEFDS0FHRV9DTEFTU0VTIHRvIHVzZSBycG0gaW5zdGVhZCBvZiBpcGtnLiZuYnNw
OyBPbmUgd29ya2Fyb3VuZCB3b3VsZCBiZSB0byBjcmVhdGUgdGhlIGZpZm8gaW4gYSBwb3N0aW5z
dC48bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxv
OnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
Um9zczxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Jv
ZHk+DQo8L2h0bWw+DQo=

--_000_D3B58608AFC8B244BA0ACD53B2AE612598EEF674vistrex4vivecto_--
