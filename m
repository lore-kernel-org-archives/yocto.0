Return-Path: <tomasz.dziendzielski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C1D4E00C12; Tue, 30 Oct 2018 02:50:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tomasz.dziendzielski[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F329DE00BC8
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 02:50:36 -0700 (PDT)
Received: by mail-it1-f178.google.com with SMTP id r5-v6so10977355ith.2
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 02:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/O/PaNrusuQGnVS0n0ivij/tPUQlXNznp84y6TeIy9Q=;
	b=B/fjaLPPZbdyPrIHAc1eLEp2Hc2dqKZVnruVBMtIVK+ZFwl8yU/RG2OvksjiS/dk+E
	oh537EZVyVJU2f6HNwT0f9vMdxGCgwUd4AbBHgnc4d6ew0V/jjA5PVPky7HnKVKgZ1VT
	xxSrhboHnEwBRvHBVbgLc3suw5EoS0loUuw3vhzsDxgVitfZ21AOu7czZleE/0z40ZLN
	wxatQWeQufp+QzXAzGXoNHuwUDPgtdGqUiou7wvKp9XsMNk6PILlcNqdfSvlXr8EjU00
	G0+bn3FkUy32p6kr8QKS27/REZd3h32Mu4wqINgkzPY/QesBORGJSk3LO0HY1OkcIM6H
	d7zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/O/PaNrusuQGnVS0n0ivij/tPUQlXNznp84y6TeIy9Q=;
	b=ZU7zFai+Af61T+XP/eQ3PUPLO0ea58uuCK/KXbzGADMpOY40zx+PHzOtDhNUoV4M8l
	5YCb7tcXqB2nQZc1Lb5Cwk0Tk7IpTiu0YcdE1J6zb8SCUIyuDcloOiAwoVxJ5HhZbq03
	THkKNywo0WzF79wGBWozwUpSbIHIVy6C1xt2k+VB19Qstni+TV2Q+9kYI180yn2CjMJN
	43SSKCGsql9wpteca5fFKJSeYwefS05L1BtwXRwbXinuhxyxkTwErxSLv8HN67TH28jZ
	A9n1Bi4z02pEXTFe1xY3GzrSA3UUM4+wehQxtpHrzkKcGTYtvhJJdLPL72VSdMThanHi
	BaNw==
X-Gm-Message-State: AGRZ1gLmkf+BZsw83lJqetRKhvDv5CxRDFMnw6UYFd1hYWC8njf7kzdq
	JIhadyku26D4JYCf++v3TyB30Tn/FBJms7yZ7u735hbaqI8=
X-Google-Smtp-Source: AJdET5f8HomvjIY4+FEm/qyJ5eWP9m2P5kbTPmyuVzZ2CE6xSEdYRGp+WsWaznc4/0JcB5x7UnbGbDbUQ23VsqREIcI=
X-Received: by 2002:a24:6f05:: with SMTP id x5-v6mr907890itb.111.1540893036099;
	Tue, 30 Oct 2018 02:50:36 -0700 (PDT)
MIME-Version: 1.0
From: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Date: Tue, 30 Oct 2018 10:51:06 +0100
Message-ID: <CAJkqNs1Y9-vwwZ2AyQWU7Qe0HTz8usOzOsc6nreEWfVQXq-HZg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: do_unpack: already exists and is not an empty directory
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
X-List-Received-Date: Tue, 30 Oct 2018 09:50:37 -0000
Content-Type: multipart/alternative; boundary="0000000000000dbce905796f1e19"

--0000000000000dbce905796f1e19
Content-Type: text/plain; charset="UTF-8"

Hi,
in some recipes that fetches git repository and has S variable set to
"${WORKDIR}/git/foo" once per many builds we're having error:

fatal: destination path
'foobar/work/x86_64-linux/squashfs-tools-native/4.2-r2/git' already
exists and is not an empty directory.

It happens for squashfs-tools-native, vim-native (and maybe more of
them but we didn't find it yet).

I think this happens because of the race condition.

If the S = "${WORKDIR}/git/foo" and B=${S}, then during do_unpack in
parallel the ${B} directory is created and git repository is extracted
to the place where ${B} directory already exists.

Is this issue known?

Best regards,

Tomasz Dziendzielski

--0000000000000dbce905796f1e19
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>in some recipes that fetches git reposi=
tory and has S variable set to &quot;${WORKDIR}/git/foo&quot; once per many=
 builds we&#39;re having error:<br><pre class=3D"gmail-console-output"><spa=
n style=3D"font-family:arial,helvetica,sans-serif">fatal: destination path =
&#39;foobar/work/x86_64-linux/squashfs-tools-native/4.2-r2/git&#39; already=
 exists and is not an empty directory.<br></span></pre><pre class=3D"gmail-=
console-output"><span style=3D"font-family:arial,helvetica,sans-serif">It h=
appens for squashfs-tools-native, vim-native (and maybe more of them but we=
 didn&#39;t find it yet).<br></span></pre><pre class=3D"gmail-console-outpu=
t"><span style=3D"font-family:arial,helvetica,sans-serif">I think this happ=
ens because of the race condition.<br></span></pre><pre class=3D"gmail-cons=
ole-output"><span style=3D"font-family:arial,helvetica,sans-serif">If the S=
 =3D &quot;${WORKDIR}/git/foo&quot; and B=3D${S}, then during do_unpack in =
parallel the ${B} directory is created and git repository is extracted to t=
he place where ${B} directory already exists.<br></span></pre><pre class=3D=
"gmail-console-output"><span style=3D"font-family:arial,helvetica,sans-seri=
f">Is this issue known?<br><br></span></pre><pre class=3D"gmail-console-out=
put"><span style=3D"font-family:arial,helvetica,sans-serif">Best regards,<b=
r></span></pre><pre class=3D"gmail-console-output"><span style=3D"font-fami=
ly:arial,helvetica,sans-serif">Tomasz Dziendzielski<br></span></pre></div><=
/div>

--0000000000000dbce905796f1e19--
