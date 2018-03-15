Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D30DAE0086B; Thu, 15 Mar 2018 13:55:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EEC8E00529
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 13:55:02 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id z10so3293454pfh.13
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 13:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ScNJNLVFo5n8RVv1tQ+zrZScEHKzrFDkZai7ekf1yVU=;
	b=p/thUyyse/1r+cQsVlMVL/IU+nz9obd7Mm8B0lTwhD4pf+QXtgsnIyFqA9RPYW7R8I
	8xBipWkOTagx6lujfuWUblA0uTSgBSiawws5iOPnzmzsAjwDNLHU6dEkBo7U5PKUwJ9B
	sZOp9xW+KLRw4ZKwcJ67BGHlybcXBDGJ0jLkeQjIGlfYTiZOI/9tKxqpDXlew5Z8XY9Q
	zbhRn9vyEIWHKIdxb/k8Utgk7OweRljT4QJaa9MS1kA9bKop4AK/F2PqNs2h9Dkw94d1
	Fy8Yds0+wOEHu30nQaKS1mC6b0FxWfRVBjpeulJEB7KCq6NICCPCq/NUfCFu2n4b+gPo
	LZAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ScNJNLVFo5n8RVv1tQ+zrZScEHKzrFDkZai7ekf1yVU=;
	b=HJOoru+rldHH3mR5k5Be0yN3cQePf547254IvEwVO9KKi0cJ0GHxmBcxn6UOGPndc1
	DQXG4sfL4zZxjZznu/AnjgIm9pN0CgjoDUuuK9VeB64eeo1nA7WMmOpKa4bZa5fLCQ14
	Z+Fk0bXja/InQoara2gARnGa0ESvSOkuSTAgsNnRuLkSiUi/WhbM/nnbZonxt5qDau4N
	AsbyLoiAS59dPm03YGqHt5u2cTfouhLWI+XCU+Dp90t7YH0WTY9lVTKGTY7JK3q1nO9p
	CuIXjsY7PPP40P+kjHufHhi8fuYNW8vo2mVRDE0+2lJtxqdi43gRkt4W93pXMdG1LGEP
	pGEA==
X-Gm-Message-State: AElRT7G4O2vD16l0nPf+bh/Wb69U3KGzc1LVB+EEiw/PwNdAeZ2rbFDi
	BWBE1vuAaqUbd6FaCUX9/mtp7yzl2Q78/fd/hXk=
X-Google-Smtp-Source: AG47ELulDMgrAY/sUeQqDOaptGcfKWF7ccnw4AB9Y60ZfinkgiVubuDzT+bREDv1AtNGdON8xIHFVwCCGJAy8bR0XL8=
X-Received: by 10.99.128.67 with SMTP id j64mr7556978pgd.55.1521147301860;
	Thu, 15 Mar 2018 13:55:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.162.16 with HTTP; Thu, 15 Mar 2018 13:54:31 -0700 (PDT)
In-Reply-To: <454710ed7f6d42279136acc70c35cf74@sakuraus.com>
References: <454710ed7f6d42279136acc70c35cf74@sakuraus.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 15 Mar 2018 13:54:31 -0700
Message-ID: <CAMKF1sp6eeDj8Ny_6G9qiy-uW8spcm+cNrSH-az4+7Z2MpPXbQ@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get mysqy/mariadb to start on powerup.
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
X-List-Received-Date: Thu, 15 Mar 2018 20:55:02 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 15, 2018 at 1:38 PM, Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
> I'm building an RPi3 system that is going to use mysql/mariadb. I've got
> everything installed, but mysqld is not starting. install_db.service does
> run on startup, but the mysqld.service file never gets triggered.
>
>
> Is there something that I'm missing to get it to run? I've search online,
> but can't find anything that pertains to yocto.
>

poke on the system with systemctl/journalctl to see whats going on

