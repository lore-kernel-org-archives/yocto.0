Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E29DDE00563
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2013 13:55:15 -0800 (PST)
Received: by mail-we0-f169.google.com with SMTP id w61so8656511wes.28
	for <yocto@yoctoproject.org>; Tue, 03 Dec 2013 13:55:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=2GdA7pt3fVG7eXOJUgxOjaHmWWF7uP7TQWL8Jilnz1c=;
	b=bZuBhz/CDxwcgJyU2FIREUeDrOQI//xPXt4X6RpvAtWN+zK7ZaUixnUPxr9Axgwnuv
	ShPXDmWN/kWZBQSLOD1BqL/Qqh4RCSc0xHqCiKJtx5xL/1M9WcfsJq0th7h7rZawUNgt
	UMPZxJnE6mfBp6W+aAgL5gz+czRuqcSWpKLMLEzetzA8R+KxVI+xs+aLKjVyLSVu48Rz
	eC7piVcpuXq+hUWH0N8VLRqx6sp4/i0FsikOxN3x0YRs3/5lNCKHfPjOh23ZtxcK514s
	WYnt4z2Fny4+sTXP89khO3rCqImypBjrI0FQeRcHKbM8jC2XL9KjvB03N9kwZB84I9+I
	mbzQ==
X-Gm-Message-State: ALoCoQkx2v7tMNgsTxmb7HUidnwfW1E77T5aQ+VgMUsSRqq0XqxIxce9TiUMTk3WDSpmZmcIbhID
X-Received: by 10.194.79.74 with SMTP id h10mr130189wjx.86.1386107714120; Tue,
	03 Dec 2013 13:55:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.150.199 with HTTP; Tue, 3 Dec 2013 13:54:54 -0800 (PST)
X-Originating-IP: [5.13.147.220]
In-Reply-To: <528B9049.7010704@mlbassoc.com>
References: <CANwz6nzE64e0hiEm_D-m_Z27X0M1NJSwLAxTS1koy3mPqfkUwg@mail.gmail.com>
	<528B9049.7010704@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 3 Dec 2013 23:54:54 +0200
Message-ID: <CAK18fxFgx_d2wdwEG+WTknqFynKHKU1Hd7p7h1T+gXgtXqXNGQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
Subject: Re: [meta-raspberrypi] Using the camera
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
X-List-Received-Date: Tue, 03 Dec 2013 21:55:19 -0000
Content-Type: multipart/alternative; boundary=047d7bb04a12ebc34a04eca8593c

--047d7bb04a12ebc34a04eca8593c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 19, 2013 at 6:22 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-11-19 09:18, Edward Vidal wrote:
>
>> Hello,
>> To get my C920 camera to work with the zedboard
>> I needed to add v4l-utils and then I need several modules that I add to
>> 3.6 kernel
>> https://github.com/Digilent/linux-digilent.git
>>      3.6.0-digilent-13.01-00002-g06b3889/
>>      =E2=94=9C=E2=94=80=E2=94=80 kernel
>>      =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 drivers
>>      =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 media
>>      =E2=94=82       =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 video
>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 gspca
>>      =E2=94=82       =E2=94=82       =E2=94=82   =E2=94=94=E2=94=80=E2=
=94=80 gspca_main.ko
>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 uvc
>>      =E2=94=82       =E2=94=82       =E2=94=82   =E2=94=94=E2=94=80=E2=
=94=80 uvcvideo.ko
>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 v4l2-co=
mmon.ko
>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 v4l2-in=
t-device.ko
>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 videobu=
f2-core.ko
>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 videobu=
f2-memops.ko
>>      =E2=94=82       =E2=94=82       =E2=94=9C=E2=94=80=E2=94=80 videobu=
f2-vmalloc.ko
>>      =E2=94=82       =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 videode=
v.ko
>> Hope this helps
>>
>
> Thanks for the reply, but this is not what I'm looking for.  The
> camera module I'm using is directly connected to the RaspberryPi
> via the CSI interface, not USB like your C920 and it uses very
> different drivers to access.


Alexandru was working on this (camera support). Maybe he can help you with
this. Adding him in the loop.

ag

