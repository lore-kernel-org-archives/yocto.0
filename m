Return-Path: <nishantpoorswani@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5779DE00C59; Sun,  6 Jan 2019 11:12:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nishantpoorswani[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DB69E00BFB
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2019 11:12:20 -0800 (PST)
Received: by mail-oi1-f172.google.com with SMTP id x23so34267881oix.3
	for <yocto@yoctoproject.org>; Sun, 06 Jan 2019 11:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HqkA58eVTB7ufRuqrknZ7TaqWVYDMBYij03ITJocCwY=;
	b=XyliTD2xHE5NdbFltboeoY3rZpcsvmJkvencuhmvZsk7Es1nLHVVgKuvf3sPrZ0+Zd
	YmGopWRJRqEpFCsghGd47phaHxJCyLR6qsARlrlocBHfL/znPHYwi0yAIzR9rWOzvg8o
	rzsKX++ImRWeijpzxOYtBfLZfpmt1S7glL15p7IMax8PJy7eHJHdIjKVFITNkplYbPjI
	zKW9w9s7BzZSpV1Uo5kNr5iPvOvCzdMNviyM+y9MSEvaRzynTer4tVeYt1tiAI6ShZ18
	H4YIbekbFePP1FaIvw4l20z0DSb3/KHFZWQT+/RhBPvwp0GDowGx9G94OA9PFLH5F+Od
	BNdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HqkA58eVTB7ufRuqrknZ7TaqWVYDMBYij03ITJocCwY=;
	b=uid82cJJkQKljc7VU7QYcOPUHgYBxTgXm7iej0NQ1lHk0GCfOg+SSKewKZOyvvdKuu
	NlG+1jU5ltTFXvoLYWe7O6sU/yKCPjMwi2sPno2Z0mbbRSvy41YcGYrgxzydbnZN8UeE
	oQz0ZtNIJ1VPIY/zmh3cKrnJB5ZbO/eSEzqBJtIBE83VIND6rz1SEllLpzib8FZFG4nj
	yPfWaxl4eaisIX+GLQjNzpez38hGspVeH4z9GjJUIX7HL11YkMIG982VJIgga6HHKTxL
	qnGg0LWP2T2hRw8WdoehROLjYQqRDb4LrrBxxZVwPRGT/K8pXiAEOBF3c1zthoJELjav
	vcCQ==
X-Gm-Message-State: AJcUukfzkBQVTERQph90utppot1Qr+ir57G8UIti+wakc3EGnzMLdhTb
	opISKC/R76sjQndsPZIo6v7SZMlMwPohPaSzpcGlmw==
X-Google-Smtp-Source: ALg8bN4oulA8J8q0NpLe/ZunCQK42tArMshVBQxE5h7VA6isvmtpK2UohIzAwpYZWFs8Y8Pg6OJbHfG/sD2HgWXcQFs=
X-Received: by 2002:aca:bcc6:: with SMTP id m189mr6567677oif.337.1546801939658;
	Sun, 06 Jan 2019 11:12:19 -0800 (PST)
MIME-Version: 1.0
From: nishant poorswani <nishantpoorswani@gmail.com>
Date: Mon, 7 Jan 2019 00:42:07 +0530
Message-ID: <CAN70yQXGX5kvedi=MqfbRmPBHk5zR+ZrsaaT31NXq1wYc0Z06Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Making a script into an executable binary in yocto
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
X-List-Received-Date: Sun, 06 Jan 2019 19:12:22 -0000
Content-Type: multipart/alternative; boundary="00000000000026c075057ecee419"

--00000000000026c075057ecee419
Content-Type: text/plain; charset="UTF-8"

Hi, I wanted to know which is the best way of converting a bash script into
an executable binary in yocto. One way to do this is to add a recipe for
shc( script compiler) in yocto and then use the shc for compiling it in
another recipe. Is there any other way to achieve this ? Any suggestions
would be deeply appreciated.

--00000000000026c075057ecee419
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi, I wanted to know which is the best way of converting =
a bash script into an executable binary in yocto. One way to do this is to =
add a recipe for shc( script compiler) in yocto and then use the shc for co=
mpiling it in another recipe. Is there any other way to achieve this ? Any =
suggestions would be deeply appreciated.=C2=A0</div>

--00000000000026c075057ecee419--
