Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6C7AE00D7F; Tue, 19 Dec 2017 06:05:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FE9FE00D6A
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 06:05:21 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id 64so3893780wme.3
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 06:05:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/YpeQjO+CFpKaul3OLWWm2Pyy00Oso/Os/wzI9SJ4H8=;
	b=o3FhfenFytq/W4g7jVblbC4EVCHD9jadhw5kkgdiBpEABpU/VGXszYn3sbDZFjtqAe
	ccwI+t4emv9i2NCuO8KGFXcdl5xVZq64EgjcyQfdqWMIKoxVzMyzUtT0BAW8W4GhIrYd
	y3QUqHZkY/bZCKmtbLIsLEaBPVgQBmBRfyZGeAK1clPn4/IXGUnCJaWURxLYbBd9A5xo
	m2yMgUZW0cTkwHtKVhxZaH7CwPpmF2Hqce5nXyg5qpPxvHFa+2L1rRJjb0jVDhpb2HvT
	hefteEhqinul5bjTdLPlYha0tadkcCv8UiSbW5XwIz71HQXXSID7nIpZYS1XIy+OHHbu
	N13A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/YpeQjO+CFpKaul3OLWWm2Pyy00Oso/Os/wzI9SJ4H8=;
	b=pTnxK+voM0y6ZgFC8zlqHLdnn15XeRegv8YBeEGGjK8K5I45LVoKOWD+VrWy3Szs+c
	xbIhkMTEuH1eOQRsDKvl9f9jZG35i3WSaSNfp0hNZ7coH9+PMnMzx/1b0Z9Hk84dK0jm
	cBPB4QocNzOC5ruYmejr9ExIoLymI4jNRe9OhqB8IahzM+yYXeBTur3YQRjhTOiRIC5u
	9eI3sxoAyDJpCfxkyp7f/z6YRvSgi/Fn2z7iqCo9uuAeo5/MQFVwI0u4mS2Bo7BBOIGQ
	EepLbfMhpNQGDG0QDqXbieZ+De1TEtO7l5KCkh5JQMLEBcCnMXJs0AiiPBJy2vQVgBHc
	OoWw==
X-Gm-Message-State: AKGB3mKpo9jJ+VzkQ4z3B7mn2Xn8yFyExWnKJoNES8PYMwzVNZhGaNzg
	MYuSaMbwNppr6IOn1gClEaAaPoNJu3rtW37LW6k=
X-Google-Smtp-Source: ACJfBou/Qcn5FI5pU/+Rpz1IYT02ThbJoSsM6xrQYsYyBnJ44uSNlm8o1+DnosDHohvIO/Ppi4XIo3hZSt7HVlmVDmU=
X-Received: by 10.28.61.135 with SMTP id k129mr3640008wma.81.1513692320302;
	Tue, 19 Dec 2017 06:05:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.122.19 with HTTP; Tue, 19 Dec 2017 06:05:19 -0800 (PST)
In-Reply-To: <CAOT_U5ZFF3e5nrRRa_zA0SYH5YvFQevTz5LpLzqe_1dfWP52hQ@mail.gmail.com>
References: <CAOT_U5ZFF3e5nrRRa_zA0SYH5YvFQevTz5LpLzqe_1dfWP52hQ@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 19 Dec 2017 15:05:19 +0100
Message-ID: <CA+chaQdopmrfRb0KjUTCJ3pSZjyNoQVT8Zv6htuPDG0Fg-xCBg@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Debugging sstate-cache
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
X-List-Received-Date: Tue, 19 Dec 2017 14:05:22 -0000
Content-Type: multipart/alternative; boundary="001a114b669c0d0b8a0560b1f502"

--001a114b669c0d0b8a0560b1f502
Content-Type: text/plain; charset="UTF-8"

I'm using oe-core/scripts/sstate-diff-machines.sh script (which calls
bitbake -S) to generate "snapshots" of sstate signatures for interesting
builds (in our case daily official builds) and then every time I notice
something unexpectedly being rebuilt, I can use the same script to create
snapshot of my local build and then compare these 2.

Once it helps you find which recipes were changed, use bitbake-diffsigs to
compare sigdata files from the "snapshots" to see what change in metadata
caused the difference, often it's change in some other dependency, so you
need to traverse the dependency tree a bit until you find the real root
cause of the difference.

On Tue, Dec 19, 2017 at 2:25 PM, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> Hi,
> we have a build server set that is used by multiple
> people all working on the same yocto project each
> having a clone in their working dir.
>
> The core packages (those coming from meta-openembedded)
>  are same of every image we build.
>
> We all share a sstate-cache and a downloads cache.
> The download cache works as expected, I only notice
> new things being fetched when there were actual changes in
> the recipes.
>
> However, all other steps (do_configure, do_compile, do_package)
> seem to be executed arbitrarily without a specific order or cause.
> Lot of things are reused from the sstate-cache, some get redone
> on random, and a few are always build from the ground.
>
> I have synced with everyone and confirmed that we're not stepping
> on each others toes by cleaning package caches.
>
> Is there a way to see on what grounds does bitbake chooses
> to repeat the steps?
>
> Be Well,
> Alan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114b669c0d0b8a0560b1f502
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m using oe-core/scripts/sstate-diff-machines.sh scri=
pt (which calls bitbake -S) to generate &quot;snapshots&quot; of sstate sig=
natures for interesting builds (in our case daily official builds) and then=
 every time I notice something unexpectedly being rebuilt, I can use the sa=
me script to create snapshot of my local build and then compare these 2.<di=
v><br></div><div>Once it helps you find which recipes were changed, use bit=
bake-diffsigs to compare sigdata files from the &quot;snapshots&quot; to se=
e what change in metadata caused the difference, often it&#39;s change in s=
ome other dependency, so you need to traverse the dependency tree a bit unt=
il you find the real root cause of the difference.</div></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Dec 19, 2017 at 2:25 P=
M, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@=
senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">Hi,<br>
we have a build server set that is used by multiple<br>
people all working on the same yocto project each<br>
having a clone in their working dir.<br>
<br>
The core packages (those coming from meta-openembedded)<br>
=C2=A0are same of every image we build.<br>
<br>
We all share a sstate-cache and a downloads cache.<br>
The download cache works as expected, I only notice<br>
new things being fetched when there were actual changes in<br>
the recipes.<br>
<br>
However, all other steps (do_configure, do_compile, do_package)<br>
seem to be executed arbitrarily without a specific order or cause.<br>
Lot of things are reused from the sstate-cache, some get redone<br>
on random, and a few are always build from the ground.<br>
<br>
I have synced with everyone and confirmed that we&#39;re not stepping<br>
on each others toes by cleaning package caches.<br>
<br>
Is there a way to see on what grounds does bitbake chooses<br>
to repeat the steps?<br>
<br>
Be Well,<br>
Alan<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a114b669c0d0b8a0560b1f502--
