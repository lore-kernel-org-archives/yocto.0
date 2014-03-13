Return-Path: <fede.vitali@gmail.com>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0348E00A1C
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 08:52:31 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id uz6so1221380obc.41
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 08:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=uFCOariEB/4sB7xlsIqBLl4Z9nMNnm70Rn3WMp1Uxbs=;
	b=KCkUZTC7KvIVndqYhUD0VKFQNiV9kGJfz1W08pW2wMydLgV9CQ0ZjwgbcKcCiL6v57
	ylKPLY0IXS8RXS7HZXJUrePNkpa+VRoXyoCZqguO7/eO35xwt6o5E/ETP8ZiMc7P+y45
	/XuMSa+q+Bf970wjXLIDonaIPQp8Z0DJ6PZeTv1uUMhUS6fXSxZSKL+xjMVpKtaFhErl
	gilj8mEJCq0M2/gLBNNSG9FsxITonrCegvQoZlpRhhBKXDN7JIV5WBqxcd52JGq3KRUu
	OudxSW/aqN1if/2OJWLdthW3lzE+ix2KvD3Ym7cfqio60pJC8PIQ9k+CmyT24LeS6E5n
	+HlQ==
MIME-Version: 1.0
X-Received: by 10.182.29.98 with SMTP id j2mr2156482obh.30.1394725950575; Thu,
	13 Mar 2014 08:52:30 -0700 (PDT)
Received: by 10.76.101.11 with HTTP; Thu, 13 Mar 2014 08:52:30 -0700 (PDT)
Date: Thu, 13 Mar 2014 16:52:30 +0100
Message-ID: <CAD78y+7tSFGtRUy89p1Sut+aBuw2Rghmq9uc0y+uySgKXozp1g@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: yocto@yoctoproject.org
Subject: What is the best practice for customizing libraries included in yocto distribution?
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
X-List-Received-Date: Thu, 13 Mar 2014 15:52:34 -0000
Content-Type: multipart/alternative; boundary=001a11c2c484d7dc2a04f47ef072

--001a11c2c484d7dc2a04f47ef072
Content-Type: text/plain; charset=ISO-8859-1

Hi everyone,

what should I do to customize and crosscompile a library already
distributed with yocto?


I see 2 possibilities:

1. Build and install a toolchain and sysrootfs on local host and untar the
original library,
   apply yocto distributed patches and then cross compile ==> I'm having
trouble here

2. Use the yocto build environment itself, but I don't like this option.

Does anyone have already customized a library?

Any help will be appreciated

Thank you in advance

Federico

--001a11c2c484d7dc2a04f47ef072
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>what should I do to custom=
ize and crosscompile a library already distributed with yocto?</div><div><b=
r></div><div><br></div><div>I see 2 possibilities:</div><div><br></div><div=
>
1. Build and install a toolchain and sysrootfs on local host and untar the =
original library,</div><div>=A0 =A0apply yocto distributed patches and then=
 cross compile =3D=3D&gt; I&#39;m having trouble here</div><div><br></div><=
div>
2. Use the yocto build environment itself, but I don&#39;t like this option=
.=A0</div><div><br></div><div>Does anyone have already customized a library=
?</div><div><br></div><div>Any help will be appreciated</div><div><br></div=
>
<div>Thank you in advance</div><div><br></div><div>Federico</div><div><br><=
/div></div>

--001a11c2c484d7dc2a04f47ef072--
