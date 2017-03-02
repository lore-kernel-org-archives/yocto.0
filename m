Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81034E00970; Thu,  2 Mar 2017 06:26:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F5C1E00566
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 06:26:30 -0800 (PST)
Received: by mail-lf0-f44.google.com with SMTP id y193so34350834lfd.3
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 06:26:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=ZsqOXmrGqv2q4IJKRpPuOut9BZM2c+vNjE4sLSTW6Pc=;
	b=uza8XunoJhjTozW4pLEr2ieJrRjNHkZoOC8uchH9UIOCrjAHvDUf9lEgqnHASc5MNy
	xZhPXCHifcVnkV0Dl2STx8SJG/mhdw3DxxG+TZNBvBNQAh64l1fsWikr0AqSqqTAPJpZ
	q64orLq08U6WraS+eGIq7MlOAcEJ1SH9YHu1qmiaoOaCwUwA2ZHN0hWhExG7xcH43Eet
	9suTN1XBoprxc2F6vYkBThPJPfj3NDe1SqQ2AMjE99ngi00JyBSC0pAYU0M4YkZEWoLS
	KiAud4/pmMQv+kPc6DeFYmek/BIo7+08CpjHyzdUyR7+YWaH316I5rLCW2rfuJpPpgK0
	Y9cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=ZsqOXmrGqv2q4IJKRpPuOut9BZM2c+vNjE4sLSTW6Pc=;
	b=ZuFUigETsgGRzkOVdk7HcaHN7I+4fCi4URordcU/2ohA+TkN61meDQXS22H3eZOby9
	ZZI2E82gs+hmKcbyWYS/4MaKH0B4l9aYANrLzQi5HYxKFThx5hyAKoRuzqVyla/jIYQl
	Zi5LCLEif9G4xg0EFMZZiYLrMiQVmPm7gofePy3Hj+QWlv/AxqLy832iHaT5y2Jxlzcv
	Mby/XpkeQLkaiZiqqz5vYe1O5Fes9QY3i6LKKC/TRUqhcTDqon82wK/VRBszxlIbzqHl
	xHqXAiMDQ8iAtl/tdHjLjDizQTzKjdPFQ2TV1VNPNYVw0IpJfm8AidR7l3Wpm77BlRAk
	E0DQ==
X-Gm-Message-State: AMke39l5XgqpfNHLMl+KH/J6F7mNkomtgz6LLLHXRt9k0/uiuJxd4E8I2f87mZuZSIUI2B21do6kbFjNrfdumw==
X-Received: by 10.25.233.21 with SMTP id g21mr4746072lfh.130.1488464789374;
	Thu, 02 Mar 2017 06:26:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.228.14 with HTTP; Thu, 2 Mar 2017 06:26:29 -0800 (PST)
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Thu, 2 Mar 2017 19:56:29 +0530
Message-ID: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Devtool: Script Not found
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
X-List-Received-Date: Thu, 02 Mar 2017 14:26:37 -0000
Content-Type: multipart/alternative; boundary=001a113bdfc6080e510549c0379b

--001a113bdfc6080e510549c0379b
Content-Type: text/plain; charset=UTF-8

Hi Paul,

I am not finding the devtool script under the
/${HOME}/yocto/poky/scripts, so I copied that script from the website and
changed the permissions.

I did sourcing also,

but when I run the script, I am getting


devtool
Traceback (most recent call last):
  File "/home/satya/yoctoBSP/poky/scripts/devtool", line 38, in <module>
    from devtool import DevtoolError, setup_tinfoil
ImportError: No module named 'devtool'

Can you pls help me here. whereI am going wrong.

Thanks in Advance,

Regards,
Satya

--001a113bdfc6080e510549c0379b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div>I am not finding the devtool s=
cript under the=C2=A0</div><div><div>/${HOME}/yocto/poky/scripts, so I copi=
ed that script from the website and changed the permissions.</div></div><di=
v><br></div><div>I did sourcing also,</div><div><br></div><div>but when I r=
un the script, I am getting</div><div><br></div><div><br></div><div><div>de=
vtool</div><div>Traceback (most recent call last):</div><div>=C2=A0 File &q=
uot;/home/satya/yoctoBSP/poky/scripts/devtool&quot;, line 38, in &lt;module=
&gt;</div><div>=C2=A0 =C2=A0 from devtool import DevtoolError, setup_tinfoi=
l</div><div>ImportError: No module named &#39;devtool&#39;</div></div><div>=
<br></div><div>Can you pls help me here. whereI am going wrong.</div><div><=
br></div><div>Thanks in Advance,</div><div><br></div><div>Regards,</div><di=
v>Satya</div></div>

--001a113bdfc6080e510549c0379b--
