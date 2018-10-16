Return-Path: <tomasz.dziendzielski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97E58E00B45; Tue, 16 Oct 2018 05:43:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tomasz.dziendzielski[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f175.google.com (mail-it1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EC13E00A10
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 05:43:49 -0700 (PDT)
Received: by mail-it1-f175.google.com with SMTP id 74-v6so32902974itw.1
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 05:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=j7XwVQPA/Vr3UlV0bcPZmTMUPwO9B4hldd2nnRELd38=;
	b=EqgaaI0lak6/+Fqfv0N5MK493XRrAamDIiatWgYQk5a65BeOY4DF+NyRVohE7QpbvV
	wPmBrzg+6RmN3DSVy5QlzsZiaX7nX6MFsDUbHpujv+CrQQZGpQADmmABV59KvCXm66VM
	DJ+SxVwdcZI/yJQbChihZg4heYVXxJiQUJHPQS7b2PR8nkXqxhOOSuebUkXEOwiv9bUT
	BTishOTWZvsSelsUKKhiY9ZSn1NdVD7ZWqt/TUnvGRUrALYMLNxpXFcq+SlqP/nWeFmG
	wCPvm2U7IZIBUaAZ+Pc/sISq/yrQB0jfNYXTpKHjFtcCQS1fjMW/J2QVrOWL78oW2EKC
	SHxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=j7XwVQPA/Vr3UlV0bcPZmTMUPwO9B4hldd2nnRELd38=;
	b=l1/TP/gR/b0YnE+KO1CHUjBYt6UgvWn7xVZwdv0V98jDLznc/5tjoyiZJTfLFK4b2p
	Y4zMI4fcwub5rehYDhPWX6ugYEhsZ5wWBLj0q3XbPnDMappNTzY6HhcaWd0L3D1sTClZ
	OKlH2MKvfN8OHJeyOuOgmgHXPEFTv7JhRptIycePEpWvZ+FQH8iogtuxVzxyGhC22/yA
	j8t6eeH3fJSE7+yMrRS5JPFNRB9slTJH2hQS523MYb6x+p6JJ64jrRyYY8tNSR/dTfbB
	CFx1hZZl7ePMH1L6QXMVIh2TdvSPKOH+OftU8ZehVhH2TaJlseVES6LduRObNFP78Q4Y
	2KMw==
X-Gm-Message-State: ABuFfohXuJlGdBFIxCCW67a/o+hs7J5l4L7SgFe3WO5Z3HFRFZacTHai
	Fi3c21xGFE/8P2z1wYq/4ZwX3rY9SAZm8Vvk57v2Y+75
X-Google-Smtp-Source: ACcGV62SgSy8/XwhXGDq2sTCMBOYVtHI6SNxSg0ZAOCzf0tzaRpIivMqHRT7k9d8KELZwl8jTP9/4PqowWIMx8FpwPE=
X-Received: by 2002:a24:6f05:: with SMTP id
	x5-v6mr16915923itb.111.1539693829433; 
	Tue, 16 Oct 2018 05:43:49 -0700 (PDT)
MIME-Version: 1.0
From: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Date: Tue, 16 Oct 2018 14:44:21 +0200
Message-ID: <CAJkqNs1qEJHk-knxqZ-+P1VSOjgeZt9x=RjMWSV1QUt5J3i-aw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: archiver.bbclass: do_dumpdata - shell format
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
X-List-Received-Date: Tue, 16 Oct 2018 12:43:50 -0000
Content-Type: multipart/alternative; boundary="000000000000c44142057857e7a1"

--000000000000c44142057857e7a1
Content-Type: text/plain; charset="UTF-8"

Hi,
when using archiver.bbclass the do_dumpdata task is using bb.data.emit_env
function, which should emit variables "in a format such that it can be
sourced by a shell.".
The problem is that the *-showdata.dump file can't be properly sourced,
because variables are not in a correct format.

There are many lines like:
PREFERRED_PROVIDER_virtual/fakeroot-native="pseudo-native"
The variables with slash are considered to be a directory and the ones with
dash are considered to be a command.
Also shell cannot properly set the variables like FOO_machine.

Should it be sourced with some specific shell or is that function wrong and
should be fixed?

Best regards,
Tomasz Dziendzielski

--000000000000c44142057857e7a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>when using archiver.bbclass the do_dumpdata ta=
sk is using bb.data.emit_env function, which should emit variables &quot;in=
 a format such that it can be sourced by a shell.&quot;.</div><div>The prob=
lem is that the *-showdata.dump file can&#39;t be properly sourced, because=
 variables are not in a correct format.</div><div><br></div><div>There are =
many lines like:</div>PREFERRED_PROVIDER_virtual/fakeroot-native=3D&quot;ps=
eudo-native&quot;<br>The variables with slash are considered to be a direct=
ory and the ones with dash are considered to be a command.<br>Also shell ca=
nnot properly set the variables like FOO_machine.<br><br><div>Should it be =
sourced with some specific shell or is that function wrong and should be fi=
xed?</div><div><br></div>Best regards,<br>Tomasz Dziendzielski</div>

--000000000000c44142057857e7a1--
