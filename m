Return-Path: <mont3z.claro5@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48651E00A6D; Fri, 15 Jul 2016 09:49:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mont3z.claro5[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D8C7E00A6D
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 09:49:23 -0700 (PDT)
Received: by mail-yw0-f174.google.com with SMTP id w127so107703968ywf.3
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 09:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=3hNgafrj1lCkfX7lhlBlDR3SCLs4JwYa31uHfLaa9xk=;
	b=P/K1E4TB7BhJBwi9CN5HXL2qUJRFZl5H8T4FrS1KitFpKtrD45lPzk5yUhNvC45GuV
	0entlAiWxBQgqcjZJwir53SqkmsvWC1R2CnZrahUOmhxeqUxLthNNWz8cS8mBi39KXbg
	Nwtp3kbMSrt1yn4Shp/tZZGSdWsSeCS0sPYiWbBNdFXScJPB2G3NYfqNQnH/TMJy1tpy
	aIVdljebRuI96DYbOlkeP9qhJK2sMBzvKXlLokyay9zc7q3UQz+gOBAk7YMudXsyJDYq
	Tn0+LeUKwxMzSXluJcSv1Z/3lkgNzcIkudHtbMX4BQ5TsQWT4aT7aGEJnMDyMcdIQzk0
	KNPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3hNgafrj1lCkfX7lhlBlDR3SCLs4JwYa31uHfLaa9xk=;
	b=JqLY/sS9ym9reTbf44bV655UJ5iwseENgNKSMZaNl1J6UNLwI1GDKUFpvGxjaR+NbJ
	ON8J5bONOah0z7JJku8EaFdJW0BhPGwceHMZdHVOEqsyOR8BXeNJ9F5jacKttGhvdlm0
	L6qp2jU60IQ1HgkZG7mla7ZJvmxCSoOQ0TMtYXRHqdz3nVRQFuEMXkvhw2obBbjsSet6
	3DYsHfn3Z9L1okFdhQEunW0HdEKrrHvvk0AY28dQZaxjkXenTtYiO4swzstphOwZ6whg
	2Wx5B0Pbas8SJqqgy6D3nm/c8+AqKxZz0CouYF9vB86Fvi2+4FWJL48vTtBXuYQFljrw
	gwDg==
X-Gm-Message-State: ALyK8tJW9M4qP6SbgyvWuHO5YpDV1mhoqdrdyhg35aZ5lK+FJdK2A+YfgEn5ht943XFTpkUNSZO3GL4A+HIJdA==
X-Received: by 10.37.87.11 with SMTP id l11mr13826383ybb.31.1468601362354;
	Fri, 15 Jul 2016 09:49:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.132.150 with HTTP; Fri, 15 Jul 2016 09:49:21 -0700 (PDT)
From: Mont3z Claros <mont3z.claro5@gmail.com>
Date: Fri, 15 Jul 2016 09:49:21 -0700
Message-ID: <CAJ70iBRUvmB2HP8kxNiQZUYOz2=jE4DeRgOfsMuyt_F5L_r91A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Development of stage recipe
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
X-List-Received-Date: Fri, 15 Jul 2016 16:49:24 -0000
Content-Type: multipart/alternative; boundary=001a113e7e5c85212b0537af667b

--001a113e7e5c85212b0537af667b
Content-Type: text/plain; charset=UTF-8

Hi All,

I'm making a recipe to generate a component called ARM Trusted Firmware.
This component is not to be deployed and it'll be used by u-boot recipe to
generate a u-boot image.

I was thinking on using STAGING_LOADER_DIR but it seems that  this is
deprecated. I would like to ask what is the advised directory for such
binary file which is an intermediate product?

I also would like to confirm that I should use:

FILES_${PN} = ""
ALLOW_EMPTY_${PN} = "1"

to avoid this package from being deployed.

Regards,
Montez

--001a113e7e5c85212b0537af667b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi All,<br><br></div>I&#39;m=
 making a recipe to generate a component called ARM Trusted Firmware. This =
component is not to be deployed and it&#39;ll be used by u-boot recipe to g=
enerate a u-boot image.<br><br></div>I was thinking on using STAGING_LOADER=
_DIR but it seems that=C2=A0 this is deprecated. I would like to ask what i=
s the advised directory for such binary file which is an intermediate produ=
ct?<br><br></div>I also would like to confirm that I should use:<br><br>FIL=
ES_${PN} =3D &quot;&quot;<br>ALLOW_EMPTY_${PN} =3D &quot;1&quot;<br><br></d=
iv>to avoid this package from being deployed.<br><br></div>Regards,<br></di=
v>Montez<br><br><div><div><div><br></div></div></div></div>

--001a113e7e5c85212b0537af667b--
