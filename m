Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61F7AE00D00; Sat,  6 Jul 2019 16:01:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.48 listed in list.dnswl.org]
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
	[209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA66EE00B8D
	for <yocto@yoctoproject.org>; Sat,  6 Jul 2019 16:01:17 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id g20so5604713ioc.12
	for <yocto@yoctoproject.org>; Sat, 06 Jul 2019 16:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ASjGotcUMx0cJpBxBCDgzc1myxOpbsXyHmiCMDOSweg=;
	b=OEBbCAwNFH4+H6MhCMBM3XJD2FbZDttKFh9zYRH1NRhSA+pkSVQTv09mWtGqAmiG9u
	NR+mYihpMxMz4EhnaZpSyRajblzxQVcjwQNWy7jMDCXX/Tc7KALjhN7N1D6GOdeasxZp
	Ip8QOpk/FA6ahbmLAO/cNf3NYH+HwEUfyc4eryyUhKg12Cu+SA9YWfwc/pSNg668LJ2H
	ToiJwFJSwmU23C/3jr4DxyMRmvxHGGAGVnTQ6DcPFziv1e9DIlg/ziQJ5IT76RClHVET
	PwTgcmf+uNgb+wOYvu7+Bcful6LT36j+JxYou4H1sKR/utUYTzwlyaAiijfsnjcoL0Hx
	jQXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ASjGotcUMx0cJpBxBCDgzc1myxOpbsXyHmiCMDOSweg=;
	b=RZ9aSuiUUixUK+O3Bf0bGwFO9+lp9G5YPhxjUNHaRqdoEWxUcB7RYBioApjfTUr6By
	rPQWdG0ok3jf5iZwOewLMU0lYPR6E5VWJYstLZ0Z4S+Dc+wSdthKdQLD2TZurtAgTRCA
	UtNV1Mx6b9iQYkH/rWKn/mXtBrb+FADsLtn18/y7DmKKVLkhFt9Xm1lLRa/+KFHI+my0
	ntNepaF4loIyzGdvpeFzzdLiVG03o/2I7ZbIMdxWlMwdNomnyVE6bj3sA619G1yE6uyM
	Z5uMpC0DJkfklU7PzbHe7kGczmj7A+qJ8HhqjG8wzWIPHmcyTmnODmDMGR94iXcWrGNf
	Fhyw==
X-Gm-Message-State: APjAAAWDxgNqo2WKM4u89na8I9QXitpYVRAZdlZxLi4Ae/PRlGL0iZ5E
	CGn8i7Av83QDVO1GlQj3Qhx7fJhokDnSXm9Tp9oFEJSG
X-Google-Smtp-Source: APXvYqxtXrDHCSn5AiRzrEArev8ExKqD4o4pexzT5A6hhlvnUPkmgaY+dQ1Yco5v/SCrVeLDHe5NoH//PbtN5k0FVDw=
X-Received: by 2002:a6b:3b03:: with SMTP id i3mr11264154ioa.302.1562454077099; 
	Sat, 06 Jul 2019 16:01:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Sat, 6 Jul 2019 16:01:16 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Sun, 7 Jul 2019 09:01:16 +1000
Message-ID: <CAA=hcWTqFYjb0hzeFJNuDCGfZB8=G5h1eN4b9GULgng_5YQCLw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Missing init symbolic link in rootfs
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
X-List-Received-Date: Sat, 06 Jul 2019 23:01:18 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I built the rootfs image but it missed a symbolic link init at the /
directory, although I added following init link manually, I should fix
it in Yocto build. What should I fix the image build cofiguration  to
include init link at the /?

$ ls /
bin   dev  home  lib    mnt   root  sbin  tmp  var
boot  etc  init  media  proc  run   sys   usr

$ ls -l /init
init -> /sbin/init

Thank you.

Kind regards,

- jupiter

