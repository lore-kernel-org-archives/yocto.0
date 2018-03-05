Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3532DE00E34; Sun,  4 Mar 2018 18:37:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BFD4E00823
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2018 18:37:16 -0800 (PST)
Received: by mail-io0-f170.google.com with SMTP id m22so16276969iob.12
	for <yocto@yoctoproject.org>; Sun, 04 Mar 2018 18:37:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OOXcsH4xbEig3Gc6/lk/qvBZlS9wWEIXe5M3ruDBaBE=;
	b=AVfVyhnAiQT3ZVXHjZQFv2UhFOwhTzWO8VYw9F4V6grn46yvi/wnNvX3CXkk3BA7pu
	uMcDe5KZ8nRKUKv2tdV6+6+jjGa9mzLl3VulkGjVnkoU8tOwo0DjOYrDYNYGhnUJJbfP
	jbntrpFwWJ/3dNzVGOqZQJhdHebTE40PQjSN/zm3AG2uOk9W/fD6GavjdQyiU7L0QJw3
	j9QvtTJobOXDldKRk382HK3plTr0gIR9zU9FTuDbCwY/J+dX6tx5BKj3SCitiDPuq+cb
	yaiRwNpl3i+nYVmXgefDVvMQU2ZgAxQHlTvN9Upl9oWNgB/UKdWVu5swSzzQjJ6ODTtz
	bYdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OOXcsH4xbEig3Gc6/lk/qvBZlS9wWEIXe5M3ruDBaBE=;
	b=gkvSLcruv5GbvUBBwPYNQs66w9jhPET3Qa9uClji0/PwQUkUkH2TgpxzoiAo1Hljew
	Gd5+clwr/4o1p47icqEH3PXWFMTYQX9oTHGwnhIRo0dHXArjyzDtPJiGhPrhDgCt1y/J
	n4L3apd0KHnja0LuAx0CX8yLzKgrCMQA+EVbXoXuKGwceA4SwHeZmnoJm4eqb3/QabNf
	AY0Mu4tm0XBRHSiuLcRsgEnrNS1FklnHB4Xcmvf55tE98AOwf/fdiAs4kiOikPr0t8+E
	Q37hUry7njTpQRHWVtTCQICQTJs5GAwPsFmfQgq8e+hciZfn1HCRquQhWovLPBbyERnP
	L/aQ==
X-Gm-Message-State: APf1xPALVM+z9QxjpYDXsjLplRbSTuS3SYXsn9T9qETxdUzEoMM25Bdn
	6cAdxihgQiICfabpJyirLIv5g7qKc499gfpu0aE=
X-Google-Smtp-Source: AG47ELtiM/eelZvVXGZ18LIuOcd5smN99M9C4wAgnGK78pU/QtckKYR/PAvZDnxPro+Qhl2Hr95xynMh3HxwujFjfs4=
X-Received: by 10.107.213.5 with SMTP id m5mr16022268iog.62.1520217435510;
	Sun, 04 Mar 2018 18:37:15 -0800 (PST)
MIME-Version: 1.0
References: <BLUPR17MB0020E23135997E85A686B4D6CAC40@BLUPR17MB0020.namprd17.prod.outlook.com>
In-Reply-To: <BLUPR17MB0020E23135997E85A686B4D6CAC40@BLUPR17MB0020.namprd17.prod.outlook.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Mon, 05 Mar 2018 02:37:04 +0000
Message-ID: <CAFzUWG=0LwOkKS568bpdkVffoNfoWw5H9wmMSxL+y2VTL0XYvg@mail.gmail.com>
To: Jose David Bravo Alvarez <josedavidbravo@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Read Only File System
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
X-List-Received-Date: Mon, 05 Mar 2018 02:37:17 -0000
Content-Type: multipart/alternative; boundary="f4f5e80e2040399c7a0566a134b5"

--f4f5e80e2040399c7a0566a134b5
Content-Type: text/plain; charset="UTF-8"

Hi Jose,

I don't know if you're using a custom device tree or not, but I ran into
this issue and solved it by disabling write protection in the device tree:

