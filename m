Return-Path: <richard.weinberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41AEDE00CE8; Fri, 26 Apr 2019 06:26:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (richard.weinberger[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.54 listed in list.dnswl.org]
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8293E0043B
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2019 06:26:57 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id f7so4481078wrs.2
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2019 06:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=3UPrrnb7NJbyOGXnCIBlKvzTtEOcr+18noO9UyQxTxw=;
	b=K214Vk6rMBd5lJr7jPeUuYiz82dfhHLwzdqq+flLnsQdFcfgY0xIJTZr6MMHxqvSnf
	MPRrYCYtD3k8uFJK4EiEN9FPmr9UxIDWD3vmwWZ8N2yxoGveg3FPsrKtAkEO1Sz2O5Zm
	MkrfdMlGIBUUCCZS6hKgnbSGvThaC8HnjhWLTZqdFMLaDzHAWFPiuKaHOD7rGpP1I2br
	U5yIBa8HOQqget9521vqcV0gNDx25sORT3MAFAK7lFLdfNyiAuO02dXq5KvlObfpouSA
	DRWkexEQwInK70RL14xzjzdk8Qwae6OZVpg978v3CGrIkN24Sw9pTrbgC5Fx0+6uCY3j
	+/cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3UPrrnb7NJbyOGXnCIBlKvzTtEOcr+18noO9UyQxTxw=;
	b=tZQpwwe9cOvYPyUmfIgoMvuxL8uQ+/6VuqhkU/tKZXhlYhQc56EHw5h2L+5zsOQ8fP
	XJNSaL5JfrFvkGHzaKjP2UShKMu1BUCPMsZHM0QiO0/uSBWVCEuzNqS/1WLrg+v+Gy8W
	nfi7F6GKVy41wBHT9W5QAuUHm77e48flwvttXF+PcZimwx9v8FtOeXwK/iTWqRjVZeOV
	c2s22BsXktB5sEP73DFsygyHVYAwOG08sdB8r/Tu2uIGEhUPJVCD7ADHEJuy5P6wTqAx
	R0686BpUtT4DILkjsqZG4edauPZ/7EPLnVmCtMyQDyVHlCmv6M8wilbdEdfnxC5v9S8U
	nxNA==
X-Gm-Message-State: APjAAAVh5Dgt4jRkYsEg7LbTVufOG3UYAgUkYcho3pyv/1lovxC2hbiw
	ycOsBVI5bqNGHuO6iAB0kyBM4OeA0sPaCM76ZysnvB52
X-Google-Smtp-Source: APXvYqykIbJR8x9Z2C525ioyLosC9ocq6fWXvUYVa57FCcE4PdNMUb+9j+LmmUCCw3C0u6qAsxv+J1PdCkZbCS06n0w=
X-Received: by 2002:adf:dbc1:: with SMTP id e1mr13714618wrj.203.1556285216676; 
	Fri, 26 Apr 2019 06:26:56 -0700 (PDT)
MIME-Version: 1.0
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Fri, 26 Apr 2019 15:26:45 +0200
Message-ID: <CAFLxGvxbeZvadxguGoGHZSzeF2EnZ9EkR0aLVOh4FnyNi6VGmw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Disabling sshd is harder than it should be
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
X-List-Received-Date: Fri, 26 Apr 2019 13:26:58 -0000
Content-Type: text/plain; charset="UTF-8"

My thud based system installs openssh-sshd but I want to have sshd
disabled by default.
So I checked the docs how to disabled a systemd service by default and
found SYSTEMD_AUTO_ENABLE, perfect.

After I put that into my bbappend file I figured that sshd is still
enabled by default.
With one difference, it was no longer present as sshd.socket, but as
sshd.service.
This seemed odd and after another hour I realized that now sshd is
stared as good old sysvinist script. Hmm.

To finally disable sshd by default I had to disable it via systemd
_and_ sysvinit.
Is this really the expected way? :-(

For reference, this is my bbappend file which works:
SYSTEMD_AUTO_ENABLE = "disable"
INITSCRIPT_PARAMS_${PN}-sshd = "remove"

-- 
Thanks,
//richard

