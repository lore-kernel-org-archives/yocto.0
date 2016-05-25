Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3182E00D18; Wed, 25 May 2016 08:07:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16119E00D11
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 08:07:38 -0700 (PDT)
Received: by mail-lf0-f42.google.com with SMTP id e131so19536011lfb.0
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 08:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=LdrdWxijVefF6njsgqvzWGd1emQDy7oVOsHIZ5HKxeQ=;
	b=G6om2Nc1GOze+lpZUGqRntadkTPVcX3jIYlp8jgLGpaiHbeOZTC+1aOAvh5juCXa6L
	LEYZ2OwkszHlaYEH0IiLWWJeOV8jM4eFIapYACIepVTP6pQ0GwvilwHw7DtCo1qzkw6Q
	ybJhOOzgcPCeDm5PY/V99FewbG5TgcI6IiFecxzKY/pEnHGTIowB1UyiY00VmHjjnxKa
	0ZbFYqx7MIG6k07qB39bVF9a7DgNl3B1HgKUt4lTiWkfGJOeFZhzimq9Lurk0h7SWeET
	chIOdJl6UzFpRHv0k5waqV3UZbrbc09L/i16vSWBT4xTj34ko5sSrSrgx7WeLofCCaQ2
	STtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=LdrdWxijVefF6njsgqvzWGd1emQDy7oVOsHIZ5HKxeQ=;
	b=PwG+/ZrfYN3nRZvDEPtXlMSS178hOlKxbKMVG4DOgd94f/ozCrQQDSTFuRQSA/RdJp
	bUfJ3gOVomZ9F8+4iNRsxjkTjd0EMbQiMzAy07PhiKtGMlfMenCh2AISmtTWb0GdNZrF
	O1IZyxIYWjd0jn3ZESXzviPEsedOP8NeUpAZZJOC2x5PwCIz4QEqP4bNLekDx6JmWqIR
	pTioTdxudazIq8xKhjwI46D41stQ3yDenPbbEAwwF8XF0ZkwSyGSR4W7ifeZpekwh6oW
	009mJavU73vjLU+iZOjN2d/gOy8yMxCyG2furUqxcpARE3i2ZqLm7D1hjrVJAfaJLahx
	8M2g==
X-Gm-Message-State: ALyK8tIGB2r+7mqmXjF17vjcDD02jjze4lvs8OICadqqxhvnRBrZWrdIlbWs6by9T9soE48CjsQygdxI+maoiA==
MIME-Version: 1.0
X-Received: by 10.25.145.198 with SMTP id t189mr1088558lfd.157.1464188857229; 
	Wed, 25 May 2016 08:07:37 -0700 (PDT)
Received: by 10.25.210.129 with HTTP; Wed, 25 May 2016 08:07:37 -0700 (PDT)
Date: Wed, 25 May 2016 16:07:37 +0100
Message-ID: <CABatt_w=BzX5MUg45tjWu+fRqZUr0r2QoduV3fiecfSsvoCw+w@mail.gmail.com>
From: Martin Townsend <mtownsend1973@gmail.com>
To: yocto@yoctoproject.org
Subject: mount bind /var/lib and package management
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
X-List-Received-Date: Wed, 25 May 2016 15:07:40 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

When using a read only rootfs it mount --binds /var/lib into
/var/volatile/lib which lives in tmpfs and makes sense.  The problem
is that I use dpkg but I'm assuming other package management tools use
/var/lib as their admin dir.

Wouldn't this break package updates as the dpkg database files etc
will then be updated in tmpfs so a power cycle would means the changes
are lost? Or am I missing something?

I tried to mount bind all directories except dpkg which I managed to
get working but other systemd services failed as they expected
/var/lib to be writeable (the service that creates /var/lib/machines).
I suppose I could alter this to remount / rw first but gave up at this
point.

The next thing I tried was to use a new admindir for dpkg, ie
/lib/dpkg which I have working but I had to hack a lot of files
changing /var/lib to /lib including files for apt-get native.  I'm not
confident that I've got them all.

Is there another solution I haven't thought of?

Thanks in advance,
Martin.

