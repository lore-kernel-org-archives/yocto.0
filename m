Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1661BE01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 01:08:53 -0700 (PDT)
Received: by mail-oa0-f44.google.com with SMTP id l10so3111660oag.17
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 01:08:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:x-gm-message-state;
	bh=/nA7hYOK+egg5znNhdEW7YKWY2a/Qjw4wmysn8CzRdI=;
	b=LYSXDiVuJUdiEpbs47cUDmJYZRnj7iOk6d7wbE8m2gktmsu2x+7lEvQJo+6O5nyoN1
	EeHVoiGkgIVzqVZ5ajpkGffcKEmRjrLhUR60M4NH+iT8ZjrWEZNgSDaBy7hOh15PHzMK
	+3jid/kg9+5cRby2T2nwLmoHuy8wVt4oDKmKElye/CK01sI2Hik90xUCdbaBPV4wpvsG
	Rt6w68kioNoan5oOhVZey1n0IF/di1V6dI7YtMHnKTY/GJ+ywL4nQQiLNYd+UUz3qi0g
	QxL9G2aub8tgVtiz0hHz8pua3egNTZ24MC2jRTW60poupxP7Y6Gp4QMHoAjxc2rlF6iK
	4EZA==
X-Received: by 10.182.98.135 with SMTP id ei7mr14295895obb.102.1371024533075; 
	Wed, 12 Jun 2013 01:08:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.27.165 with HTTP; Wed, 12 Jun 2013 01:08:32 -0700 (PDT)
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 12 Jun 2013 10:08:32 +0200
Message-ID: <CAP71Wjz-_omLGprC9xkBaZ6cbp=JmZrgGJy=UjtJCdrZiTfpEg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQl1WZHFBtN+t4M+gefvSr/YlLOE48P99wNRbICgLoRfQCvvwU/H6mLfK/NjR9IBBMgXcTqh
Subject: question about packagegroups
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
X-List-Received-Date: Wed, 12 Jun 2013 08:08:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

hello,

i am creating a packagegroup to organize better my image/recipes. i am
doing something along these lines:

    DESCRIPTION = "My Custom Package Groups"

     inherit packagegroup

     PACKAGES = "\
         packagegroup-custom-apps \
         packagegroup-custom-tools \
         "

     RDEPENDS_packagegroup-custom-apps = "\
         dropbear \
         portmap \
         psplash"

     RDEPENDS_packagegroup-custom-tools = "\
         oprofile \
         oprofileui-server \
         lttng-control \
         lttng-viewer"

and in my imageA i am pulling *only* packagegroup-custom-tools with
IMAGE_INSTALL.

What I notice is that all packages listed in my packagegroup even the
ones from packagegroup-custom-apps which isn't pulled in my image are
built when building my image. Of course they are not installed, but
why are they built? it is wasting a large amount of time, while it's
not even needed. is that really expected or am i doing something wrong
here?

thanks

nicolas

