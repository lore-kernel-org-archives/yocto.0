Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FB60E008E1; Sat, 15 Apr 2017 11:47:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.171 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1059DE00777
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 11:47:06 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id d131so84324113qkc.3
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 11:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HNFYH3DhhcNhKR7sKQmCkMxn+VxIkihaTi4kHScPSXQ=;
	b=AnMJsXXvqUp6ZOQJR4JgN6aAUF1cN+OOLysnrVP/DTc9kWFlEkpjJ5EU7YhPqH5nz/
	FwSWwIN6xx1zCwTxLVTG6K+hMgSwSgWpEoA40TFfPhtFYJxnTn1ICPct15yneFUN2lLa
	wPAcZLJ7cK2e0pl+kL//Z8GYjqZK5dL3nCj2hAqVuIpFnA+GUjr1Zw+KCp56ms/+jrre
	1JwSyrGi76w/LmKWtvV+POqq820xKa5955zkF9azfji8p/E6La086n//jcOM1a0tj7uQ
	sdqV8t82kCE0Sxp9bZL9by+ErwWcUzGv31suhAdpI3hYE+H3CRyHCMeaICuY3Roiod0O
	qX3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HNFYH3DhhcNhKR7sKQmCkMxn+VxIkihaTi4kHScPSXQ=;
	b=X7lbaeTIWq/p3WGB7bL09ruVoqgwwIitfeJ0SneIN9uzhVrCI4xQ6vKtkKt3XpE84R
	B95NjAAUD7w3oPWqF4CLIth9mNb9ZImrU4NfxnRZ73re12hFqwQ8vtymHJqR/m9/A1S9
	8jN/5cHlJV2ddeDexZU0cEVEc43dALFjJgA1RnZQKRoUvr2ETRTcLr+aBo7wAhJrJjSA
	tn5rjHyDwHB9pQSV0QMUywGD99VtB/ecujgfQmXMUgvvpPS6OCcES3AygNYSjP/j7ZcI
	FePb3g4tv7p7yrpMwNIHXYr0riosfns9TjQOhyzB/FwkpAP4Bv7MlbSWD0bzf98j2Y2X
	j+hg==
X-Gm-Message-State: AN3rC/5IA3YICCt/AkHWcVBzNQ18/6F6/9tzVZKyQ5lJkfsvUw06ICRN
	zxQZFbFwCF/ffU6yS8r8bNlZLxFF4lcC1cE=
X-Received: by 10.55.108.131 with SMTP id h125mr2615633qkc.199.1492282025485; 
	Sat, 15 Apr 2017 11:47:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.37.5 with HTTP; Sat, 15 Apr 2017 11:47:05 -0700 (PDT)
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Sat, 15 Apr 2017 20:47:05 +0200
Message-ID: <CAOsmwBQMSkHdK+JCmiSoT_g9hgeGo2x_wUOrrT+5aJuoW4BWng@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Symbolic link to ld-linux-armhf.so.3
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
X-List-Received-Date: Sat, 15 Apr 2017 18:47:10 -0000
Content-Type: multipart/alternative; boundary=001a1148751808abba054d38fc44

--001a1148751808abba054d38fc44
Content-Type: text/plain; charset=UTF-8

Hi, I made a recipe for hamachi. Hamachi looks for /lib/ld-linux.so.3 but
in my poky build this file is /lib/ld-linux-armhf.so.3.

If I do ln -s /lib/ld-linux-armhf.so.3 /lib/ld-linux.so.3 hamachi runs fine
so the solution its just a symbolic link. My problem is that I cant make
this link from my recipe.

Into my do_install I do: ln -s /lib/ld-linux-armhf.so.3
${D}/lib/ld-linux.so.3
But later it does not exist in the rootfs. But if I do:
ln -sf/lib/ld-linux-armhf.so.3 ${D}/lib/MYPRETTYLIB
then the link "MYPRETTYLIB" is there. Its like "ld-linux.so.3" is forbidden
for some reason.

I read that some guy had this problem and solved it by using a glibc
bbappend but it didnt work for me.

Do I need to do something special to get the "ld-linux.so.3" link?

Thank you

--001a1148751808abba054d38fc44
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I made a recipe for hamachi. Hamachi looks for=C2=A0/l=
ib/ld-linux.so.3 but in my poky build this file is=C2=A0/lib/ld-linux-armhf=
.so.3.<div><br></div><div>If I do=C2=A0ln -s /lib/ld-linux-armhf.so.3 /lib/=
ld-linux.so.3 hamachi runs fine so the solution its just a symbolic link. M=
y problem is that I cant make this link from my recipe.</div><div><br></div=
><div>Into my do_install I do:=C2=A0ln -s /lib/ld-linux-armhf.so.3 ${D}/lib=
/ld-linux.so.3</div><div>But later it does not exist in the rootfs. But if =
I do:</div><div>ln -sf/lib/ld-linux-armhf.so.3 ${D}/lib/MYPRETTYLIB<br></di=
v><div>then the link &quot;MYPRETTYLIB&quot; is there. Its like &quot;ld-li=
nux.so.3&quot; is forbidden for some reason.</div><div><br></div><div>I rea=
d that some guy had this problem and solved it by using a glibc bbappend bu=
t it didnt work for me.</div><div><br></div><div>Do I need to do something =
special to get the &quot;ld-linux.so.3&quot; link?</div><div><br></div><div=
>Thank you</div></div>

--001a1148751808abba054d38fc44--
