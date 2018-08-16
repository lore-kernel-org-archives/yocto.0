Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 279E8E00566; Thu, 16 Aug 2018 00:52:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	SUBJ_ALL_CAPS,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dhanush.ks[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	*  1.5 SUBJ_ALL_CAPS Subject is all capitals
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7F26E003D7
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 00:52:42 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id z78-v6so533774qka.0
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 00:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=jgA+vUiov4EivEGPWM/x0aXBy8PMCPsfTZOq+PhphYw=;
	b=OIIyKRzbMHMu+B9DA2j+EqbT5pmFg0lEwW4OvHhBftHSLEAwee4NiscdqrsZRnXf4+
	YU6tujNWA6oZwlHnzyXOeEJ/zFRMAouZ7SMu/VcSzy8SNn7Pyt73GIrNqIHvYMr0Y3np
	7pkL0SGn0s2jIYNZEtve6crm4c4iKIgsPpzgPM2ZjF/p2WeZf/kC0oCpsPZl6YLzWV2O
	9Qs6cqFP9Uzz13FKcDzVLqbWhNTID7UUfoOxMWLxcg57p7lEGBJ3jEwOw41mkWUZYX5Z
	wEGYIzT6ZDQPhyDMHdihkyzXj8PdararzYHFaHAKlZLW+ymv6pAwiyJfxDS8OBSKIqGN
	BlJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jgA+vUiov4EivEGPWM/x0aXBy8PMCPsfTZOq+PhphYw=;
	b=l/TYxpnwhXb+r7Is1cJ8R8reVexunHlcJckyeRRoSg28hm3uVn2fCXaJ+gvEjAfeEb
	3/celMuoJVwaLClkdne6u0hl42+ZfZvuqJt/cRENzZiQUmnJ3CLyStlMik5258oNeJw3
	mLrECggMuRGCMpDj5ArC3Hmo6urf0YPWoKwFdCQV0f3LMd3qjy8T7M7yV1LLxXHQtRz9
	LpPiJ0UWetadWHKIOfphCbRl9V/R1/RpR7pcw7Dmh+5/iP6viB6MdxYThQF5rBCkydK2
	3Q+aQMsd7yPqx+rWO4jcNcrhCM1BxREvgINq0sR5tUW34qfFFIYKCUBRA9YsNJ8G9WoR
	dPUw==
X-Gm-Message-State: AOUpUlFA9c4xRovodEOqyVu0pbRS4HS8EPF5PN/9WbnSTaNOHyBFdWNG
	wRYx1LioFI0tst1LVN/Thz/BCJddApYXxT85gvUZXvC+wk0=
X-Google-Smtp-Source: AA+uWPz3JXxvNxzHeMQQOR/Ov9Bk77TUpa1zwv9Mo6tixMcBjUEmpLUSk++0pr02kp7WAkLzxEO7ZLdDmc2EcFCpvPc=
X-Received: by 2002:a37:2990:: with SMTP id
	p16-v6mr27129709qkp.386.1534405961875; 
	Thu, 16 Aug 2018 00:52:41 -0700 (PDT)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Thu, 16 Aug 2018 09:52:30 +0200
Message-ID: <CAKPYHZ7ey2AXvFCY0nC6e4eNS6oA4Cdve38Ccrf1QUU0EitFoQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: BITBAKE ADD-LAYER | HELP!!
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
X-List-Received-Date: Thu, 16 Aug 2018 07:52:43 -0000
Content-Type: multipart/alternative; boundary="0000000000004c8610057388baf2"

--0000000000004c8610057388baf2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello MailingList,

I just upgraded yocto to the latest release (Sumo 19.0 /Yocto 2.5.1).
Currently i am trying to add the meta-openembedded layer to my
conf/bblayers.conf using the command "bitbake-layers add-layer
DIRECTORY_PATH/LAYER".

But I am getting parseError at times.


   - Is it absolutely necessary to checkout the meta-openembedded layer to
   the same Branch as that of the Yocto Version? or is it alright to stay i=
n
   the master Branch?
   - I can add the meta-oe sub-layer while on master but i get parseError
   when on the Sumo branch.
   - I am not able to add the meta-python and meta-networking sub-layers of
   meta-openembedded to the conf/bblayers.conf file without getting parse
   errors. (meta-networking sub-layer depends on meta-python, so until I
   resolve that I cannot add this)


*[ac500v3@localhost build-2.5]$ bitbake-layers add-layer
/opt/ac500/yocto/trunk/yocto/next/meta-openembedded/meta-python/*
*NOTE: Starting bitbake server...*
*Loading cache: 100%
|##########################################################################=
###########################################################################=
###########################################################################=
############|
Time: 0:00:00*
*Loaded 499 entries from dependency cache.*
*ERROR: ParseError at
/opt/ac500/yocto/trunk/yocto/next/meta-openembedded/meta-python/recipes-dev=
tools/python/python-pbr_4.2.0.bb:3
<http://python-pbr_4.2.0.bb:3>: Could not include required file
recipes-devtools/python/python-pbr.inc
                | ETA:  --:--:--*

*Summary: There was 1 ERROR message shown, returning a non-zero exit code.*
*ERROR: Parse failure with the specified layer added*

What and where am I going wrong?


Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
Dhanush Keshava Reddy Soppahalli
Mob: +4915216144064

--0000000000004c8610057388baf2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:georgia,=
serif">Hello MailingList,</div><div class=3D"gmail_default" style=3D"font-f=
amily:georgia,serif"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:georgia,serif">I just upgraded yocto to the latest release (Sumo 19.0=
 /Yocto 2.5.1). Currently i am trying to add the meta-openembedded layer to=
 my conf/bblayers.conf using the command &quot;bitbake-layers add-layer DIR=
ECTORY_PATH/LAYER&quot;.=C2=A0</div><div class=3D"gmail_default" style=3D"f=
ont-family:georgia,serif"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:georgia,serif">But I am getting parseError at times.</div><div c=
lass=3D"gmail_default" style=3D"font-family:georgia,serif"><br></div><div c=
lass=3D"gmail_default"><ul><li><font face=3D"georgia, serif">Is it absolute=
ly necessary to checkout the meta-openembedded layer to the same Branch as =
that of the Yocto Version? or is it alright to stay in the master Branch?</=
font></li><li><font face=3D"georgia, serif">I can add the meta-oe sub-layer=
 while on master but i get parseError when on the Sumo branch.</font></li><=
li><font face=3D"georgia, serif">I am not able to add the meta-python and m=
eta-networking sub-layers of meta-openembedded to the conf/bblayers.conf fi=
le without getting parse errors. (meta-networking sub-layer depends on meta=
-python, so until I resolve that I cannot add this)</font></li></ul>=C2=A0<=
i>[ac500v3@localhost build-2.5]$ bitbake-layers add-layer /opt/ac500/yocto/=
trunk/yocto/next/meta-openembedded/meta-python/<br></i></div><div class=3D"=
gmail_default"><i>NOTE: Starting bitbake server...</i></div><div class=3D"g=
mail_default"><i>Loading cache: 100% |#####################################=
###########################################################################=
###########################################################################=
#################################################| Time: 0:00:00</i></div><=
div class=3D"gmail_default"><i>Loaded 499 entries from dependency cache.</i=
></div><div class=3D"gmail_default"><i>ERROR: ParseError at /opt/ac500/yoct=
o/trunk/yocto/next/meta-openembedded/meta-python/recipes-devtools/python/<a=
 href=3D"http://python-pbr_4.2.0.bb:3">python-pbr_4.2.0.bb:3</a>: Could not=
 include required file recipes-devtools/python/python-pbr.inc=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA:=C2=A0 --:--:--</i></div><div class=3D"gm=
ail_default"><i><br></i></div><div class=3D"gmail_default"><i>Summary: Ther=
e was 1 ERROR message shown, returning a non-zero exit code.</i></div><div =
class=3D"gmail_default"><i>ERROR: Parse failure with the specified layer ad=
ded</i></div><div class=3D"gmail_default"><i><br></i></div><div class=3D"gm=
ail_default">What and where am I going wrong?</div><div class=3D"gmail_defa=
ult"><br></div><div class=3D"gmail_default"><br></div><div><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div><font face=3D"georgia, serif" color=3D"#666666">Mit=C2=A0=
freundlichen=C2=A0Gr=C3=BC=C3=9Fen / Best Regards,</font><div><font face=3D=
"georgia, serif" color=3D"#666666">Dhanush Keshava Reddy Soppahalli</font><=
/div><div><font face=3D"georgia, serif" color=3D"#cc0000">Mob: +49152161440=
64</font></div></div></div></div></div></div></div></div></div></div>

--0000000000004c8610057388baf2--
