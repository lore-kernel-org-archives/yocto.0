Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAFC1E01486; Thu, 14 Jun 2018 10:57:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak.foss[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64BFDE01503
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 10:57:38 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id e8-v6so6490835oii.2
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 10:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:from:date:message-id:subject:to;
	bh=2IrG2yaPQLuXWulqCylJ9nyNFopSbbjh20BE40IykyQ=;
	b=HU42MvfDbUCWHqPzP6fRQp8po2rdcMBcIPXoKq3954l4CH6wo1KP15r5vpZ/GlzVGX
	SpIqcZZ+JbgGiO3iDlv24fi8dLndBqEKl5NnTJpWSqR7KR3SLXxzbjH5iZCh4hbtYgqy
	2Ohb2v9RLMaH3cwquhIQEQB1tMgy2AEn+aKPDQlaiINr6uQVMwoVqJhRWIf+ofbCOaHN
	bPBhuSaCmBkTHyHlsz6l7NPcnBsnPp9/KCATyGlvjqf9JtEMQdU2UpbBHsfOnXsst7S1
	otDbp8dC5vxQv5ci/fwyvbqgbyMhNMTg2W+rclABAq6zjc6HDHeXtLSuGgPN60UoFvHQ
	3ZPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to; bh=2IrG2yaPQLuXWulqCylJ9nyNFopSbbjh20BE40IykyQ=;
	b=LM3m3aJdbX2THPJe2VAkJPKVh0JclV99Jc4dWg0CWlzwnqQNf4IooN7eMsq28I7Aas
	+0iJsKA8sYpYQLCzNo+yapiev0ZZtDpFSMFIeL1fTETgY+5v3vwdxRLFjQCdoKIKHlIf
	BxuDR9uEdCYLWNm7a5Uvm1WjqMmJc17Z5CD4CDEPoNpJBkoKplPjbZmZxBp117G1jJX/
	9umBD6KsKK3v7bwKcQFKxlb/abWwXiCm30+e3eqzv6EzBBEy/ZtNdCv5gBWA5OQHmbWu
	tzoSo0QUYZZVwsPEe7ji0cjIhlWMRN5v1BCrSO5RNBGPPqgLCSG/qwIV3F8NowVdn89/
	49rw==
X-Gm-Message-State: APt69E0uu3mU/1jGW5NmBtzyuHsjuaOUjx6Duwfc/bUYWAjXRLLfRNr0
	EBZYJ1KZ0Hl1oqJNCtrAjAaTc02si/IVdeWMcDpCzQ==
X-Google-Smtp-Source: ADUXVKJimHBDhvovnQGvnP4fALVWXkJ4E6N7Iblcq6l6ekBgmBk+NsM1rGS98rZs8vFy9ZXjvHrWOnBwXgF8y1niwYc=
X-Received: by 2002:aca:4957:: with SMTP id
	w84-v6mr1902211oia.293.1528999057508; 
	Thu, 14 Jun 2018 10:57:37 -0700 (PDT)
MIME-Version: 1.0
Sender: jon.szymaniak@gmail.com
Received: by 2002:a9d:ed1:0:0:0:0:0 with HTTP;
	Thu, 14 Jun 2018 10:57:17 -0700 (PDT)
From: Jon Szymaniak <jon.szymaniak.foss@gmail.com>
Date: Thu, 14 Jun 2018 12:57:17 -0500
X-Google-Sender-Auth: 2u4JksUsHW8SNMoPXoW3ixov6Vs
Message-ID: <CANge7vVKTT8x6BCVm0iG28yiFhfj6HR9J51L4Kw+f7R5ySPBqw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Build failure when BUILDHISTORY_FEATURES includes "package"
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
X-List-Received-Date: Thu, 14 Jun 2018 17:57:39 -0000
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm encountering the following error, which I can reproduce with qemu
targets, core-image-minimal, a default bblayers.conf, and the
following additions to an otherwise default local.conf:

INHERIT += "buildhistory"
BUILDHISTORY_COMMIT = "0"
BUILDHISTORY_FEATURES = "package"


ERROR: core-image-minimal-dev-1.0-r0 do_packagedata_setscene: The
recipe core-image-minimal-dev is trying to install files into a shared
area when those files already exist. Those files and their manifest
location are:
  ${TMPDIR}/pkgdata/qemux86-64/runtime/core-image-minimal-dev
    (matched in manifest-qemux86_64-core-image-minimal.packagedata)
Please verify which recipe should provide the above files.

My build host is XUbuntu-17.10 -- not officially supported so I
understand my mileage may vary.  If no one else is seeing this, I can
follow up with some logs, try a supported LTS next week, and try to
report back with a root cause.

Mostly just trying to confirm this isn't PEBKAC ... ;)

Cheers,
Jon

