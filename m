Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52AFFE00A6A; Tue, 17 Apr 2018 04:15:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCE59E00994
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 04:15:28 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id 188-v6so17538942oih.8
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 04:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=c3du5OUTA4WEnT+2u4KhTxRTb7kP5n2L4tIB3Y1AtNo=;
	b=XsY2B3+FinDYvFxUWi4q5HlZjoHZ1X7TEBatLwNfK+6wVj2mtLrcKJOGkiJQqT90hZ
	W9x1vKkg5TKpVGBf7+PxjjHw4fXgq0LA2pyUvAZFT0grASTMuHEZXg/hmFInhijnbV58
	+5LAuIoo3XljroAgLZ9Qh47cvyhldFGtqsbOSS8MbpkylPeo7ja5RZRkS3Of2ryJr+IS
	/PaR8d0Lj+D4WfUnsvrK3YGHnKO9iLGHXHJPUfDYamVJt7NDdLVmq1u46QmUINx5njXp
	HcZHHWSGZj83Yy0XGC8QDYVCLD994n6NRlIykbuJEoHASfkxcamr3uJgWM1iEf22EII2
	g2dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=c3du5OUTA4WEnT+2u4KhTxRTb7kP5n2L4tIB3Y1AtNo=;
	b=B8M3bYKoeVDciN0498w0XXVOLuP94HhZvsOmP2ve/arZEowCaNWbcHcZZuMSskvbDg
	KhU4rExfQwpWFlWZLTzJhZM6CHpTgKBul1eRHWPmTiecGOO1LrXTLSgzCW/SmEVSW86D
	lzmj/eYdfumXOGI9eUqE12Dz/TgaOAJwccUcPJHxhzL7+RKdteUycABEjqvcgm+iawZL
	35+5EG65ilrgquQrYosf/1w+lYzUxxxFqcIJoo3tlnvFW7hN4CFbnO6I51GPb8SbXZvD
	S8yyoAzrwunzI49qSfvbD2zIdYALp2LoG79ioOGoLDEg33X4cObw6CCuWQhgUyqL47jp
	fmqg==
X-Gm-Message-State: ALQs6tAI0HNlU20dglIH+xPNigvFa+2nyW/HOMXIJ96Iln0cySsdbEHI
	CJ6zDIqgQuIo8Er8hJSbi8XJjBXIQTNpfs42zbmvaw==
X-Google-Smtp-Source: AIpwx4+1tczdKsjRiA7ymlubSl0HR5yFLWETx8FVghaFs6UKFBoIYRBDjVyIrnzkxEKMZlOlz3f2QbdAvjuAdhnOh8Y=
X-Received: by 2002:aca:2b09:: with SMTP id i9-v6mr921973oik.98.1523963727671; 
	Tue, 17 Apr 2018 04:15:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.153.83 with HTTP; Tue, 17 Apr 2018 04:15:27 -0700 (PDT)
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Tue, 17 Apr 2018 13:15:27 +0200
Message-ID: <CAEhQi8khVFOsFzoM=LWZnDMnsbO2o=eodSokurZFSteXTNHjGA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: rocko cmake buld cstdlib:75:15: fatal error: stdlib.h: No such file or directory
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
X-List-Received-Date: Tue, 17 Apr 2018 11:15:29 -0000
Content-Type: multipart/alternative; boundary="000000000000a376ed056a0974fb"

--000000000000a376ed056a0974fb
Content-Type: text/plain; charset="UTF-8"

Hi all,

Have anyone experienced this error message before?

c++/7.3.0/cstdlib:75:15: fatal error: stdlib.h: No such file or directory
>
> |  #include_next <stdlib.h>
>
>
>
> |                ^~~~~~~~~~
>
>


I am not seeing this error when cross compiling using the sdk. I can see in
the output that the -isystem is added which when googling the error appears
to be a problem when cross compiling. Since the sdk works I am guessing
this flag is added by OE/poky. Any pointers on how to go forward is
appreciated.

BR
Mans Zigher

--000000000000a376ed056a0974fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgYWxsLDxkaXY+PGJyPjwvZGl2PjxkaXY+SGF2ZSBhbnlvbmUgZXhw
ZXJpZW5jZWQgdGhpcyBlcnJvciBtZXNzYWdlIGJlZm9yZT88L2Rpdj48ZGl2Pjxicj48L2Rpdj48
ZGl2PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4
IDBweCAwLjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5n
LWxlZnQ6MWV4Ij5jKysvNy4zLjAvY3N0ZGxpYjo3NToxNTogZmF0YWwgZXJyb3I6IHN0ZGxpYi5o
OiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqA8YnI+fMKgICNpbmNsdWRlX25leHQgJmx0O3N0ZGxpYi5oJmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyPnzCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBe
fn5+fn5+fn5+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqDCoDwvYmxvY2txdW90ZT48ZGl2Pjxicj48L2Rpdj48ZGl2
PkkgYW0gbm90IHNlZWluZyB0aGlzIGVycm9yIHdoZW4gY3Jvc3MgY29tcGlsaW5nIHVzaW5nIHRo
ZSBzZGsuIEkgY2FuIHNlZSBpbiB0aGUgb3V0cHV0IHRoYXQgdGhlIC1pc3lzdGVtIGlzIGFkZGVk
IHdoaWNoIHdoZW4gZ29vZ2xpbmcgdGhlIGVycm9yIGFwcGVhcnMgdG8gYmUgYSBwcm9ibGVtIHdo
ZW4gY3Jvc3MgY29tcGlsaW5nLiBTaW5jZSB0aGUgc2RrIHdvcmtzIEkgYW0gZ3Vlc3NpbmcgdGhp
cyBmbGFnIGlzIGFkZGVkIGJ5IE9FL3Bva3kuIEFueSBwb2ludGVycyBvbiBob3cgdG8gZ28gZm9y
d2FyZCBpcyBhcHByZWNpYXRlZC48L2Rpdj48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkJSPC9k
aXY+PGRpdj5NYW5zIFppZ2hlcjwvZGl2PjwvZGl2Pg0K

--000000000000a376ed056a0974fb--
