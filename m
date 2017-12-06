Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C8ABE00D61; Wed,  6 Dec 2017 09:55:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauldotknopf[at]gmail.com)
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
	*      [209.85.214.53 listed in list.dnswl.org]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E72BAE00CE2
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 09:55:13 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id p139so8364556itb.1
	for <yocto@yoctoproject.org>; Wed, 06 Dec 2017 09:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=s02qWTqyNKnL1+vZhXqn0O/rqnV7UvShhxR1/KTRve0=;
	b=D+SaiVk1FSaZiMlG/RIsMSqTw33uPosTU/AeA6P93LVCXHZ0Ut/2NgVDazbHqLHo4O
	LOwu+Lp6da0XndSZKVJRoNGr+6htHtCjVr6VxG5RnT7fUdjUHq6JsBzW+kmbbyIr++DC
	QKCRO5Mg3RBRem27KNSk6kvB9dJPXjWl/jaFg/NggHq3oLQKRez79dzzUcwjR5VH3qMV
	Erl5VtT6Y4OLnysc6m5/waZ5m1UPAgCYbUeOeLbdZ06PbW3Qu6+/XAcU0xjPaHvW5YGu
	cW3+xB6K/zpe5TyM2mhkekfBNtApyTL+cdC4fecyEemT0K/nq5k9eg630qSqrvpgV40F
	9wHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=s02qWTqyNKnL1+vZhXqn0O/rqnV7UvShhxR1/KTRve0=;
	b=fKXdkAinsko2LpkibjQoCakOHzKqAfyb2KnyCYnix0DmK02ga53+n7b023HJuS5abd
	VTGdaD5FOmBIXZmRw8ud7O6RDt05zeJlC/bHWGdm8oA987ltXavVB0ck6TdzAqYciRHD
	qOnNU+Bf6KteTh/PIcDc1b9CWeuHRWqQuhlVZiUQjnxkpVEkQ2sWANiNAGEfTZTu9QGJ
	/mcpAnTP/jHD09To5br0NlmFNuaTAJxgv4FOFe6AlIdPOoha7YMjHVHByjrsEFekUMFH
	hsBZngtKFSnxRoOHFX1hIk7vqaJAAOH7khJ+H6CQA2+P+Cwu5jN0ES/PgndJYb6AomZ4
	yTHQ==
X-Gm-Message-State: AKGB3mJ/m8/PcgwAFG1rzeY27P9t5Qgi6lI1MgKbcopKm2nUaQ2taUzT
	YLHiTJsgXWDwPaYjfNeEJztZ40tIYL383E2YDBg=
X-Google-Smtp-Source: AGs4zMYHU3qqSk9sn6JDVfCh8QcfKjU3GNFpjRZ0+oRRrhhi/qTNODmzpvwvzBOXKjjC4IGHjzkQtZt73k37lTzOQ30=
X-Received: by 10.36.55.136 with SMTP id r130mr22852906itr.3.1512582912885;
	Wed, 06 Dec 2017 09:55:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.132.96 with HTTP; Wed, 6 Dec 2017 09:55:12 -0800 (PST)
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Wed, 6 Dec 2017 12:55:12 -0500
Message-ID: <CAKmWj-1VsGcpHSeLc9k57e8WxM8OF9R=0Avh9-sRURE0ptR+dg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Allowing a local command to be executed in a recipe.
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
X-List-Received-Date: Wed, 06 Dec 2017 17:55:14 -0000
Content-Type: multipart/alternative; boundary="001a1140ab16374844055fafa784"

--001a1140ab16374844055fafa784
Content-Type: text/plain; charset="UTF-8"

I have a local utility that is manually installed on our dev/build machines.

How do I configure Yocto to let me use this local command? It is located in
/usr/local/bin.

Lets say the command is "my-command".

--001a1140ab16374844055fafa784
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a local utility that is manually installed on our d=
ev/build machines.<div><br></div><div>How do I configure Yocto to let me us=
e this local command? It is located in /usr/local/bin.</div><div><br></div>=
<div>Lets say the command is &quot;my-command&quot;.</div></div>

--001a1140ab16374844055fafa784--
