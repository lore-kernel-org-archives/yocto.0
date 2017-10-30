Return-Path: <adam.yh.lee@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 493A2E00C01; Mon, 30 Oct 2017 13:49:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adam.yh.lee[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.193 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f193.google.com (mail-yw0-f193.google.com
	[209.85.161.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1383E00B67
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 13:49:56 -0700 (PDT)
Received: by mail-yw0-f193.google.com with SMTP id w2so12828167ywa.9
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 13:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FB29WG0IEaIl27w1xI8Qnd8K/u95Q0SMBY80Zo75jI4=;
	b=ZRmHDBH5ERNouOlEidq+EIQ8yoG9S8/2efHqDURGy5mJ2Uv1VDl6ehSbvvajWlM2H1
	tQzK0revStrMaIOngyzeVhbKp48BiWlrc6+BwG0jc9l7Ql6pa0+MgwDwLuu11E4tdlyv
	ZqzHd/ciRHpHWsmdx8igkVKoWNDjXM+G2ZhJxqVvspaLP2AvtLYeSmausI4yJ7XHGh1r
	eSj90UVy79XAxSHaIZk/GDLdxjWULuPTBVL551yc0YW0Wa1a34+n1A2r+xUZ7CjB6qil
	6p46TD4QJRNTtthwj7SRm8nLEd2iMjt0O31J0gzJJ9IAMs6GmbiyAuzjxqYf1MHmiN/U
	pldw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FB29WG0IEaIl27w1xI8Qnd8K/u95Q0SMBY80Zo75jI4=;
	b=JD7APXuwN8gA7M5yDQUlPCvKL3oAtkSnfObEyZSpMuGFtv8ASM5OtLqi/ufHDNOp1m
	p5PB4FtzaLJafzeDcoo1/auho8VbxuqqVqexaLeXbYFk4Bi2IDjUcu+QEUMWUdCPAaJ8
	dlapTqiPhUAtXl1rFpMHZwZqOryVccJoffObvnre+tpdyfcROcJ+htyzAvEBienqPjto
	Y/Iel8RDf9PgYDNTsynDMJlwFQISJJZn18UHlATkplH5/fxOBmVaBXjKH6u7LldjGCxg
	PT9Lel7582MODJx9DHMFfAMJz//imFr6zX3FoCAmw576XboWYx4D+nfiQpsD+EUb6pNB
	mO5g==
X-Gm-Message-State: AMCzsaWpdJC8DsfaPXjuC0F/KJV931oHZfRokLuOCTr8XgIbop/aecQC
	SAEBzPmcIt4khMCRTEqZ2Lad1PhWiDTeMZzIhAk=
X-Google-Smtp-Source: ABhQp+RijwBvFyUqsONtsbQwZh5lAqolp03P4XmrPikwTDgdhzB0qK7RQZUShQFoPcIpMI0syXtJ5P7ADY7EmGA4i5c=
X-Received: by 10.13.208.6 with SMTP id s6mr6861835ywd.200.1509396595782; Mon,
	30 Oct 2017 13:49:55 -0700 (PDT)
MIME-Version: 1.0
From: Adam Lee <adam.yh.lee@gmail.com>
Date: Mon, 30 Oct 2017 20:49:45 +0000
Message-ID: <CAFeBWL5JfhLLU8V8eQP+O_bNQBbZpO=N6CpW7w8EdXHUy9FyEQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Can't run "-c devshell" - "Must be connected to a terminal"
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
X-List-Received-Date: Mon, 30 Oct 2017 20:49:57 -0000
Content-Type: multipart/alternative; boundary="94eb2c07d990eac01a055cc9c75e"

--94eb2c07d990eac01a055cc9c75e
Content-Type: text/plain; charset="UTF-8"

Hello everyone, I have this strange issue where I can't run "-c devshell"
any longer.

This worked until a day ago.
I am on Morty, and running in a Docker container.

Has anyone seen this:

Currently  1 running tasks (100 of 100)  99%
|#############################################################################################################################################################################################################################################
 |
0: cmem-4.14.00.00+gitAUTOINC+b514a99ac4-r1 do_devshell - 0s (pid 20279)
Trying to run: screen -r devshell_20279
Must be connected to a terminal.
Trying to run: screen -r devshell_20279
Must be connected to a terminal.
Trying to run: screen -r devshell_20279
Must be connected to a terminal.
Trying to run: screen -r devshell_20279
Must be connected to a terminal.
Trying to run: screen -r devshell_20279
Must be connected to a terminal.
Trying to run: screen -r devshell_20279
Must be connected to a terminal.
Trying to run: screen -r devshell_20279
Must be connected to a terminal.
Trying to run: screen -r devshell_20279
Must be connected to a terminal.
Trying to run: screen -r devshell_20279
Must be connected to a terminal.
WARNING: Screen started. Please connect in another terminal with "screen -r
devshell_20279"

Thank you,

Adam

--94eb2c07d990eac01a055cc9c75e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello everyone, I have this strange issue where I can&#39;=
t run &quot;-c devshell&quot; any longer.<div><br></div><div>This worked un=
til a day ago.</div><div>I am on Morty, and running in a Docker container.<=
/div><div><br></div><div>Has anyone seen this:</div><div><br></div><div><di=
v>Currently=C2=A0 1 running tasks (100 of 100)=C2=A0 99% |#################=
###########################################################################=
###########################################################################=
######################################################################=C2=
=A0 =C2=A0|</div><div>0: cmem-4.14.00.00+gitAUTOINC+b514a99ac4-r1 do_devshe=
ll - 0s (pid 20279)</div><div>Trying to run: screen -r devshell_20279</div>=
<div>Must be connected to a terminal.</div><div>Trying to run: screen -r de=
vshell_20279</div><div>Must be connected to a terminal.</div><div>Trying to=
 run: screen -r devshell_20279</div><div>Must be connected to a terminal.</=
div><div>Trying to run: screen -r devshell_20279</div><div>Must be connecte=
d to a terminal.</div><div>Trying to run: screen -r devshell_20279</div><di=
v>Must be connected to a terminal.</div><div>Trying to run: screen -r devsh=
ell_20279</div><div>Must be connected to a terminal.</div><div>Trying to ru=
n: screen -r devshell_20279</div><div>Must be connected to a terminal.</div=
><div>Trying to run: screen -r devshell_20279</div><div>Must be connected t=
o a terminal.</div><div>Trying to run: screen -r devshell_20279</div><div>M=
ust be connected to a terminal.</div><div>WARNING: Screen started. Please c=
onnect in another terminal with &quot;screen -r devshell_20279&quot;</div><=
/div><div><br></div><div>Thank you,</div><div><br></div><div>Adam</div><div=
><br></div></div>

--94eb2c07d990eac01a055cc9c75e--
