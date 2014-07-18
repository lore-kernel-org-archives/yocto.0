Return-Path: <sven.j.vos@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CE6BE006C4; Fri, 18 Jul 2014 01:56:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sven.j.vos[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.49 listed in list.dnswl.org]
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4703DE00563
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 01:56:02 -0700 (PDT)
Received: by mail-qa0-f49.google.com with SMTP id dc16so2767182qab.8
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 01:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Zto5DvFKXzTdd3aKx9FRRfstWECVYpZ7eGjkVxzfbyw=;
	b=XbIperpkbquA2odfAVP1yIUyZ4SaFDb1jSVxZOYjBfxEuzLc0GVLXuKp5wGSP9n3Ru
	lInV9eN73J2syercxq2gK+LQOAZyhl8iXrwGgYEi9DsxofqmrpGRRp04aayYb03rC+rj
	O195+zMLq8lBGdYrjZAkT7RnEYYLtudiwaboOZhklNP6RDO9RdFZ5sPY1swYOecGHylA
	sET7SyrQbY8WGKsBobqL1lo1XcofD2M76/UuEMWhXM4FNXhenF+hoCqXQYQJJ4EiJRui
	LG6wt1i6J+kBhhbPg1WAeGNFgraVpETkkwOJJAvLPf5vcSZCryQBokCOHikXYexHrxy2
	kKjw==
MIME-Version: 1.0
X-Received: by 10.224.5.193 with SMTP id 1mr5289137qaw.89.1405673758166; Fri,
	18 Jul 2014 01:55:58 -0700 (PDT)
Received: by 10.140.102.11 with HTTP; Fri, 18 Jul 2014 01:55:58 -0700 (PDT)
Date: Fri, 18 Jul 2014 10:55:58 +0200
Message-ID: <CAMm0O_-EvDeOGUtsXZ8hv6mDp4yiG3=N7zkOibL2KtZXDs7OBA@mail.gmail.com>
From: Sven Vos <sven.j.vos@gmail.com>
To: "linux-yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Mailman-Approved-At: Fri, 18 Jul 2014 09:05:54 -0700
Subject: Media player for the Beaglebone Black
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
X-List-Received-Date: Fri, 18 Jul 2014 08:56:12 -0000
Content-Type: multipart/alternative; boundary=047d7b67745606967f04fe73edaa

--047d7b67745606967f04fe73edaa
Content-Type: text/plain; charset=UTF-8

Hello,

After trying to get the Gstreamer working, i found out i got a segmentation
fault. Already made a bug report about it, but i am wondering if a media
player already exist for the Beaglebone black in Yocto that supports MP4?

Thanks for your help,
Sven Vos

--047d7b67745606967f04fe73edaa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>After trying to get the Gstreame=
r working, i found out i got a segmentation fault. Already made a bug repor=
t about it, but i am wondering if a media player already exist for the Beag=
lebone black in Yocto that supports MP4?</div>
<div><br></div><div>Thanks for your help,</div><div>Sven Vos=C2=A0</div></d=
iv>

--047d7b67745606967f04fe73edaa--
