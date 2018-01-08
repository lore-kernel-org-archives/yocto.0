Return-Path: <mathewkunjumontharakan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4279E00DE6; Sun,  7 Jan 2018 22:14:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mathewkunjumontharakan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f176.google.com (mail-yb0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 874ADE00D6E
	for <yocto@yoctoproject.org>; Sun,  7 Jan 2018 22:14:38 -0800 (PST)
Received: by mail-yb0-f176.google.com with SMTP id 5so4108407ybp.4
	for <yocto@yoctoproject.org>; Sun, 07 Jan 2018 22:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=jxTEEINLg4ZrsGlNs0F1EzihIFMPbWvF1wGFz+uxItc=;
	b=TqM4Jf9/yy0m4lHj4odkOo5EEGsWm1NRWPLifvpQulwpDGVzr+dKYq7c+vMOtRVx1W
	C4m4J+4v0ce8OuL0YGzjjJGoWH5D6L0701jFVe/QlXzjpB1RqAtYBrexETJpRExZO/Hk
	XeYH1ZZjkBp9dLnUnfZAn0ShBSCK2L6ttcVw7jZidbxCU9N7Mgw4lU+g+o7mTZEBI3qX
	tIyIu+xna1e0TEKh/FxSRV+Yvg4oqEi2R8aEAIKhj2VxgaA2QtpIG4MrWeb2vB9pDZvg
	6P3rg9ZKEB3zpuHmh7Dxl40CatjgIi/Xw5P7YHw++C4h+NqKHZdBX+2i+uZYYKPBwUqU
	QpBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jxTEEINLg4ZrsGlNs0F1EzihIFMPbWvF1wGFz+uxItc=;
	b=jFQ7+r8xy7MX6ISKdk/k93UZ2ZYOe73D4eEiCXyorr/M1n3RlL3U5Rbo0X1nrsWo5z
	dynhZxV/0WXl1w2fz/gQOp5NZXFSJw2+DY+OPrMBhehgoUYwE0d6Rk8PR8KXieGqc6yc
	ShvjauVPe2xzejhc0DsXch+mgNEB3vlMXSqfUF9+1aif/Y+3bV0366t4cI9UOfzMLOwp
	NYGhe0PkTi/1b5vycYCdsEsLdgJL8YVxb6Piw3auoQTifjgDZMqqdBnYixo/aBjnnGZT
	7NvYIdkZUAOIqweyj6wFsWusKXd2/eXWXHyombAlzMR7SuhUm1BgzU35RU6+nPbrEmr5
	F3Pg==
X-Gm-Message-State: AKGB3mJC3tSDHinWi805YnRa1LBDxBjbhBMkG+8PS7vsa0EQSJfhyrbT
	YXqy6KtOvkgmrpsZqdBGCTooxksn9Qz38z1czA+Wtg==
X-Google-Smtp-Source: ACJfBotND3xHTJeXnjjHmF03SnqbNosPOAsQcG7Jt+HFvKThiHQmcFXNx2qYSUPPjJkXGNoSAaF0IdaXouATQOs40W4=
X-Received: by 10.37.102.78 with SMTP id z14mr10461376ybm.43.1515392077472;
	Sun, 07 Jan 2018 22:14:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.231.197 with HTTP; Sun, 7 Jan 2018 22:14:37 -0800 (PST)
From: Mathew K Tharakan <mathewkunjumontharakan@gmail.com>
Date: Mon, 8 Jan 2018 11:44:37 +0530
Message-ID: <CA+JFif35T7yDxkeX3OAjjw079fxWOVqH4wnet8_GwNM3_9LRSw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Reg: Yocto python library updation
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
X-List-Received-Date: Mon, 08 Jan 2018 06:14:38 -0000
Content-Type: multipart/alternative; boundary="089e0828d1b079286c05623db67b"

--089e0828d1b079286c05623db67b
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm working with iMX6ULL yocto (version 2.1)project. I would like to add
following python libraries along with the image. I tried adding .bb file
but the packages are not getting integrated. Please reply some possible
ways to solve this.

Python libraries to be added,

SciPy - 0.18.1
NumPy - 1.11.1
Pandas - 0.18.1
Scikit-learn - 0.17.1
math - 0.19
Memory-profiler - 0.45

Thanks and Regards
Mathew. K. Tharakan

--089e0828d1b079286c05623db67b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,<br><br></div>I&#39;m working with =
iMX6ULL yocto (version 2.1)project. I would like to add following python li=
braries along with the image. I tried adding .bb file but the packages are =
not getting integrated. Please reply some possible ways to solve this.<br><=
br></div>Python libraries to be added,<br><div><br></div><div>SciPy - 0.18.=
1</div><div>NumPy - 1.11.1</div><div>Pandas - 0.18.1</div><div>Scikit-learn=
 - 0.17.1</div><div>math - 0.19</div>Memory-profiler - 0.45<br><br></div>Th=
anks and Regards<br></div>Mathew. K. Tharakan<br></div>

--089e0828d1b079286c05623db67b--
