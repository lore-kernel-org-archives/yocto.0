Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13CC0E008A5; Mon, 11 Jan 2016 09:33:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0338]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACF00E007EA
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 09:33:43 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id q21so355958151iod.0
	for <yocto@yoctoproject.org>; Mon, 11 Jan 2016 09:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=sCccBbkYN0T5cOoFGk2bcSv/m93Dd7vRQI2gx+Diw14=;
	b=e5ewrU3BpJSzYVG9VrR44LEhiqJ+rfQtFvSg+22y5fXPLIOjw58UwfUSzhmu+HhXtn
	Dgfva11d+f95uMGvfhCEng1fv0pOFCfkGkZ8FUCvpCtXDjcicE7X7n/rLMErPYR/Mfjm
	t5rkidc9kmD5uRDlgQxGpjU0IjPM/Q3DWx+xtvFRq3PP/tU9QChygBAcpFZWrAgdC2x9
	lq8Hmw/WgYwYq61xNWWTwi23cnXzY6yfh0NuErq4NA9mhYKBjM+Y5nuKQdpR9fCUQ0vj
	97jgJY5eLcjC8v5q/23aQRlSgR+TkR0y8+BzgI+ZnZf1Zy31WdPjCW55/3XawaSRtXJH
	tpVA==
MIME-Version: 1.0
X-Received: by 10.107.149.18 with SMTP id x18mr75266711iod.170.1452533622689; 
	Mon, 11 Jan 2016 09:33:42 -0800 (PST)
Received: by 10.79.114.66 with HTTP; Mon, 11 Jan 2016 09:33:42 -0800 (PST)
Date: Mon, 11 Jan 2016 11:33:42 -0600
Message-ID: <CAOsp8o-7Dp239XrWww86Ztn=Fm8CPD521akwUBKw+6Y7_xBYzg@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: yocto@yoctoproject.org
Subject: Global git fetcher override for http?
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
X-List-Received-Date: Mon, 11 Jan 2016 17:33:44 -0000
Content-Type: multipart/alternative; boundary=001a1140fee49ad4e5052912567e

--001a1140fee49ad4e5052912567e
Content-Type: text/plain; charset=UTF-8

Unfortunately I don't think this will work well, because generally http
protocol URLs are slightly different than git protocol URLs. However, in my
work environment, our firewall blocks git protocol. This means that for all
mirrors that do not include an http protocol mirror, the recipe will
outright fail because it can't fetch via git://.

Is there a way to indicate this at a configuration level, so it knows not
to bother with git:// protocol? This may help me more easily identify the
recipes that need modification.

--001a1140fee49ad4e5052912567e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Unfortunately I don&#39;t think this will work well, becau=
se generally http protocol URLs are slightly different than git protocol UR=
Ls. However, in my work environment, our firewall blocks git protocol. This=
 means that for all mirrors that do not include an http protocol mirror, th=
e recipe will outright fail because it can&#39;t fetch via git://.<div><br>=
</div><div>Is there a way to indicate this at a configuration level, so it =
knows not to bother with git:// protocol? This may help me more easily iden=
tify the recipes that need modification.</div></div>

--001a1140fee49ad4e5052912567e--
