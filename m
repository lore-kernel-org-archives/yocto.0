Return-Path: <katutxakurra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E16EEE00C2B; Tue, 25 Jul 2017 03:19:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (katutxakurra[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.178 listed in dnsbl.sorbs.net]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDA11E00C1C
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 03:19:49 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id g13so53636315ioj.5
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 03:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=+ux3hk07k7yST+YYkBhRJhnBnpJAoPBQUKe3kI9UDKM=;
	b=VBPoV+8WjIPZbkY9PcdfGXA8AsbFpnOo/d6u5i2q8ebvvBX1WAJ/Ryd2eSHI1J65Um
	1IfM5gSeqRtY32hHXHPIx716VUuKW6u5bJhepHGUxfkUpFXiXqCebe+sPx8MMAMCBwnB
	mjTsKiwrwtcZzySma/KE9yQKnPB3T8bnRCBVWUQF4kgEs6oY2mUmQzai8b+48EFpVX/4
	kust0mQTUhOqch/t2NCEppeiZJ+e1xAweLp8YtKoLKfH2t7tac/rfIFZFC8f97duXNoC
	bQUFXKsh+/F4+96QEkxF1C86RuHRuYXUZHf8UIZIgSvJw5auNHgcf8EpE09dinJZcuuM
	1QXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=+ux3hk07k7yST+YYkBhRJhnBnpJAoPBQUKe3kI9UDKM=;
	b=H2Jy+DxYI9Hkh/xGHrfo+5JkO5GX2JwhKzkE8Y2WlLpn0K9wslxkOxEa8AwFScQjBZ
	xWB0kRxqWkGC/DlRTL5bWMqDfB2f6oADBqKBASr/fXq1WndwtqVXLREQO+dwV32uJ1h4
	L/hUdVU5QVuU10ZxpEmG1r3tOH3sxegEV6WBG8ICss8LgCzBuEw1aU4+JIoS/39EkjWK
	rpaJ2NhB4ph9puxbH+016MWQ1MQwQqBztgU6lOaUxD+vk9Vd/Oayn1z7UU2LXDJMfmaI
	FPE+3/M86f6zxTxCcsjh+ZsburIzOm80ASJCQtECkzOYMaui+kfrz+q2Mgp6PAx0BKjk
	Yp7A==
X-Gm-Message-State: AIVw11134miq1BHNM0vc5XGSayurrHwoKymOQUkRaB+zgUv66JGYm3wz
	HnJa03GARY0by3q1CLcOtCM+kOsBB8UD
X-Received: by 10.107.133.151 with SMTP id p23mr20359521ioi.328.1500977988715; 
	Tue, 25 Jul 2017 03:19:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.111.194 with HTTP; Tue, 25 Jul 2017 03:19:48 -0700 (PDT)
From: Katu Txakur <katutxakurra@gmail.com>
Date: Tue, 25 Jul 2017 11:19:48 +0100
Message-ID: <CAM1ZcoVrpiT6rm4won28b3hZYXM_KB8bxDptDiUjbfj_mH_bpg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Eclipse Yocto Plugin: Breaks Customize Prespective
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
X-List-Received-Date: Tue, 25 Jul 2017 10:19:50 -0000
Content-Type: multipart/alternative; boundary="001a113ec2acd54782055521ab5a"

--001a113ec2acd54782055521ab5a
Content-Type: text/plain; charset="UTF-8"

Hi,

I have noticed that when installing the Yocto Eclipse Plugin in Eclipse
Neon (Ubuntu 16.04), I don't have access to the "Customize Prespective" in
Eclipse any more.

I'm installing from
http://downloads.yoctoproject.org/releases/eclipse-plugin/2.3.1/
My plugin setup points to /opt/poky/2.3 and /opt/poky/2.3/sysroots and I'm
debugging with real hw.

If I uninstall the plugin, it comes back.

Is there a workaround this?

Regards,
Katu

--001a113ec2acd54782055521ab5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>I have noticed t=
hat when installing the Yocto Eclipse Plugin in Eclipse Neon (Ubuntu 16.04)=
, I don&#39;t have access to the &quot;Customize Prespective&quot; in Eclip=
se any more.<br><br></div><div>I&#39;m installing from <a href=3D"http://do=
wnloads.yoctoproject.org/releases/eclipse-plugin/2.3.1/">http://downloads.y=
octoproject.org/releases/eclipse-plugin/2.3.1/</a><br></div><div>My plugin =
setup points to /opt/poky/2.3 and /opt/poky/2.3/sysroots and I&#39;m debugg=
ing with real hw.<br><br></div>If I uninstall the plugin, it comes back.<br=
><br></div>Is there a workaround this?<br><br></div>Regards,<br></div>Katu<=
br></div>

--001a113ec2acd54782055521ab5a--
