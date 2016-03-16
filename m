Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38091E008F1; Wed, 16 Mar 2016 02:17:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADBF1E0083D
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 02:17:28 -0700 (PDT)
Received: by mail-lb0-f177.google.com with SMTP id x1so43626348lbj.3
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 02:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=jCqtmze0VWft9r7OY5Y7rejDcK8DPeCdivWH62JUlEg=;
	b=UocUPzYfoylgXpBK4qtB/g4eQyvWW9383EiIx38kR14GY3Tl4nSsQ74uu9gAmI/wQj
	+aO9bP+tp0w6XRGN2qcZ9mI/37+1l0rL1L40p1n7i0Lvn2WYehNgWzK/ZqpVnpXmyToI
	os/mc74rXxUn/YS62xVJbsxT74lppG9l8T2YWvpOcXk8NeEqMxKpXRFFpebBYCnjwVsJ
	2WV0dr2v0FenRByKbNOUynwOs5uW9SUCNNY0WOt2FPiI86SzQpIOJyYXqndvQQ4a7fMG
	g+jVFJC2SOn7boTowgjgel12qkO9gbPx7JR6le+FxzSzLC/CigL5q/H6l8GneOogkq5X
	er3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=jCqtmze0VWft9r7OY5Y7rejDcK8DPeCdivWH62JUlEg=;
	b=U4Ml3VOKM2LHDErI+C+KKPPowWTtvCoTH/C77vC4X9qvOOwgLwLb9w5g8jSvCKauWb
	nqw1qPL92GfwEyJRYJmaqd4IXedw0AmAOrihiqB9r2g+58RqkF0IYz/gMCyE7wJdJ6VQ
	iZaRZEe1Ot3KBJAuF05JR3Vrqtv0cUVPNyNHatukmOwE84q083Cl2scSAB1ovhxcm4rZ
	CQLyjPxza7jlXWn+oI1+ToCNB4TP91Wtr/MMBiNqlgSnykQWJ9BA6TxDrEP1f8GZr8vk
	MpzX7LkfQ73MZx//+LSiuhdQafkY1EvZkfjzELciZg9xnzv2NFH+fcWijyjzgpHhz2bo
	zU3A==
X-Gm-Message-State: AD7BkJK9ZqJ91j6TS8OalQOpKYGMtObqT5FBaPgXWjb0YuwHNtWVormY+Q6lS9qsPVmWxlCM4IJTrUVAwN5XrA==
MIME-Version: 1.0
X-Received: by 10.112.161.131 with SMTP id xs3mr944552lbb.65.1458119846495;
	Wed, 16 Mar 2016 02:17:26 -0700 (PDT)
Received: by 10.25.205.10 with HTTP; Wed, 16 Mar 2016 02:17:26 -0700 (PDT)
In-Reply-To: <56E913A0.2030603@laposte.net>
References: <op.yec9f2hdmnlnty@pc-mls.ecafaros.local>
	<56E913A0.2030603@laposte.net>
Date: Wed, 16 Mar 2016 10:17:26 +0100
Message-ID: <CAALGJZYWqQGbRMp70LNVyZyWMyd7ac-L5aGrdA4VrWX=Z+BvwA@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: idealsim <idealsim@laposte.net>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Qt5.6 new modules
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
X-List-Received-Date: Wed, 16 Mar 2016 09:17:31 -0000
Content-Type: text/plain; charset=UTF-8

Hi,,

2016-03-16 9:04 GMT+01:00 idealsim <idealsim@laposte.net>:
> Hi, we have build an image for udoo neo from meta-qt5 jansa/master-5.6 and
> works fine (thanks to Christian Ege ). The problem is that I'm looking for
> https://github.com/qtproject/qtquickcontrols2 and
> https://github.com/qtproject/qtserialbus. My question is how we can add this
> modules to our build ?  I add this to our local.conf :
>
>     "qtquickcontrols2 \
>      qtserialbus \
>     "
> But this modules don't have buildable providers ! If someone can help to
> said me how to proceed ...
You can try to add a meta-qt5/recipes-qt/qt5/qtserialbus_git.bb and
take for example meta-qt5/recipes-qt/qt5/qtsensors_git.bb as reference

require qt5.inc
require qt5-git.inc
# There are no LGPLv3-only licensed files in this component.
# There are no GPLv2 licensed files in this component.
LICENSE = "GFDL-1.3 & BSD & (LGPL-2.1 &
The-Qt-Company-Qt-LGPL-Exception-1.1 | LGPL-3.0)"
LIC_FILES_CHKSUM = " \
file://LICENSE.LGPLv21;md5=58a180e1cf84c756c29f782b3a485c29 \
file://LICENSE.LGPLv3;md5=b8c75190712063cde04e1f41b6fdad98 \
file://LICENSE.GPLv3;md5=40f9bf30e783ddc201497165dfb32afb \
file://LGPL_EXCEPTION.txt;md5=9625233da42f9e0ce9d63651a9d97654 \
file://LICENSE.FDL;md5=6d9f2a9af4c8b8c3c769f6cc1b6aaf7e \
file://LICENSE.GPLv2;md5=05832301944453ec79e40ba3c3cfceec \
"
DEPENDS += "qtbase"

SRCREV = "71a323e1f12df8d213a4052621027e223eb5a343"

The configure step will bail out due to the fact that you have wrong
checksums but it will show you the right ones

Best,
Christian


>
> regards,
>
> Mickael
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
http://ch.ege.io/

