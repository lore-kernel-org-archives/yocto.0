Return-Path: <matteo.facchinetti@sirius-es.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 136B6E00CD6; Thu,  4 Apr 2019 06:36:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAF5BE00BB7
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 06:36:03 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id p20so3172989qtc.9
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 06:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sirius-es-it.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=qSoHPA+WNmN641VDQOBIvOEiRplh916V/4aF5mbw/io=;
	b=TvcA1E6cT0F65dLtBbKaEu0WZl6RGXNNWqHWsFhO22akPZ0yc4l72gZj6JhZ3iHw0o
	SH++ynH6oLjIYKp23vpiQQE3nO1JhhBHMSm0nhpGn62eizoGci7ETY0qOIXPEJc4qN36
	zXBK0L4ueT81vxsLX4C+A4YdgJSJbeF2H2WTLQcTnMKvLf6myi/nN6t/nBHcWWBdPhyG
	bteEmiKfb51Mesn7vy/kScWM6bDiNlAUAkHS9lWbRvwAFCMDlvdDGJxQZTt1HEadOF6K
	RoyTMRxjLo7Tlq9Bn69QHpx22MrVctTNunnnehzwjviEm7IymtqLlT7/Qup5huyOeKdK
	M+Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qSoHPA+WNmN641VDQOBIvOEiRplh916V/4aF5mbw/io=;
	b=kUIrkH5S8s68nYU5Tyst0oqXY71uQZCDdDLhKQmReYSnjUIt7SrKjDw9Tw8jkvMwP8
	QX/VuKBcMKrrQdalYsVXAOsoUx07MPPnMsTOhtL9OPblPmeXd7yy1eizayju/nPNYp9K
	k/f0nuagbERvYNcxdyok1MybJ/sJIHuN/mjP+oGbIuBLo40TK+O19okWVa0jaGyn1k1W
	MkA/GE3qy/CLscXCHgJE1C11XMHa/sucVoec35Ymb4BmfMWymgfzPkwNRGv3OCYPnzL4
	1qmoROkYSx8AS1qs+K8ry/CyK11IzaG+hpyrxutTZEnx5eG/+FmbOnuYNovRZOiIyYmW
	/jOw==
X-Gm-Message-State: APjAAAWeL+pEzOKlNvmvsJWhofAk3evHOOlSuU0lYOrkXdQAdSQpK/Dy
	/tQ4oBsM6cltDhEI5BHFYMo8k2Ysk7TkS4+tODpfMTVmPs6rdCqg
X-Google-Smtp-Source: APXvYqw+2G4kdchgcx3hyRtmwq8o+Fcl6fYMfgHFkfZ3FYH70gvoPdPvlUPP9K0BMcEBueAvmW/c4Na510hEjs+GxkM=
X-Received: by 2002:a0c:9236:: with SMTP id a51mr4798687qva.217.1554384963035; 
	Thu, 04 Apr 2019 06:36:03 -0700 (PDT)
MIME-Version: 1.0
From: Matteo Facchinetti <matteo.facchinetti@sirius-es.it>
Date: Thu, 4 Apr 2019 15:35:52 +0200
Message-ID: <CAAjAsixRKTj9pt1gSC5cT149Y4Kgy5WYxjLmWRU9z9LhY-2-ww@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: require and image.bbappend
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
X-List-Received-Date: Thu, 04 Apr 2019 13:36:05 -0000
Content-Type: multipart/alternative; boundary="00000000000091100a0585b4732e"

--00000000000091100a0585b4732e
Content-Type: text/plain; charset="UTF-8"

Hi,

I encountered a problem when try to add packages in my image recipe, but I
don't understernd if I wrong something or I have to do it in another way.

In detail, in my common_layer there are:
   - image_base.bb : yocto base image
   - image_with_graphicsupport.bb : where include image_base.bb (require
image_base.bb)

Now, in my BSP layer, I want to add some packages to the image_base.bb, so
I create here the image_base.bbappend file.
But when I try to compile image_with_graphicsupport.bb the result is not
how expected.
Image_with_graphicsupport.bb doesn't add packages contained in
image_base.bbappend but only the packages contained in image_base.bb.

Is true that when include an image to another with require statement, you
can't extend the base image with a bbappend? or I wrong something else?

Regards,

Matteo Facchinetti,
Sirius Electronic Systems

--00000000000091100a0585b4732e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I encou=
ntered a problem when try to add packages in my image recipe, but I don&#39=
;t understernd if I wrong something or I have to do it in another way.</div=
><div><br></div><div>In detail, in my common_layer there are:</div><div>=C2=
=A0 =C2=A0- <a href=3D"http://image_base.bb">image_base.bb</a> : yocto base=
 image=C2=A0</div><div>=C2=A0 =C2=A0- <a href=3D"http://image_with_graphics=
upport.bb">image_with_graphicsupport.bb</a> : where include <a href=3D"http=
://image_base.bb">image_base.bb</a> (require <a href=3D"http://image_base.b=
b">image_base.bb</a>)</div><div><br></div><div>Now, in my BSP layer, I want=
 to add some packages to the <a href=3D"http://image_base.bb">image_base.bb=
</a>, so I create here the image_base.bbappend file.</div><div>But when I t=
ry to compile <a href=3D"http://image_with_graphicsupport.bb">image_with_gr=
aphicsupport.bb</a> the result is not how expected.</div><div>Image_with_gr=
aphicsupport.bb doesn&#39;t add packages contained in image_base.bbappend b=
ut only the packages contained in <a href=3D"http://image_base.bb">image_ba=
se.bb</a>.</div><div><br></div><div>Is true that when include an image to a=
nother with require statement, you can&#39;t extend the base image with a b=
bappend? or I wrong something else?</div><div><br></div><div>Regards,</div>=
<div><br></div><div>Matteo Facchinetti,</div><div>Sirius Electronic Systems=
</div></div></div>

--00000000000091100a0585b4732e--
