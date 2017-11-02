Return-Path: <jopoulin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AD7EE00AAF; Thu,  2 Nov 2017 09:43:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jopoulin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC88FE00928
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 09:43:18 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id z3so175756wme.5
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 09:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=QbUup7vGMGW1bqQAPQjTJje9VFCiRx1vIAxv/Y9mGy0=;
	b=oSy9Fb6qKjbc8IIf/zo3UBVvhoTBJvwuyM6ImZAkPa1hvM5EzdBK+M6i4bwFS/vQ1Y
	H95ZRh1J8lU1vHuGeQeNUNi0B/Mr20ulsYvXNdRQ1DnMdijjetpPPOd/MaQd9ohcIJlN
	j9P8A4sf4blT+WjZxffWtQpn1SsSt4QzP9PNaDndV5wkic8rXVVcGQitWwbVgm/rtscx
	0CxVHBm2Vv3Y4VqNPYPW0JDujB78FF5xXfbL5r9xKo8zLJ3DUuDBAf+PNQv3yooyU0Q+
	WDviIoBMaoLpXPf6vvRem9T/2gh7AYguYfQ36QEnGjVmbF0vjy8oUAyjX1+kytIP6HWm
	GwcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=QbUup7vGMGW1bqQAPQjTJje9VFCiRx1vIAxv/Y9mGy0=;
	b=j8mNv3Dk3DEVokaxywJIbnD/YN35GWyof2fjoXJdBJrygPjGUfvLN7y976b2jb2LYS
	H6kdMpjhKYcWE83KJayA7HaUcfBob/92JIs2b7uzCIP65FeG/nQBNypzW9PbVY+tFkDw
	Qip2jOLmh5C57zVivvSgNTvp9Xh8mCT+RkSnR1El19BAhgOqMFrZvJqHInNrFJxYthP/
	W9ph9KR3peOi5WyQ7xMsr6x37I3jMuuAShI2OvpqJNtIboWCNunjwKqmP1Y8GMm725NH
	As1GINcdAYJBaKBrVW/poOImW/N8WPONNS/xrvsixczDy0FsXq8w9JR6cAOyuirLnYMf
	dcig==
X-Gm-Message-State: AMCzsaXz05RpVmNN6TfSwbJZYY0Kzlzw/ft9FUQfRuVCuhWPHFtqJ6II
	QWAQdBHQyV5HotSVix5DR+oQoIHfiHtYsHawXGXxuQ==
X-Google-Smtp-Source: ABhQp+Sww3TqsAKo4OWMjCm0TN+8sedvbLFHbebS+oc+D1IMeitZi8Qpg/n4+HyVv7WiWq7s0eV+BAt5Ih48bbtGf5M=
X-Received: by 10.80.152.69 with SMTP id h5mr5082632edb.192.1509640997730;
	Thu, 02 Nov 2017 09:43:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.144.213 with HTTP; Thu, 2 Nov 2017 09:43:17 -0700 (PDT)
From: Jonathan Poulin <jopoulin@gmail.com>
Date: Thu, 2 Nov 2017 12:43:17 -0400
Message-ID: <CAGMz-a7Pc3QzcGgKjs+vhbPVGq5cBo8Y7GH8KbJM-0Jh5S-7Ng@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Customize SDKPATH
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
X-List-Received-Date: Thu, 02 Nov 2017 16:43:19 -0000
Content-Type: multipart/alternative; boundary="f403045c25d468849a055d02af9d"

--f403045c25d468849a055d02af9d
Content-Type: text/plain; charset="UTF-8"

Hello,

As we build different images for the same machine, I would like to
customize the SDKPATH to include the image name. This way our application
developers can install the different sdk related to each image.

To do that I firstly create my custom distro conf where I set the SDKPATH
this way:

SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}/${IMAGE_BASENAME}"

But it doesn't work because the populate_sdk task depend on many other
packages that also use the SDKPATH variable. IMAGE_BASENAME is define as
${PN} so all other package install sdk files in a different folder. (the
value of PN is different for each package).

Is there a way to set IMAGE_BASENAME to the image name used in the command
"bitbake -c populate_sdk <image_name>" in a way that all package recipe see
it?

thanks
Jonathan

--f403045c25d468849a055d02af9d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br><br>As we build different images for t=
he same machine, I would like to customize the SDKPATH to include the image=
 name. This way our application developers can install the different sdk re=
lated to each image.<br><br>To do that I firstly create my custom distro co=
nf where I set the SDKPATH this way:<br><br>SDKPATH =3D &quot;/opt/${DISTRO=
}/${SDK_VERSION}/${IMAGE_BASENAME}&quot;<br><br>But it doesn&#39;t work bec=
ause the populate_sdk task depend on many other packages that also use the =
SDKPATH variable. IMAGE_BASENAME is define as ${PN} so all other package in=
stall sdk files in a different folder. (the value of PN is different for ea=
ch package).<br><br>Is there a way to set IMAGE_BASENAME to the image name =
used in the command &quot;bitbake -c populate_sdk &lt;image_name&gt;&quot; =
in a way that all package recipe see it?<br><br></div>thanks<br></div>Jonat=
han<br></div>

--f403045c25d468849a055d02af9d--
