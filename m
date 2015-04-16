Return-Path: <parthiban@ulivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CD0CE008F6; Thu, 16 Apr 2015 07:32:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27C19E00306
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 07:32:57 -0700 (PDT)
Received: by obbfy7 with SMTP id fy7so42394761obb.2
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 07:32:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=dYDS94ziMNtnnjOwqh3iORwJpdm/cimQrXyXeHs3y24=;
	b=B8yhetLr9B5KRwlLJ0H4BMDOu2R5k1ZayB5TLSuvpkBhInLVX/z/PngbhEZS50OJr3
	kZwMPd9iJ6dTpzcyrvs9CoeYnfvvcopAbyPbhBg7f6D7zTQwVfuCeDC1KCUkK+j6u6lH
	jr9uHfcMJXWfcM0kLvxgL2gIFK/aRjb7LfNSZ7yfINQo3ERgTZFMTwIbQ1sGd2IcCkNd
	MuJDSToHojlsQrcDqK5NxGgufWvivGfJXWpE8jxeHOqZpdJVi3+AeW0GevKPcUmNuFvG
	4XnjcBBdmYVX4vRisadDJ0jVaRts0KSHkrfrZYdLqTrD3qiVTZqbTUmJj4pzsmCoEPXs
	eKPQ==
X-Gm-Message-State: ALoCoQmZKjsUNIRYaBOCKEYz8J7ErNQTCkH8HA2dzA3vHnQOej5sVkiKk7St8YymBlcQ0k7s64NX
MIME-Version: 1.0
X-Received: by 10.202.12.142 with SMTP id 136mr18627081oim.30.1429194776785;
	Thu, 16 Apr 2015 07:32:56 -0700 (PDT)
Received: by 10.60.162.210 with HTTP; Thu, 16 Apr 2015 07:32:56 -0700 (PDT)
Date: Thu, 16 Apr 2015 20:02:56 +0530
Message-ID: <CABNKipKt2zaeDSb6jqd9_WApBL4PX4=p1yhLnfzwDjB8QhANKw@mail.gmail.com>
From: Parthiban Kandasamy <parthiban@ulivesystems.com>
To: yocto@yoctoproject.org
Subject: How to enable Auto-login
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
X-List-Received-Date: Thu, 16 Apr 2015 14:32:59 -0000
Content-Type: multipart/alternative; boundary=001a113d1cecfc4bd30513d85673

--001a113d1cecfc4bd30513d85673
Content-Type: text/plain; charset=UTF-8

i built a yocto image with beagleboard-10-dora based on qt-x11. when i boot
board every time it asks root login. i checked image.bbclass file , it have
set-enable-auto-login function but it is not work. how to disable this
feature?

-- 
thanks and regards,
parthiban
      +919790329795

--001a113d1cecfc4bd30513d85673
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">i built a yocto image with beagleboard-10-dora based on qt=
-x11. when i boot board every time it asks root login. i checked image.bbcl=
ass file , it have set-enable-auto-login function but it is not work. how t=
o disable this feature?<br clear=3D"all"><div><br>-- <br><div class=3D"gmai=
l_signature"><div style=3D"text-align:right">thanks and regards,<br>parthib=
an =C2=A0 =C2=A0 =C2=A0 <br><div style=3D"text-align:right">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 +919790329795=C2=A0=C2=A0 <br></div></div></div>
</div></div>

--001a113d1cecfc4bd30513d85673--
