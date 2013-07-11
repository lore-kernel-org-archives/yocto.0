Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69940E013D6
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 09:25:28 -0700 (PDT)
Received: by mail-ee0-f52.google.com with SMTP id c50so5668057eek.39
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 09:25:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=EbM79WoIGrCGGmklXjLr3vpZqLLda9N5hHoO5Fbfl58=;
	b=oYyZeSO+YpSU3d6jPj+HE0UUvkDskInCiv9EVJzZYeYDs3BFXljGI31wDKpWdNXUfZ
	yjkmEWLPU3Lmq9lMfMWGmrJOGRyxT9GUX92c8QrdcTuB9L77JFkj/h4sjsfKHUgjTaYP
	m9KqsauLM3I+XNTm7uBqkeOw12a+tugAml78mM94XSffEDwY4gQ85YcieFsdBhwJ4JNb
	gXAkGUq7m+ir+E4kAHEXcv0p35BM8wn2FI1su9ozayt5t+QSnspcGy6SxypNRRxMeKHx
	fPaxZUxXS63Cr8fFxnrOKWNiz8TVtfZfynhjB+/1R03Hhyb9OaATmdwD+EmQZe8Mla6M
	sk3Q==
MIME-Version: 1.0
X-Received: by 10.14.199.134 with SMTP id x6mr42700303een.114.1373559927393;
	Thu, 11 Jul 2013 09:25:27 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Thu, 11 Jul 2013 09:25:27 -0700 (PDT)
Date: Thu, 11 Jul 2013 17:25:27 +0100
Message-ID: <CALmOhgmsZUWEv1pv=D=ZEm=2RzXRVw4E6mwC0iXEMWt_+_5zFA@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: clarson@kergoth.com, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQkDz79HnOTEJ9hy11/3iNUmU7BkB/0hRnX/rGc+fMKsNeIBsLvbUp76cOZdccBBY65x7itG
Subject: bitbake-env
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
X-List-Received-Date: Thu, 11 Jul 2013 16:25:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

Has anyone tried using the bitbake-env utility lately?

On master I get:
$ bitbake-env
Traceback (most recent call last):
  File "/home/trevor/local/bin/bitbake-env", line 275, in <module>
    main(sys.argv[1:])
  File "/home/trevor/local/bin/bitbake-env", line 248, in main
    tinfoil = Tinfoil(output=sys.stderr)
  File "/home/trevor/local/bin/bitbake-env", line 172, in __init__
    self.config = bb.tinfoil.TinfoilConfig(parse_only=True)
AttributeError: 'module' object has no attribute 'TinfoilConfig'

but on dylan everything is okay.

