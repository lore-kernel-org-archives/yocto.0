Return-Path: <mtl1nuxd3v@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CA58E008B4; Wed, 16 Mar 2016 01:56:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtl1nuxd3v[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1AFDE00833
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 01:56:16 -0700 (PDT)
Received: by mail-yw0-f170.google.com with SMTP id h129so53705549ywb.1
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 01:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=6e1Meqxzzc9MeFEuLX2UHMFRMGcPwTI/3HtXP19fhV4=;
	b=u31C5GSSyMCe6/s4Rzg9Fi2ia1LigLIhcMGD18YaRoZbh0yugSGLaDrhfbnGQwOqbt
	9Y4CQReEONiKEKSnFayKgx8ZC4HPphYX491gr9iAfV6RGzrMi6sjJifLxlWbqVSrbymZ
	LyLY9UFkJdGcAf4kKJJSku5dFPbEqvlU1BgNj7exzKs0fMhUyHbUTUCS66nJ4O67wYq9
	cXPH4tSk9PFuhJFnPc8DX+LMgd7jAKiCFc7qn/9uWvUoyu53FV8Bb/2QFKo9VAl6mnk9
	yakFbIrmTyp3lcgW7QiQlQVu9+A1EdS99xJIhNdLBjuaDcw8gJxe4cvipiXIBVH2RKd2
	pJtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=6e1Meqxzzc9MeFEuLX2UHMFRMGcPwTI/3HtXP19fhV4=;
	b=XNeCqvtLNQexg4Zm9BIcwSYk6eCTWy2Rz74QZac/2tsxhsp33aW5IJ4IEYOTO051dY
	faNb/vIiiDw82mO0SNCKbllrYNQ5WYKK0qKg61SHMpswE/Q01FhfqNabI6tzyFmLbVHp
	MY0hn4RdoqwD356UcGRf0GAq+FB9EVPj4rCj2Zk8Zm9gdnnYLzXDDb02P5ACcaRBAOvt
	/yGKcf1Qdf8uZbqp7R9n1A1Rwr8zcd4uDC/lV6IZlvcQx58Ez+ERmtb/IH1SVrufN0BB
	0BD4Z/FzsfhSqZE57bKUa2pC6RF8scJFKNdg8eTeGwxq11mw0+/9m9UdPf4ZeIAnSkMM
	dl/Q==
X-Gm-Message-State: AD7BkJI34Lc2Eu6hhZsT9PC7qmr1AZshzYMXMUMl9e6EM5GE3UploxLZgGMdTn/g/0Q45U5kA1KSl+LI2q6BcA==
MIME-Version: 1.0
X-Received: by 10.37.96.65 with SMTP id u62mr1094658ybb.78.1458118575580; Wed,
	16 Mar 2016 01:56:15 -0700 (PDT)
Received: by 10.37.40.2 with HTTP; Wed, 16 Mar 2016 01:56:15 -0700 (PDT)
Date: Wed, 16 Mar 2016 08:56:15 +0000
Message-ID: <CALf_N3bObyR-EPgVLtjS+NMmYETQsavs+DT45gxhF8CT1m1-yw@mail.gmail.com>
From: Mark T <mtl1nuxd3v@gmail.com>
To: yocto@yoctoproject.org
Subject: Conditional compile for package in layer.conf for Qemu
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
X-List-Received-Date: Wed, 16 Mar 2016 08:56:20 -0000
Content-Type: multipart/alternative; boundary=001a1143ecbebcebf4052e26af5d

--001a1143ecbebcebf4052e26af5d
Content-Type: text/plain; charset=UTF-8

Hi,

Is it possible to  omit packages when building for Qemu ?

I have a layer.conf file with various packages added via

IMAGE_INSTALL_append += "package_a"
IMAGE_INSTALL_append += "package_b"

I'd like to be able to do the following

IMAGE_INSTALL_append += "package_a"
if ( not qemu )
IMAGE_INSTALL_append += "package_b"
endif

How can I do this? can I insert python here ? what environment variables
should i be checking and what are thier values.

Thanks,
Mark

--001a1143ecbebcebf4052e26af5d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,<br><br></div>Is it possible to=C2=
=A0 omit packages when building for Qemu ?<br><br></div>I have a layer.conf=
 file with various packages added via <br><br>IMAGE_INSTALL_append +=3D &qu=
ot;package_a&quot;<br>IMAGE_INSTALL_append +=3D &quot;package_b&quot;<br><b=
r></div>I&#39;d like to be able to do the following<br><br>IMAGE_INSTALL_ap=
pend +=3D &quot;package_a&quot;<br>if ( not qemu )<br>IMAGE_INSTALL_append =
+=3D &quot;package_b&quot;<br></div>endif <br><div><div><br></div><div>How =
can I do this? can I insert python here ? what environment variables should=
 i be checking and what are thier values.<br><br></div><div>Thanks,<br></di=
v><div>Mark<br></div><div><br></div></div></div>

--001a1143ecbebcebf4052e26af5d--