--047d7bb04a12ebc34a04eca8593c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX2V4dHJhIj48YnI+PGJyPjxkaXYg
Y2xhc3M9ImdtYWlsX3F1b3RlIj5PbiBUdWUsIE5vdiAxOSwgMjAxMyBhdCA2OjIyIFBNLCBHYXJ5
IFRob21hcyA8c3BhbiBkaXI9Imx0ciI+Jmx0OzxhIGhyZWY9Im1haWx0bzpnYXJ5QG1sYmFzc29j
LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmdhcnlAbWxiYXNzb2MuY29tPC9hPiZndDs8L3NwYW4+IHdy
b3RlOjxicj4NCg0KPGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2lu
OjAgMCAwIC44ZXg7Ym9yZGVyLWxlZnQ6MXB4ICNjY2Mgc29saWQ7cGFkZGluZy1sZWZ0OjFleCI+
PGRpdiBjbGFzcz0iSE9FblpiIj48ZGl2IGNsYXNzPSJoNSI+T24gMjAxMy0xMS0xOSAwOToxOCwg
RWR3YXJkIFZpZGFsIHdyb3RlOjxicj4NCjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIg
c3R5bGU9Im1hcmdpbjowIDAgMCAuOGV4O2JvcmRlci1sZWZ0OjFweCAjY2NjIHNvbGlkO3BhZGRp
bmctbGVmdDoxZXgiPg0KSGVsbG8sPGJyPg0KVG8gZ2V0IG15IEM5MjAgY2FtZXJhIHRvIHdvcmsg
d2l0aCB0aGUgemVkYm9hcmQ8YnI+DQpJIG5lZWRlZCB0byBhZGQgdjRsLXV0aWxzIGFuZCB0aGVu
IEkgbmVlZCBzZXZlcmFsIG1vZHVsZXMgdGhhdCBJIGFkZCB0byAzLjYga2VybmVsPGJyPg0KPGEg
aHJlZj0iaHR0cHM6Ly9naXRodWIuY29tL0RpZ2lsZW50L2xpbnV4LWRpZ2lsZW50LmdpdCIgdGFy
Z2V0PSJfYmxhbmsiPmh0dHBzOi8vZ2l0aHViLmNvbS9EaWdpbGVudC88dT48L3U+bGludXgtZGln
aWxlbnQuZ2l0PC9hPjxicj4NCsKgIMKgIMKgMy42LjAtZGlnaWxlbnQtMTMuMDEtMDAwMDItPHU+
PC91PmcwNmIzODg5Lzxicj4NCsKgIMKgIMKg4pSc4pSA4pSAIGtlcm5lbDxicj4NCsKgIMKgIMKg
4pSCIMKgIOKUlOKUgOKUgCBkcml2ZXJzPGJyPg0KwqAgwqAgwqDilIIgwqAgwqAgwqAg4pSc4pSA
4pSAIG1lZGlhPGJyPg0KwqAgwqAgwqDilIIgwqAgwqAgwqAg4pSCIMKgIOKUlOKUgOKUgCB2aWRl
bzxicj4NCsKgIMKgIMKg4pSCIMKgIMKgIMKgIOKUgiDCoCDCoCDCoCDilJzilIDilIAgZ3NwY2E8
YnI+DQrCoCDCoCDCoOKUgiDCoCDCoCDCoCDilIIgwqAgwqAgwqAg4pSCIMKgIOKUlOKUgOKUgCBn
c3BjYV9tYWluLmtvPGJyPg0KwqAgwqAgwqDilIIgwqAgwqAgwqAg4pSCIMKgIMKgIMKgIOKUnOKU
gOKUgCB1dmM8YnI+DQrCoCDCoCDCoOKUgiDCoCDCoCDCoCDilIIgwqAgwqAgwqAg4pSCIMKgIOKU
lOKUgOKUgCB1dmN2aWRlby5rbzxicj4NCsKgIMKgIMKg4pSCIMKgIMKgIMKgIOKUgiDCoCDCoCDC
oCDilJzilIDilIAgdjRsMi1jb21tb24ua288YnI+DQrCoCDCoCDCoOKUgiDCoCDCoCDCoCDilIIg
wqAgwqAgwqAg4pSc4pSA4pSAIHY0bDItaW50LWRldmljZS5rbzxicj4NCsKgIMKgIMKg4pSCIMKg
IMKgIMKgIOKUgiDCoCDCoCDCoCDilJzilIDilIAgdmlkZW9idWYyLWNvcmUua288YnI+DQrCoCDC
oCDCoOKUgiDCoCDCoCDCoCDilIIgwqAgwqAgwqAg4pSc4pSA4pSAIHZpZGVvYnVmMi1tZW1vcHMu
a288YnI+DQrCoCDCoCDCoOKUgiDCoCDCoCDCoCDilIIgwqAgwqAgwqAg4pSc4pSA4pSAIHZpZGVv
YnVmMi12bWFsbG9jLmtvPGJyPg0KwqAgwqAgwqDilIIgwqAgwqAgwqAg4pSCIMKgIMKgIMKgIOKU
lOKUgOKUgCB2aWRlb2Rldi5rbzxicj4NCkhvcGUgdGhpcyBoZWxwczxicj4NCjwvYmxvY2txdW90
ZT4NCjxicj48L2Rpdj48L2Rpdj4NClRoYW5rcyBmb3IgdGhlIHJlcGx5LCBidXQgdGhpcyBpcyBu
b3Qgd2hhdCBJJiMzOTttIGxvb2tpbmcgZm9yLiDCoFRoZTxicj4NCmNhbWVyYSBtb2R1bGUgSSYj
Mzk7bSB1c2luZyBpcyBkaXJlY3RseSBjb25uZWN0ZWQgdG8gdGhlIFJhc3BiZXJyeVBpPGJyPg0K
dmlhIHRoZSBDU0kgaW50ZXJmYWNlLCBub3QgVVNCIGxpa2UgeW91ciBDOTIwIGFuZCBpdCB1c2Vz
IHZlcnk8YnI+DQpkaWZmZXJlbnQgZHJpdmVycyB0byBhY2Nlc3MuPC9ibG9ja3F1b3RlPjxkaXY+
PGJyPjwvZGl2PjxkaXY+QWxleGFuZHJ1IHdhcyB3b3JraW5nIG9uIHRoaXMgKGNhbWVyYSBzdXBw
b3J0KS4gTWF5YmUgaGUgY2FuIGhlbHAgeW91IHdpdGggdGhpcy4gQWRkaW5nIGhpbSBpbiB0aGUg
bG9vcC48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PmFnPC9kaXY+PC9kaXY+DQo8L2Rpdj48L2Rp
dj4NCg==

--047d7bb04a12ebc34a04eca8593c--
