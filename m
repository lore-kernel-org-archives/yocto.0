Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 115F3E00EBE; Wed, 17 Jan 2018 07:37:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
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
	*      [209.85.218.47 listed in list.dnswl.org]
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ED06E00CF1
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 07:37:25 -0800 (PST)
Received: by mail-oi0-f47.google.com with SMTP id b11so670053oif.2
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 07:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=BaIut6KrnCW7caw0QYXS24gGPSW7P56/72T6hG4ZXcI=;
	b=m3QUfexTvyLuy3/C1jP8hcjbd34HYHuqKr1d64ew2OGN2lzS4prCDMtFG69cUC6HBR
	ClUzMu/DiL+ujBfhvkZI45ssZxfsUMGhg3PJNgEdVyFb4XAk8dwqU0PYH2mD9f0j8rOA
	/3YOOjVyc+9SEimnQrcld74Pout4jDjTAACHfzcgSoldZ2T+w7Tk+fcRUjSBzLciXIGy
	8XvvX12/kQF9KOZlXafEnJfsWpFuEUUqekmdfrqkxwGL0LbeIwzXXwrKX892fviTy4Ue
	X0tZyJ8AnL7ObATFctl7rGkTiB090ZV82luUNXhdvhanzNCnOxMlqL5qTm/M1hZRP7si
	38cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=BaIut6KrnCW7caw0QYXS24gGPSW7P56/72T6hG4ZXcI=;
	b=ljODch3t4QeD6vz7cpDjk5fd04p52q+Iae5s2GwQGuPYOq7UjCR+cKptbbrwpu1bPd
	EMSCdM0sNHYV7XVT7fsnn2xlWdgjblK5sR2ZKLu71DfUJDtscLgWXqEggd8SY42Hkvwe
	S6BKg9QovAqjZkxfjsRtmq1wtK6xPM2CE1kKuFzn9EXhKmzBahPF8ABigd40jz/BvryZ
	UvAOdM5zPcm9uyObQCSLfw923XNkiJybYoQAfOG6U60y8zyZEkxmIzN/r9RJLkU3ZH13
	keOXGwz7OslVYsb/bC344haxKsjy+oLj7GxAeJpxQxM2WmkCpz3hIEknmeuj8HLuUUmo
	M4SQ==
X-Gm-Message-State: AKwxytct0ZM5lEnlq8ujZzX50DBIBgF4xN0VRg8963QWjtYer8+FC5Yx
	JPtgMZw1fxGmkEyipUqi2TbaebzKYH+Z7DUhPyA=
X-Google-Smtp-Source: ACJfBov2GoxZKAWEde3lfyM6NYMgT0ztW2iLLhvlA7U15JmFpRrLTBZ2awDfBJXbHHak5jAjYCCaFQt5AtRwb8lO1WM=
X-Received: by 10.202.206.15 with SMTP id e15mr1137163oig.266.1516203444293;
	Wed, 17 Jan 2018 07:37:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.4.33 with HTTP; Wed, 17 Jan 2018 07:37:23 -0800 (PST)
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 17 Jan 2018 10:37:23 -0500
Message-ID: <CAE0QtjNmUFGm0o_w0Wd12=h6r=JeYp2dEh9PPtMSY_29U0ninA@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Editor (viewer) for device tree *.dts file? (I mean syntax highlighting)
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
X-List-Received-Date: Wed, 17 Jan 2018 15:37:26 -0000
Content-Type: multipart/alternative; boundary="001a113ca1f0b456ac0562fa9f54"

--001a113ca1f0b456ac0562fa9f54
Content-Type: text/plain; charset="UTF-8"

Sorry that this question is not related to Yocto, but just wondering if
anybody knows:
* are there editors/viewers (with syntax highlighting) for device tree
*.dts file?

Thanks,
Jerry

--001a113ca1f0b456ac0562fa9f54
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Sorry that this question is not related to =
Yocto, but just wondering if anybody knows: <br></div><div>* are there edit=
ors/viewers (with syntax highlighting) for device tree *.dts file? <br></di=
v><br></div>Thanks,<br></div>Jerry<br></div>

--001a113ca1f0b456ac0562fa9f54--
