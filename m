Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21356E00D6D; Wed, 20 Dec 2017 08:32:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86C17E008FB
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 08:32:29 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id b76so10947245wmg.1
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 08:32:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=L8YOUr8m50lOxdPzhL65Gsgnio3a3JABhchf5creQeU=;
	b=XZQTw3h741GQqJ9NN7quQoZ4oewxsRPZesXiwLlnQ+rN/Luve6j2gjfRdwvi2QRi2r
	Evn7qLTG4umnei7bY6lNtiHzGYjjL0tAoud3Anu+i9GXKYZGby4Q62JaWwkjskeiJ2oE
	FChxH5S3vdKD7CRSaLa5xaBGAfbgR+W2fHXvenk+hOMC7VDObirRLsBZHYkRPPYyPu7q
	GeJ3wZeO3XLIKgD0GnsFk9cvz7jxIJyh44z8A/hN7rzVi6ozEsO20N+Xawj3t/wOuovW
	DdUe7EHqqLf5FQdKE+hiAvkiglC8tq0jlLAfVyfJmrokQLbh771pTOquF7tjUSqMIwgH
	/DqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=L8YOUr8m50lOxdPzhL65Gsgnio3a3JABhchf5creQeU=;
	b=XoxtZNsQf+6xt4GjKQuYGI1TgExTVZGsWv1O12EBzv4Ej6PnGvVmPvP5xJXscoJ6pg
	MXkZ9Lj3dVmGr8TAKa57V9gM9iK+XCP/8vcb53pS/4fWF1iOBp4isVf8BPc8/yBKBa1+
	m2lJiihSsYt5JAobw1bC6iIYo1gr8c0SgfdSkmlEd9JMlfPXe/d74i2qEsJ3rdqlJCp1
	kjMhK6IF+OUnBydqarsHTqcokC7MnE3B8YwDay5Mb7haF7PFwB9w723/uwHFShIUKJ7l
	aH3vUEDueh3zUVLOQyExFvOl4ReLJwokLxImI97z680grczHZdN9UBif555b7WnddzvJ
	rizQ==
X-Gm-Message-State: AKGB3mKczhKyZSSPzlYkx3iFfLZ+c1IynbYtZsL+rNzjd42SkwpR45Ot
	rBrsDAFKdN4Y4YQC9oXcYxXDLeGlUZyOyIPefZ1U6w==
X-Google-Smtp-Source: ACJfBoss1/gib8bqJT6aA/9TjMJeO3O6FaFEdP28hKkQ1EEAIyWYfDIlw+hmaSItIcPw1/ywLtQuSRPmmzs1yIRd95o=
X-Received: by 10.28.234.87 with SMTP id i84mr7695425wmh.65.1513787548033;
	Wed, 20 Dec 2017 08:32:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Wed, 20 Dec 2017 08:32:27 -0800 (PST)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 20 Dec 2017 17:32:27 +0100
Message-ID: <CAGAf8Lxkhv8ZKz9etCG17PykQ3Yo5s4a_uLMK9ccJNavK4urYA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Some trivial question about git update-ref refs/heads/rocko ...
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
X-List-Received-Date: Wed, 20 Dec 2017 16:32:30 -0000
Content-Type: multipart/alternative; boundary="001a1146def810e5930560c8215a"

--001a1146def810e5930560c8215a
Content-Type: text/plain; charset="UTF-8"

I am trying to upgrade my poky distro with current HEAD:
65d23bd7986615fdfb0f1717b615534a2a14ab80

It is ~ one month old.

And to the latest HEAD:370483fce1c2429c81b19dcf8a36394dc3fc3d92
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=370483fce1c2429c81b19dcf8a36394dc3fc3d92

The transcript what I do is below:
[user@localhost poky]$ pwd
/home/user/YOCTO/oe_core_embedded/poky
[user@localhost poky]$ git update-ref refs/heads/rocko
370483fce1c2429c81b19dcf8a36394dc3fc3d92
fatal: update_ref failed for ref 'refs/heads/rocko': cannot update ref
'refs/heads/rocko': trying to write ref 'refs/heads/rocko' with nonexistent
object 370483fce1c2429c81b19dcf8a36394dc3fc3d92
[user@localhost poky]$ git update-ref refs/heads/rocko HEAD
370483fce1c2429c81b19dcf8a36394dc3fc3d92
fatal: update_ref failed for ref 'refs/heads/rocko': cannot lock ref
'refs/heads/rocko': is at 65d23bd7986615fdfb0f1717b615534a2a14ab80 but
expected 370483fce1c2429c81b19dcf8a36394dc3fc3d92
[user@localhost poky]$

What I am doing wrong?!

Thank you,
Zoran

--001a1146def810e5930560c8215a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am trying to upgrade my poky distro with current HEAD: 6=
5d23bd7986615fdfb0f1717b615534a2a14ab80<div><br></div><div>It is ~ one mont=
h old.<br><div><br></div><div>And to the latest HEAD:370483fce1c2429c81b19d=
cf8a36394dc3fc3d92</div><div><a href=3D"http://git.yoctoproject.org/cgit/cg=
it.cgi/poky/commit/?id=3D370483fce1c2429c81b19dcf8a36394dc3fc3d92">http://g=
it.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D370483fce1c2429c81b19dc=
f8a36394dc3fc3d92</a><br></div><div><br></div><div>The transcript what I do=
 is below:</div><div><div>[user@localhost poky]$ pwd</div><div>/home/user/Y=
OCTO/oe_core_embedded/poky</div><div><div>[user@localhost poky]$ git update=
-ref refs/heads/rocko 370483fce1c2429c81b19dcf8a36394dc3fc3d92</div><div>fa=
tal: update_ref failed for ref &#39;refs/heads/rocko&#39;: cannot update re=
f &#39;refs/heads/rocko&#39;: trying to write ref &#39;refs/heads/rocko&#39=
; with nonexistent object 370483fce1c2429c81b19dcf8a36394dc3fc3d92</div></d=
iv><div>[user@localhost poky]$ git update-ref refs/heads/rocko HEAD 370483f=
ce1c2429c81b19dcf8a36394dc3fc3d92</div><div>fatal: update_ref failed for re=
f &#39;refs/heads/rocko&#39;: cannot lock ref &#39;refs/heads/rocko&#39;: i=
s at 65d23bd7986615fdfb0f1717b615534a2a14ab80 but expected 370483fce1c2429c=
81b19dcf8a36394dc3fc3d92</div><div>[user@localhost poky]$=C2=A0</div></div>=
</div><div><br></div><div>What I am doing wrong?!</div><div><br></div><div>=
Thank you,</div><div>Zoran</div><div><br></div></div>

--001a1146def810e5930560c8215a--
