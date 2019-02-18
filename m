Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F853E00CC8; Mon, 18 Feb 2019 08:36:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA9E0E00CB9
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 08:36:54 -0800 (PST)
Received: by mail-wr1-f48.google.com with SMTP id q1so19083429wrp.7
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 08:36:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=t2w0VZjmJNllqy91RJopZzeMi6fV7Tw+xAwoIF0ABKA=;
	b=fXDglOPrEqDlXGp8Xqx9Y45o5+SjwSFFL5Wknx8umm/BMypEutiJxOqIsrRWvRlqE6
	IAS3U+eF3zH+sJYwnUI3Tb6L8lQDT8ivekr0yAlZCjoxg1OLZIJbrCEPvvRhQr9scuPZ
	eYNKBzR85SPjzuBfUfSOShr34CrFlS22iO+5zhAW+pYK6BYHGw/ZFbnRO6rmoSO3czsp
	ldz78aYHP3p4ovudccwl6vLMBlMM2bTSRIcKEYi0+muikBMeo0muul1xKIBJivXI0N5+
	XEwEXMre2rVHuBavlxBMdw0/I7q1wob560W2jNdA6erpjh/gQoYWPugSYkVB7ruNtpM5
	szAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=t2w0VZjmJNllqy91RJopZzeMi6fV7Tw+xAwoIF0ABKA=;
	b=qe2amtY3K75035Ft+rLN+YUb5Pgk8lMMf16QpwrV8uGuRvD1MYm/1b/w9Ejc9zDcB2
	/72yNGyjMG7tPCIY0HFBwUefPX/e8LzCFdcW7Cr6sxXOKkJSkalVv4LrsJUE7yV3TOSs
	9L/UK4q2v58AhVxWkQD8Gx7qqpWlPRn44WfAms/1Z8MR9OEo0+IMBWLczpblQQt8+Saz
	43NWpaCs8UmHSD91iVQsIsSGczT5k4MBv2gE55+v8Pw5PH0xIXRrzf0rl5M4LvgdI2sa
	PgyiJRWwuHSb0ND2273bs7YtLrPsDklkgryAjbG8dSQUY29bB01s0WoXxd+a06B4D0nj
	DNMQ==
X-Gm-Message-State: AHQUAubUQ2aa+6kt0sAIsHiC5MTdLwJu1MSWPU+63El+2yOB7D6efKrs
	C2wHWGWw1UWkhFel2/Vqto865/PgSxbmx0K/tdyHIr1Tg0I=
X-Google-Smtp-Source: AHgI3Ib6WCWEK9+c7kvuCspHNx3KyNTYJaNQZHmVz86GPkmSS8Kp4bzkaCjiUDAuFN+POb70EJcEo5r0vkc0yIiQqnY=
X-Received: by 2002:adf:b3c3:: with SMTP id x3mr17496322wrd.294.1550507813156; 
	Mon, 18 Feb 2019 08:36:53 -0800 (PST)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 18 Feb 2019 17:36:41 +0100
Message-ID: <CAAfyv34zsYSumJ9ka5GczozkG5UNqF977R7Ar8hizOq0QKXa=w@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: readonly rootfs - storing data in separate partition
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
X-List-Received-Date: Mon, 18 Feb 2019 16:36:56 -0000
Content-Type: multipart/alternative; boundary="0000000000006cbabf05822dbbf5"

--0000000000006cbabf05822dbbf5
Content-Type: text/plain; charset="UTF-8"

Hi,

I plan to use readonly rootfs option and store some custom data in separate
partition (like hostname, wpa_supplicant.conf etc). I have wic file which
create rootfs + then rest is for data storage. I can adjust various recipes
to symlink to /data partition. My question is if there exists some
mechanism how to store some pieces in non-rootfs partition? I know some
projects which put those extra files to deploy dir and then by dd create
dummy storage nd put files there and finally create partition from that.
Thanks a log for any pointers.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--0000000000006cbabf05822dbbf5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I plan to use readonly rootfs optio=
n and store some custom data in separate partition (like hostname, wpa_supp=
licant.conf etc). I have wic file which create rootfs=C2=A0+ then rest is f=
or data storage. I can adjust various recipes to symlink to /data partition=
. My question is if there exists some mechanism how to store some pieces in=
 non-rootfs partition? I know some projects which put those extra files to =
deploy dir and then by dd create dummy storage nd put files there and final=
ly create partition from that. Thanks a log for any pointers.</div><div><br=
></div><div>BR,</div><div><br></div><div>marek<br clear=3D"all"><div><br></=
div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gma=
il_signature">as simple and primitive as possible<br>----------------------=
---------------------------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Dev=
eloper<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +4=
21 915 052 184<br>skype: marekwhite<br>twitter: #opennandra<br>web: <a href=
=3D"http://open-nandra.com" target=3D"_blank">http://open-nandra.com</a></d=
iv></div></div>

--0000000000006cbabf05822dbbf5--
