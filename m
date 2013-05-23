Return-Path: <johan.thelin@pelagicore.com>
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA3FAE006C2
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 23:59:04 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id x12so7702410ief.12
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 23:59:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=i8aWG6ISD9f1uI+m8Ya6S0mN7nUEBqKV2gEpag62iJg=;
	b=Nnz69IjWvk5hhLExPLnBTT+lVGfjiGbQAAZei0+hCUD7PHuiWJ5vN6oHjevnJLLSHE
	uiUOh5E9qvy7GOl4Nypan6u3VEuEaj0gQreToIGeRf6X0HIom4g13b/47BHfhR/gmqug
	GEg/vvhMjjbtkOzt02PoXGhEF6+EEFN92qeu3WNo0xUCV1M3aATF+tE9mVDoIxKPSdDC
	m5iPl3Kf9yJCLdv/NMT2AAl6hFNQXxKXvnw/TV10zQgmm3LtUaO/RL3FzOsJkuBgPsoY
	OSQNbeNNcqtkuFixLWzQF45kzJ0ACgC1qfb+5vAomklsq2AF31jDAhjikKd3tFaIM/2J
	tp1w==
MIME-Version: 1.0
X-Received: by 10.50.3.38 with SMTP id 6mr4292751igz.44.1369292344036; Wed, 22
	May 2013 23:59:04 -0700 (PDT)
Received: by 10.43.162.69 with HTTP; Wed, 22 May 2013 23:59:03 -0700 (PDT)
Date: Thu, 23 May 2013 08:59:03 +0200
Message-ID: <CADGWk0rtNhS2pMUqhXGjLL469FxCFvkdk-3SnUSWQ4uXP60AGw@mail.gmail.com>
From: Johan Thelin <johan.thelin@pelagicore.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkPiFUFNCfAk8/L0ky+bV5GuHX7uhNsmMZJGSwagDQEoNeSnVeI9TGQDkqLvY3HVL5OV9K7
Subject: eo_filter_out not working
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
X-List-Received-Date: Thu, 23 May 2013 06:59:04 -0000
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to build the packagegroup-core-p1 from the meta-ivi layer,
but I would like to remove the RRECOMMENDS as I don't want X11. To do
this, I've added a packagegroup-core-p1.bbappend to my own layer. In
this file I've tried the following options:

Attempt #1

RRECOMMENDS_packagegroup-core-p1 :=
"${@oe_filter_out('packagegroup-xserver-ivi',
'${RRECOMMENDS_packagegroup-core-p1}', d)}"

ERROR: ExpansionError during parsing
/home/e8johan/work/yocto/pelagicore-bsp/sources/meta-ivi/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb:
Failure expanding variable RRECOMMENDS_packagegroup-core-p1[:=],
expression was ${@oe_filter_out('packagegroup-xserver-ivi',
'${RRECOMMENDS_packagegroup-core-p1}', d)} which triggered exception
SyntaxError: EOL while scanning string literal
(RRECOMMENDS_packagegroup-core-p1[:=], line 1)


I read this as RECOMMENDS_packagegroup-core-p1 is not yet set, so the
oe_filter_out part fails.



Attempt #2

RRECOMMENDS_packagegroup-core-p1 := "foo"

WARNING: Variable key RRECOMMENDS_${PN} (    packagegroup-xserver-ivi
   ) replaces original key RRECOMMENDS_packagegroup-core-p1 (foo).


This sort of explains why attempt #1 fails, as it seems that the bb is
evaluated after the bbappend.



So this leads me to my question. Why is the bb apparently evaluated
after the bbappend? Running bitbake with -DDD does not indicate this
(see below), so I smell something fishy (or I don't fully grasp how
things are meant to work)

$ bitbake -DDD packagegroup-core-p1 | grep core-p1
DEBUG: BB /home/e8johan/work/yocto/pelagicore-bsp/sources/meta-ivi/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb:
handle(data)
DEBUG: LOAD /home/e8johan/work/yocto/pelagicore-bsp/sources/meta-ivi/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
DEBUG: BB /home/e8johan/work/yocto/pelagicore-bsp/sources/meta-ivi/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb:6:
inheriting /home/e8johan/work/yocto/pelagicore-bsp/sources/poky/meta/classes/packagegroup.bbclass
DEBUG: Appending .bbappend file
/home/e8johan/work/yocto/pelagicore-bsp/sources/meta-pelagicore/meta-pelagicore/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bbappend
to /home/e8johan/work/yocto/pelagicore-bsp/sources/meta-ivi/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
DEBUG: BB /home/e8johan/work/yocto/pelagicore-bsp/sources/meta-pelagicore/meta-pelagicore/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bbappend:
handle(data, include)
DEBUG: LOAD /home/e8johan/work/yocto/pelagicore-bsp/sources/meta-pelagicore/meta-pelagicore/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bbappend
WARNING: Variable key RRECOMMENDS_${PN} (    packagegroup-xserver-ivi
   ) replaces original key RRECOMMENDS_packagegroup-core-p1 (foo).
DEBUG: Cache: /home/e8johan/work/yocto/pelagicore-bsp/sources/meta-ivi/recipes-yocto-ivi/packagegroups/packagegroup-core-p1.bb
is not cached

So, what am I doing wrong?

Best regards,

Johan Thelin   ヨハン  テリン
M.Sc.E.E.
System Architect

Pelagicore AB
Ekelundsgatan 4, 6tr, SE-411 18 Gothenburg, Sweden
Mobile: +46 (0)700 900 250
Skype: jothpelagicore
E-Mail: johan.thelin@pelagicore.com

