Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F829E00CBA; Thu,  7 Sep 2017 00:37:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88B41E00CAA
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 00:37:34 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id i198so1869357wmf.0
	for <yocto@yoctoproject.org>; Thu, 07 Sep 2017 00:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=nnZyrq7V0jatQDfGulccFgpL6kL/hDQ9j6dNCl+aIlA=;
	b=eK/v/4cwy8BpzEx1EnjFXCO+oLC+DkU7e7z9aW6A4VWg7/4EqyS9v40a56oacjn7v+
	33tJ4ED3Ii5wXg5x+w/J90+9itkf3mdKYOQuCdNDCzOLLwg3BU/1v8XQHhKGRFIONfmE
	o4ZofrMkz/ktEkgN7/ZCoCjxvJDg6Awv7svv5LYSuVcK/hMesDViwy3QKaBgKnCUWAsc
	mgfx/uusUXUEDSB4vW3Tmc0cnFfuf4ETaH8DmDwL8NmqSxkMa9FhoUcRYlENIkHtMSJ2
	Vwc2PV8DIm3zFqA3JFkG10ScJj4+br5fqr4DNWT0LGSUimUIIgnC17eUplwe6Hyj5cT7
	snXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nnZyrq7V0jatQDfGulccFgpL6kL/hDQ9j6dNCl+aIlA=;
	b=PdwA1e2Vs0DkdWUmtZe43eC/UTLuU8fEHLS7QFXBbWseV4aBVEO4nL/I+Rsqtn/zZM
	kDhz8/dtpq8qHCou9QIyHUAKgHLJn8C0kfLP7BrPoQYTSI3LLU8OtYsDC9MVvGhxB3F/
	Qw3tqPROTw1KcA+3x35TmqK1Ibv+/YPIn3KYE7MD3DeWeu+EruKpXT1pUg8cIxJj3nmK
	mKQj56JpOWT45sD2E4JcV0Auk2Kjxm39LQt8deO+qBClYfw6OKQ3UwHpV+cE9gcHTN+k
	fzmAoXEA4s4xwdFjcRWB3GE1zV6RUsDtfpC6gpgqk9f7COKrmPLBJBIU/v4udTqbGtL4
	VpFA==
X-Gm-Message-State: AHPjjUhOyXqKvS9tyE7gLYoi7Se3paXd4aCwq0EsEL84ayPTBS5EtyBs
	5JEtSDpHbEQtoiG25QW1zsPoL94rgT22
X-Google-Smtp-Source: ADKCNb7Mj5naGwhiLkt6nQ0lsqLVyef7Y3ld1FRwCwtQ9YyFvkhgDYG4da/kExjqi/buDpVDqzuZnJLDQOLyPr4wlx0=
X-Received: by 10.28.218.132 with SMTP id r126mr1432410wmg.14.1504769852896;
	Thu, 07 Sep 2017 00:37:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.218.197 with HTTP; Thu, 7 Sep 2017 00:37:32 -0700 (PDT)
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 7 Sep 2017 09:37:32 +0200
Message-ID: <CAGAf8Lype6p4Dqzab9O0sGfEUhzYUYczjrua49o80baw_OYvpA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: The basehash value changed from...
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
X-List-Received-Date: Thu, 07 Sep 2017 07:37:35 -0000
Content-Type: multipart/alternative; boundary="001a1145b66a8d2b6b0558948851"

--001a1145b66a8d2b6b0558948851
Content-Type: text/plain; charset="UTF-8"

While re-compiling the whole YOCTO load for freescale i.MX6, where I have
added Qt5 layers (and it failed many times, so I needed to do some tricks
there), I encounter the following warning (in *ORANGE*) and error (in *RED*)
while finishing the build:

*WARNING: Duplicate inclusion for
/home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-toradex-bsp-common/conf/tdx_version.conf
in
/home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-toradex-demos/recipes-images/images/tdx-image-fstype.inc*
*ERROR: When reparsing
/home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-toradex-demos/recipes-images/images/angstrom-lxde-image.bb.do_image_teziimg,
the basehash value changed from b7b4f312b8b657bfdd068ebd8e2dd104 to
1e71714a9c01964cdc724c52290abee4. The metadata is not deterministic and
this needs to be fixed.*
NOTE: Tasks Summary: Attempted 7415 tasks of which 7394 didn't need to be
rerun and all succeeded.
NOTE: Writing buildhistory

It built (after all) complete deploy with all the images. I kind of get
what is going on here.

Question: how to rebuild the complete deploy/images NOT deleting tmp/? It
compiled overall (in two steps) > 10h. Do I need to touch some file?

Thank you,
Zoran

--001a1145b66a8d2b6b0558948851
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">While re-compiling the whole YOCTO load for freescale i.MX=
6, where I have added Qt5 layers (and it failed many times, so I needed to =
do some tricks there), I encounter the following warning (in <span style=3D=
"color:rgb(255,153,0)"><b>ORANGE</b></span>) and error (in <span style=3D"c=
olor:rgb(255,0,0)"><b>RED</b></span>) while finishing the build:<br><div><b=
r><span style=3D"color:rgb(255,153,0)"><b>WARNING: Duplicate inclusion for =
/home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-toradex-bsp-co=
mmon/conf/tdx_version.conf in /home/user/toradex/Qt5-plus-x11/oe-core/build=
/../layers/meta-toradex-demos/recipes-images/images/tdx-image-fstype.inc</b=
></span><br><span style=3D"color:rgb(255,0,0)"><b>ERROR: When reparsing /ho=
me/user/toradex/Qt5-plus-x11/oe-core/build/../layers/meta-toradex-demos/rec=
ipes-images/images/angstrom-lxde-image.bb.do_image_teziimg, the basehash va=
lue changed from b7b4f312b8b657bfdd068ebd8e2dd104 to 1e71714a9c01964cdc724c=
52290abee4. The metadata is not deterministic and this needs to be fixed.</=
b></span><br>NOTE: Tasks Summary: Attempted 7415 tasks of which 7394 didn&#=
39;t need to be rerun and all succeeded.<br>NOTE: Writing buildhistory</div=
><div><br></div><div>It built (after all) complete deploy with all the imag=
es. I kind of get what is going on here.</div><div><br></div><div>Question:=
 how to rebuild the complete deploy/images NOT deleting tmp/? It compiled o=
verall (in two steps) &gt; 10h. Do I need to touch some file?</div><div><br=
></div><div>Thank you,</div><div>Zoran</div><div><br></div></div>

--001a1145b66a8d2b6b0558948851--
