Return-Path: <chaconc@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38907E00E41; Thu, 28 Apr 2016 23:11:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chaconc[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15B62E00E3D
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 23:11:41 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id u185so114553443iod.3
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 23:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=yuUMYCnN0gn8aZcDPcpP4GsPUa9u5bkoTnxZsJheCio=;
	b=VCc/tu9Z/Qo5//uwSw74vrxualvENyknW8umisx2+miOQdBQV0l0QE09oyYTt9Cm2D
	mxYsn0zOsmjSpGVqiRv24kwHX0EM0lSrDIYNsukgU3Ljv4qWpjCvpsNuB5/QVdEx156X
	FrYAf+U20dD8gc78nkavJGO91hxkt7KAOFVXY5Y5cwAfu2bGZ4rmRkYChYFbhG8ZYzxo
	+EpCB5TtLF+NHOKNwu9PJuw2TS5YIjQ+eAOBd/HYgYIgL7/ffT6aknPOlfbtY3RP1uzp
	aD/XZU5dRCGSNuLZXBVwOFB5/wT7EMyBEvPVjNm1cIkGC0v1+uKJHrudO74MZtQmR6nn
	CukA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=yuUMYCnN0gn8aZcDPcpP4GsPUa9u5bkoTnxZsJheCio=;
	b=PnIEDeGYztqp1yHHNN5LdaiFEcw9cyR3QfzjUiEWZ60ZtONHwQ2Sc6jmAddN16YASN
	DCr7jhbYkrsuCZLxXiQrjaPWyXnj/50onDst1K6lg9wB/vzJ7C5CmO+hxq4e+m0nwGBN
	0SyM6/55qN6cI8eD5liKRERil0ihCT3NGYeczSlXcNtzaGqAXtcDN2cCTo3aLr9u0Vvc
	GLxK/dlkILymRkwR2+BaljWO7OzrY3qfLWXejE1lktRbkQDDy6Z9uNKVjm2Ibv7/91ze
	fAPzIEh1DKIV80rDTF91zJoEslKLTc2JtuGMuFQNlV91eNFo6ly3oqTkk/D2M9a79vzj
	Bx7w==
X-Gm-Message-State: AOPr4FW6AK86KzgLUlLUAaJZmP7hIFPg/EBmlmLGi0+zcMOwnZVhyQiq/BqITuvN+VfHs9xKWAvr32lHwdbEyA==
MIME-Version: 1.0
X-Received: by 10.107.20.80 with SMTP id 77mr25084062iou.152.1461910301132;
	Thu, 28 Apr 2016 23:11:41 -0700 (PDT)
Received: by 10.50.135.199 with HTTP; Thu, 28 Apr 2016 23:11:41 -0700 (PDT)
Date: Fri, 29 Apr 2016 00:11:41 -0600
Message-ID: <CAB1=ffMivTSBLQdXgTBS9tAjasFW44UfCT02uMP3xtwF0Sb92w@mail.gmail.com>
From: Carlos Chacon <chaconc@gmail.com>
To: yocto@yoctoproject.org
Subject: Changing File Permissions/Group
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
X-List-Received-Date: Fri, 29 Apr 2016 06:11:45 -0000
Content-Type: multipart/alternative; boundary=94eb2c0d585031522a05319984c6

--94eb2c0d585031522a05319984c6
Content-Type: text/plain; charset=UTF-8

Hi,

I have a file that is install inside /etc/. I want this file to be part of
a group I created using the "EXTRA_USERS_PARAMS" option.

Currently the file belongs to root and the group is root, but I wish when
my image is created to have that file belong to the group "config_editors".

What option can I use to modify the final permissions/groups for a file
that would be similar to EXTRA_USERS_PARAMS?

Thanks!
Carlos

--94eb2c0d585031522a05319984c6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I have a file that is install inside /etc/. I w=
ant this file to be part of a group I created using the &quot;EXTRA_USERS_P=
ARAMS&quot; option. <br><br>Currently the file belongs to root and the grou=
p is root, but I wish when my image is created to have that file belong to =
the group &quot;config_editors&quot;.<br><br>What option can I use to modif=
y the final permissions/groups for a file that would be similar to EXTRA_US=
ERS_PARAMS?<br><div><br></div><div>Thanks!</div><div>Carlos</div></div>

--94eb2c0d585031522a05319984c6--
