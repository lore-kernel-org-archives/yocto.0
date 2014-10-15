Return-Path: <jatedev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BBCAE00799; Wed, 15 Oct 2014 14:45:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jatedev[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CBEBE006EF
	for <yocto@yoctoproject.org>; Wed, 15 Oct 2014 14:45:16 -0700 (PDT)
Received: by mail-qg0-f48.google.com with SMTP id i50so1626735qgf.21
	for <yocto@yoctoproject.org>; Wed, 15 Oct 2014 14:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=b99W8MYf+J1XFzmpCIeMFwllmuvc+X03T9v31Tw/QEw=;
	b=pw2i8AdG20+jsWZEtPqsi7/czhYKaWRx98rZYodciA7rUvdxCYMmWW/VEEDAqelhi7
	XA1mhreq+bCmz9ldvmu79zxvK1SQ7c42UDabc31eF+buC9P7aoGoTscrDzDyL/hzrqRf
	51z+f2kc8kG7f75xsMRMG/fjo8iXQRS4kBsiz+sBUCFBuYLMFyh7gX/jL3+vQHyUQd7/
	NyJmrSFhgBROHYMSVkHVaL1boO1lhAR9AOYR7Qaa2BUeMOT+4E1O5idDJlu4zW3cnX9i
	wgbNXUzl065EBDT2cVs6+Snm3tD4fw5XYhTJa9NkXD83DCKquqGcGVS9qbtvDcBcSRAA
	Fumg==
MIME-Version: 1.0
X-Received: by 10.224.125.129 with SMTP id y1mr2226951qar.75.1413409515872;
	Wed, 15 Oct 2014 14:45:15 -0700 (PDT)
Received: by 10.140.94.227 with HTTP; Wed, 15 Oct 2014 14:45:15 -0700 (PDT)
Date: Wed, 15 Oct 2014 17:45:15 -0400
Message-ID: <CAPphmgZBXAod92ddPR_3VFReStBgBNshTNEKxfOATZ1caeq+Kw@mail.gmail.com>
From: Jate Sujjavanich <jatedev@gmail.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: local.conf assignment priority with autobuilder
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
X-List-Received-Date: Wed, 15 Oct 2014 21:45:22 -0000
Content-Type: multipart/alternative; boundary=001a11c35ac41dbe0905057d0c88

--001a11c35ac41dbe0905057d0c88
Content-Type: text/plain; charset=UTF-8

I am attempting to control debug-tweaks via an image recipe.

Previous posts suggest that the autobuilder will use auto.conf and ignore
local.conf. However, meta/conf/bitbake.conf says that the include order is
auto.conf, and then local.conf.

This means that the default local.conf.template installed overrides with a
regular assignment.

EXTRA_IMAGE_FEATURES = "debug-tweaks"


Perhaps the assignment in local.conf be a weak one, i.e. ?= where it would
not override a previous assignment.

Or maybe I need a new buildstep. How should I be doing this?


- Jate S.

--001a11c35ac41dbe0905057d0c88
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>I am attempting to control debug-tweak=
s via an image recipe.<br><br>Previous posts suggest that the autobuilder w=
ill use auto.conf and ignore local.conf. However, meta/conf/bitbake.conf sa=
ys that the include order is auto.conf, and then local.conf.<br><br>This me=
ans that the default local.conf.template installed overrides with a regular=
 assignment.<br><br></div>EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks&quot;=
<br><br><br></div>Perhaps the assignment in local.conf be a weak one, i.e. =
?=3D where it would not override a previous assignment.<br><br></div>Or may=
be I need a new buildstep. How should I be doing this?<br><br><br></div>- J=
ate S.<br></div>

--001a11c35ac41dbe0905057d0c88--
