Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D574DE00C44; Mon, 25 Jul 2016 16:59:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
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
	*      [209.85.215.47 listed in list.dnswl.org]
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33C98E00C40
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 16:58:59 -0700 (PDT)
Received: by mail-lf0-f47.google.com with SMTP id b199so139248616lfe.0
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 16:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=yI2ruUTcvLBDiIotfeXRVNdbHNyA/DZBWCbMLjtld7Y=;
	b=XJcnwjhPfHwlgA2ngL+cNC6yMbTzJbeegy0Z6nS2HfqCDorBdNYg4/q94yoOMJqzbq
	at9o8rbjXz6c9ZycLfK/umYZYr0mV93+EPzkj9B1vUjIQPDsnaaulmp7fJKRyL1HdbeS
	jMfXN2Bojt2uWe0eWZ6L308F2u3C08YWpWgu1quoPp+QZpgUQhWaRPJSrw+RNxaFrCBr
	5XDKO/899s23m2atKynccpezmW5b7MpvlfrcRBkzzXl8AHCDrIZ/wtUj8LHs4549/TMS
	fB0t9hAgvaRHtnIjBu/BPNNYwQgceTm4VcktnMDzoCrygQCui/dNFmCeupFWuMk8y9pv
	MWtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yI2ruUTcvLBDiIotfeXRVNdbHNyA/DZBWCbMLjtld7Y=;
	b=OjyOyJXC9ov+L0sK7v7qqqU/VjRaLopNs9g3iG1vDUw/oECtQwnkD+ldsdaT5vpS0r
	lL9Zk5K/0/GB1gfIbnrkm8/DNLF23yuDqJYB9rUdga6ZygC92DmqANNiem3mxWfF5fDJ
	MTWSGyvk4a04UscOp5k9D9TNz4lX/Zqmrsl6VuggFdZfoDs0jGp7yXYcDThU2SZc0Mf1
	/yHA2SviiRjfCowgkECLeKhgcPFv86b2riXY4kO/VBbJ/P8sYoFHCtGblRQldymkcPOE
	9hGkAm8JlqtgcXfcZGmHR7rycQX2q3/G+OnlXWonKnNpF1GtUV0iE9eIiW2i4LCEusNl
	2d1g==
X-Gm-Message-State: AEkoous5icb47RR2XVjpPNqCS830jdQH38kQ37JpKMm23jPThLGDTPyHZM2orSJBsTdf+0eO4bPqekxKQb8HKw==
X-Received: by 10.25.133.138 with SMTP id h132mr7209366lfd.210.1469491137364; 
	Mon, 25 Jul 2016 16:58:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.10.10 with HTTP; Mon, 25 Jul 2016 16:58:56 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
Date: Mon, 25 Jul 2016 16:58:56 -0700
Message-ID: <CANx9H-AnYys_fD2rwEEoHysdmzm8F9LKs9B7Xp7L7zCLWuZzaQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-qt4] core-image-lsb-qt4 & packageroup-core-qt4-libs
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
X-List-Received-Date: Mon, 25 Jul 2016 23:59:02 -0000
Content-Type: multipart/alternative; boundary=001a113fbf803e46e405387e9143

--001a113fbf803e46e405387e9143
Content-Type: text/plain; charset=UTF-8

bitbake core-image-lsb-qt4

ERROR: Nothing RPROVIDES 'packagegroup-core-qt4-libs' (but
/home/shazbot/poky/meta-qt4/recipes-qt4/images/core-image-lsb-qt4.bb
RDEPENDS on or otherwise requires it)


I see the packagegroup in meta-qt3, but not meta-qt4. Intentional?

Cheers.

--Tim

--001a113fbf803e46e405387e9143
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>bitbake core-image-lsb-qt4<br><br>ERROR: Nothing RPRO=
VIDES &#39;packagegroup-core-qt4-libs&#39; (but /home/shazbot/poky/meta-qt4=
/recipes-qt4/images/<a href=3D"http://core-image-lsb-qt4.bb">core-image-lsb=
-qt4.bb</a> RDEPENDS on or otherwise requires it)<br><br><br></div><div>I s=
ee the packagegroup in meta-qt3, but not meta-qt4. Intentional?<br><br></di=
v><div>Cheers.<br><br></div><div>--Tim<br></div></div>

--001a113fbf803e46e405387e9143--
