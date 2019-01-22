Return-Path: <joao.jfgoncalves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5675E00CCC; Tue, 22 Jan 2019 14:11:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (joao.jfgoncalves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E35AE00CC8
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 14:11:56 -0800 (PST)
Received: by mail-io1-f54.google.com with SMTP id g8so114555iok.4
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 14:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=s0l5uLkWsSiASm+VLP2zLIPd9OBw40kHLC6ZDogZQdE=;
	b=Gm7FnMMMPPbF3qQ/ZWDh0wzv4hZBEPviI7Q0vZj0rZFfr/7ybkKjOI3xXVXtyxer1h
	2+mjkKXbgQuNwIX84VkMxRU5oOP6dEv8Ufrx2OTODXr/+VYwA8hq6DSu3zg0pVT4cpuP
	ZilSNvdhuBStoV6JHsFb3eynI+IKxCf18rWBDaMH5TcplQr1VzujPXyqgYnjIFVBCa71
	deVCbHv+LN2Z3BwVwc6LPk+ioi1OL+wEOL2vAvxBldH6efXyBtX4Ev8KV7ZerWK2vkE4
	MDBlwW4yWkHE0TPBm/99L+fXH/SlgkbHyWueJ8S8SeeTG9KBxuS9Lgsr1l8u8CsWFTix
	FOdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=s0l5uLkWsSiASm+VLP2zLIPd9OBw40kHLC6ZDogZQdE=;
	b=Xc013AVlEa8GFVmL6QzFP97/KP6/dmUXnvufMcTO1yMHV2HHIm5coqW9kCTB5JVAZT
	Y4VnCsrTULAYe5dz3im7u1BSmJ/z/wn4efeZoA7cCV/VczVKjM+J1EycUZm+EiCGq11C
	QJX9QApMEyzOkiBm8a2dPuPDNRxTW6YmIdQZseAZlxeU/9o9Qv/R67UQBBk7m9UxYF5O
	Ksfyg7Or2Qv416GbV1hABktXSa/AP2I1HnjzOgIKud2hxGdxkaYv97URsd96Q/7FaAs1
	eeeHJtIcCHUoWyuB+BHlqFDBqm08ljsBsItmw3oKqNKQjCf5nOocnvTQFkMnYtp+JnXe
	UR2w==
X-Gm-Message-State: AJcUukdZjiK3eOlc01tFK4bA+nWHKlHLY11caFwBGjoyktAhizprcHG0
	7F+CfhQAEtFG4D+anF2qWo9iXtG/RxmvdvADDLpTJ6TInsM=
X-Google-Smtp-Source: ALg8bN5C93Lfm9SbuE4R7Xobzsp0QGRKHbg/f6hz+VmlYWurX3+JEIghACBimXC0FphT9g0Sn8Px/bPKYIgDkOrhd9Q=
X-Received: by 2002:a6b:fb01:: with SMTP id h1mr9592926iog.185.1548195115320; 
	Tue, 22 Jan 2019 14:11:55 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?Sm/Do28gR29uw6dhbHZlcw==?= <joao.jfgoncalves@gmail.com>
Date: Tue, 22 Jan 2019 22:11:44 +0000
Message-ID: <CAHXEV+=d3fQNxNUSAMUxzkeK4UbrWQxT6qJKf6DTXUmxQSWggA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Error: file provided by multiple packages
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
X-List-Received-Date: Tue, 22 Jan 2019 22:11:56 -0000
Content-Type: multipart/alternative; boundary="000000000000e44ba50580134362"

--000000000000e44ba50580134362
Content-Type: text/plain; charset="UTF-8"

I'm using master branch or embedded core to build a most recent toolchain
with gcc 8.2 (I previously had 7.3 but it didn't provide the libstdc++fs
that I needed).

I almost made this build work but now I'm having the following error on my
image do_rootfs:

Package systemd wants to install file
/home/joao/master_imx6/build/tmp-glibc/work/thomson_apalis_imx6-angstrom-linux-gnueabi/kelvin-base-image/0.2.4-r0/thomson-apalis-imx6_kelvin-base-image_2.8.5/rootfs/etc/systemd/journald.conf
But that file is already provided by package  * systemd-conf

Then I checked that systemd_239.bb do_install() remove installed conf files
that should be handled by systemd-conf.
What I suppose is that systemd-conf do_install() is executed first and then
systemd do_install() eventually breaks when installs the file (before
removing it).

Does anyone know if is possible to specify the install order? or if this is
really the problem

Thanks,
Joao Goncalves

--000000000000e44ba50580134362
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I&#39;m using master branch or embedded c=
ore to build a most recent toolchain with gcc=C2=A08.2 (I previously had 7.=
3 but it didn&#39;t provide the libstdc++fs that I needed).<div><br></div><=
div>I almost made this build work but now I&#39;m having the following erro=
r on my image do_rootfs:</div><div><br></div><div><div>Package systemd want=
s to install file /home/joao/master_imx6/build/tmp-glibc/work/thomson_apali=
s_imx6-angstrom-linux-gnueabi/kelvin-base-image/0.2.4-r0/thomson-apalis-imx=
6_kelvin-base-image_2.8.5/rootfs/etc/systemd/journald.conf</div><div><span =
style=3D"white-space:pre">	</span>But that file is already provided by pack=
age=C2=A0 * systemd-conf</div></div><div><br></div><div>Then I checked that=
 <a href=3D"http://systemd_239.bb">systemd_239.bb</a> do_install() remove i=
nstalled conf files that should be handled by systemd-conf.</div><div>What =
I suppose=C2=A0is that systemd-conf do_install() is executed first and then=
 systemd=C2=A0do_install() eventually breaks when installs the file (before=
 removing it).</div><div><br></div><div>Does anyone know if is possible to =
specify the install order? or if this is really the problem</div><div><br><=
/div><div>Thanks,</div><div>Joao Goncalves</div><div><br></div><div><br></d=
iv><div><br></div><div><br></div></div></div>

--000000000000e44ba50580134362--
