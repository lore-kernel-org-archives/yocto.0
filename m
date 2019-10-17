Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C963BE00D9E; Thu, 17 Oct 2019 03:58:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com
	[209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB545E00736
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 03:58:42 -0700 (PDT)
Received: by mail-il1-f171.google.com with SMTP id a5so1573778ilh.6
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2019 03:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=14/Hc6/L1Kj/NEwl3PXoR2eAEenuVtnH4zVFF/Z7EmU=;
	b=cjLE89Lyr2VOk9G+1v97qgbtx1DVdlfLmJfuEcd1WyGPPRaTtJBMTBZMvOjNjf9pXP
	KttJ15icrYILRK1nFRTqJh4tJWd8Xp9M8o2bt9c2u2xmWuJSoyhJ33uu/HDXeiKiLXJc
	PrF2tDiCQWMi9NYBvNFg5zcdb8xtXV/8mubpq+1aP3H1qJyg8fiXaIZRueH6lxaFoR6R
	1FMDTUDut5shXCNedbyd0BylYuEOm34RxpGaI44wajSRQdn9+fym+9kOqPzzeH0iDdhk
	pDvcgI+eJH8ybe/AwPTAav0hOlTtaYH9MxBizHKU6UQumgwcjRnS3JvJLNFs/0oCPEFu
	JEyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=14/Hc6/L1Kj/NEwl3PXoR2eAEenuVtnH4zVFF/Z7EmU=;
	b=KXnyiMJun22Hg2oSSFEHcqOSuyGpLqMteO1KF73yYzt3tlf24W2vafEmeLzFCJgUyo
	tMhb6fNOknaNcw6jFDMokrZscNQwGLaGdvcEwuRfS75uP1B3KCBxrEl+Um3OacuhyFbB
	71XKYxqUSvFZHDxLaawWVKs8H11ZJoDelGm9ghEymSyAddnxMu5gaq+g9OOhSQ/fxUTV
	U//jji72xaxVS/vQsbQCrGveb+gsNxAVq93X8vrMeOX81by8UuxLQJeEfmhKFmoDZ4zp
	9fubRodXv17KLgEDncn+D/Esv9I7l+o5qkZwiAdOryOQZOil/V4GvGxm5INagJyw0d9d
	RwLQ==
X-Gm-Message-State: APjAAAWy0/x7Cc07bF4K/yg+RGTtpC/77ltGl8gl5ZaZjLiYPCG4X4qV
	2ku7wjErP76Sx1UB996gVZPT04DOjKZAXv6z0U75aOHo
X-Google-Smtp-Source: APXvYqw6KbYz7rFlzYojwDRgo472gAHEYB6qlTg580fw73AecrDern5ogmIwqxxFrnTZeTiI6R0H6tVoyB2y66y73EY=
X-Received: by 2002:a92:d084:: with SMTP id h4mr3005492ilh.300.1571309469016; 
	Thu, 17 Oct 2019 03:51:09 -0700 (PDT)
MIME-Version: 1.0
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Thu, 17 Oct 2019 12:50:54 +0200
Message-ID: <CAB2nKc8EdbGsO2bqcnRV+KRoOrQMdHSyXwF2fOhhogAHg-A3RQ@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>, yi.zhao@windriver.com,
	joe_macdonald@mentor.com
X-Mailman-Approved-At: Thu, 17 Oct 2019 08:07:18 -0700
Subject: [meta-selinux] Warrior branch glib/meson problem
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
X-List-Received-Date: Thu, 17 Oct 2019 10:58:43 -0000
Content-Type: multipart/alternative; boundary="000000000000bba68d059518fe0d"

--000000000000bba68d059518fe0d
Content-Type: text/plain; charset="UTF-8"

Hi Team,

I have a problem with meta-selinux layer on warrior branch, especially
building glib-2.0 with meson.
This commit introduces enabled/disabled flags instead of true/false:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/commit/?h=warrior&id=bb0c9c3abcb935e4b362eb57985e1ee7fec0bfe0

But current glib-2.0 is not 2.60 yet:
https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/glib-2.0/?h=warrior

Can we revert this patch on warrior?

Best regards,
Vincent

--000000000000bba68d059518fe0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Team, <br></div><div><br></div><div>I have a probl=
em with meta-selinux layer on warrior branch, especially building glib-2.0 =
with meson.</div><div>This commit introduces enabled/disabled flags instead=
 of true/false:<br></div><div><a href=3D"http://git.yoctoproject.org/cgit/c=
git.cgi/meta-selinux/commit/?h=3Dwarrior&amp;id=3Dbb0c9c3abcb935e4b362eb579=
85e1ee7fec0bfe0">http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/com=
mit/?h=3Dwarrior&amp;id=3Dbb0c9c3abcb935e4b362eb57985e1ee7fec0bfe0</a></div=
><div><br></div><div>But current glib-2.0 is not 2.60 yet:<br></div><div><a=
 href=3D"https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core=
/glib-2.0/?h=3Dwarrior">https://git.yoctoproject.org/cgit.cgi/poky/plain/me=
ta/recipes-core/glib-2.0/?h=3Dwarrior</a></div><div><br></div><div>Can we r=
evert this patch on warrior?</div><div><br></div><div>Best regards,</div><d=
iv>Vincent<br></div></div>

--000000000000bba68d059518fe0d--