https://github.com/kratsg/meta-l1calo/blob/master/recipes-bsp/device-tree/files/gfex-prototype4/gfex-prototype4.dts#L48-L51


&sdhci1 {
  disable-wp;
};

Giordon

On Sun, Mar 4, 2018 at 8:20 PM Jose David Bravo Alvarez <
josedavidbravo@hotmail.com> wrote:

> I'm building a image using Yocto rocky and Xilinx for my zynq-702 board.
>
>
> But for some reason my root file system can only be mounted as a read
> only. If I put rw in the u-boot load command it fails. I'm booting from a
> SD card, that doesn't have any lock switch.
>
>
> And if I boot using other kernel different than the one generated by yocto
> it does mount the file system as read write... the problem is somewhere in
> my image and not physical in the SD card or in the controller.
>
>
> If generate my yocto image using a qemux86 machine, it does work good and
> mount the partition as rw.
>
>
> This is the latest part of my boot log:
>
> Waiting for root device /dev/mmcblk0p2...
>
> mmc0: new high speed SDHC card at address aaaa
>
> mmcblk0: mmc0:aaaa SL08G 7.40 GiB (ro)
>
>  mmcblk0: p1 p2
>
> VFS: Cannot open root device "mmcblk0p2" or unknown-block(179,2): error
> -30
> Please append a correct "root=" boot option; here are the available
> partitions:
> 0100           16384 ram0  (driver?)
>
> 0101           16384 ram1  (driver?)
>
> 0102           16384 ram2  (driver?)
>
> 0103           16384 ram3  (driver?)
>
> 0104           16384 ram4  (driver?)
>
> 0105           16384 ram5  (driver?)
>
> 0106           16384 ram6  (driver?)
>
> 0107           16384 ram7  (driver?)
>
> 0108           16384 ram8  (driver?)
>
> 0109           16384 ram9  (driver?)
>
> 010a           16384 ram10  (driver?)
>
> 010b           16384 ram11  (driver?)
>
> 010c           16384 ram12  (driver?)
>
> 010d           16384 ram13  (driver?)
>
> 010e           16384 ram14  (driver?)
>
> 010f           16384 ram15  (driver?)
>
> b300         7761920 mmcblk0  driver: mmcblk
>
>   b301         1048576 mmcblk0p1 9d7a9d10-01
>
>   b302         6712320 mmcblk0p2 9d7a9d10-02
>
> Kernel panic - not syncing: VFS: Unable to mount root fs on
> unknown-block(179,2)
> CPU1: stopping
>
> CPU: 1 PID: 0 Comm: swapper/1 Not tainted 4.9.0-xilinx-v2017.3 #1
>
> Hardware name: Xilinx Zynq Platform
>
> [<c010e3ac>] (unwind_backtrace) from [<c010a5f0>] (show_stack+0x10/0x14)
>
> [<c010a5f0>] (show_stack) from [<c02dcce4>] (dump_stack+0x80/0xa0)
>
> [<c02dcce4>] (dump_stack) from [<c010cb58>] (ipi_cpu_stop+0x3c/0x70)
>
> [<c010cb58>] (ipi_cpu_stop) from [<c010d388>] (handle_IPI+0x64/0x84)
>
> [<c010d388>] (handle_IPI) from [<c0101420>] (gic_handle_irq+0x80/0x8c)
>
> [<c0101420>] (gic_handle_irq) from [<c010b00c>] (__irq_svc+0x6c/0xa8)
>
> Exception stack(0xde471f70 to 0xde471fb8)
>
> 1f60:                                     00000000 00000000 1e29c000
> debde9c0
> 1f80: 49d2e7a1 00000000 debdde40 00000001 47add66a 00000000 00000000
> 00000001
> 1fa0: 00000015 de471fc0 c04af5dc c04af600 60000013 ffffffff
>
> [<c010b00c>] (__irq_svc) from [<c04af600>]
> (cpuidle_enter_state+0xe4/0x1b4)
> [<c04af600>] (cpuidle_enter_state) from [<c014cdb4>]
> (cpu_startup_entry+0x18c/0)
> [<c014cdb4>] (cpu_startup_entry) from [<001014cc>] (0x1014cc)
>
> ---[ end Kernel panic - not syncing: VFS: Unable to mount root fs on
> unknown-bl)
>
> Thanks for your help!
>
>
> Jose Bravo
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
-- 
Giordon Stark

