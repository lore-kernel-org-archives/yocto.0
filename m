Return-Path: <alefachinic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B5F1E00C58; Mon, 23 Apr 2018 08:00:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alefachinic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E14AAE00C50
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 08:00:40 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id o7-v6so16986959iob.8
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 08:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=XpwkQ7PP/5XNi16BcH9/qVn0Qr3hG3xYTMj8BVF7VSI=;
	b=EkB6UPcZGDL6t9iUEbNV4jwGdka8EdTVv8iq8dRL7zpLovEvLCRucoCbjSlovggw/U
	dupT6PbJDxmcM2NqypJug1QIcZ7Vl1Ie2D1ma/YZNzJyNPgKEAUL+aexHBIec6cQP/57
	Vn9WvkAL+tM4fIj9k32nrF7o3V/59xjqnHnfCcjancVJNXDzpP5FQnRFM10NJQ+EWIZX
	PBqmCTVLodU6De6L2o6+9PHOjKqNkY6hZyaXGKsAu0VH6XGo8PtqbSur08Nh4ny/Ek5A
	1RkI3C5xK57TuSNSIfYJlsx2jT1EOonKV1lPyMwqqY9k5SjlQLBy3kLwM/nJJMA4y3k3
	Cb5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XpwkQ7PP/5XNi16BcH9/qVn0Qr3hG3xYTMj8BVF7VSI=;
	b=iMzXV6L7LK3MxQF+a5TzceL8k0JR5qmxjW1mCw11E5I1Sqvj8jgRin3AQx8VY+oBCb
	HS6dG7UUZNJ2nvddiZghtmI6pZlU+3unhW1O0a2VidPFvrrPJlk/6EDxrgl/zyQqSxT0
	PS5fJOdfYZj+wvu16F14PqjClw9h77B4lCDUmPFWYLhl21b+cX+4zuNuRGpKgqMCqTzH
	IkKqsG+2AZzSHhP0rfZUo1hy/Gj94aw2LHDM0KkE+J0+iBhI79CfneFErMSIAs5pg5fd
	+ascl7a/A3uVTzKaCpiGLGtOXXxATcMqzZUvJrr6vyl2F5cqHgE6uwM0WnZTWo/wTwg6
	/sDw==
X-Gm-Message-State: ALQs6tBfuCjIh7b+EmNL3SVOggafUO77X96Af4m3Z6N4y6wQH4Cf/hiv
	Pyp/R2k0QK++Nj/RCWbrdR5hTLi6ZpjrosuUbzI=
X-Google-Smtp-Source: AB8JxZokJTmzSSQmFoNyvgtNbTJemnh7WV5IIrd+vQytCpfa5O1wYI3biHOZI5cfuKnNqEdRDVXuByB/203u0sQdIR8=
X-Received: by 2002:a6b:4f07:: with SMTP id
	d7-v6mr21561398iob.130.1524495639101; 
	Mon, 23 Apr 2018 08:00:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:350d:0:0:0:0:0 with HTTP; Mon, 23 Apr 2018 08:00:38
	-0700 (PDT)
From: Alejandro Ariel Fachini <alefachinic@gmail.com>
Date: Mon, 23 Apr 2018 12:00:38 -0300
Message-ID: <CAHnuF30_cSbDvoJJ6U-vg-aHsh0UAA51E7F_0xNOP5jUfQQWpQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Starting Hardware
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
X-List-Received-Date: Mon, 23 Apr 2018 15:00:42 -0000
Content-Type: multipart/alternative; boundary="00000000000007cbf4056a854d0b"

--00000000000007cbf4056a854d0b
Content-Type: text/plain; charset="UTF-8"

Hello:
I'm an electronic engineer from argentina and I started to work for a
company which is starting with embedded software. I also want to work for
my self with this technology. I am about certificate android programing in
google and want to start with android things and also embedded linux.
For these reasons i want to purchase hardware that allows me to test both
environments or at least proper hardware for both Android things and Linux.

So If i purchase Raspberry Pi 3 B+, will i be able to work with Yocto? OR
do you recommend another more supported and "fiendly" Hardware for starting
with yocto? I understand that yocto is for A TON of different hardwares,
but im looking for very active and supported hardware with yocto.

Regards Alejandro.-

--00000000000007cbf4056a854d0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello:<br></div>I&#39;m an electronic =
engineer from argentina and I started to work for a company which is starti=
ng with embedded software. I also want to work for my self with this techno=
logy. I am about certificate android programing in google and want to start=
 with android things and also embedded linux.<br></div>For these reasons i =
want to purchase hardware that allows me to test both environments or at le=
ast proper hardware for both Android things and Linux.<br><br></div>So If i=
 purchase Raspberry Pi 3 B+, will i be able to work with Yocto? OR do you r=
ecommend another more supported and &quot;fiendly&quot; Hardware for starti=
ng with yocto? I understand that yocto is for A TON of different hardwares,=
 but im looking for very active and supported hardware with yocto.<br><br><=
/div>Regards Alejandro.-<br></div>

--00000000000007cbf4056a854d0b--
