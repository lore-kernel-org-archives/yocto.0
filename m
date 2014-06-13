Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14411E00BE2; Fri, 13 Jun 2014 06:09:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0AF7E00BDF
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 06:09:12 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id db12so3271040veb.35
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 06:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=M3HiwSfxWq4JNWn/lkYNwiBeMDl1A29uaW/z2jgGjnA=;
	b=YILrNZFzgX1HgE9ckURYtSqLb7ua++uaXq6xuoUMDrLYs7C6GMPmMNuz93/uiBL0od
	h488TpO+c8lR5ApyhbnsoEddtqhmQsk4jJ/mGiro60AqX+Efg6L0BvlobGEGvHVDeVgc
	Og+WxYS9z1uu0orQkCOEUuReQ/3gORj1kZRRfjhHBlkdCfx4iP/YQdAeETSpusFIUDYS
	V3lqbmv+JzXnfmra8w6ThfJ+HsRGCphyuqoU+YNteYaITFbST4hS0V8KK3mFR8fvTf3T
	hax7gqsVBieng1s/8N3Jy3JilOfgnMrWZ9z3dpfq9x6uOKBPBCBYJsLoIpPy0xqzvlz6
	3f9g==
X-Received: by 10.52.4.40 with SMTP id h8mr105332vdh.95.1402664951427; Fri, 13
	Jun 2014 06:09:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Fri, 13 Jun 2014 06:08:41 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Fri, 13 Jun 2014 09:08:41 -0400
Message-ID: <CAF_dkJB9T4VWSOma0sTeaec8js4-Bp58=s4AKRxT0JryCHp8NA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to specify a default value for a variable in a recipe
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
X-List-Received-Date: Fri, 13 Jun 2014 13:09:28 -0000
Content-Type: text/plain; charset=UTF-8

OK, I've got to ask this, because it totally confuses me.  I wrote a
recipe to build a custom application (gstreamer plugin, actually) that
I wanted to fetch from our SCM.  Bitbake told me I needed to specify a
source revision and even gave me a clue of what to put in.  Looking at
the development manual, I decided I wanted to use the latest revision
from our repository by default, so I added the following line to my
recipe:

SRCREV_default_pn-gstxbac = "${AUTOREV}"

But now I'm curious.  Why couldn't I use (I haven't tried this yet)

SRCREV_pn-gstxbac ?= "${AUTOREV}"

and even more confusingly, why isn't the syntax something more like:

SRCREV_pn-gstxbac_default = "${AUTOREV}"

What's going on here?

Does one syntax (BLAH_default vs BLAH ?=) get evaluated early in the
bitbake process and the other get evaluated late?

Does the location of the letters "default" in a variable name matter?

At some point, I really need to wrap my head around Bitbake, it's
syntax, and how it operates and internalize all of that.

--wpd

