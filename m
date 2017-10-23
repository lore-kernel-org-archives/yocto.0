Return-Path: <vishalashapur@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7DBDE00CE8; Mon, 23 Oct 2017 04:52:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vishalashapur[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.51 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 854EAE00928
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 04:52:36 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id z3so2292798wme.5
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 04:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=8CpbxbNeSwbdl70hJZzEDlRoDg/rzSIVKFchm2y3AhU=;
	b=jrw4noaGzPu+H9VKCFBQSCyX7YyVVGLt5Kq9A4/ON3mdEeRD7h47q7YMI7tHFwZbCC
	5HtPCm3VJVrGNKf9qzjHiuhcWy+YghH+BhzipmBNTbEAfynvgE44B/XnfsLnQBz1v2QH
	G/A8PI2U10gYorVPwr8XOCwk/6v6PJ3r9RaKcFiwiDz6nNymTz8qtT86VK+Rem3fy9IA
	/Lhz8xhXhQx39PyDPT6m2qNWhJ/bYRFMlO72AlSJTWbvm0Elq4MYBADBXnxs7C98Rb1R
	e9dOtGgENPL2XEX6e/yQIG+0LwtWEFQOVgc4I/a20wk7vfrYNos+M62V3n1uuy+nFhrz
	gMxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=8CpbxbNeSwbdl70hJZzEDlRoDg/rzSIVKFchm2y3AhU=;
	b=dUFyixfhbRkQZ9BOi2TYnzhl+JswdctKld6+MYF/OLF3Pe4ukKMnKfciVjzlB3vch4
	58Ai+2mhG2MJlXKuqz9jv+qlB2ljjk1BeR9Ro4KLka57ikBgj14c0n82gxpqdaXWbNpc
	ov/FvRxNJ5zoUfICr/FL3Ft3YrIq/NhhgYS/HpPVY34Xq+kl4OLIEtAauLTIDjpnVaW/
	U4dsBxHsZzYwHrfGrhiKmtT0PxEWc7S8jUPVHElpgjQ41eLpkFWnWDgYBjttbbNILlgM
	+Kpb72Qhdk38M3Lgxkn0rYsNjle61b9AR4Jzk2MYvF5WsXRdCkGn6IKRP4HBnO7CMoPE
	OGRw==
X-Gm-Message-State: AMCzsaWsh4wisG7dMNVt4AnwwUFgScHbak/zx7uIJ457lrzbvUEDd+UC
	n1UKcpkHHvB0IFL+7FfY9etjuQ3BZYCWS8zrUZUe9g==
X-Google-Smtp-Source: ABhQp+RLqLS/A68m6q1o+snTU+TKT4frrBfktoNd1btoNhmbaSRsSowggDrjAmcxlTJbTzt6lRGdYMNmJpbl6B7Clcs=
X-Received: by 10.80.196.79 with SMTP id w15mr16072810edf.261.1508759555303;
	Mon, 23 Oct 2017 04:52:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.162.7 with HTTP; Mon, 23 Oct 2017 04:52:34 -0700 (PDT)
Received: by 10.80.162.7 with HTTP; Mon, 23 Oct 2017 04:52:34 -0700 (PDT)
In-Reply-To: <CAAWyHB+vgT1nZmpXXqWoF4iME-VVYtGeLsoSF7dRqwdfEniuwg@mail.gmail.com>
References: <CAAWyHBL094mGuwrWkcO4GhCEp+honQ+9zV8Y04bEugGjV3uhSQ@mail.gmail.com>
	<CAAWyHBKp8tNACEFR6xfDp6qKAzUKYyVrH9PuG0xajLz=FHyUMA@mail.gmail.com>
	<CAAWyHBLAwfw-JDA8HFqAeUWJyCysv2Bn3RcswfTqftHxZ+USXA@mail.gmail.com>
	<CAAWyHB+vgT1nZmpXXqWoF4iME-VVYtGeLsoSF7dRqwdfEniuwg@mail.gmail.com>
From: vishal ashapur <vishalashapur@gmail.com>
Date: Mon, 23 Oct 2017 17:22:34 +0530
Message-ID: <CAAWyHBJiYDx=+90--zJrEoPFUcU=3c0J3-qkXjjiFj_eu6pftQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Enabling_gcc
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
X-List-Received-Date: Mon, 23 Oct 2017 11:52:37 -0000
Content-Type: multipart/alternative; boundary="94eb2c1cbc7a586e55055c3575ed"

--94eb2c1cbc7a586e55055c3575ed
Content-Type: text/plain; charset="UTF-8"

Hi
I'm building a Linux kernel from yocto, on which I have to enable gcc. Can
u please tell me how to enable gcc. And also usb_modeswitch package
Regards
Vishal

--94eb2c1cbc7a586e55055c3575ed
Content-Type: text/html; charset="UTF-8"

<div dir="auto">Hi<div dir="auto">I&#39;m building a Linux kernel from yocto, on which I have to enable gcc. Can u please tell me how to enable gcc. And also usb_modeswitch package</div><div dir="auto">Regards</div><div dir="auto">Vishal</div></div>

--94eb2c1cbc7a586e55055c3575ed--
