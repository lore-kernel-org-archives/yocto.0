Return-Path: <mrsinger61@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3FCCE00C12; Tue, 30 Oct 2018 05:49:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
	[209.85.217.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94FF3E00BFD
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 05:49:02 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id q15so7563716vso.1
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 05:49:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kD4kuthx9PmLRZO0Jvtx7FyHtDkGzlgq5yHHYzj/tBQ=;
	b=ZmQdR9sshf6jswTskKRsnIyE9BzkwDin/P7of04mYbLZu/P5mjzV+l6I/ZkX9EHWfC
	om9Qvhsus760SZthQjSzckIZ0lTQKi926GWgQbA9+CeUtzuJqPjUuBNioCbLAvCFS4ed
	29WHnA5DnVitlJn5n58PyePBVYdramGbhSJzaLhAe4XOm+uEenBYu/THJ8mpgM1+XMMY
	Trgd54Iu+1/B56pkg4iDjBdiZjtEOQwolucRe3kVQB0qjXjUiPtgYlaw1hhkm6JhxX8t
	n6ldOZeUhyvAv/q0NH5QCxAr+Cqbw06BctPRu/U1k803PlBLCMsbXymIpT37JEHctWp8
	MNIw==
X-Gm-Message-State: AGRZ1gJ1ja+qNeXXywyn0cyEIcOmwnuGBszh/atfgrCUNJlQce0Pp000
	yrod+N/6/cWcb4mrfzIv0uE4bBW6
X-Google-Smtp-Source: AJdET5eNDGIh7r3bPjJADGh4YRRd8GrvnmTzU6WshTvj90kawREES22qdsZtGHUfRYODAFecOzAxnw==
X-Received: by 2002:a67:b404:: with SMTP id x4mr3919688vsl.152.1540903741559; 
	Tue, 30 Oct 2018 05:49:01 -0700 (PDT)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com.
	[209.85.222.51])
	by smtp.gmail.com with ESMTPSA id w8sm1333817vsl.10.2018.10.30.05.49.01
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 30 Oct 2018 05:49:01 -0700 (PDT)
Received: by mail-ua1-f51.google.com with SMTP id z8so4390400uap.13
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 05:49:01 -0700 (PDT)
X-Received: by 2002:ab0:594e:: with SMTP id o14mr6114379uad.78.1540903740840; 
	Tue, 30 Oct 2018 05:49:00 -0700 (PDT)
MIME-Version: 1.0
From: Matthew Singer <mrsinger@usa.net>
Date: Tue, 30 Oct 2018 08:48:49 -0400
X-Gmail-Original-Message-ID: <CAPuMWT1upLTHK93SQEj_rgpqdhyr9B_sviKcHurZ4bRZmhbMyQ@mail.gmail.com>
Message-ID: <CAPuMWT1upLTHK93SQEj_rgpqdhyr9B_sviKcHurZ4bRZmhbMyQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: busybox build failure
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
X-List-Received-Date: Tue, 30 Oct 2018 12:49:04 -0000
Content-Type: multipart/alternative; boundary="0000000000001b21770579719cdc"

--0000000000001b21770579719cdc
Content-Type: text/plain; charset="UTF-8"

I turned on syslog in busybox via its menu config and the build now fails
with the following error


ERROR: busybox-1.24.1-r0 do_package: QA Issue: busybox: Files/directories
were installed but not shipped in any package:
  /lib
  /lib/systemd
  /lib/systemd/system
  /lib/systemd/system/busybox-syslog.service
Please set FILES such that these items are packaged. Alternatively if they
are unneeded, avoid installing them or delete them within do_install.
busybox: 4 installed and not shipped files. [installed-vs-shipped]
ERROR: busybox-1.24.1-r0 do_package: Fatal QA errors found, failing task.
ERROR: busybox-1.24.1-r0 do_package: Function failed: do_package
ERROR: Logfile of failure stored in:
/home/keyw/projects/phytec/yocto/build/tmp/work/cortexa9hf-neon-phytec-linux-gnueabi/busybox/1.24.1-r0/temp/log.do_package.15516

--0000000000001b21770579719cdc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I turned on syslog in busybox via its menu config and=
 the build now fails with the following error</div><div dir=3D"ltr"><br></d=
iv><div dir=3D"ltr"><br><div><div>ERROR: busybox-1.24.1-r0 do_package: QA I=
ssue: busybox: Files/directories were installed but not shipped in any pack=
age:</div><div>=C2=A0 /lib</div><div>=C2=A0 /lib/systemd</div><div>=C2=A0 /=
lib/systemd/system</div><div>=C2=A0 /lib/systemd/system/busybox-syslog.serv=
ice</div><div>Please set FILES such that these items are packaged. Alternat=
ively if they are unneeded, avoid installing them or delete them within do_=
install.</div><div>busybox: 4 installed and not shipped files. [installed-v=
s-shipped]</div><div>ERROR: busybox-1.24.1-r0 do_package: Fatal QA errors f=
ound, failing task.</div><div>ERROR: busybox-1.24.1-r0 do_package: Function=
 failed: do_package</div><div>ERROR: Logfile of failure stored in: /home/ke=
yw/projects/phytec/yocto/build/tmp/work/cortexa9hf-neon-phytec-linux-gnueab=
i/busybox/1.24.1-r0/temp/log.do_package.15516</div></div><div><br></div></d=
iv></div>

--0000000000001b21770579719cdc--
