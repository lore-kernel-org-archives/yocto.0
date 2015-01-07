Return-Path: <gmshastri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B48F2E0087C; Wed,  7 Jan 2015 06:57:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gmshastri[at]gmail.com)
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
	*      [209.85.218.47 listed in list.dnswl.org]
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69787E0059E
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 06:57:11 -0800 (PST)
Received: by mail-oi0-f47.google.com with SMTP id v63so3147804oia.6
	for <yocto@yoctoproject.org>; Wed, 07 Jan 2015 06:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=MssemOuHsbMEaQWSsYxIbjIi7RjcfRMb18lDQYYLrak=;
	b=mb6CFSGV02+Nqk9yDKYZZaDtJWnHkEvIT4lWtYQoLtACSQNvk265uYXT504FqSSGyj
	D/dEl6Oh5kpllTb36frihSIvFkCeMQGPVqPYHckESTzlzEIcTXg+0QBb3x/++f+ujsCt
	LsDvLX6nvo9NKTjfht9fHEYAZ1hgpc+HYy4rEYX4kTWSHlEdcm6P9hyzfBhb1LmL2L0l
	ZBUn/lHZlEUhWMadatUpWNhUukhqtM0/bvPb4AsKWVpWee+6Ji5rIh2ZVE5nbf/4EVwa
	rCOafQxjjMwQYSKXDNh4kBNDH/avBPY3P6htYRAdKazLHeBOljIaY/jqymznQXKfgi/n
	2WKw==
MIME-Version: 1.0
X-Received: by 10.182.19.167 with SMTP id g7mr2230982obe.75.1420642630456;
	Wed, 07 Jan 2015 06:57:10 -0800 (PST)
Received: by 10.202.104.194 with HTTP; Wed, 7 Jan 2015 06:57:10 -0800 (PST)
Date: Wed, 7 Jan 2015 20:27:10 +0530
Message-ID: <CAE_REAuUO358xnPwCcaApwwcz_vb3sW60bouATcV4xBu_riAOg@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Want to add native-gcc in SDK tar ball
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
X-List-Received-Date: Wed, 07 Jan 2015 14:57:14 -0000
Content-Type: multipart/alternative; boundary=001a11c2ea20575f1e050c112390

--001a11c2ea20575f1e050c112390
Content-Type: text/plain; charset=UTF-8

Hi,

Has anyone try to add native-gcc as part of SDK tarball ? Is it possible ?

My aim is to have "gcc" (along with cross-gcc) as part of SDK.

Any pointer is appreciable.

Regards,
Gaurang Shastri

--001a11c2ea20575f1e050c112390
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>Has anyone try to add nati=
ve-gcc as part of SDK tarball ? Is it possible ?<br><br></div>My aim is to =
have &quot;gcc&quot; (along with cross-gcc) as part of SDK. <br><br>Any poi=
nter is appreciable.<br><br></div>Regards,<br>Gaurang Shastri<br></div>

--001a11c2ea20575f1e050c112390--
