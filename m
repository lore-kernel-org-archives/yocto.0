Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7753BE00E18; Tue, 30 Jan 2018 21:52:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09739E007B3
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 21:51:59 -0800 (PST)
Received: by mail-pf0-f180.google.com with SMTP id e76so11573006pfk.1
	for <yocto@yoctoproject.org>; Tue, 30 Jan 2018 21:51:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=+JjjQcgXiu+C8orJp2yRTJMUVA4mN0VlVqoSr+m7QNs=;
	b=hA2tgqEXAR7FtJ8zD232mDqsC4dgMKnalWpfbfKNsLLs4MepfbihrEYvPoBhJwZiQG
	UF9Ofse3+ffyKlmebuzFQHB5AYx5OGmEN2T58Z8bI52eRNeOvzfpqWmfxeiPXKCdww2s
	HAvJGyE72WLKhKqlxYONBlPKarlBQxOzJWE1ETMhJsbuOktgHoqJsb2VeRI4kKI+ZNrV
	Xz8atQ/2mDZnjFM6vbzkWX5R6YzkxfZCgLCo1fNkKDG5S7BSPBLdUiNtVK8sKTsCYQWT
	VhSzQN+rpGoEAhqgr5KPf5iGWX34E+TFB4+icf6y/GbkFGSR9ITePUKB7Ru2GlllMup2
	tiKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=+JjjQcgXiu+C8orJp2yRTJMUVA4mN0VlVqoSr+m7QNs=;
	b=Y4TXyZ/zlY7dkCSV7um6MzvdGB2lOyW8KiCwtraL2/27XJCIDcIeUM3bNHMM3QsF4Q
	fA8BznZCFGJ/aePtbIXBZBgZlpdsSK9eRU1hX96kQzh4KSjQoC0Tg/y5YVYaG3C1Kmwj
	/ZBJuMtH3bSDlz8yg8qcWpecx5vvpPHaGTqpwo7UyclpiqfeyiPDEGg4C0UJAKGA/vp8
	iY4o9QDw6SYLkXkzwAiutxHolp5ylb3gZ8edtPE4IBtckhn3o6Cb29uSSNnuDyoMAaul
	zaT6s2JdUnSSo6osQU/i/qADwGCIt/aVPRMw3epcmFUXrq9FpkzKsVBAA4GH7AiKpmWC
	W4rw==
X-Gm-Message-State: AKwxytdqCFth7dSXk5nXq0D3i63yRkJaFAZARMA6Qz6xgYlzUmMLhoqT
	OfKDcxa3Wi0fhGrkJbgzuFBghptqQ3epaH+Nc+I=
X-Google-Smtp-Source: AH8x225JoUKUk1FJduWdOAmkh7L0Hoa8QjJdHzDJukprX89TndPM0H0h7ouV40LwYbu0Fw7IYjEmts9VCqSUTCWOQ4Y=
X-Received: by 10.98.216.2 with SMTP id e2mr32361682pfg.151.1517377919023;
	Tue, 30 Jan 2018 21:51:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.236.140.145 with HTTP; Tue, 30 Jan 2018 21:51:58 -0800 (PST)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Wed, 31 Jan 2018 06:51:58 +0100
Message-ID: <CAPb0b+PWAvY9yr9wuu7p4cUoorwo3U1niRT7iEWY_wkEpLgMUw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] Bluetooth speaker headset - GINIVI?
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
X-List-Received-Date: Wed, 31 Jan 2018 05:52:00 -0000
Content-Type: multipart/alternative; boundary="001a114697fcda801b05640c1387"

--001a114697fcda801b05640c1387
Content-Type: text/plain; charset="UTF-8"

Hello guys

i am trying to play audio on a raspberry pi 0 W using bluetooth. Any body
know how to do it from the command line  !

Is there any previous experience with Ginivi, may be somebody can help with
it?

thank you

--001a114697fcda801b05640c1387
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello guys<br><br></div>i am trying to play=
 audio on a raspberry pi 0 W using bluetooth. Any body know how to do it fr=
om the command line=C2=A0 ! <br><br></div>Is there any previous experience =
with Ginivi, may be somebody can help with it?<br><br></div>thank you<br><b=
r></div>

--001a114697fcda801b05640c1387--
