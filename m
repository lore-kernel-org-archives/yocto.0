Return-Path: <loobinhooi2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EBB9E0078A; Mon,  1 Sep 2014 19:38:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (loobinhooi2[at]gmail.com)
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
	*      [209.85.215.48 listed in list.dnswl.org]
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31432E0074B
	for <yocto@yoctoproject.org>; Mon,  1 Sep 2014 19:38:18 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id gl10so7026825lab.35
	for <yocto@yoctoproject.org>; Mon, 01 Sep 2014 19:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=xYoU24Hvvs7dss38u7yHvpRsYl2NlCuDCaiDZK6chyc=;
	b=KyVnO+vKOSzZKBrfowIj6JAiA/QxIIUkZt+ScQ/GjFspK5N37EKBY98omwYhuASxtC
	gEXi0XrXO98XeMGko1pNxNQ3dAOJewnDwRs0VOY/K28dhh0HxdSmxHYbRDA4blJMLy1H
	d/IAS1UWnoJN/OeJ/Q6N9GY1SrGFyoevTKlof0WF9hOtopuzYvmthn33IWg6tj7VKK0v
	BvS4eQTklF4FIKOyQymKvhxvouvk/0PHdNIAf2x+XDHaDptVEYXa4gszr6wf8ZmzaoIb
	R2Lx6SgWoOvLTYxHL3AgrPtr6NYmXKrenEEUeQS9woeG2KPEzK+h1PiECELSEaWIUU0P
	mqHA==
MIME-Version: 1.0
X-Received: by 10.152.161.225 with SMTP id xv1mr32525920lab.59.1409625496477; 
	Mon, 01 Sep 2014 19:38:16 -0700 (PDT)
Received: by 10.25.154.132 with HTTP; Mon, 1 Sep 2014 19:38:16 -0700 (PDT)
Date: Tue, 2 Sep 2014 10:38:16 +0800
Message-ID: <CAMVCtgxPU=uRT1m8UjV=htn4ktoWK=mTO2PPyv6t3=ZRzk8vVw@mail.gmail.com>
From: Loo Bin Hooi <loobinhooi2@gmail.com>
To: yocto@yoctoproject.org
Subject: IMAGE_INSTALL += chkconfig failed on 'undefined reference to libintl_gettext'
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
X-List-Received-Date: Tue, 02 Sep 2014 02:38:22 -0000
Content-Type: multipart/alternative; boundary=001a113467f4fcd80905020c0200

--001a113467f4fcd80905020c0200
Content-Type: text/plain; charset=UTF-8

Hi, I'm trying to add chkconfig into a yocto image on uclibc target.
I've read that we need to install gettext and libtools on build host, I
followed but it does not help.
Also I thought adding in gettext in image-full.bb could help, but the error
still prompt out.
Error Message similar to:
tmp/work/i586-poky-linux-uclibc/chkconfig/1.3.58-r7/chkconfig-1.3.58/alternatives.c:63:
undefined reference to `libintl_gettext'

I appreciate any help given.
Thanks.

-- 
Regards,
Loo Bin Hooi (Robin)

--001a113467f4fcd80905020c0200
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, I&#39;m trying to add chkconfig into a yocto image on =
uclibc target.<div>I&#39;ve read that we need to install gettext and libtoo=
ls on build host, I followed but it does not help.</div><div><div>Also I th=
ought adding in gettext in <a href=3D"http://image-full.bb">image-full.bb</=
a> could help, but the error still prompt out.</div>
<div>Error Message similar to:=C2=A0</div><div><div>tmp/work/i586-poky-linu=
x-uclibc/chkconfig/1.3.58-r7/chkconfig-1.3.58/alternatives.c:63: undefined =
reference to `libintl_gettext&#39;</div></div><div><br></div><div>I appreci=
ate any help given.</div>
<div>Thanks.</div><div><br></div>-- <br><div>Regards,</div><div>Loo Bin Hoo=
i (Robin)</div>
</div></div>

--001a113467f4fcd80905020c0200--
