Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA61FE00C62; Thu, 10 Sep 2015 07:09:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25FF8E00B5D
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 07:09:08 -0700 (PDT)
Received: by vkfp126 with SMTP id p126so9635373vkf.3
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 07:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=j5A4tbShE9WbQG9fiMR0/fR+1IgQxJRQWjtE+mkuKRc=;
	b=0SVd7qHjjRs3NAsil/h6yBJrKB9Q144mm3+hxi+7yLsInCwCbnlYasw3I7rS7vktm6
	sPLbq5lW7a/WthCN2hlsF56DAjeZHuyyrjBkrAT1S2BtrO6SDKcumL/anXXzcMHP3RpU
	WwLuuD8hvwapaNnonXypPV52NyzWP2RZ5VmJzgl3L5O4DuVP5WNdCDfV6MtPsubtqtRi
	OAYZu7AqHMNSvaaJwaV/XOFdZJu1gX8y5nQCd8dFG57tikDHsfTvgReTj7W88iBpwWOI
	WFb6o0zVUzvLKTQjfXCGTbOcKkJCp5fuU6cgjDsd9BFb0mhoMRH8+lTZmv54HSzjrh3J
	o+Ug==
MIME-Version: 1.0
X-Received: by 10.31.190.148 with SMTP id o142mr1299789vkf.67.1441894147954;
	Thu, 10 Sep 2015 07:09:07 -0700 (PDT)
Received: by 10.31.179.12 with HTTP; Thu, 10 Sep 2015 07:09:07 -0700 (PDT)
Date: Thu, 10 Sep 2015 19:39:07 +0530
Message-ID: <CALLyC8Rw+cJk+cUBrVA+QttAPh+otCZQoQjhR1pSZ=EzzGGY_g@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: yocto@yoctoproject.org
Subject: dropbear is working after including in IMAGE_FEATURES
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
X-List-Received-Date: Thu, 10 Sep 2015 14:09:11 -0000
Content-Type: multipart/alternative; boundary=001a11439d787e20c1051f6524b7

--001a11439d787e20c1051f6524b7
Content-Type: text/plain; charset=UTF-8

Hi,
      I have included IMAGE_FEATURES += "ssh-server-dropbear" in my recipe
image. and created the image.
But after flashing the image i was not able to connect to target from my
host machine. but target to host is working fine. Can any one tell me why
it is not working. Is there any package need to add?


Thanks and Regards
         vivek

--001a11439d787e20c1051f6524b7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0 =C2=A0 I have included=C2=A0IMAGE_FE=
ATURES +=3D &quot;ssh-server-dropbear&quot; in my recipe image. and created=
 the image.</div><div>But after flashing the image i was not able to connec=
t to target from my host machine. but target to host is working fine. Can a=
ny one tell me why it is not working. Is there any package need to add?</di=
v><div><br></div><div><br></div><div>Thanks and Regards</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0vivek</div><div><br></div></div>

--001a11439d787e20c1051f6524b7--
