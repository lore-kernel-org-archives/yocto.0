Return-Path: <aaron.biver@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02ABAE00BE9; Wed, 29 May 2019 08:12:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aaron.biver[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
	[209.85.208.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C1BAE00A7D
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 08:12:11 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id a10so2839489ljf.6
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 08:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=tDGOtAUMENfHQ39pvfDrPeWahijZq4zNOHh3+UDmuJM=;
	b=X63U0NCxIeW1r88Kc5riBqGztALkMXtaXTyic0rpM1TMNZBtyODxvJOEmtdy37Gn64
	tkehe9ZDuFM0MPE6+6s7D2TFNpC8BHUHJItcaCm6FIf8mZ1GwC+AwfMEpalSZHpt+wSz
	VLmV8FihH7A4u0oTL8c6ED2W5MYiuVS1367tDt0LSueNzdx4WINYS+OmV99X9rh9nycu
	wFbXoX8Gx3wLNiKTfJ+gXBJOEBEYtR0zBLjPu/zdOhXBR4/EsCvULBi+9ulo6a5eWhoR
	BnGUl9NL7bACoNT10JyuwzBJNjuYOsrp7FYTV91MZvTLQAFGu/S0ZBcIelUzoS+cv9Xu
	8/SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=tDGOtAUMENfHQ39pvfDrPeWahijZq4zNOHh3+UDmuJM=;
	b=DfbRyOzhdhlx7cBMN8WdF2qBSUNyjZrDHulwdGim9u+BfvchTXJc5NZJkXn5Uy/NI6
	J+UYY3NX3rnfaDu5VpD2hXM10v6s3uUL4NnQGehhA3r5dkW5NkufaMW9U1wvR9EariId
	boEnHfgt4LR2YZHDt7TiOlhaCvFClUR0JYCecthFIhud65B0KLRfe/C4tgeXvnrguzdZ
	FgWY99+foAg+9nJkvYqtw0POQ3CYCAcpA7EIs+ZK7gJgzCQL8htCPDddrULcmubnR4RP
	l1k879OHuQKxtcI7y/9aLuuLJSt0a99bPqGuAKfOwgMQucIEh26w4XeEtO1gaI8HNZIX
	8wUg==
X-Gm-Message-State: APjAAAVJAOm96sp2kjWjFEO81po6qdJEuNKW2FQfiTM295gIkciydcNl
	FSakFIHCkUXMqocrY8ceomipSPA50aR0WXRHAI9w87Wk
X-Google-Smtp-Source: APXvYqwUbBkjZEYuYHWrCFSpGDjzKB0B4mq0/g4+RlcPNk7bSs9xebKCqttYmg6BkasRk0v+blx05yxlJxgXDtUV8qk=
X-Received: by 2002:a2e:9112:: with SMTP id m18mr4786678ljg.181.1559142729672; 
	Wed, 29 May 2019 08:12:09 -0700 (PDT)
MIME-Version: 1.0
From: A <aaron.biver@gmail.com>
Date: Wed, 29 May 2019 11:11:58 -0400
Message-ID: <CAMd7AX__Mty+QP8oK_pwqpPyoh89P-NtjciwbO3YOaCstHu_Wg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Creating a special file as a dependency., .. how do I cause a recipe to execute
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
X-List-Received-Date: Wed, 29 May 2019 15:12:12 -0000
Content-Type: multipart/alternative; boundary="0000000000008e6d4c058a083449"

--0000000000008e6d4c058a083449
Content-Type: text/plain; charset="UTF-8"

I would like to create a directory structure under TMPDIR as part of the
installation of my bitbake environment... I later create a jffs2 image from
${TMPDIR}/myapptmp/*.

(If it matters, I'm doing this because I want all my proprietary software
installed in a separate partition in the QSPI that gets mounted to a
separate /app directory) on boot.

So, I have my do_install function do things like this:
    MY_STAGING_DIR=${TMPDIR}/mytmp
    install -d ${MY_STAGING_DIR}
    install -d ${MY_STAGING_DIR}/bin
    install -d ${MY_STAGING_DIR}/script
...

And my recipe also states things like this:
FILES_${PN} = " \
    ${TMPDIR}/mytmp  \
    ${TMPDIR}/mytmp  /bin \
    ${TMPDIR}/mytmp  /script \
...

However, when I delete this directory and run my recipe's do_install
function, I don't see the temporary directory getting created.
On the other hand, if I edit my recipe (say, to insert debugging to figure
out what is going on) and run it again, I see the temporary directory is
created..

I suppose I could delete the temp directory every time I change code,... if
I remember every time, this would be great.  On the other hand, how can I
make the recipe run the do_install when the output object (temp directory)
is not there?

--0000000000008e6d4c058a083449
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I would like to create a directory structure under TMPDIR =
as part of the installation of my bitbake environment... I later create a j=
ffs2 image from ${TMPDIR}/myapptmp/*.<div><br></div><div>(If it matters, I&=
#39;m doing this because I want all my proprietary software installed in a =
separate partition in the QSPI that gets mounted to a separate /app directo=
ry) on boot.</div><div><br></div><div>So, I have my do_install function do =
things like this:</div><div>=C2=A0 =C2=A0 MY_STAGING_DIR=3D${TMPDIR}/mytmp<=
br>=C2=A0 =C2=A0 install -d ${MY_STAGING_DIR}<br>=C2=A0 =C2=A0 install -d $=
{MY_STAGING_DIR}/bin<br>=C2=A0 =C2=A0 install -d ${MY_STAGING_DIR}/script<b=
r><div>...</div><div><br></div><div>And my recipe also states things like t=
his:</div></div><div>FILES_${PN} =3D &quot; \<br>=C2=A0 =C2=A0 ${TMPDIR}/my=
tmp=C2=A0 \<br>=C2=A0 =C2=A0 ${TMPDIR}/mytmp=C2=A0 /bin \<br>=C2=A0 =C2=A0 =
${TMPDIR}/mytmp=C2=A0 /script \</div><div>...<br><br></div><div>However, wh=
en I delete this directory and run my recipe&#39;s do_install function, I d=
on&#39;t see the temporary directory getting created.</div><div>On the othe=
r hand, if I edit my recipe (say, to insert debugging to figure out what is=
 going on) and run it again, I see the temporary directory is created..</di=
v><div><br></div><div>I suppose I could delete the temp directory every tim=
e I change code,... if I remember every time, this would be great.=C2=A0 On=
 the other hand, how can I make the recipe run the do_install when the outp=
ut object (temp directory) is not there?</div><div><br></div><div><br></div=
><div><br></div></div>

--0000000000008e6d4c058a083449--
