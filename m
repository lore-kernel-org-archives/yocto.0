Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DEC6E010B0; Tue, 26 Jun 2018 12:37:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2CBBE007CE
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 12:37:45 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id e15-v6so17074332iog.1
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 12:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=TUXYuynCQ+cMR390slBRZzeJAo1vBZAlZiJl/m+KNJ0=;
	b=OqEUCiFfLfoeGtrw2bgXaujGZ72oL5kV32EDOkUGRFvhOw7qvSvFbFnlCQGoHBrDNe
	4y4U8kpZyvYQWpi1GoPoXMhTWXklrxKTFhsTEHTjQLpkPlunG2dLLU1WQH42aw2A1NXQ
	77aVL6XA4WzsesHANWq0yUhFGQ49vs7Qu/nmwXmYIiGmbgZi9LlaXUPwHZk332xQuqu8
	Y5WLze7Nxo9ihf1kZ1jeHPBfEjWWT146GUJeKKUbHB81EVMh73Qk4BcKurp9d+1DHA3p
	aRLhzwEp6YqyGMztWlX4Lfalr6qIVMViJ790cCn8sKyOIfxtbtGySL61L3b3uhCksJ8d
	Hj+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=TUXYuynCQ+cMR390slBRZzeJAo1vBZAlZiJl/m+KNJ0=;
	b=bTEooeonfbAp1G+CTK1JCny7e61sxJ0FwO8ns8MUVDQhcC6QGAIV271AcL/sqHxWzE
	d4WS3PlG1MMmsHK2N6d99bvj48Y9s/xMvOwXg5wmbPQi6iqcMN8oD8tbjKsOGhFgu+i7
	kAucS0u5c1c6LTvWk1s4Jq7pXeaawAXRb0AtH/O7RwHc0pnjZdDets+vMlLBd91Vlb31
	MwT9pxjAh3JX9izP1axivDHsdVKjrLMEpf1+v2OxIVHlryNuDmeOWHgso/0J5o+b1F1p
	4a5EK/QaqsPMafwtkvkad+StXAP4CAN5luP6ALaOoxq8+tkEZmIHUXf+PGomYjp3kb6z
	pUtw==
X-Gm-Message-State: APt69E29GzqJq86z2fSxZZHT6mA9Bj/b/OARTa+adeQ64Iiwy+pMfV3G
	U5sTRx4yBRIKXCtNuzz/GZR8Ta11pUF1rMX5ZAU+yw==
X-Google-Smtp-Source: AAOMgpcxvO23wrHNJHLw87+6O+vR9ABKPzrCYicvou3RtwHS75qV/vlkL8rTiB70bR25pQ4ytLvT12VYhHOBc9rg5sI=
X-Received: by 2002:a6b:1884:: with SMTP id
	126-v6mr2302564ioy.183.1530041865051; 
	Tue, 26 Jun 2018 12:37:45 -0700 (PDT)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Tue, 26 Jun 2018 14:37:34 -0500
Message-ID: <CAFzUWGmFaHwccznqTA_ppKA5SNjcB2+SqwYgP1yvtACMrKiLLQ@mail.gmail.com>
To: "N:" <yocto@yoctoproject.org>
Subject: Best practice for updating a single recipe in meta-openembedded?
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
X-List-Received-Date: Tue, 26 Jun 2018 19:37:47 -0000
Content-Type: multipart/alternative; boundary="000000000000dba2fc056f90a13d"

--000000000000dba2fc056f90a13d
Content-Type: text/plain; charset="UTF-8"

Hi all,

I noticed on a 64b board, devmem2 isn't able to write 32b. I noticed,
surprisingly, that there's now a patch for this fix in master (
https://github.com/openembedded/meta-openembedded/commit/1bcd15ed5b31bdec492af99f671718d7a6eb887b
).

I'm currently on rocko, which doesn't have this additional change. Can I
just cherry-pick this commit onto meta-openembedded, or should I apply
these changes into my custom layer, and leave the meta-openembedded layer
untouched?

Thanks,

Giordon
-- 
Giordon Stark

--000000000000dba2fc056f90a13d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I noticed on a 64b board, devme=
m2 isn&#39;t able to write 32b. I noticed, surprisingly, that there&#39;s n=
ow a patch for this fix in master (<a href=3D"https://github.com/openembedd=
ed/meta-openembedded/commit/1bcd15ed5b31bdec492af99f671718d7a6eb887b">https=
://github.com/openembedded/meta-openembedded/commit/1bcd15ed5b31bdec492af99=
f671718d7a6eb887b</a>).</div><div><br></div><div>I&#39;m currently on rocko=
, which doesn&#39;t have this additional change. Can I just cherry-pick thi=
s commit onto meta-openembedded, or should I apply these changes into my cu=
stom layer, and leave the meta-openembedded layer untouched?</div><div><br>=
</div><div>Thanks,</div><div><br></div><div>Giordon</div></div>-- <br><div =
dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><d=
iv dir=3D"ltr">Giordon Stark</div></div>

--000000000000dba2fc056f90a13d--
