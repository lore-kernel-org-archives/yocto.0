Return-Path: <mtl1nuxd3v@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 708FAE00EDD; Fri, 15 Jul 2016 03:26:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtl1nuxd3v[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.177 listed in list.dnswl.org]
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67A97E00ECE
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 03:26:33 -0700 (PDT)
Received: by mail-yw0-f177.google.com with SMTP id w127so98548840ywf.3
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 03:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=SQtF/A/uqzR6AHh9b+h2JrjVBoUmUBPz0I0pZDygDR0=;
	b=IC7R/FcIltg3IGOHE+UQgqb4UqzC161z9XEj31K7CgUXsIeG/Ce1W+u1W+VxEJh94W
	z19NT4BQnvgLZQwHoCuOt0f55t5g0CjG8Z2AlhFiroZCBRZCcvePDySSxggFSyQE9d7X
	mjQ7Rklj9fU8TFJueLmqLmiYNyhEqEyICen3mp+x4zwX+574fTW+vzrHIEg1wVP9oNzI
	hIUZIlIZBF1l8jtTqq/4vHQjRGEFkKL5r5rG/XNxsZwgZcxgHd4yK0PKPakOHEmYUlC/
	V+Kv5l3xMsxtMbQ6p1lmKTnIHQHkUxqVrbPvKi9bCjmhE8AunKmCTCtPBWr7UdFcjIOx
	Okaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SQtF/A/uqzR6AHh9b+h2JrjVBoUmUBPz0I0pZDygDR0=;
	b=QzyvX8NUi5jUvaSWkCX9zE9EE6HxC67N0bemDEGCeY2geF6I0YTc8FLlK22d6xDIKv
	0ZoKpzQrWZ6VEqwu3K423ne+7u2FTxV/cyy+Eh/KWbXRomWCNvuvQ/9ZKIUK9zX8Axhn
	fXxhmrPzm8YZ/QyzWO4AxFIfKai1Jpb84pKye7JNfORpCsS/601w1JMvYkZeZuKCF3b7
	oBZjxN/jE2rfydIslmYxWDNcz+hi0XuWBDdDwKLvVehqycQ2tIAZgc0xucfxhrG6BOQP
	a+RLiIL/TyNL6XFLXZBl2Q6cBCCx23wZJpLILCN985GDUBXo63t/mQR/7uB69NkSbbyw
	px6Q==
X-Gm-Message-State: ALyK8tI9wGvUuCakD9zZTGhtFnDyoiMqRknRj3DxrRnsNKotxiD7MPY8snsiyN8NSFsQulv4rp43snqwo6DW7A==
X-Received: by 10.129.163.6 with SMTP id a6mr13486137ywh.89.1468578393309;
	Fri, 15 Jul 2016 03:26:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.77.7 with HTTP; Fri, 15 Jul 2016 03:26:32 -0700 (PDT)
From: Mark T <mtl1nuxd3v@gmail.com>
Date: Fri, 15 Jul 2016 11:26:32 +0100
Message-ID: <CALf_N3YxDKyEKA++cioGfn6WHzo7sUbBZfccajduZ33dCJoUGQ@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: bitbake parsing but not attempting to build recipes in layer.
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
X-List-Received-Date: Fri, 15 Jul 2016 10:26:35 -0000
Content-Type: multipart/alternative; boundary=94eb2c129a847577450537aa0de9

--94eb2c129a847577450537aa0de9
Content-Type: text/plain; charset=UTF-8

Hi,

I have several recipes in a layer. I have added the layer to
build/conf/bblayers.conf.

The layer.conf in that layer looks correct for the BBFILES+= etc.

when I run "bitbake core-image-base" the recipes are bing parsed ( as it
picked up errors for missing dependencies). With those fixed it runs clean
and builds successfully - but its omitted the recipes from my layer - there
is nothing in build/tmp/work etc

If I build my_recipe from my layer via
"bitbake my_recipe"     it builds and I see products in build/tmp/work etc.

Any idea why its not attempting to build my_recipe  when using bitbake
core-image-base ?

Thanks
Mark

--94eb2c129a847577450537aa0de9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi,<br><br></div>I have seve=
ral recipes in a layer. I have added the layer to build/conf/bblayers.conf.=
<br><br></div>The layer.conf in that layer looks correct for the BBFILES+=
=3D etc.<br><br></div>when I run &quot;bitbake core-image-base&quot; the re=
cipes are bing parsed ( as it picked up errors for missing dependencies). W=
ith those fixed it runs clean and builds successfully - but its omitted the=
 recipes from my layer - there is nothing in build/tmp/work etc<br><br></di=
v>If I build my_recipe from my layer via<br></div>&quot;bitbake my_recipe&q=
uot; =C2=A0=C2=A0=C2=A0 it builds and I see products in build/tmp/work etc.=
<br><br></div><div>Any idea why its not attempting to build my_recipe=C2=A0=
 when using bitbake core-image-base ?<br></div><div><br></div><div>Thanks<b=
r></div><div>Mark<br></div><div><div><div><div><br></div></div></div></div>=
</div>

--94eb2c129a847577450537aa0de9--
