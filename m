Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3926DE00D2E; Thu, 16 Nov 2017 02:06:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauldotknopf[at]gmail.com)
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
	*      [209.85.215.49 listed in list.dnswl.org]
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88EA7E00D07
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 02:06:32 -0800 (PST)
Received: by mail-lf0-f49.google.com with SMTP id f134so21176216lfg.8
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 02:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=GKb/5zyXs2CminaySx33ue4c8l4nbbzcOWvcXRJroNg=;
	b=f7cKp27GWUVPRSosQ3L5htafyio8TghcQI1Ny3Cvs6OUMNOPBnOa5lcat13LwJB+QZ
	YrGaGjXJ7yLlFkNB9p7WMcCQMsNAPeGpa66djM5EV5LaB9rfs+VmgIVBhR4BZjI5mBSy
	CZH3hxFq5Lc0J3i3aOhGxxmly3ENy49UkVuSAe9dQPk3H6Y7cy7SieEEus4eO8TruLRx
	nAIlhaukgKZRFU7QgzPNUL8GBo1yDEy3LQClut3MDE02HGF49d8gTmOg2cAmFdDLO4+d
	YhcYDIH7+olt9EFoViYL2Ba+UvWIT9kkBg0Vda/iYnZmBSQ5pUyvCAw/m9CgqKHyFPcP
	Pi5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GKb/5zyXs2CminaySx33ue4c8l4nbbzcOWvcXRJroNg=;
	b=FnMkbmv5FhMsvoWQW6j//b1OyWQyh15c8eRt1PJe2D4MU7gGtMdi+yT5eVhkUboLQJ
	5DPtkl4mq6eQHyPI07GzC4hxNhU8AXnzUWPRHGsOzx4AgG0uzvy76ayo0IJupErR1nIP
	LFd8SpeyfGArTjUiIpZyc+pdfF7d69kmFh+OYMbKMQBxTlTChMxyvS+zgNcL23frvGVj
	7+eLnNpYhvL8USKUTEe0GkP+yMxYO4s4CWFohaWc5wEhDuraEBLAAdlueiZAPj8zteWi
	rIspdz3uSTVWSSZSDg9AzCUTJ56HHwGKusm4TKQpy/yZ3FsPl131uX7IXcJIkPItfk8w
	BWFA==
X-Gm-Message-State: AJaThX56bT4iiuZKiEkb/9n8uwOTfykfRDqZ1R0H5yIS0JRXgqcywRU3
	V4rYZEVVlCA3Nrt30ilnY1nFtZzTe81tCIIEBQ4=
X-Google-Smtp-Source: AGs4zMYupnJB1jqVBD8u75wAG50652z9XTFRx6M0HwfogGh17OWOSFVBz8h6fe2JvPLF74fZ5hNip7tkMznasyLS4aM=
X-Received: by 10.46.0.23 with SMTP id 23mr620248lja.187.1510826791161; Thu,
	16 Nov 2017 02:06:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.151.76 with HTTP; Thu, 16 Nov 2017 02:06:30 -0800 (PST)
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Thu, 16 Nov 2017 05:06:30 -0500
Message-ID: <CAKmWj-0jdV2UR3VTsw8w3=98CdH5_x7_e1Equ-GfFn8TzX3OOw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Detecting all AUTOREV usages in a build, for reproducible stable production builds.
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
X-List-Received-Date: Thu, 16 Nov 2017 10:06:33 -0000
Content-Type: multipart/alternative; boundary="001a1142c5ee345270055e16c6c1"

--001a1142c5ee345270055e16c6c1
Content-Type: text/plain; charset="UTF-8"

I want to store/fix AUTOREV values for production builds. I saw
BB_CACHE_POLICY, but the format (sqllite) isn't something that can be
checked in.

Let's say I have an image:

bitbake my-image

How do I detect any dependency that is using AUTOREV?

I'd like to generate a dynamic.conf file that fixes the SRCREV values for
relevant packages.

I guess I could do a normal build, then read the sqllite database, and
generate a .conf from it. Does this sound feasible?

Any other strategies?

--001a1142c5ee345270055e16c6c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I want to store/fix AUTOREV values for production bui=
lds. I saw BB_CACHE_POLICY, but the format (sqllite) isn&#39;t something th=
at can be checked in.</div><div><br></div>Let&#39;s say I have an image:<di=
v><br></div><div>bitbake my-image</div><div><br></div><div>How do I detect =
any dependency that is using AUTOREV?</div><div><br></div><div>I&#39;d like=
 to generate a dynamic.conf file that fixes the SRCREV values for relevant =
packages.</div><div><br></div><div>I guess I could do a normal build, then =
read the sqllite database, and generate a .conf from it. Does this sound fe=
asible?</div><div><br></div><div>Any other strategies?</div></div>

--001a1142c5ee345270055e16c6c1--
