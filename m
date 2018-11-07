Return-Path: <markus4dev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65446E009B2; Wed,  7 Nov 2018 02:32:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markus4dev[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9F51E0053F
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 02:32:38 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id i17-v6so16801717wre.7
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 02:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5rxtO7z1+c04AdsoBn2y83UvT+RHy7uDfagPk2WRsHg=;
	b=pQ8Lf7a/muPiwRfur/uu7oimcIAR8yvr/T3WR9cYGpKpdpUzMz8g9A/tBuwLpqfAV2
	YM1rRGLL9DTf6RiGyiWGbIiElCbSysRraz8TqV1UWHMtONS4ggD2lG/1SX1/+sAXfDJa
	hwbG5EcJDVWSPOaH0DsHPWf4qPPZhT5G82vK+zPWmSZkZSFHobJX9K38S1AaM+2e23yR
	xFKNjogyMYt0aG7my6myfniVKMxFMWc1fVPJ8lZ4WbMSrNTbATuvwAls5AkaKige6pm/
	lorpCBShrPLyXMuBJqBRkQUh3SeVw2IyhN3aAzw9mNmO9LcNZB3cyv1/y8rLdiB9GzF1
	Vi4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5rxtO7z1+c04AdsoBn2y83UvT+RHy7uDfagPk2WRsHg=;
	b=EA8OJ6rvgVuz7qurXfjVahhfGb0cv/eR71bFDfGwEV/0py6ibgi1SBlMx+o/xfx0su
	h9wfAMVOGFt8XfrKL0Y4awggj75LOSgem9KmG+jBKxhm+hLSkxnp9tEJX4jw0jpjJZJn
	JixrgIgOIjjKlruzXWrGTAsWs7QuPOtY634yUcOGvhQ0Z9Y8oIFuv6OyUm09NMkLI7JJ
	YMDx3n3051rI25ygQ4OxEVBkF7Iv9KQrQ4HEeEe8w65M/bYpni9t2IYYuWCc3nDDIQWV
	0aWluotNrAaI6wdmBqFtoYy/SQwjYTqNvNItKVfiL46Rtd5SukXVdV4da5ikGq1XzzYk
	y/xw==
X-Gm-Message-State: AGRZ1gIoBjMt+8FFlhLPlpcZ2eqxpNfe49Nh/Qa8T9nm470ASsUNY2tb
	VK8Pa0OGj2mzzOXNTFwGtjm1ha2EFPxzCNoFahGR3InG
X-Google-Smtp-Source: AJdET5edP9TiEYt1qwycfpa2yBbuq+wgXw2TxhU25p6JR0bRFfUT5R7/6LmB+lgxhYyt4pmWZ+UtnRa0HEqkv/a08do=
X-Received: by 2002:adf:c084:: with SMTP id
	d4-v6mr1325031wrf.268.1541586757721; 
	Wed, 07 Nov 2018 02:32:37 -0800 (PST)
MIME-Version: 1.0
From: Markus W <markus4dev@gmail.com>
Date: Wed, 7 Nov 2018 11:32:36 +0100
Message-ID: <CAFd=ochAjUo7FfHQJFcQHYE7Y2jRD8UHUhRBpGvvTRLLgfwK=Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-oe] Set linux capabilities on binary on a recipe in meta-oe layer
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
X-List-Received-Date: Wed, 07 Nov 2018 10:32:39 -0000
Content-Type: multipart/alternative; boundary="00000000000015a47e057a10a3a3"

--00000000000015a47e057a10a3a3
Content-Type: text/plain; charset="UTF-8"

Hi!

*Background:*
In my raspberry project I am developing a nodejs app that needs access to
bluetooth/ble device. I want to run the node application as non root user
for security reasons. In order to get access from within the app, the node
binary need to have the following capability *cap_net_raw+eip *set. I am
using the nodejs recipe from meta-oe and added it in my local.conf:

IMAGE_INSTALL_append = " *nodejs* i2c-tools bluez5 kernel-image
kernel-devicetree"

*Question:*
Where should I apply the following command? *setcap cap_net_raw+eip
/usr/bin/node*

What are my options? Can I create a recipe in a different package that will
apply the above command on the meta-oe package for the nodejs recipe?

I have been following this thread (
https://lists.yoctoproject.org/pipermail/yocto/2016-June/030811.html), but
the node binaries and my node-app are in different layers and packages.

Any advice how to do this is much appreciated?

Regards,
Markus

--00000000000015a47e057a10a3a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div>Hi!</div><div dir=3D"ltr"><br></div><div><b>Background:</b><=
/div><div>In my raspberry project I am developing a nodejs app that needs a=
ccess to bluetooth/ble device. I want to run the node application as non ro=
ot user for security reasons. In order to get access from within the app, t=
he node binary need to have the following capability=C2=A0<b>cap_net_raw+ei=
p </b>set. I am using the nodejs recipe from meta-oe and added it in my loc=
al.conf:</div><div><br></div><div>IMAGE_INSTALL_append =3D &quot;=C2=A0<b>n=
odejs</b>=C2=A0i2c-tools bluez5 kernel-image kernel-devicetree&quot;</div><=
div dir=3D"ltr"><br></div><div><b>Question:</b></div><div>Where should I ap=
ply the following command?=C2=A0<b>setcap cap_net_raw+eip /usr/bin/node</b>=
</div><div><br></div><div>What are my options? Can I create a recipe in a d=
ifferent package that will apply the above command on the meta-oe package f=
or the nodejs recipe?</div><div><br></div><div>I have been following this t=
hread (<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2016-June/=
030811.html">https://lists.yoctoproject.org/pipermail/yocto/2016-June/03081=
1.html</a>), but the node binaries and my node-app are in different layers =
and packages.</div><div><br></div><div>Any advice how to do this is much ap=
preciated?</div><div><br></div><div>Regards,</div><div>Markus</div></div></=
div></div></div></div>

--00000000000015a47e057a10a3a3--
