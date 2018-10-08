Return-Path: <mathewkunjumontharakan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BA80E00AB3; Mon,  8 Oct 2018 00:05:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mathewkunjumontharakan[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.177 listed in list.dnswl.org]
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 079B7E00920
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2018 00:05:46 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id j68-v6so14972505oib.7
	for <yocto@yoctoproject.org>; Mon, 08 Oct 2018 00:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=gJU/aCukU1briC62O4L67//GevNj4niECLURixRvglA=;
	b=KEhKPl23ki4DelvX8DsquQVRtMft+cA/WoCJ8/mq3X0quQEKuq5wGlh4a+mVEIZAyp
	zu7bmLQzAcTWSrqHRmF2xAcxipmxSSJ320gMeYPV1NPuAoydufWoRhIy7adN/v2owbFF
	3H32nIBD1/iGaqhCkQRTyD/RuCHp4QxH+f+j2J/ajM94XDyPtqRb6Vb0iQGqhEf93z3D
	zFRFeyBaqBxoy+aq5Ni1YEaxFcO0PCXmd0Yp6x/o5fo7EleRP6TUsUJDGR3Yr4M1XSu+
	NFilZIdEam4RLUQVhjeBoOizkXtQNqcAHCG4lI1AZir+nZwOj+zONWGRwbyD+yB6Urfr
	ACyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gJU/aCukU1briC62O4L67//GevNj4niECLURixRvglA=;
	b=HAG+qd/Aju8l/zTIkdb2yWAwrJUcPsK94RjvJ3rNjifRnAJWCzn2PCrWplG9oRXUiC
	uy35gyZD+i5JU3TK4VmDI6sWrKzJX/PqwV+LkGfT4bHDDiRBYm1tn1XrWcILKQXA3LvX
	nJK7FpRiYvtetr0HkN4mXbK3mQMs1B0K1i2QBIGmtMyVOMV1an7FVRYr1fv2YbBixAGl
	ohCpHI8ELbIMk5yADaInP+8Nhl/bkj9Rpf/pqilria7ZzltUifH/wVuLjOwig+ux4J0s
	Ub1CEKyxT9rgTp9wFz6FY83xzVSJeEse+dgNu50Vu8WRc1+vm6c3YyurVbQAF3jTMrft
	Ze6w==
X-Gm-Message-State: ABuFfohwEhjMy9TkMiMFvO9dSkSb8HAUKtK2ZKJI0c06iByeNASmJ0MM
	2Vp2y8Ny0bmJRpRnEd4VKmKBjUxksSWYXMlAZXuQ2OVp
X-Google-Smtp-Source: ACcGV63y8mfXPh8NgDJlv/rjvvezPEIx2k5Qr3T8vAc7gmJMUDlYoOVFCXRXJbQqzyQP0nzWyqoIYEIiUngth27hQos=
X-Received: by 2002:aca:4d51:: with SMTP id
	a78-v6mr4051386oib.205.1538982346145; 
	Mon, 08 Oct 2018 00:05:46 -0700 (PDT)
MIME-Version: 1.0
From: Mathew K Tharakan <mathewkunjumontharakan@gmail.com>
Date: Mon, 8 Oct 2018 12:35:34 +0530
Message-ID: <CA+JFif2f8xZ2aZ8cL-orkAVsQMsuf4yxTZ2H4kqW478jWPyXjQ@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
X-Mailman-Approved-At: Mon, 08 Oct 2018 00:59:55 -0700
Subject: Industrial IO drivers
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
X-List-Received-Date: Mon, 08 Oct 2018 07:05:47 -0000
Content-Type: multipart/alternative; boundary="0000000000000ec5730577b24033"

--0000000000000ec5730577b24033
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm working on iMX6ULL evaluation kit. We are using the Yocto Project.

I was trying to interface a heart rate sensor with the processor. I
configured it as an IIO device and wrote a device driver for that.
All functionalities are working fine.

But I'm facing some timing issues in the system. I would like to Toggle one
GPIO on arrival of ADC Ready interrupts. It takes 50 - 120 usec to toggle.
Also, It follows different timings when the IIO trigger buffer is enabled.
I need to reduce this timing to less than 10usec. For that, I would like to
get more details about interrupt handling in IIO drivers.

I would like to know why this time delay occurs.

Thanks and Regards,
Mathew K Tharakan

--0000000000000ec5730577b24033
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi,<br><br></div>I&#39;=
m working on iMX6ULL evaluation kit. We are using the=C2=A0Yocto Project.<b=
r><br></div>I was trying to interface a heart rate sensor with the processo=
r. I configured it as an IIO device and wrote a device driver for that. <br=
>All functionalities are working fine.<br><br></div>But I&#39;m facing some=
 timing issues in the system. I would like to Toggle one GPIO on arrival of=
 ADC Ready interrupts. It takes 50 - 120 usec to toggle. <br></div><div>Als=
o, It follows different timings when the IIO trigger buffer is enabled. <br=
></div>I need to reduce this timing to less than 10usec. For that, I would =
like to get more details about interrupt handling in IIO drivers. <br><br><=
/div>I would like to know why this time delay occurs.<br><br></div>Thanks a=
nd Regards,<br></div>Mathew K Tharakan<br><div><div><div><br><div><div><div=
><br><div><br></div></div></div></div></div></div></div></div>

--0000000000000ec5730577b24033--
