Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE758E009A5; Fri, 21 Oct 2016 15:30:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.44 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51231E0081E
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 15:30:15 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id m138so13183916itm.0
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 15:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=jTxI9J0Q97q2TRY3CiwNHhR7TINbvt97jqVooiK6jYE=;
	b=piqLpZX5lTan4TEF8WZjuIE53/4eeugvQGtBYpWV51c511aZ00g2H1XxfGkww/aFEh
	Glu0htO4YqY7FGDxQLoYAkr5uWjo5b6ky3Dlw70XtuOl32mviL9yH6AXhAS+wIOwmC7e
	X4YpcnTiv7exSU+4J2qOO4woJ6/lMGsfqHamZgYrv5Wp/gmVvFjY9EmqyMnZFcgU8Z91
	KSBZxZlYVe1bTX83A1nGvVSHQAXBZXBU8YNOnbfzP/EJXYbcuNKrhSctrUyNKiZsfvOF
	3YWsm4vs6ujeJTsOy42eC0Tk3iSxXLLaQkPlLX3YgNaHOvZIhFveXiJd7Bs4Yky+2hNR
	2sIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jTxI9J0Q97q2TRY3CiwNHhR7TINbvt97jqVooiK6jYE=;
	b=DLmb3IbHEf0JjoW5d5REvUhRB7xIB1vtglhuIqC+P27VChmUP968oQzyaXmKUpathG
	fv8+J0t9QNtYhfPEt3wEls9kJnWsbXj/6eT/qFYJPRlzd4wQLIur+PkOgNRm+PIojtP3
	6ECLk6PSpOce8CqRXCfTcRaY4m7NEK0mYaKw1VXb2uzCZJlph2Kyetj9ZwUxahNx/GNM
	9EgQ+4FxvspskQpTKnhfS5aw78TTN9y7P+aXkBGB3Vt9os2L1AUCd0zS3O99/yoKQmbt
	Ee1bG5GZcZh8qCr5uCgYNBreoo1KjXOEYT6mS7Cq0H0g3lAxs/q055LjMKAsgo7aie13
	L8OA==
X-Gm-Message-State: ABUngvcx24TJrPAdrsbeKA2NVut5x5p2GndkQakwd9W6Qz2CCNee2+GoBoyMbTJFTib9hUeWmdVJ79PFSeLLAA==
X-Received: by 10.36.2.1 with SMTP id 1mr745821itu.47.1477089013777; Fri, 21
	Oct 2016 15:30:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.54.36 with HTTP; Fri, 21 Oct 2016 15:30:13 -0700 (PDT)
From: Davis Roman <davis.roman84@gmail.com>
Date: Fri, 21 Oct 2016 18:30:13 -0400
Message-ID: <CACfi_Z0W3pBTf-ByqQdeov=_+w5ePTQn4a3R0ou5MGgmTU3mRA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: if user space application compiles with a static library, does it need to be included in the yocto build ?
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
X-List-Received-Date: Fri, 21 Oct 2016 22:30:17 -0000
Content-Type: multipart/alternative; boundary=001a1143d5caf7cacd053f67958d

--001a1143d5caf7cacd053f67958d
Content-Type: text/plain; charset=UTF-8

Hello Yocto Community,

As much as I like to advocate for code reuse and minimizing code bloat,
there is one instance where our user space application will be compiled
with a statically linked library.

We don't do any development on our target boards themselves so I'm starting
to think that I don't need to include this library at all in my yocto build
( either in the toolchain or rootfs )

Is this a correct assumption ?

Any advice would be greatly appreciated.

Thank you,

Davis

--001a1143d5caf7cacd053f67958d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Yocto Community,<div><br></div><div><div>As much as =
I like to advocate for code reuse and minimizing code bloat, there is one i=
nstance where our user space application will be compiled with a statically=
 linked library.<br></div><div><br></div><div>We don&#39;t do any developme=
nt on our target boards themselves so I&#39;m starting to think that I don&=
#39;t need to include this library at all in my yocto build ( either in the=
 toolchain or rootfs )</div><div><br></div><div>Is this a correct assumptio=
n ?=C2=A0</div><div><br></div><div>Any advice would be greatly appreciated.=
</div><div><br></div><div>Thank you,</div><div><br>Davis</div></div></div>

--001a1143d5caf7cacd053f67958d--
