Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55D73E00D5F; Wed, 15 May 2019 20:28:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
	[209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7692E00CE5
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 20:28:31 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id j24so1717215ljg.1
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 20:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=tE4n3nNxTb6b3d7jEWEQykKtQVO89/GvCOX5Bun4mwo=;
	b=NCMjYT7OCpI0RKzp4+4+tgVkaocTKbVx2ogwiy2Dp9gd7Uv3UpU6uxJCL/Ig5m0CWk
	8wCnVhzWUzI1r3n3brxfP3WizU3Eli1rTxlNYH2bbvvgWP8fv0S9E4f4hE0CueEPz+Id
	DadLRaVUOC52In/xNtJJdLlKSwf04a7asB7KujNLMUUoVr0W58Jk7nEF7Btn+4vBRgTO
	n43e6iUsuhTIIZHxB1DuJwWdsdacXnR/+/96g/rqI9yREmrS8g2X2zNmcD3WVeJcW2Lr
	jMlsQuopsYNFxqLwLjNwl0AtyFUL9wqeZppGuqO5RtNP5QzbjfbUf/c37R48pUt/0bD1
	+qdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=tE4n3nNxTb6b3d7jEWEQykKtQVO89/GvCOX5Bun4mwo=;
	b=TLOZCZQ5A5r0smVrosaYjAmr9x8ugQZS/0gcNORB3CmqfGJvs2ahK21KENPobMmdDr
	UDcF0NoO0hPr4LjJHR66gNrVzGYXlHBqYjpPto4D5/Obf1wjS73a7p66RicRrC8xGL3W
	maYWmqzQyom08jkhCdfVToNVGXHVvlHfsIHnZlMAnB0KWuiyAF9XJUGrj9oBq/1SacQZ
	YlcrhKJXz03BW/JWdX+/NPW/SCwHAAz2qYurbGjDq8gylIIVk8UHp+a7yYCwYkhMHRtp
	5W+tGLciHnzi8SeY9z0OirDyjxoJijnD2yt/6c4g7hjjXrIkBAHa1R1dDOkzkZlFrs7x
	pAEQ==
X-Gm-Message-State: APjAAAVpWuRqjn0k6pLrEHMGiMd0putsdjgjqXGSqhUYgOBv65V/5UxN
	fhRda4LiiejVuSCb1fbUPucosiv2ACzVPIDqbnZYaaOiwns=
X-Google-Smtp-Source: APXvYqylhO5uo9cv8E2ZW/Ycrl8oyMcO8d7jO+SS4H6Y4vRw/n4nkoTDFONYUEFoHY3wh64uCkYjEq61P9sOeohkeEE=
X-Received: by 2002:a2e:4c7:: with SMTP id a68mr5106628ljf.165.1557977310011; 
	Wed, 15 May 2019 20:28:30 -0700 (PDT)
MIME-Version: 1.0
From: Davis Roman <davis.roman84@gmail.com>
Date: Wed, 15 May 2019 23:28:18 -0400
Message-ID: <CACfi_Z3ZAOH1MQ7QY0AHKVaNdsFV_uooYJF4xbB4nYuOS8fy7Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Upgrading to Sumo triggered issue with python3 autopackaging - "ERROR: Nothing RPROVIDES 'python3-signal'"
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
X-List-Received-Date: Thu, 16 May 2019 03:28:32 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

I upgraded to Sumo(2.5) and now bitbake is complaining that nothing
rprovides python3-signal.

ERROR: Nothing RPROVIDES 'python3-signal' (but
/home/worker/building/sources/meta-bluetooth/recipes-bluetooth/bluetooth-app/bluetooth-app.bb
RDEPENDS on or otherwise requires it)

After some searching I found that this is related to the restructuring
of python3 packaging in Sumo
(http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=b6777878ff03c3e956386020a19d11c875c835ae)

So according to the instructions in the above commit, I'm supposed to
first create a manifest file using:

$ bitbake python -c create_manifest

and then the json file appears to get created:

build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/python3/3.5.5-r1.0/python3-manifest.json

After a quick inspection of the created python3-manifest.json, I see
that signal.py already appears on the list.

    "core": {
        "cached": [
            ...
            "${libdir}/python3.5/__pycache__/signal.*.pyc",
            ...
        ],
        "files": [
             ...
            "${libdir}/python3.5/signal.py",
             ...
        ],
        "rdepends": [],
        "summary": "Python interpreter and core modules"
    },

Assuming that nothing else needs to be done, I then proceed to again
bitbake my application but unfortunately the original error persists.

What am I missing?

Thank you,

Davis Roman

