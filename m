Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77F3EE00C3D; Mon,  7 Mar 2016 02:20:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 015E1E00BFF
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 02:20:46 -0800 (PST)
Received: by mail-vk0-f50.google.com with SMTP id e185so112062247vkb.1
	for <yocto@yoctoproject.org>; Mon, 07 Mar 2016 02:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=Eax72/W4K+5Uq20ys92sW0VD5Z98ZL3Z9enDEA/4tE8=;
	b=HyLgcUThd9S/LtV3p0pJvrTpcexP1BvhTydA2nsIx8QlcQBRUNm6AnyhJhMN8W0Hix
	7BJY18Ey8ki3cZaskeB98acfaXjD0Y5LJRyir9gZ18jifvMNGuPDKKecRdQkzknzzfQ7
	W+Pq7pipr4HG73WTJxz/81OSTBxGHhChB+Bvh+4qEck6kYfjbzyasrRMWFeP2GV45urC
	6M1GhnZugDBV9pK4HoyHFkHpy8BhqUaC7R0KGevyy/FF3JYzHXD7v/Y4FjA0SMzp966e
	2O8g8EOge6a1HaZwXqDNXNDaOlbwUwjkDUE6ClLl8iBkgPXnlPwz2FbsuCo0hSPOrR5l
	R4AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=Eax72/W4K+5Uq20ys92sW0VD5Z98ZL3Z9enDEA/4tE8=;
	b=LO8bYUoqNgTkfFd+mCxbT//JPOPZ7YFGkSK3Nrf8iKoFqsotTmoX5KUh+mqEZLSpAO
	Mp4JztL6hP1QyolJIaJy0xFvPTOkyehbQMNpo/cq+PdqvnPgpsJF9BFSW9RxbEYt0J/N
	WUc/lEdS0zYwj9aW8kzB1qM03SgovG83d/21jeQG84fxb833v7iJCkw5+XLaNbPl+MBs
	ZUwIbzWyxtX2IHw0VR3E+JDF2A1FWZm2y1+fpIokMOWLqMJKG1DPfd0Zp/IHqYYwMP1i
	jaVRpffVM+Uqb2DdLTtBhYLXhiP0Bjwhy22oP1ylRgR72JHLOMM6B4CPGbXAoRqx4c7n
	hUcw==
X-Gm-Message-State: AD7BkJKxE2hB949R5Ypv2zZ/gsrw/zBuEfBkholKJPyrFvYAqaP70mi0QrX8kLp7CiuVkk9R10nz5OQjs5fKpQ==
MIME-Version: 1.0
X-Received: by 10.31.49.210 with SMTP id x201mr19601807vkx.81.1457346045824;
	Mon, 07 Mar 2016 02:20:45 -0800 (PST)
Received: by 10.31.229.71 with HTTP; Mon, 7 Mar 2016 02:20:45 -0800 (PST)
Date: Mon, 7 Mar 2016 15:50:45 +0530
Message-ID: <CALLyC8SWZ8LfnDwAWpsFxY8PZj+f6w7bySXiBmq8E7o63OVkUw@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: How to add some additional enviroment variables to /etc/profile file while building IMAGE
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
X-List-Received-Date: Mon, 07 Mar 2016 10:20:47 -0000
Content-Type: multipart/alternative; boundary=001a1143873e6087f5052d72d1b2

--001a1143873e6087f5052d72d1b2
Content-Type: text/plain; charset=UTF-8

Hi,
     i want to add some additional enviroment variables in /etc/profile
file. How can i add these while building, so that it reflect in my target
image.

Thanks and regards
         vivek

--001a1143873e6087f5052d72d1b2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0 =C2=A0i want to add some additional =
enviroment variables in /etc/profile file. How can i add these while buildi=
ng, so that it reflect in my target image.</div><div><br></div><div>Thanks =
and regards</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vivek</div></div>

--001a1143873e6087f5052d72d1b2--
