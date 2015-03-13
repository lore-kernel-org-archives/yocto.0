Return-Path: <parthiban@ulivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 824B6E008CD; Fri, 13 Mar 2015 04:39:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFDCDE0085D
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 04:39:32 -0700 (PDT)
Received: by obcuz6 with SMTP id uz6so19049291obc.7
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 04:39:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=FBivUC2olyVyWaBUKKptq/NwyrDcuVNo72algtecE38=;
	b=Nepnje5t8BkDPx2N0hTnCKZm9TgzDS+gokUY5L1GJ9MuJ7rRvrPcLPg+rBqX/F5P7p
	ev5/4onGKWuQfHowbeHLOlzqXRvJzf2Nj43S3ugAFkyGCtodP6vNMnNtRXcYkAPe+B0K
	5JPrfCFNuiqKbQEzSCgrNSFNA1XLEdoivd/+moL1TUWILfJhLbwEgO+UoXDTQK+JxlNt
	IPH7Ow4Z8N+FhKn0J8rzDuiik59oMCiCPiI3Sz0yeh5HfTFUgQ8ENHYWNfx9jOS8hqWH
	JYkUHmWTkvEdsDOTnJfv83olRMUwE1gdXH9+pmRLHDaLEFtBK/6pmqznaTxFo17yIEMh
	65Ww==
X-Gm-Message-State: ALoCoQmOz1bppRcEISS9fWfwApnbmLMY6FMXJl2X36lrGwc9+lNsnJBjz64oZz3E6stliqmyEH3K
MIME-Version: 1.0
X-Received: by 10.202.191.194 with SMTP id p185mr35950535oif.128.1426246771551;
	Fri, 13 Mar 2015 04:39:31 -0700 (PDT)
Received: by 10.60.102.104 with HTTP; Fri, 13 Mar 2015 04:39:31 -0700 (PDT)
Date: Fri, 13 Mar 2015 17:09:31 +0530
Message-ID: <CABNKipJrBr5UsH7aJGV0GUkcWF_fMrps1haj9T0uA1EWExqOSw@mail.gmail.com>
From: Parthiban Kandasamy <parthiban@ulivesystems.com>
To: yocto@yoctoproject.org
Subject: Qt mouse driver
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
X-List-Received-Date: Fri, 13 Mar 2015 11:39:33 -0000
Content-Type: multipart/alternative; boundary=001a113d6a522e46d0051129f472

--001a113d6a522e46d0051129f472
Content-Type: text/plain; charset=UTF-8

i successfully built customized yocto project(Qte-demo) for beagleboard-xm,
In project i use two input device i.e mouse and touchscreen. Default
library used in qt is tslib. So how do i use mouse and touchscreen at the
same time?

-- 
thanks and regards,
parthiban
      +919790329795

--001a113d6a522e46d0051129f472
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">i successfully built customized yocto project(Qte-demo) fo=
r beagleboard-xm, In project i use two input device i.e mouse and touchscre=
en. Default library used in qt is tslib. So how do i use mouse and touchscr=
een at the same time?<br clear=3D"all"><div><br>-- <br><div class=3D"gmail_=
signature"><div style=3D"text-align:right">thanks and regards,<br>parthiban=
 =C2=A0 =C2=A0 =C2=A0 <br><div style=3D"text-align:right">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 +919790329795=C2=A0=C2=A0 <br></div></div></div>
</div></div>

--001a113d6a522e46d0051129f472--
