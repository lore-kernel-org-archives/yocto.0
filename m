Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 138B2E00CC3; Mon, 18 Feb 2019 09:05:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 652F5E00CB6
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 09:05:18 -0800 (PST)
Received: by mail-it1-f178.google.com with SMTP id g137so315868ita.0
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 09:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:user-agent
	:mime-version; bh=Qw3WmEh/ZKf8GkHBQXejtrB1ltvqnK/KuwZF/giFx/w=;
	b=f3WICojwav6aT5BjvQ74Q2BB5NFezGlqC3AFH/VGVvXGqDRXasCAHtiv7D2PhadU1o
	vxxDZtEJLngx9x87eadCQHbRuY0veKXbZx+e3/xactRVt5XPsSJU0B0k658YaaFYbxGk
	5OJtcDvPIhFvMiVw45+fFwZMzM0V4tqDjxA4yl0U5i9u1KyXU5slORzJuZRJlnPf0bpK
	T8TpmEhL1vUd7iinGqB3U/FVtdt5a+zOjJ9HmgESuRr4kn7Toksp3+kRdZL6uQwXxu+r
	T/sl4W5KW9adx0WnmPAfqVoHtaMQS5zcNOXBQiT4Gj7UkWzGOqwWA7NV0FkhEgSH5wwJ
	RknA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:user-agent:mime-version;
	bh=Qw3WmEh/ZKf8GkHBQXejtrB1ltvqnK/KuwZF/giFx/w=;
	b=GtgjQ2hYLojh7Y+xh56WPzoIcihWZzcgjPYWq3t5hN6cuzTMghvF9SmvsTWRctFU2a
	3Wb1Bb1yIEfiRcFmfHFPAJ2p1oSme39+4zUndePuCI4i7ECuDA64g3E+o4pCXoXAxD5p
	q0Plpfsiob/BX+tjxaN7xFEtL4n60DHreT7FKiszHlGznozFWoGJOG37NpvXepkd/QL8
	XG7z3zN4PnNKmL+KQgf7gvG5UPCvMpS1KK0VH6rpveHSpTYVNDCJBeNQf/UzoNFpiR5n
	rmQbEcKEbsYnjoqlg1DtxvZfuCeUXO6LZVXp5CdQGitHzySzKrrZgTl30C2o4Ybk3Cgk
	BGsg==
X-Gm-Message-State: AHQUAubIQP+1RcDZNVnDbuTzH+LlM7n85PlDf75OjptHSPiX2rjxGZTB
	bpSXlYIyDR2HcQnwBC4SAoWtJqwL
X-Google-Smtp-Source: AHgI3IblW0H4B5rhAWS4Y6qoip69D8lI0z96bxBxmrgbH8yJ2k1ZUutGxHt8Z9DJDRlVDTqWsfJ/yg==
X-Received: by 2002:a24:2a4a:: with SMTP id w71mr12190709itw.127.1550509517648;
	Mon, 18 Feb 2019 09:05:17 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	g2sm5725981iom.7.2019.02.18.09.05.16
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 18 Feb 2019 09:05:16 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <6159d263af9714c2e5a021eaa3e24e261474a66c.camel@gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>, yocto <yocto@yoctoproject.org>
Date: Mon, 18 Feb 2019 11:05:15 -0600
In-Reply-To: <CAAfyv34zsYSumJ9ka5GczozkG5UNqF977R7Ar8hizOq0QKXa=w@mail.gmail.com>
References: <CAAfyv34zsYSumJ9ka5GczozkG5UNqF977R7Ar8hizOq0QKXa=w@mail.gmail.com>
User-Agent: Evolution 3.30.4 (3.30.4-1.fc29) 
Mime-Version: 1.0
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
X-List-Received-Date: Mon, 18 Feb 2019 17:05:19 -0000
Content-Type: multipart/alternative; boundary="=-n692Ur5YpAHdi770tWzr"

--=-n692Ur5YpAHdi770tWzr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-02-18 at 17:36 +0100, Belisko Marek wrote:
> Hi,
> I plan to use readonly rootfs option and store some custom data in
> separate partition (like hostname, wpa_supplicant.conf etc). I have
> wic file which create rootfs + then rest is for data storage. I can
> adjust various recipes to symlink to /data partition. My question is
> if there exists some mechanism how to store some pieces in non-rootfs 
> partition? I know some projects which put those extra files to deploy
> dir and then by dd create dummy storage nd put files there and
> finally create partition from that. Thanks a log for any pointers.

We do this a lot using volatiles files. The best documentation is the
core volatiles file: 
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/initscripts/initscripts-1.0/volatiles id="-x-evo-selection-start-marker">
> BR,
> 
> marek
> 
-- 
Joshua Watt <JPEWhacker@gmail.com>

--=-n692Ur5YpAHdi770tWzr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head></head><body style=3D"text-align:left; direction:lt=
r;"><div>On Mon, 2019-02-18 at 17:36 +0100, Belisko Marek wrote:</div><bloc=
kquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf so=
lid;padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I plan to use=
 readonly rootfs option and store some custom data in separate partition (l=
ike hostname, wpa_supplicant.conf etc). I have wic file which create rootfs=
&nbsp;+ then rest is for data storage. I can adjust various recipes to syml=
ink to /data partition. My question is if there exists some mechanism how t=
o store some pieces in non-rootfs partition? I know some projects which put=
 those extra files to deploy dir and then by dd create dummy storage nd put=
 files there and finally create partition from that. Thanks a log for any p=
ointers.</div></div></blockquote><div><br></div><div>We do this a lot using=
 volatiles files. The best documentation is the core volatiles file: <a hre=
f=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core=
/initscripts/initscripts-1.0/volatiles">https://git.yoctoproject.org/cgit/c=
git.cgi/poky/tree/meta/recipes-core/initscripts/initscripts-1.0/volatiles</=
a></div><div><br></div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex=
; border-left:2px #729fcf solid;padding-left:1ex"><div dir=3D"ltr"><div><br=
></div><div>BR,</div><div><br></div><div>marek<br clear=3D"all"><div><br></=
div></div></div></blockquote><div><span><pre>-- <br></pre>Joshua Watt &lt;<=
a href=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a>&gt;</span><=
/div></body></html>

--=-n692Ur5YpAHdi770tWzr--
