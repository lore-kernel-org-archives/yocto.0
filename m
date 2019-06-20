Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3EC9E00CB9; Thu, 20 Jun 2019 09:00:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF64DE00CB9
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2019 09:00:06 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id h6so409969ioh.3
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2019 09:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=YYqeqmlZT8zRjOO/aKlWuTIvcSC28PMrVGvVYrg67wQ=;
	b=dGPHKIKIs43bVnepBKKlpQeF5ouUNFEMNrJGtHL5d1LPlivmTLTHgn65lblisfrqCt
	9QiEV0ZjdSrLO0J3Z2qZp8w8nELFGqtN+Ya9t3+IsysvW3HEfjOZWZ/cOEyq8dH6bl4Q
	4lu1XD9LQWMoBQ3ls9fxC3o6hXUMo2lbgb/jW/8LAcYJPJcQgpqXdD6xYceFsyH3ov+Y
	KSbJzrumJ3/ygAlBo7qQmj74lVl8Oi7QEibFDToeApe82hxc+9YFLiL+vV04gIwXz9m+
	5Ao5C4YdkYsrPzgDD8xWEqjEJg4E38dI3DWLrKSUaCGmcC2BNh/AYGJ8idz5cWjbHZOS
	SZpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YYqeqmlZT8zRjOO/aKlWuTIvcSC28PMrVGvVYrg67wQ=;
	b=kyTU/r8TlIZubkiha9C69O4WjqHrYoj81VzrvFy8sy1rV/k1lHtaazw2lgphKOiF76
	assoFKchHlt0/avZxYMncXv5lxZXLu5UcI5NVLjdOMj/rx/uP6RnmvBrGuBVfXaOB/ES
	WFleirqZDMRzbskmOqLo8m72B1tPmLz6uLEjXZUvk8LXEXQT7WpY+Lbi1hQh2+Rs6Tqe
	v9A5C3/JBVSRjxDMVrEoQLPqy6YXM7VVu87P/MpgsKQhfb2BMLDdnIj+IdmgoOKxZIqh
	WjZEuRFQIFRV6UKzCmObsOldOoj5ZsbGnVIepPJS4mWRoTHb1o+MldShHDn23xBO700X
	r9AQ==
X-Gm-Message-State: APjAAAWin0FK5WVm6/e8WvU1BKxk648NuaG4TkS79x2UnhL31ucKjD5Q
	iLh+WOJUmckmp1bqWdHKo8J1SRNMy8+C8G4bN95/isMA0JA=
X-Google-Smtp-Source: APXvYqxi+u78IA1cPbw+eGFCFnt1ArWb2SvodU7cA5AF9++Nyb6H5mQLJaCYjZNAJDGojGowEFPLtqeX95gzm4Yq95k=
X-Received: by 2002:a5d:80c3:: with SMTP id h3mr12574715ior.167.1561046405831; 
	Thu, 20 Jun 2019 09:00:05 -0700 (PDT)
MIME-Version: 1.0
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 20 Jun 2019 18:01:27 +0200
Message-ID: <CAFq4t4gy3vRzfR00sz8PPS3VUGE_YXu2tJYD8KWnEvUBk4DhEg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Sat, 22 Jun 2019 13:35:31 -0700
Subject: Warrior, extended SDK
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
X-List-Received-Date: Thu, 20 Jun 2019 16:00:08 -0000
Content-Type: multipart/alternative; boundary="0000000000007f5fa5058bc3705f"

--0000000000007f5fa5058bc3705f
Content-Type: text/plain; charset="UTF-8"

Hello guys

I'm trying to generate extended SDK under Yocto-Warrior and getting error
such as

ERROR: image-qt5-1.0-r0 do_sdk_depends: The file
/usr/include/tensorflow/contrib/lite/string_util.h is installed by both
tensorflow and tensorflow-lite, aborting
ERROR: image-qt5-1.0-r0 do_sdk_depends:
ERROR: image-qt5-1.0-r0 do_sdk_depends: Function failed:
extend_recipe_sysroot

can you help me identify an issue on this fail?

Thanks.
Peter

--0000000000007f5fa5058bc3705f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello guys</div><div><br></div><div>I&#39;m trying to=
 generate extended SDK under Yocto-Warrior and getting error such as <br></=
div><div><br></div><div>ERROR: image-qt5-1.0-r0 do_sdk_depends: The file /u=
sr/include/tensorflow/contrib/lite/string_util.h is installed by both tenso=
rflow and tensorflow-lite, aborting<br>ERROR: image-qt5-1.0-r0 do_sdk_depen=
ds: <br>ERROR: image-qt5-1.0-r0 do_sdk_depends: Function failed: extend_rec=
ipe_sysroot</div><div><br></div><div>can you help me identify an issue on t=
his fail? <br></div><div><br></div><div>Thanks.</div><div>Peter<br></div></=
div>

--0000000000007f5fa5058bc3705f--
