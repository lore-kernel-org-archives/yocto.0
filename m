Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A4DBE00B48; Tue, 21 Nov 2017 22:12:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauldotknopf[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 804A0E008A4
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 22:12:55 -0800 (PST)
Received: by mail-lf0-f44.google.com with SMTP id d10so5800959lfj.7
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 22:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=nn1t3db6easg2h/ZipsmcOfXoL2l2WLU5nf2xKSRECw=;
	b=YZZmFQXcem/7gmPbIl2zPbBgGn3AlBnVX9fhvW/n516Gx1vmWNE0eWkpfVtX//iOlU
	B94GgOlVYoDoHR+3GmD+5OkHJFGnyMKB75wd47GVlfqULcuoGb7FMDbQc8AcDr6uWqtl
	POcG0FX1pqMHO522gII4l4GM5L0RYe9zmSuHgQhSNV9fNON6goj9+x3gVQsFJpAZmAoE
	hgGesZco+wlrlxPgtIPJ4x1pugpPqyTCpLqAG0r42vgIUbMCmGSQWwy1URp4v64CzXy2
	dNwod8PjJcMjbqrM9wFKvhKwIDag8MugGSvTytkcAclM+gxWzGpuiSSnqdma8eZXU+c4
	n0iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nn1t3db6easg2h/ZipsmcOfXoL2l2WLU5nf2xKSRECw=;
	b=LGN6HtvUltoElYCA7gBNUvDzb/KnYOppzAIRJBbtqwRKPFMTwMQfPaUdplrYNnkFIc
	h7EBZ8OM+3SxG++I52C1HRgvGYysERzUfbOWMp1jdROFto4ckjJzm+uY3soKALUk+Xn6
	fCtOTgJrVid23vdX2kbnWEwJ8xjD0Vw/oawwjURcbcFq1IqQD2gcxH5my44HpcBO2fCn
	ejeOEIKGLT0Bfdr2iAN8XGacNrR1CLTA8MkuENNLTehzPg7yNQZQ2jH9mguQ9PJiaB4o
	MZKz8wxM0KdjJykYV383vZOog7/a98YQvhN1BLAy1iEOWAjNOGM2XsMinzAGrNlkhYHV
	3bqg==
X-Gm-Message-State: AJaThX6V7X7rt2OaMie/J/zrUAWrXFt5TktAdwhmWLhwaCib8d+2eF1D
	EAKsRhwyEoQSBMLuEelw/oZ8+PuL3aPUw228X8YZQQ==
X-Google-Smtp-Source: AGs4zMZjWG9ajGakcsa07YFtBytLu4N3wG48wqxoPBovQuzayp0Qp1vwdA7J2TH2bKnO1IXNYhmW+TM7iS0b27whMm8=
X-Received: by 10.25.222.208 with SMTP id i77mr6120603lfl.151.1511331174189;
	Tue, 21 Nov 2017 22:12:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.151.76 with HTTP; Tue, 21 Nov 2017 22:12:53 -0800 (PST)
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Wed, 22 Nov 2017 01:12:53 -0500
Message-ID: <CAKmWj-1mYZcWzfVZdQe+QSahca8HoK7Ukk5wZoSejz2HqOhNGA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Forcing a single task to re-run each build, by default.
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
X-List-Received-Date: Wed, 22 Nov 2017 06:12:56 -0000
Content-Type: multipart/alternative; boundary="f403045fa50ec68e92055e8c351f"

--f403045fa50ec68e92055e8c351f
Content-Type: text/plain; charset="UTF-8"

I have a task that I would like to be forced to run for every build.

NOTE: I am aware of the deploy.bbclass, but I want to not use sstate.
Assume I am not using deploy.bbclass.

So, let's say I have this.

--------------------------------------------------------------------
DEPLOYDIR = "${WORKDIR}/deploy-${PN}"
do_deploy[dirs] = "${DEPLOYDIR} ${B}"
do_deploy[vardeps] += "DATETIME"

do_deploy() {
    install -d ${DEPLOYDIR}
    # custom stuff...
}

addtask do_deploy after do_install
--------------------------------------------------------------------

Now, when I run this recipe, I get "non-deterministic" errors, which I get.
Maybe I can get a DATETIME-ish variable that has the same random value
throughout the entire bitbake process?

Or, what about this?

--------------------------------------------------------------------
#do_deploy[vardeps] += "DATETIME"
do_deploy[stamp-extra-info] = "${DATETIME}"
--------------------------------------------------------------------

--f403045fa50ec68e92055e8c351f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a task that I would like to be forced to run for ev=
ery build.<div><br></div><div>NOTE: I am aware of the deploy.bbclass, but I=
 want to not use sstate. Assume I am not using deploy.bbclass.</div><div><b=
r></div><div>So, let&#39;s say I have this.</div><div><br></div><div>------=
--------------------------------------------------------------<br></div><di=
v><div>DEPLOYDIR =3D &quot;${WORKDIR}/deploy-${PN}&quot;</div><div>do_deplo=
y[dirs] =3D &quot;${DEPLOYDIR} ${B}&quot;</div><div>do_deploy[vardeps] +=3D=
 &quot;DATETIME&quot;</div><div><br></div><div>do_deploy() {</div><div>=C2=
=A0 =C2=A0 install -d ${DEPLOYDIR}</div><div>=C2=A0 =C2=A0 # custom stuff..=
.</div><div>}</div><div><br></div><div>addtask do_deploy after do_install</=
div></div><div>------------------------------------------------------------=
--------</div><div><br></div><div>Now, when I run this recipe, I get &quot;=
non-deterministic&quot; errors, which I get. Maybe I can get a DATETIME-ish=
 variable that has the same random value throughout the entire bitbake proc=
ess?</div><div><br></div><div>Or, what about this?<br><br>-----------------=
---------------------------------------------------</div><div>#do_deploy[va=
rdeps] +=3D &quot;DATETIME&quot;<br>do_deploy[stamp-extra-info] =3D &quot;$=
{DATETIME}&quot;<br></div><div>--------------------------------------------=
------------------------<br></div></div>

--f403045fa50ec68e92055e8c351f--