--f4f5e80e2040399c7a0566a134b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgSm9zZSw8ZGl2Pjxicj48L2Rpdj48ZGl2PkkgZG9uJiMzOTt0IGtu
b3cgaWYgeW91JiMzOTtyZSB1c2luZyBhIGN1c3RvbSBkZXZpY2UgdHJlZSBvciBub3QsIGJ1dCBJ
IHJhbiBpbnRvIHRoaXMgaXNzdWUgYW5kIHNvbHZlZCBpdCBieSBkaXNhYmxpbmcgd3JpdGUgcHJv
dGVjdGlvbiBpbiB0aGUgZGV2aWNlIHRyZWU6PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj48YSBo
cmVmPSJodHRwczovL2dpdGh1Yi5jb20va3JhdHNnL21ldGEtbDFjYWxvL2Jsb2IvbWFzdGVyL3Jl
Y2lwZXMtYnNwL2RldmljZS10cmVlL2ZpbGVzL2dmZXgtcHJvdG90eXBlNC9nZmV4LXByb3RvdHlw
ZTQuZHRzI0w0OC1MNTEiPmh0dHBzOi8vZ2l0aHViLmNvbS9rcmF0c2cvbWV0YS1sMWNhbG8vYmxv
Yi9tYXN0ZXIvcmVjaXBlcy1ic3AvZGV2aWNlLXRyZWUvZmlsZXMvZ2ZleC1wcm90b3R5cGU0L2dm
ZXgtcHJvdG90eXBlNC5kdHMjTDQ4LUw1MTwvYT7CoDwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+
PGRpdj48Zm9udCBmYWNlPSJtb25vc3BhY2UiPiZhbXA7c2RoY2kxIHs8L2ZvbnQ+PC9kaXY+PGRp
dj48Zm9udCBmYWNlPSJtb25vc3BhY2UiPsKgIGRpc2FibGUtd3A7PC9mb250PjwvZGl2PjxkaXY+
PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5Om1vbm9zcGFjZSI+fTs8L3NwYW4+PGJyPjwvZGl2Pjxk
aXY+PGJyPjwvZGl2PjxkaXY+R2lvcmRvbjwvZGl2Pjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90
ZSI+PGRpdiBkaXI9Imx0ciI+T24gU3VuLCBNYXIgNCwgMjAxOCBhdCA4OjIwIFBNIEpvc2UgRGF2
aWQgQnJhdm8gQWx2YXJleiAmbHQ7PGEgaHJlZj0ibWFpbHRvOmpvc2VkYXZpZGJyYXZvQGhvdG1h
aWwuY29tIj5qb3NlZGF2aWRicmF2b0Bob3RtYWlsLmNvbTwvYT4mZ3Q7IHdyb3RlOjxicj48L2Rp
dj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MCAwIDAgLjhl
eDtib3JkZXItbGVmdDoxcHggI2NjYyBzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij4NCg0KDQoNCg0K
PGRpdiBkaXI9Imx0ciI+DQo8ZGl2IGlkPSJtXy00Mzc2OTEzMTkyNzc5ODY5MTgyZGl2dGFnZGVm
YXVsdHdyYXBwZXIiIHN0eWxlPSJmb250LXNpemU6MTJwdDtjb2xvcjojMDAwMDAwO2ZvbnQtZmFt
aWx5OkNhbGlicmksSGVsdmV0aWNhLHNhbnMtc2VyaWYiIGRpcj0ibHRyIj4NCjxwIHN0eWxlPSJt
YXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowIj5JJiMzOTttIGJ1aWxkaW5nIGEgaW1hZ2UgdXNp
bmcgWW9jdG8gcm9ja3kgYW5kIFhpbGlueCBmb3IgbXkgenlucS03MDIgYm9hcmQuPC9wPg0KPHAg
c3R5bGU9Im1hcmdpbi10b3A6MDttYXJnaW4tYm90dG9tOjAiPjxicj4NCjwvcD4NCjxwIHN0eWxl
PSJtYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowIj5CdXQgZm9yIHNvbWU8c3Bhbj7CoHJlYXNv
biBteSByb290IGZpbGUgc3lzdGVtIGNhbiBvbmx5IGJlIG1vdW50ZWQgYXMgYSByZWFkIG9ubHku
IElmIEkgcHV0IHJ3IGluIHRoZSB1LWJvb3QgbG9hZMKgY29tbWFuZCBpdCBmYWlscy4gSSYjMzk7
bSBib290aW5nIGZyb20gYSBTRCBjYXJkLCB0aGF0IGRvZXNuJiMzOTt0IGhhdmUgYW55IGxvY2sg
c3dpdGNoLjwvc3Bhbj48L3A+DQo8cCBzdHlsZT0ibWFyZ2luLXRvcDowO21hcmdpbi1ib3R0b206
MCI+PHNwYW4+PGJyPg0KPC9zcGFuPjwvcD4NCjxwIHN0eWxlPSJtYXJnaW4tdG9wOjA7bWFyZ2lu
LWJvdHRvbTowIj48c3Bhbj48c3Bhbj5BbmQgaWYgSSBib290IHVzaW5nIG90aGVyIGtlcm5lbCBk
aWZmZXJlbnQgdGhhbiB0aGUgb25lIGdlbmVyYXRlZCBieSB5b2N0byBpdCBkb2VzIG1vdW50IHRo
ZSBmaWxlIHN5c3RlbSBhcyByZWFkIHdyaXRlLi4uIHRoZSBwcm9ibGVtIGlzIHNvbWV3aGVyZSBp
biBteSBpbWFnZSBhbmQgbm90IHBoeXNpY2FsIGluIHRoZSBTRCBjYXJkIG9yIGluIHRoZSBjb250
cm9sbGVyLjwvc3Bhbj48YnI+DQo8L3NwYW4+PC9wPg0KPHAgc3R5bGU9Im1hcmdpbi10b3A6MDtt
YXJnaW4tYm90dG9tOjAiPjxzcGFuPjxzcGFuPjxicj4NCjwvc3Bhbj48L3NwYW4+PC9wPg0KPHAg
c3R5bGU9Im1hcmdpbi10b3A6MDttYXJnaW4tYm90dG9tOjAiPjxzcGFuPjxzcGFuPklmIGdlbmVy
YXRlIG15IHlvY3RvIGltYWdlIHVzaW5nIGHCoDxzcGFuPnFlbXV4ODYgbWFjaGluZSwgaXQgZG9l
cyB3b3JrIGdvb2QgYW5kIG1vdW50IHRoZSBwYXJ0aXRpb24gYXMgcncuPC9zcGFuPjwvc3Bhbj48
L3NwYW4+PC9wPg0KPHAgc3R5bGU9Im1hcmdpbi10b3A6MDttYXJnaW4tYm90dG9tOjAiPjxzcGFu
PjxzcGFuPjxzcGFuPjxicj4NCjwvc3Bhbj48L3NwYW4+PC9zcGFuPjwvcD4NCjxwIHN0eWxlPSJt
YXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowIj48c3Bhbj48c3Bhbj48c3Bhbj5UaGlzIGlzIHRo
ZSBsYXRlc3QgcGFydCBvZiBteSBib290IGxvZzo8L3NwYW4+PC9zcGFuPjwvc3Bhbj48L3A+DQo8
cCBzdHlsZT0ibWFyZ2luLXRvcDowO21hcmdpbi1ib3R0b206MCI+PHNwYW4+PHNwYW4+PHNwYW4+
PC9zcGFuPjwvc3Bhbj48L3NwYW4+PC9wPg0KPGRpdj5XYWl0aW5nIGZvciByb290IGRldmljZSAv
ZGV2L21tY2JsazBwMi4uLsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgPC9kaXY+DQo8ZGl2Pm1tYzA6IG5ldyBoaWdoIHNwZWVkIFNESEMg
Y2FyZCBhdCBhZGRyZXNzIGFhYWHCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoMKgPC9kaXY+DQo8ZGl2Pm1tY2JsazA6IG1tYzA6YWFhYSBTTDA4RyA3LjQw
IEdpQiAocm8pwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqDCoDwvZGl2Pg0KPGRpdj7CoG1tY2JsazA6IHAxIHAywqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8L2Rpdj4NCjxkaXY+VkZTOiBDYW5ub3Qgb3Bl
biByb290IGRldmljZSAmcXVvdDttbWNibGswcDImcXVvdDsgb3IgdW5rbm93bi1ibG9jaygxNzks
Mik6IGVycm9yIC0zMMKgIMKgIMKgPC9kaXY+DQo8ZGl2PlBsZWFzZSBhcHBlbmQgYSBjb3JyZWN0
ICZxdW90O3Jvb3Q9JnF1b3Q7IGJvb3Qgb3B0aW9uOyBoZXJlIGFyZSB0aGUgYXZhaWxhYmxlIHBh
cnRpdGlvbnM6wqA8L2Rpdj4NCjxkaXY+MDEwMMKgIMKgIMKgIMKgIMKgIMKgMTYzODQgcmFtMMKg
IChkcml2ZXI/KcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj4NCjxkaXY+MDEwMcKgIMKgIMKgIMKgIMKgIMKgMTYz
ODQgcmFtMcKgIChkcml2ZXI/KcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj4NCjxkaXY+MDEwMsKgIMKgIMKgIMKg
IMKgIMKgMTYzODQgcmFtMsKgIChkcml2ZXI/KcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj4NCjxkaXY+MDEwM8Kg
IMKgIMKgIMKgIMKgIMKgMTYzODQgcmFtM8KgIChkcml2ZXI/KcKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj4NCjxk
aXY+MDEwNMKgIMKgIMKgIMKgIMKgIMKgMTYzODQgcmFtNMKgIChkcml2ZXI/KcKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqA8
L2Rpdj4NCjxkaXY+MDEwNcKgIMKgIMKgIMKgIMKgIMKgMTYzODQgcmFtNcKgIChkcml2ZXI/KcKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgwqA8L2Rpdj4NCjxkaXY+MDEwNsKgIMKgIMKgIMKgIMKgIMKgMTYzODQgcmFtNsKgIChk
cml2ZXI/KcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj4NCjxkaXY+MDEwN8KgIMKgIMKgIMKgIMKgIMKgMTYzODQg
cmFtN8KgIChkcml2ZXI/KcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj4NCjxkaXY+MDEwOMKgIMKgIMKgIMKgIMKg
IMKgMTYzODQgcmFtOMKgIChkcml2ZXI/KcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj4NCjxkaXY+MDEwOcKgIMKg
IMKgIMKgIMKgIMKgMTYzODQgcmFtOcKgIChkcml2ZXI/KcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj4NCjxkaXY+
MDEwYcKgIMKgIMKgIMKgIMKgIMKgMTYzODQgcmFtMTDCoCAoZHJpdmVyPynCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDwvZGl2
Pg0KPGRpdj4wMTBiwqAgwqAgwqAgwqAgwqAgwqAxNjM4NCByYW0xMcKgIChkcml2ZXI/KcKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgPC9kaXY+DQo8ZGl2PjAxMGPCoCDCoCDCoCDCoCDCoCDCoDE2Mzg0IHJhbTEywqAgKGRyaXZl
cj8pwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqA8L2Rpdj4NCjxkaXY+MDEwZMKgIMKgIMKgIMKgIMKgIMKgMTYzODQgcmFtMTPC
oCAoZHJpdmVyPynCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoDwvZGl2Pg0KPGRpdj4wMTBlwqAgwqAgwqAgwqAgwqAgwqAxNjM4
NCByYW0xNMKgIChkcml2ZXI/KcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPC9kaXY+DQo8ZGl2PjAxMGbCoCDCoCDCoCDCoCDC
oCDCoDE2Mzg0IHJhbTE1wqAgKGRyaXZlcj8pwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8L2Rpdj4NCjxkaXY+YjMwMMKgIMKg
IMKgIMKgIMKgNzc2MTkyMCBtbWNibGswwqAgZHJpdmVyOiBtbWNibGvCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoMKgPC9kaXY+DQo8ZGl2PsKgIGIz
MDHCoCDCoCDCoCDCoCDCoDEwNDg1NzYgbW1jYmxrMHAxIDlkN2E5ZDEwLTAxwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqDCoDwvZGl2Pg0KPGRpdj7C
oCBiMzAywqAgwqAgwqAgwqAgwqA2NzEyMzIwIG1tY2JsazBwMiA5ZDdhOWQxMC0wMsKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj4NCjxk
aXY+S2VybmVsIHBhbmljIC0gbm90IHN5bmNpbmc6IFZGUzogVW5hYmxlIHRvIG1vdW50IHJvb3Qg
ZnMgb24gdW5rbm93bi1ibG9jaygxNzksMik8L2Rpdj4NCjxkaXY+Q1BVMTogc3RvcHBpbmfCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoMKgPC9kaXY+DQo8ZGl2PkNQVTog
MSBQSUQ6IDAgQ29tbTogc3dhcHBlci8xIE5vdCB0YWludGVkIDQuOS4wLXhpbGlueC12MjAxNy4z
ICMxwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8L2Rpdj4NCjxkaXY+SGFyZHdhcmUgbmFtZTogWGls
aW54IFp5bnEgUGxhdGZvcm3CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDwvZGl2Pg0KPGRpdj5bJmx0O2MwMTBlM2FjJmd0
O10gKHVud2luZF9iYWNrdHJhY2UpIGZyb20gWyZsdDtjMDEwYTVmMCZndDtdIChzaG93X3N0YWNr
KzB4MTAvMHgxNCnCoCDCoCDCoCDCoMKgPC9kaXY+DQo8ZGl2PlsmbHQ7YzAxMGE1ZjAmZ3Q7XSAo
c2hvd19zdGFjaykgZnJvbSBbJmx0O2MwMmRjY2U0Jmd0O10gKGR1bXBfc3RhY2srMHg4MC8weGEw
KcKgIMKgIMKgIMKgIMKgIMKgIMKgwqA8L2Rpdj4NCjxkaXY+WyZsdDtjMDJkY2NlNCZndDtdIChk
dW1wX3N0YWNrKSBmcm9tIFsmbHQ7YzAxMGNiNTgmZ3Q7XSAoaXBpX2NwdV9zdG9wKzB4M2MvMHg3
MCnCoCDCoCDCoCDCoCDCoCDCoMKgPC9kaXY+DQo8ZGl2PlsmbHQ7YzAxMGNiNTgmZ3Q7XSAoaXBp
X2NwdV9zdG9wKSBmcm9tIFsmbHQ7YzAxMGQzODgmZ3Q7XSAoaGFuZGxlX0lQSSsweDY0LzB4ODQp
wqAgwqAgwqAgwqAgwqAgwqDCoDwvZGl2Pg0KPGRpdj5bJmx0O2MwMTBkMzg4Jmd0O10gKGhhbmRs
ZV9JUEkpIGZyb20gWyZsdDtjMDEwMTQyMCZndDtdIChnaWNfaGFuZGxlX2lycSsweDgwLzB4OGMp
wqAgwqAgwqAgwqAgwqDCoDwvZGl2Pg0KPGRpdj5bJmx0O2MwMTAxNDIwJmd0O10gKGdpY19oYW5k
bGVfaXJxKSBmcm9tIFsmbHQ7YzAxMGIwMGMmZ3Q7XSAoX19pcnFfc3ZjKzB4NmMvMHhhOCnCoCDC
oCDCoCDCoCDCoCDCoDwvZGl2Pg0KPGRpdj5FeGNlcHRpb24gc3RhY2soMHhkZTQ3MWY3MCB0byAw
eGRlNDcxZmI4KcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgPC9kaXY+DQo8ZGl2PjFmNjA6wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAwMDAwMDAwMCAwMDAwMDAwMCAxZTI5YzAwMCBk
ZWJkZTljMMKgIMKgPC9kaXY+DQo8ZGl2PjFmODA6IDQ5ZDJlN2ExIDAwMDAwMDAwIGRlYmRkZTQw
IDAwMDAwMDAxIDQ3YWRkNjZhIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAxwqAgwqA8L2Rpdj4N
CjxkaXY+MWZhMDogMDAwMDAwMTUgZGU0NzFmYzAgYzA0YWY1ZGMgYzA0YWY2MDAgNjAwMDAwMTMg
ZmZmZmZmZmbCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDwvZGl2Pg0KPGRpdj5bJmx0
O2MwMTBiMDBjJmd0O10gKF9faXJxX3N2YykgZnJvbSBbJmx0O2MwNGFmNjAwJmd0O10gKGNwdWlk
bGVfZW50ZXJfc3RhdGUrMHhlNC8weDFiNCnCoCDCoCDCoDwvZGl2Pg0KPGRpdj5bJmx0O2MwNGFm
NjAwJmd0O10gKGNwdWlkbGVfZW50ZXJfc3RhdGUpIGZyb20gWyZsdDtjMDE0Y2RiNCZndDtdIChj
cHVfc3RhcnR1cF9lbnRyeSsweDE4Yy8wKTwvZGl2Pg0KPGRpdj5bJmx0O2MwMTRjZGI0Jmd0O10g
KGNwdV9zdGFydHVwX2VudHJ5KSBmcm9tIFsmbHQ7MDAxMDE0Y2MmZ3Q7XSAoMHgxMDE0Y2MpwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8L2Rpdj4NCjxkaXY+LS0tWyBlbmQgS2VybmVsIHBh
bmljIC0gbm90IHN5bmNpbmc6IFZGUzogVW5hYmxlIHRvIG1vdW50IHJvb3QgZnMgb24gdW5rbm93
bi1ibCk8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQpUaGFua3MgZm9yIHlvdXIgaGVscCENCjxw
PjwvcD4NCjxwIHN0eWxlPSJtYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowIj48YnI+DQo8L3A+
DQo8ZGl2IGlkPSJtXy00Mzc2OTEzMTkyNzc5ODY5MTgyU2lnbmF0dXJlIj4NCjxkaXYgaWQ9Im1f
LTQzNzY5MTMxOTI3Nzk4NjkxODJkaXZ0YWdkZWZhdWx0d3JhcHBlciIgZGlyPSJsdHIiIHN0eWxl
PSJmb250LXNpemU6MTJwdDtjb2xvcjpyZ2IoMCwwLDApO2ZvbnQtZmFtaWx5OkNhbGlicmksQXJp
YWwsSGVsdmV0aWNhLHNhbnMtc2VyaWYsSGVsdmV0aWNhLEVtb2ppRm9udCwmcXVvdDtBcHBsZSBD
b2xvciBFbW9qaSZxdW90OywmcXVvdDtTZWdvZSBVSSBFbW9qaSZxdW90OyxOb3RvQ29sb3JFbW9q
aSwmcXVvdDtTZWdvZSBVSSBTeW1ib2wmcXVvdDssJnF1b3Q7QW5kcm9pZCBFbW9qaSZxdW90OyxF
bW9qaVN5bWJvbHMiPg0KPHA+Sm9zZSBCcmF2byA8L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+
DQo8L2Rpdj4NCg0KLS08YnI+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXzxicj4NCnlvY3RvIG1haWxpbmcgbGlzdDxicj4NCjxhIGhyZWY9Im1haWx0bzp5
b2N0b0B5b2N0b3Byb2plY3Qub3JnIiB0YXJnZXQ9Il9ibGFuayI+eW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZzwvYT48YnI+DQo8YSBocmVmPSJodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlz
dGluZm8veW9jdG8iIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bzwvYT48YnI+DQo8L2Jsb2NrcXVvdGU+
PC9kaXY+PC9kaXY+PC9kaXY+LS0gPGJyPjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9zaWdu
YXR1cmUiIGRhdGEtc21hcnRtYWlsPSJnbWFpbF9zaWduYXR1cmUiPjxkaXYgZGlyPSJsdHIiPkdp
b3Jkb24gU3Rhcms8L2Rpdj48L2Rpdj4NCg==

--f4f5e80e2040399c7a0566a134b5--
