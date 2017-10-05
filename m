Return-Path: <torstensievers@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 805CBE00D85; Thu,  5 Oct 2017 03:09:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (torstensievers[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13486E00D6D
	for <yocto@yoctoproject.org>; Thu,  5 Oct 2017 03:09:10 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id w197so19222349oif.6
	for <yocto@yoctoproject.org>; Thu, 05 Oct 2017 03:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=X6MqbLZ/msx6SQ31eNLnHNpK9TzrOqPbBxpWYHWwC0o=;
	b=enyQrWzgGPOm8FgJop0W+8XetX5zxcebSf0qBR+/AWT9vtaod4i9e7dx+RvI4U2FyZ
	OQ1agZpH17My2ZD7ScDDN6UvHTP9ZtHIkpBgybWPA4SxShakOEi050ZrG69J9dEyXdsA
	H/Rt5wfXIO1xK3eU+/rtN0RgMt0jBhZvQarmTiBfyChOEtq7Btz3J2RL1VJjDWlpV2mn
	3+A5pnpqV6Z8U71Dth337k9fMuqvM2mVKPGHmlXaeiAr+nSr+Q9XwqXiTPPSsvWY1Sst
	tWUz1QwpD26wNjSNOy0e4p1f3igyNs2FyjR2uTaKDWFpnQcVr9VRw4BOoQEk/eUkyd5t
	zjBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=X6MqbLZ/msx6SQ31eNLnHNpK9TzrOqPbBxpWYHWwC0o=;
	b=XSs/wGgWomcMn+2reGuNbUSssgOzYrY2IUCzFka0BrILoizD5BmqNCWNj6XV0PmH7p
	L7BIzA9B7HimBYQsM9i+TNrHvUcMywG1MHqOprNlamv0xcM7Di8Nvg0HyiJxTdyVvoEK
	VzehJwU/r0WmVldCL9uG3U7UH8g2/FtXJQI2Vd9yV/pNkIySqIUB10VHsjRkkSzOcPrf
	UX9NOs0CJhnwK8qm33V1C5C8EZY3Ge6GajUDNA1jusH6bTEqLd7mz8alAtfeytRdOpCO
	h5zO4pkceoVAk53KVq6K7lkoOYJPYLUEsy2IbWj/Cvmho9POrproeBQFBWBT/pR3r2Vr
	nzyg==
X-Gm-Message-State: AMCzsaUFmUapX/6hv87ANtg4Fvv3toYIy9QPNrUy2/0Fn4BqYO4erHyz
	AulcTOFNvN4UXQ8lqrHL/lyrdpyXrDE1lIKOLXgXLg==
X-Google-Smtp-Source: AOwi7QBgXWv6NVX+phAp0u7nye9jwX/hCPH9XM/M05e6TPZKVQZbaNFjaTzoSxkFHYzZL5dm2/IQ3Uc+2Cbp77D/E4k=
X-Received: by 10.157.53.27 with SMTP id o27mr16184706otc.18.1507198149777;
	Thu, 05 Oct 2017 03:09:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.167.72 with HTTP; Thu, 5 Oct 2017 03:09:09 -0700 (PDT)
From: Torsten Sievers <torstensievers@googlemail.com>
Date: Thu, 5 Oct 2017 12:09:09 +0200
Message-ID: <CAPZw6vNtRpXny=XzB=v88R944eZOP7Lg4RRax8Q9xetRrY7HgA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Bitbaking a recipe often triggers a do_package_write_rpm of a dependant recipe... why?
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
X-List-Received-Date: Thu, 05 Oct 2017 10:09:11 -0000
Content-Type: multipart/alternative; boundary="001a113d941e52ddee055ac9ea87"

--001a113d941e52ddee055ac9ea87
Content-Type: text/plain; charset="UTF-8"

Hi guys,

Here is the situation:

I have two custom made recipes, one is a SDK , the other one is a set of
examples that use the sdk.

The examples recipe has DEPENDS and RDEPENDS set that point to artifacts
that are produced by the SDK recipe.

So far, so normal

Now the strange thing happens:

when I do

bitbake sdk

everything is fine, it configures,compiles,installs and eventually create a
rpm (by do_package_write_rpm)

when I run

bitbake examples

immediately after the finish of the bitbake sdk

it is compiling,installing etc the example rpm. However it is also very
often (but not always) re-triggering the do_package_write_rpm from the
SDK.  but why?

I double checked, the SDK code/recipe was not touched, and the SDK rpm was
sitting right there before I bitbaked the examples.


i am digging deep inside bitbake / yocto recipes for days but i cannot find
the rootcause...

Any hint what could cause this? I would not bother too much, but the
building of the SDK rpms takes roughly 10 minutes, thus significantly
slowing down my development iterations.

Any hints are highly appreciated...
BR
  Torsten

--001a113d941e52ddee055ac9ea87
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<div><br></div><div>Here is the situation:<br></di=
v><div><br></div><div>I have two custom made recipes, one is a SDK , the ot=
her one is a set of examples that use the sdk.</div><div><br></div><div>The=
 examples recipe has DEPENDS and RDEPENDS set that point to artifacts that =
are produced by the SDK recipe.</div><div><br></div><div>So far, so normal<=
/div><div><br></div><div>Now the strange thing happens:</div><div><br></div=
><div>when I do</div><div><br></div><div>bitbake sdk=C2=A0</div><div><br></=
div><div>everything is fine, it configures,compiles,installs and eventually=
 create a rpm (by do_package_write_rpm)</div><div><br></div><div>when I run=
=C2=A0</div><div><br></div><div>bitbake examples=C2=A0</div><div><br></div>=
<div>immediately after the finish of the bitbake sdk</div><div><br></div><d=
iv>it is compiling,installing etc the example rpm. However it is also very =
often (but not always) re-triggering the do_package_write_rpm from the SDK.=
=C2=A0 but why?</div><div><br></div><div>I double checked, the SDK code/rec=
ipe was not touched, and the SDK rpm was sitting right there before I bitba=
ked the examples.</div><div><br></div><div><br></div><div>i am digging deep=
 inside bitbake / yocto recipes for days but i cannot find the rootcause...=
<br></div><div><br></div><div>Any hint what could cause this? I would not b=
other too much, but the building of the SDK rpms takes roughly 10 minutes, =
thus significantly slowing down my development iterations.</div><div><br></=
div><div>Any hints are highly appreciated...</div><div>BR</div><div>=C2=A0 =
Torsten</div><div><br></div></div>

--001a113d941e52ddee055ac9ea87--
