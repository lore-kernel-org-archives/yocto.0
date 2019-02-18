Return-Path: <marc.ferland@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8BA3E00CC3; Mon, 18 Feb 2019 08:52:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marc.ferland[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DEB2E00C1B
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 08:52:41 -0800 (PST)
Received: by mail-ot1-f43.google.com with SMTP id s5so29353097oth.7
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 08:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DeeSGZ8EMzpZiy++33xKf5D7MsGmL7pTd3gBSA1KU9s=;
	b=geVpdeVzgZ5VKI45PQBImCHJjFcHse6w0xePLDWCHpyZnVvkDSdw4CZuFdweywt6mv
	SDT9gghrZvIIZTK3s01KFLwcrf6z0sk3ITR8RYjnC2p0kbeTWH72e5otcq7lyDWUUE01
	1qdDsD0akRuvZFIj5UEkAIdA5R4gKQ5QZxybrBMeN6d02+QkwpnMX9xdswBzDu0REHPP
	clmcoS19fhfALNXMf/vbx8nWoPYd8eEOjc3C4ERvuxnGTqEB4oRHpQdSDTCKxYC/Cnm/
	/uWurOO0ahfY6UwMJ2Eu3OBhvz02YMBkVQoo4+mMnEdi/en2mGIr38fkv/Nrmbt+f7dz
	18hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DeeSGZ8EMzpZiy++33xKf5D7MsGmL7pTd3gBSA1KU9s=;
	b=KNCVYF50CfpvSeJ7VGj4DQ8dRymzvjPTpYMlz6yBd64VrdTk5oxq5P366s9uxMZCtv
	u548afSaENuS7YY7LInFAg9QIFgSzaQen4jpURxi0cqGLZxSUYGRRgV5wwmDF0irPGWd
	pdg1KRq3+cH103g407M56JS97x40LuyvWah72W9OXGUfy4OaWWQ5vIHZrwir8IfnhYzi
	F6H15XIsgNvld6iclsrORhah0I9dtW3p5urRvyW1oRXhcd1rNAjAMHopI0xB+4esJijH
	7gwnu82Av8rwyFA7U4XT8GSwtm6ScF+SLCzV9yWvpysoAtvbZApp3uTWoPKkMBJJdHj0
	Vf8Q==
X-Gm-Message-State: AHQUAuY0o8ldXXcXVG0jNH/MNIC2k9M8k9cgtP9Xvi1NzKlfVfHG0+R+
	KGsEoyo5hJV8yK0cN4FVYBX/2hU5WxCD14JORBI=
X-Google-Smtp-Source: AHgI3IZjGaYJ+seZgwpJqqwe+0weq7jgcfgjxlRV45Yp7otzZpLhBhZnoUUGWqkgALbf37VoffK3vqQ7da5b67BXvCU=
X-Received: by 2002:aca:af85:: with SMTP id y127mr15036812oie.83.1550508760540;
	Mon, 18 Feb 2019 08:52:40 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv34zsYSumJ9ka5GczozkG5UNqF977R7Ar8hizOq0QKXa=w@mail.gmail.com>
In-Reply-To: <CAAfyv34zsYSumJ9ka5GczozkG5UNqF977R7Ar8hizOq0QKXa=w@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
Date: Mon, 18 Feb 2019 11:52:29 -0500
Message-ID: <CAMRMzCAcmrue6f1UZCppg-gQQiXGB04aUmp0m6P+maSr=-9tKg@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: readonly rootfs - storing data in separate partition
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
X-List-Received-Date: Mon, 18 Feb 2019 16:52:41 -0000
Content-Type: multipart/alternative; boundary="000000000000e4ac0b05822df3b8"

--000000000000e4ac0b05822df3b8
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 18, 2019 at 11:37 AM Belisko Marek <marek.belisko@gmail.com>
wrote:

> Hi,
>
> I plan to use readonly rootfs option and store some custom data in
> separate partition (like hostname, wpa_supplicant.conf etc). I have wic
> file which create rootfs + then rest is for data storage. I can adjust
> various recipes to symlink to /data partition. My question is if there
> exists some mechanism how to store some pieces in non-rootfs partition? I
> know some projects which put those extra files to deploy dir and then by dd
> create dummy storage nd put files there and finally create partition from
> that. Thanks a log for any pointers.
>
>

You could potentially use overlayfs to have a RO rootfs and a separate RW
layer in another partition for example. I think linux-yocto also support
AUFS.

Good luck,

Marc

--000000000000e4ac0b05822df3b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Feb 18, 2019 at 11:37 AM Belisko Marek &lt;<a href=3D"mailto=
:marek.belisko@gmail.com">marek.belisko@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div>Hi,<div><br></div><di=
v>I plan to use readonly rootfs option and store some custom data in separa=
te partition (like hostname, wpa_supplicant.conf etc). I have wic file whic=
h create rootfs=C2=A0+ then rest is for data storage. I can adjust various =
recipes to symlink to /data partition. My question is if there exists some =
mechanism how to store some pieces in non-rootfs partition? I know some pro=
jects which put those extra files to deploy dir and then by dd create dummy=
 storage nd put files there and finally create partition from that. Thanks =
a log for any pointers.</div><div>=C2=A0</div></div></blockquote><div><br><=
/div><div>You could potentially use overlayfs to have a RO rootfs and a sep=
arate RW layer in another partition for example. I think linux-yocto also s=
upport AUFS.<br></div><div><br></div><div>Good luck,</div><div><br></div><d=
iv>Marc<br></div></div></div>

--000000000000e4ac0b05822df3b8--
