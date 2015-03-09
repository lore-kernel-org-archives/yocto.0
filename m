Return-Path: <parthiban@ulivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7689EE005B6; Mon,  9 Mar 2015 06:40:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21207E002F9
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 06:40:54 -0700 (PDT)
Received: by oifu20 with SMTP id u20so29206006oif.12
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 06:40:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=FpGIlculN8s8dgYI+GazZl2VyWZB3npnMasfRnUV0lA=;
	b=jHi+JqUOO7ouweotGl4Qj61gF9LMDnKCivTyMVdD4NhjjUBktoT4dLitoGoSagEvIX
	kIsiFtBjHLvnAhJXzhXKMSvFPn7OHI3AP2TvBvWo1IeO0Y+maGZgPqN5U6dacfIV03mP
	UA5dXzyJ+9ubDro4kU75hmudId66LEzmfkS6Vjc3CVkARSm4L01lkiVgWNhSxgYkwYYn
	aN3IaV3T1q1v7HTCug3JOocDANftswjFj7kXt5OaBwaEXQYXdyxw4PFbDK0aIXh0aTw+
	rsgiZjw5q+3J9TsIwv23yRqgJoTK6l1G4oCQ6cQlEQJZgXh8qebia06lHIM+WISNmUP7
	Xj4A==
X-Gm-Message-State: ALoCoQktBOu76gXjjVShWQSSDgigTBwsNWxdpyYixjh3t/6dL9KloWNJ31EMTF1YfCO9Hs10ArxC
MIME-Version: 1.0
X-Received: by 10.60.56.19 with SMTP id w19mr21675897oep.20.1425908453601;
	Mon, 09 Mar 2015 06:40:53 -0700 (PDT)
Received: by 10.60.102.106 with HTTP; Mon, 9 Mar 2015 06:40:53 -0700 (PDT)
Date: Mon, 9 Mar 2015 19:10:53 +0530
Message-ID: <CABNKipLemhk9hbPFm8JiGH-uoZbHbQQK1bqxeKuJ2HOYCVM4NA@mail.gmail.com>
From: Parthiban Kandasamy <parthiban@ulivesystems.com>
To: yocto@yoctoproject.org
Subject: avoid kernel building
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
X-List-Received-Date: Mon, 09 Mar 2015 13:40:58 -0000
Content-Type: multipart/alternative; boundary=001a11c20c9edc06cb0510db2e57

--001a11c20c9edc06cb0510db2e57
Content-Type: text/plain; charset=UTF-8

i am using beagle board-xm, for this board i don want to build kernel
package. so how to exclude linux-yocto from build process. i tried
following option

PACKAGE_EXCLUDE = "linux-yocto" -> it was not effect,
BBMASK .= "|.*linux-yocto" -> it was not effect,

those statement not work, so what will be the correct option.

-- 
thanks and regards,
parthiban
      +919790329795

--001a11c20c9edc06cb0510db2e57
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>i am using beagle board-xm, for this board =
i don want to build kernel package. so how to exclude linux-yocto from buil=
d process. i tried following option<br><br></div>PACKAGE_EXCLUDE =3D &quot;=
linux-yocto&quot; -&gt; it was not effect,<br></div>BBMASK .=3D &quot;|.*li=
nux-yocto&quot; -&gt; it was not effect,<br><br></div>those statement not w=
ork, so what will be the correct option.<br><div><div><div><div><br>-- <br>=
<div class=3D"gmail_signature"><div style=3D"text-align:right">thanks and r=
egards,<br>parthiban =C2=A0 =C2=A0 =C2=A0 <br><div style=3D"text-align:righ=
t">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +919790329795=C2=A0=C2=A0 <br></div></div=
></div>
</div></div></div></div></div>

--001a11c20c9edc06cb0510db2e57--
