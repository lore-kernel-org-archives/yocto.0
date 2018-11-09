Return-Path: <outbackdingo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9B9BE00A10; Fri,  9 Nov 2018 06:42:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (outbackdingo[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.44 listed in list.dnswl.org]
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42541E00971
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 06:42:16 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id v18-v6so2150122wrt.8
	for <yocto@yoctoproject.org>; Fri, 09 Nov 2018 06:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9HlPpEWWwweG9LGXoeH3XSnxM2XhVeOZRu1qB+M6Mmw=;
	b=OfjLqlKUiFN0u0PRR1f+hbQ/BuM3s2kd8ARhaKI0zd20FN7oUiCFLra/KFCyRGO5wq
	E6C73jckH/xMJEIa4dFK+oIUjam6AOQo2FFobujsF8XLOs6g6crQoUrUq0FnqtLLBYxF
	EwAuBl39fbWaMu647hNFGIk+LnduyuUIrTkI+oDXUhvhYhFqAuyq1/4El4GdKdQh2pQ4
	BRYIuW+vCdHXdooJU7PWo6MNLP8vQL1E2ccsDz1s3L0MjholU2Gk0PajWzM0mNcDmE56
	Ch2Ebp6s21rUpJB8wQMUutmhHPILXaZOHjafMJYXfiTowy7jjcVvYjVqOcQE/XXmDKMP
	Ikbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9HlPpEWWwweG9LGXoeH3XSnxM2XhVeOZRu1qB+M6Mmw=;
	b=ZH856Nn2JfjF13XKoos6kZ2v8/w3IIJaCkkVxef7LJmUuG1rzSZhKisHcc9IcdWwob
	EzoB/QZ5hX59OtzSrdHLck2wWUadQ3KPbM0JVN8/31aTkbhSTWpcDZ2HnwSfW/kG0Nj0
	7+ZtSZQyr39vaA0ymvF0M791fIw/u+8v806Sdv6Ll975fgJKmJghsC7vypyA7mViWvni
	1FZk1Ay1JkgWMeL66o2wJRCnS0LJQRA9/etVbGe1j7+7gW4rwoKOcikuTihpN2dR3Ffb
	a65ugf9aotwfnROMME0V99AAXAtziz7HhcUv5d1l4Y2ZJttad/Wcinc2uNJ814J2IKMj
	L+Tw==
X-Gm-Message-State: AGRZ1gI5xnNDpFfxRcrihEystFxhKEPfgNPNlJJ5GGzlCPLM4QkkP8Z6
	hCwIvBQQvp7vt5lfoMGlX6C3UEvuCkE6Yq3uvlbdIw==
X-Google-Smtp-Source: AJdET5fdZZWXUyC/Pr2xgSGTjONO3RkOqe3B+enCVGNNnvUDOUlGnN4a6GowBALQkRmlW9BCs5C1H/Dt5Igno7NZruE=
X-Received: by 2002:adf:8422:: with SMTP id
	31-v6mr7667031wrf.153.1541774535778; 
	Fri, 09 Nov 2018 06:42:15 -0800 (PST)
MIME-Version: 1.0
From: Outback Dingo <outbackdingo@gmail.com>
Date: Fri, 9 Nov 2018 21:41:39 +0700
Message-ID: <CAKYr3zyaO4_GRzVz--rz8GjM5zWCNRgLBtKp1vDnU7-WJzsw-A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: core-image-weston w/ initramfs
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
X-List-Received-Date: Fri, 09 Nov 2018 14:42:17 -0000
Content-Type: text/plain; charset="UTF-8"

so core-image-weston works fine with the touch screen, then we added
core-image-minimal initramfs so we could boot with encrypted
filesystem, however now it seems the touch screen has lost its touch
and pointed capabilities, ive determined that much by looking at the
logs for when weston fails, same occurs with x11 image

ideas where to look to re-enable this

