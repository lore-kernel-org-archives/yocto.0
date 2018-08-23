Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 099B3E00460; Thu, 23 Aug 2018 03:23:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
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
	*      [209.85.222.41 listed in list.dnswl.org]
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com
	[209.85.222.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71A3AE003C1
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 03:23:35 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id r15-v6so2901569uao.1
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 03:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=F368gkLQR0XwjygxHzEMikB8XjmR9M1LSL/BL0+N6R4=;
	b=FzzJbHZ6j+CeiBg3GxKQIoSc/kdUMmwSJx4YMQJJE6Q1q7DxeB4gB7Lk3Nuv75J5zw
	19tNi+7cUMSTRxxGuFJl3T8C+mkY+v3PAp3j3N+XK1kUroIqn2brI9qZNzhYYUe0vYns
	bDzcT1i9LQjiLwJSETZER56ODOGQQUcuISHxt34sMdtQQ48kLUskXydXprJOg9BPp8Xn
	QXZjrxeRKD9Ds6oWAryL7GcIOi7pfbQBb1km15El/9bGUrdM/7IXM7zNC6NXnfO63Hi6
	LtR1K/IQKLEoY+zpUFa3SKok20uWCkvMT2fp89PX+5l3cL27Y9JRIgPgMUd/eM2tW6tn
	EYVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=F368gkLQR0XwjygxHzEMikB8XjmR9M1LSL/BL0+N6R4=;
	b=ep3QR/JofW0/IXXOGth5qE3n6XmO97ltEafzIn7Sd+0aTzbY3AvBL047MbwhnJsTKO
	H+/lVqhNZIv208Q4zPQ0u4N4/KaD6denkISLLJKj8VMxUg8bzlgCuW/AOie70hqhvZvC
	SiODlwON7CMT3Z8n29dta0kKBldQCz3UriL+tqoQubH0ll9RCnvI2Vim2DAdAew5O+mD
	ct0+d7bi7o15cy+1hWgiHdfuuh3NqVXcFzNTvH0adciZOO7DkMgbVmyhKivysFR5M5Mv
	8HQtd2WWARLAdIVKe5Rw4nLHyiwGs/ZS2KtaGFcb9RKzUgQiEqmIAIniDWRuWOoYYwoy
	WJjQ==
X-Gm-Message-State: APzg51BxLf4Qmb6TfAfCT07N9PFoynUAFfpGYb+xhfyfNJ+lmvCqhJEF
	TZbLwNpUVRWb2JKpSV2vQa1YsEl8YoW+Lw8Vix9LTUux
X-Google-Smtp-Source: ANB0VdbX7Wi3gSWjKe+r82tLDRbPQCcRMdbZkxrY0LyBw9tgouwT5c/0l7/dPJwmHSemyZvviudPj6Qil7S0wN5tBeQ=
X-Received: by 2002:a9f:33ee:: with SMTP id
	y46-v6mr8016096uab.90.1535019814362; 
	Thu, 23 Aug 2018 03:23:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9f:34dd:0:0:0:0:0 with HTTP; Thu, 23 Aug 2018 03:23:33
	-0700 (PDT)
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Thu, 23 Aug 2018 12:23:33 +0200
Message-ID: <CA+-BmJZY8uvqJmd54fGtYQvunENcgOASnEiSNvttWpEwPnWJ8w@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Eclipse/Yocto SDK cannot import Makefile based projects
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
X-List-Received-Date: Thu, 23 Aug 2018 10:23:36 -0000
Content-Type: multipart/alternative; boundary="000000000000c22464057417a604"

--000000000000c22464057417a604
Content-Type: text/plain; charset="UTF-8"

I'm using Eclipse Oxygen and set it up succesffuly with Yocto Plugins and
SDK toolchains ( 2.5 Sumo).

I can create a  Yocto SDK Autotools Project but there is no way to import
an existing Makefile based project and use the Yocto SDK plugin !

am I missing something ?


best regards

--000000000000c22464057417a604
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m using Eclipse Oxygen and set it up succesffuly wit=
h Yocto Plugins and SDK toolchains ( 2.5 Sumo).<div><br></div><div>I can cr=
eate a=C2=A0 Yocto SDK Autotools Project but there is no way to import an e=
xisting Makefile based project and use the Yocto SDK plugin !</div><div><br=
></div><div>am I missing something ?</div><div><br></div><div><br></div><di=
v>best regards</div></div>

--000000000000c22464057417a604--
