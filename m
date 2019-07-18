Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F271DE00B33; Wed, 17 Jul 2019 23:51:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.67 listed in list.dnswl.org]
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
	[209.85.167.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88896E009FA
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 23:51:42 -0700 (PDT)
Received: by mail-lf1-f67.google.com with SMTP id 62so13470001lfa.8
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 23:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HV6XksThjLZ7gVefwK8wjglmTGtXwqe1C/ryrR0VucU=;
	b=cHiSziM/d2a/IV9cgICd3odN1rUFTUEDoCaXKnBvcobC0L3yVCh1XtkbI2T7oabnsD
	GvWy3PDkaEflYn4vb/I3CRkhedDVyCzgssULPRjHmrb82/awFToss32UOc2Zq8gSKpo2
	o3ho8UT7sv+/08R60on+JwfbW1pUken5pM8Rd9cadRY4vaO18spaX5YpehZQp0aj50Oq
	Ctsh6GekN3P7MUQtdW2U8AF4mKfgASKAfoew06LWvLGGFwZLeqbJf5xMLWUSZCT94F+V
	y/uwcuU3Vi2BoWNnxDaA3pVB07Wq0W3hSmqMgHUG5eF493svYJrOuS1x6dfyTcTxaZ5m
	v+Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HV6XksThjLZ7gVefwK8wjglmTGtXwqe1C/ryrR0VucU=;
	b=Muig91ohcbxu7aLeLAtyHOjkP7scBHLqeaqJor4s0SRdmXhO0OVuY6/VS27l9nsdE5
	2Pw8OEIBjFgWTF7dv2iSQXgSrEVONIsOGJelS90rZ6TyFqXSxOKSz3vtOiJ+wqA2r92Q
	dzj1SxmKifNho++qhukR21ESmPErKcRGp+Z8K8/3PUCHRDenefdDY8f/g0JsquXjsRBh
	v95bL2THSYbqT+J/fjZiJipxmVKp1lojWbjVwzCLP7MPikBt3jWnHF6mV0dCWyRGWgsI
	hipljx3klYixCk5eWghBRxxqz0wGYWQGyONAsw7XWw3hWGynvMzz6VsMSKHzm6U7mlyI
	PPRQ==
X-Gm-Message-State: APjAAAUN+k10KHVW9MARQAlWaNH+SA+oquv1Jnwp/62hWG4Z3LyNezrx
	pEvN0Yi8AhQkUThN/yUlyiUzpIJIQGKwuot7mC3L4DQz
X-Google-Smtp-Source: APXvYqxqlQ3YsEaBe+SnVXAEYxbqGXvuzcTPavM/yLmWxP9vpR/EJA5Hb/64NUIyvVKFs0fgC91KWw1cVq2yNwnmJ4Q=
X-Received: by 2002:ac2:419a:: with SMTP id z26mr20335926lfh.21.1563432701459; 
	Wed, 17 Jul 2019 23:51:41 -0700 (PDT)
MIME-Version: 1.0
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Thu, 18 Jul 2019 08:51:30 +0200
Message-ID: <CAAx3WaB4Gue=O76b86yhrxPuFKLzSE2_0yCUQJLbNzN4t+GDFw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: eSDK: python3.5.real: No such file or directory
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
X-List-Received-Date: Thu, 18 Jul 2019 06:51:45 -0000
Content-Type: multipart/alternative; boundary="000000000000cd0093058def0a37"

--000000000000cd0093058def0a37
Content-Type: text/plain; charset="UTF-8"

Hi all,

I just created my first eSDK for a custom image. It installs just fine.
When I try to run "devtool --help" (after sourcing the env setup), I got
this output:
/home/user/poky_sdk/sysroots/x86_64-pokysdk-linux/usr/bin/python3: line 5:
/home/user/poky_sdk/sysroots/x86_64-pokysdk-linux/usr/bin/python3.5.real:
No such file or directory
I have python3.5 installed on my host.

Thanks in advance,
Gabriele

--000000000000cd0093058def0a37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I just created my fi=
rst eSDK for a custom image. It installs just fine. When I try to run &quot=
;devtool --help&quot; (after sourcing the env setup), I got this output:</d=
iv><div style=3D"margin-left:40px"><span style=3D"font-family:courier new,m=
onospace">/home/user/poky_sdk/sysroots/x86_64-pokysdk-linux/usr/bin/python3=
: line 5: /home/user/poky_sdk/sysroots/x86_64-pokysdk-linux/usr/bin/python3=
.5.real: No such file or directory</span></div><div><span style=3D"font-fam=
ily:courier new,monospace"><font face=3D"arial,sans-serif">I have python3.5=
 installed on my host.</font></span></div><div><span style=3D"font-family:c=
ourier new,monospace"><font face=3D"arial,sans-serif"><br></font></span></d=
iv><div><span style=3D"font-family:courier new,monospace"><font face=3D"ari=
al,sans-serif">Thanks in advance,</font></span></div><div><span style=3D"fo=
nt-family:courier new,monospace"><font face=3D"arial,sans-serif">Gabriele<b=
r></font></span></div><div><span style=3D"font-family:courier new,monospace=
"></span></div></div>

--000000000000cd0093058def0a37--
