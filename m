Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF4F1E00E0C; Tue, 23 Aug 2016 14:49:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3844DE00DFE
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 14:49:43 -0700 (PDT)
Received: by mail-yw0-f170.google.com with SMTP id r9so80916758ywg.0
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 14:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=+KxUTTfQBt80osgttNTrRlEgVh5m7iOFog2NpHUdrQc=;
	b=p4aDUEFSri+UnXoK9JOyfWpK//IddmMm2oOwG+24D/BufHjkdrCL5ZcyLy+KBET5nj
	EjfYSO7X0bLvRdNErU9Hl82fSRhXIIt3FJ4dtcjslDQ3GN3AlnkhEzbnHg5+maaqS4mE
	yhet73GMGWj6zg+nkk/kF4vqYDLH4KNV6NLIAc8QSvJKR9ZgPX5U+juJucr5Qx0pKpWr
	vpF9muKfX79wsn6anQz08Zikg+Bvejz6l5PN+49p49d0LPf37CKLblq/5x/yIlLidTwx
	SUQQl2oJcgor8eMMHILk/93HwPZ1Q0KQVnhWPVzJLDj6Sv0AGpPpMdWrz5nfIeBJPefY
	tv6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=+KxUTTfQBt80osgttNTrRlEgVh5m7iOFog2NpHUdrQc=;
	b=GXQh2cO+GvtytyeJDMyVAZZLfEsYmMPzK5n6MGcvJT3QIXK1qVaei7Yt/Y7/ho0+58
	XnV0LNGd5m4ao03ZCP2pGDZxrfXcPb+wlj0BrsmtS/abejpmof5nvAqn8vUyWDGDOdtN
	di212Pfw0EUad7yGjQ5gxh2IL6GCy6xbQjovyQQvehOOxALYhCmsvVnNFZIDigXkYC0E
	6mPXKLzRNrZGGxnp3YCTZ6+1fnmQn98TmsVRvZK/i9h1s6ObWFHEGUPgsLJUh4SkWNJj
	4h8hMOprUyHLxOvvfZrVIWtbiNiUODqWqFOBCLC7Lf27t1UZAesI0IuVsQ7vXP0hNv//
	Du2g==
X-Gm-Message-State: AEkoousyP3qOLZYcE9nZ65NmxZnR3SgM5oSTDBr9F67ChRcf99WKiCNDQmFPEXCziQq0aG+toLleQ7MVv8AhIw==
X-Received: by 10.129.179.135 with SMTP id r129mr14063467ywh.156.1471988982919;
	Tue, 23 Aug 2016 14:49:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.86.70 with HTTP; Tue, 23 Aug 2016 14:49:42 -0700 (PDT)
From: Michael Habibi <mikehabibi@gmail.com>
Date: Tue, 23 Aug 2016 16:49:42 -0500
Message-ID: <CAOsp8o8jNrRhcYp=vWAve+v+s1Mi2ApQD1zmVot-iD+0uVnbjg@mail.gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Trying to run toaster off master, running into issues w/ django
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
X-List-Received-Date: Tue, 23 Aug 2016 21:49:44 -0000
Content-Type: text/plain; charset=UTF-8

I am running the master branch and trying to run toaster to play
around with the web interface (already successfully completed a build
w/o toaster setup).

I followed the instructions in the documentation. I created a
virtualenv, sourced/activated my virtualenv, and while under venv I
did a pip install. It believes Django is installed, but I cannot run
toaster. See below:

(venv)habibim@bvm-poc8:/projects/yocto-git/build$ pip install -r
/projects/yocto-git/bitbake/toaster-requirements.txt
Requirement already satisfied (use --upgrade to upgrade):
Django>1.8,<1.9 in /home/habibim/venv/lib/python2.7/site-packages
(from -r /projects/yocto-git/bitbake/toaster-requirements.txt (line
1))
Requirement already satisfied (use --upgrade to upgrade):
beautifulsoup4>=4.4.0 in
/home/habibim/venv/lib/python2.7/site-packages (from -r
/projects/yocto-git/bitbake/toaster-requirements.txt (line 2))
Requirement already satisfied (use --upgrade to upgrade): pytz in
/home/habibim/venv/lib/python2.7/site-packages (from -r
/projects/yocto-git/bitbake/toaster-requirements.txt (line 3))
Cleaning up...
(venv)habibim@bvm-poc8:/projects/yocto-git/build$ python --version
Python 2.7.6

...


(venv)habibim@bvm-poc8:/projects/yocto-git$ source oe-init-build-env

### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
    core-image-minimal
    core-image-sato
    meta-toolchain
    meta-ide-support

You can also run generated qemu images with a command like 'runqemu qemux86'
(venv)habibim@bvm-poc8:/projects/yocto-git/build$ source ../bitbake/bin/toaster
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ImportError: No module named 'django'
This program needs Django>1.8,<1.9
Please install with pip install -r
/projects/yocto-git/bitbake/toaster-requirements.txt

Am I going insane? I did some google-fu and people recommended
cleaning up manage.py, but those changes did not seem to affect this
outcome.

