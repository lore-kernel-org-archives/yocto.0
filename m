Return-Path: <pkr6797@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56FB4E00D05; Tue, 15 Jan 2019 02:55:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pkr6797[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B79A5E00CFB;
	Tue, 15 Jan 2019 02:55:12 -0800 (PST)
Received: by mail-wm1-f45.google.com with SMTP id r24so737196wmh.0;
	Tue, 15 Jan 2019 02:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=fg5p33oUVVEt9PCbQvxCYwF1tLD43H0XDqo4aBcdPzQ=;
	b=ugkMjBxrr+UCOyz1iuCiMrFdwP+EUswk9io7SIYWQvUrUI2eHHbdky7kQVm0iSDhb7
	QT6aAFpMiKVOBAzUDjd2KlHhYoK5P56w/zAC93EWDoF818CXInhmPtJwB/UfqT3zYTNy
	rykvZ8o6Mb8++K0E6bVhuEfl/EzM+yw32qFWosz71kG2b+RjQXguVeYkIv3pkvk/ZTcE
	+MpRwPx+3cfEH+Cg4fAJpKcCTOp3YTpcqrwZn/IKpa0zqM+EyJTveYfIX5ttFLNw6aGn
	pUxdQQTVAHJwurOn0PK7EUc6nmuCWPYds77gDJthqBzuFTDwo4XMzAWZzHS31pYStnvd
	k6NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=fg5p33oUVVEt9PCbQvxCYwF1tLD43H0XDqo4aBcdPzQ=;
	b=XLE1xsgP7lV6cclbntu5cRK7MBuYbhz6x+AbxC6tudY3ba0jU2zlrn1CiLBRuyR+Qc
	F3qQIa3VdpxI2enq0AhNHVtMEUfIDbKVlkEFYq+VhYa3PRP+1cqIcVPqHOa2Xic/9e4j
	I7u4Hh1xH3wOeCqTIlkwylsZckWwyJ3tl0iS8ZmfPbIWNTFyi2ne8JlxTdTfHo+TkZPQ
	utCVh3u+vC0kP5OdLFhZcM1TUd7eL2i5sAC1rm6nUr7eY6GDCQgAI/piKjuQz+ssnuNy
	gNfGsNLoRC5pI6p1onm9d6QTeyR30c8wA12CaeMskU5zUc0LiuvLtejbsqmMel5+mYMD
	nS2A==
X-Gm-Message-State: AJcUukfxQlK+h0Bw4d6M1FVknfYEGzgaWoNhBUHtmUsgAeWIdIXb5kCy
	6oG9sri8/wssIcjZ7EDO2o2Yj+EvYCFTN+KBvIE0sQ==
X-Google-Smtp-Source: ALg8bN7hsG21ZGsHfuZ2PBpthQTCABeJ0DHOrOlJg+pdevqfCINUwedxpJZGkYkJVP9lj7jAoFprZn6zNs6tfm8W9Oc=
X-Received: by 2002:a1c:af08:: with SMTP id y8mr2689994wme.94.1547549711392;
	Tue, 15 Jan 2019 02:55:11 -0800 (PST)
MIME-Version: 1.0
From: sadu A <pkr6797@gmail.com>
Date: Tue, 15 Jan 2019 18:54:59 +0800
Message-ID: <CALdre-xUUX38urFXonqepnhfXVduQFF3rGJAfpZ3SHxphe=p0w@mail.gmail.com>
To: yocto@yoctoproject.org, poky@yoctoproject.org
X-Mailman-Approved-At: Tue, 15 Jan 2019 05:41:00 -0800
Subject: Qemu Launch Issue:
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
X-List-Received-Date: Tue, 15 Jan 2019 10:55:13 -0000
Content-Type: multipart/alternative; boundary="000000000000d1e2b6057f7cfe80"

--000000000000d1e2b6057f7cfe80
Content-Type: text/plain; charset="UTF-8"

Hi Team,

I'm new to yocto environment, I need clarification on this:

Launching Qemu default and launching by using "-nographic" option makes any
difference.

Please clarify this.


Regards,
Kumar

--000000000000d1e2b6057f7cfe80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Team,<div dir=3D"auto"><br></div><div dir=3D"auto">I&#=
39;m new to yocto environment, I need clarification on this:</div><div dir=
=3D"auto"><br><div dir=3D"auto">Launching Qemu default and launching by usi=
ng &quot;-nographic&quot; option makes any difference.</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">Please clarify this.</div><div dir=3D"auto">=
<br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div><div =
dir=3D"auto">Kumar</div></div></div>

--000000000000d1e2b6057f7cfe80--
