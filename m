Return-Path: <somkadam76@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE070E00CBC; Wed,  9 May 2018 00:24:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (somkadam76[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6618E009AC
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 00:24:04 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id d73-v6so41556351iog.3
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 00:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5Ewqn2owoQtAYiZ6fW5gtdiVH+So6sN45K/xzL5z5Rc=;
	b=Ke5KB61fix3mgLzUdZuaApEvuABPw1knzOhzcuNkT5mi1WS4H1v/z4UPjPedPq/2h2
	YvMDStqbBS43biESMvNf1F71qQM/poJKmH4Ei0AcMOKVAgdvijvrsgOT0WPuLE45ZWWv
	/b6LPlfMsnJio1qGn7iUjIqKTMfAljYn8xu7zOIbt1Rbdr2a7TrZXhOsUCMtHqQcdxae
	77pGM73UQc66HO6Tpl/aqZLDnQ0Y8U+uOeeO3XbsqflEwS+cMoCU4Tfs+Lzlx7EJA/8K
	emIzgbvhJwxDf/ecPMioJA4JQ7JP5gsJ89g/bHn5A9YDCkh/ZkFDZe4klpw3svWXsoL/
	7zlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5Ewqn2owoQtAYiZ6fW5gtdiVH+So6sN45K/xzL5z5Rc=;
	b=nKswzN8OxbrVjIQy5LeX40hkRJSkx5/+CIzqD6WIrpeqS4mE0Ruft0j8ZxkqTqZiue
	DY753RGYm/GvJdHqfwspUcYaBmTDp7s797YGP/zJlh/QImIRGSl0Xira9KQYJ0bwV5bb
	XWlV3k967pwFvG3Eb9RfyR1MGEsCw+BycBQmdVL/Xwh2Ibr4LEFP5YbBTQ8F2W966Lv5
	x05iWccrHxo7oT+Fyc5KFrRWTzthhTmEy9CeHD9Ptj5dIPQQyzKol5OVC9wsOjc3WNiM
	Cc6DQv3h5RWS8rcLwlSNP9PkBBkQ+qvSOzzxh/H9r7a7rIj+QzRLYQMcdV5ExIwzjrGh
	ansg==
X-Gm-Message-State: ALQs6tCOM/N9dnBmsHFR9czk8Y8G1MdyiMw5dYgGJiTr14XSGt/jnve1
	Wh5mZwNkglgzYTuch3xAzkmi7i+ZmlMWyEENC6zajA==
X-Google-Smtp-Source: AB8JxZq6VdfY/aaSFB1KkkXyIEz6KSP4ICGL9iqsQutmvT/KF4S59MKbyiSrCwDpdPTNsVdjCvX5i4V6G/NB9PA17CU=
X-Received: by 2002:a6b:900b:: with SMTP id
	s11-v6mr46050661iod.223.1525850643715; 
	Wed, 09 May 2018 00:24:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4f:6606:0:0:0:0:0 with HTTP;
	Wed, 9 May 2018 00:24:03 -0700 (PDT)
From: Somshekar C Kadam <somkadam76@gmail.com>
Date: Wed, 9 May 2018 12:54:03 +0530
Message-ID: <CALbGK-pZz0-MR5Dv8asoOc_eKQ4o2LwLZ+ZjBwTD6wmGkBVB5w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Ptest log
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
X-List-Received-Date: Wed, 09 May 2018 07:24:06 -0000
Content-Type: multipart/alternative; boundary="000000000000995c1c056bc0c96f"

--000000000000995c1c056bc0c96f
Content-Type: text/plain; charset="UTF-8"

Hi All,
I am newbie to the ptest.
I have run ptest on ARM and Intel target board.
Now I want to have the output format as given in link below
https://wiki.yoctoproject.org/wiki/Ptest_f49ee61422c867516db252054e993df29f775136




I use the parser to generate wiki page output provided in qa tools, next I
need to copy the content  to wiki page which I have no access to get the
same output format.

Please suggest what is that I need to do if I need to get the same output
format, as I see it contains excel/xml  format.

or if there is an other alternative method  to get list of PASS and FAIL
numbers of each package ptest results.



Thanks in advance


Regards
Somshekar C Kadam
9036660538

--000000000000995c1c056bc0c96f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,=C2=A0<div>I am newbie to the ptest.=C2=A0</div><di=
v>I have run ptest on ARM and Intel target board.=C2=A0</div><div>Now I wan=
t to have the output format as given in link below=C2=A0</div><div><a href=
=3D"https://wiki.yoctoproject.org/wiki/Ptest_f49ee61422c867516db252054e993d=
f29f775136">https://wiki.yoctoproject.org/wiki/Ptest_f49ee61422c867516db252=
054e993df29f775136</a></div><div><br></div><div><br></div><div><br></div><d=
iv><br></div><div>I use the parser to generate wiki page output provided in=
 qa tools, next I need to copy the content=C2=A0 to wiki page which I have =
no access to get the same output format.=C2=A0</div><div><br></div><div>Ple=
ase suggest what is that I need to do if I need to get the same output form=
at, as I see it contains excel/xml=C2=A0 format.=C2=A0</div><div><br></div>=
<div>or if there is an other alternative method=C2=A0 to get list of PASS a=
nd FAIL numbers of each package ptest results.=C2=A0</div><div><br></div><d=
iv><br></div><div><br></div><div>Thanks in advance</div><div><br></div><div=
><br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr">Reg=
ards<div>Somshekar C Kadam</div><div>9036660538</div></div></div></div>
</div></div>

--000000000000995c1c056bc0c96f--
