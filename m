Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71B32E00CC4; Mon,  4 Dec 2017 14:15:59 -0800 (PST)
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
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2913E00B48
	for <yocto@yoctoproject.org>; Mon,  4 Dec 2017 14:15:58 -0800 (PST)
Received: by mail-it0-f46.google.com with SMTP id z6so16702623iti.4
	for <yocto@yoctoproject.org>; Mon, 04 Dec 2017 14:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5cU4V5g7xEcjBU+GCxO5zvb0NIm/+113XGjNB4bfqTw=;
	b=UpwAJcHiVtYF348YB0wliYKud7hyibiv0PPmOPYO2K91KIdR/sio3w6d0qrudVjIpW
	UtHKkIn1mBSpWoz3a7gMgJLKCIXAhKIZR4nW9ed9022ZcYWUqs/jWb0N+IMCgC3wKIVB
	TT3o9c38hOCbyZm5gB8U3Ou8NL7ygD1ToFQ9BvVFJ2OVEpzHGQMPkvbYNImhIcYeNxHV
	cCxQQsXzJ3adbj0xIZ0SIT8p5RwI0lAiWztNYXODm7+cF6GMTE1UcLCTGgJusvstnUsg
	Q1UPmjeVPOBlLBA0u4b4YgfT2oY5PlaVP4nIYL6/a3ACK5d8cu5WUS1RXUgyBWoF/inK
	jKzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5cU4V5g7xEcjBU+GCxO5zvb0NIm/+113XGjNB4bfqTw=;
	b=MIPaDTuMoKsLKRCeNoDhqgZgey5ZBzWKwW/WWfipnck1PMxCRQ1+OoT18PwSNbVPx5
	nkG879Ll9TUC7BXYpXA6Ii6ih21xVyxQZWxcBsarNI1BseZUbipClY6gFATL+UMXrxcY
	gmrmf7TZsvR749DN7H9WiV+UQuSRIhXukDqgWFnXqoz8eHxfJ98ieJV61niBUAP6FdWT
	Hb63+fcnKtFcmcN7HgfENaFEg+m3WPSi4q5U33diffCkGaI+sc2+Put2uip4mCIDTtNr
	MjdDwQQSUOoQx6yDdVk+HbpPC1w4QbBC+pCtS7B9+va9WLJtpblaZDGC2vXxAgfe4xip
	L+IQ==
X-Gm-Message-State: AJaThX5Z9SKo1Vd0mPLD4YSllsRIuA0sOL1hQQYOUrhnTEMjTSb6NcYj
	aVXaQfksZC73GcR/3JFkKIFuNKfMqdYPlA/xJE8HnQ==
X-Google-Smtp-Source: AGs4zMaF4876cWHetedssLW1rfqsMBf5Y2fGqtW2Gq1Ex5vWUO/+qSekrmFHu2eWXSd+CDYBhFvisy9mSeldTZh2/EY=
X-Received: by 10.107.70.25 with SMTP id t25mr26925023ioa.187.1512425757469;
	Mon, 04 Dec 2017 14:15:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.132.96 with HTTP; Mon, 4 Dec 2017 14:15:56 -0800 (PST)
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Mon, 4 Dec 2017 17:15:56 -0500
Message-ID: <CAKmWj-1fwjsLE9SU05JBO0Q3BHXqRHdOYfN759=0D-OtYYXJrA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Preventing a variable from being cached
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
X-List-Received-Date: Mon, 04 Dec 2017 22:15:59 -0000
Content-Type: multipart/alternative; boundary="089e08281d6005f056055f8b1000"

--089e08281d6005f056055f8b1000
Content-Type: text/plain; charset="UTF-8"

I have a variable that has a dynamic value that is set from python.

-----------------------
def get_git_position(d):
    import bb.process
    (output, error) = bb.process.run("git rev-parse --abbrev-ref HEAD")
    result = output.rstrip()
    (output, error) = bb.process.run("git rev-parse HEAD")
    result += "-"
    result += output.rstrip()
    return result
BUILD_GIT_POSITION := "${@get_git_position(d)}"
-----------------------

I have a task that I wont the checksum to change when "BUILD_GIT_POSITION"
changes.

-----------------------
do_compile() {
    gitversion "${LAYERROOT}" > ${S}/version.json
}

do_compile[vardeps] += "BUILD_GIT_POSITION"
-----------------------

What I am trying to do is trigger a recipe to rebuild if the git commit has
changed or we changed to a different branch.

However, this is not working. It seems that "BUILD_GIT_POSITION" is getting
cached with a checksum.

How do I prevent BUILD_GIT_POSITION from being cached, forcing the checksum
"do_compile" to be recomputed?

--089e08281d6005f056055f8b1000
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a variable that has a dynamic value that is set fro=
m python.<div><br></div><div>-----------------------</div><div><div>def get=
_git_position(d):</div><div>=C2=A0 =C2=A0 import bb.process</div><div>=C2=
=A0 =C2=A0 (output, error) =3D bb.process.run(&quot;git rev-parse --abbrev-=
ref HEAD&quot;)</div><div>=C2=A0 =C2=A0 result =3D output.rstrip()</div><di=
v>=C2=A0 =C2=A0 (output, error) =3D bb.process.run(&quot;git rev-parse HEAD=
&quot;)</div><div>=C2=A0 =C2=A0 result +=3D &quot;-&quot;</div><div>=C2=A0 =
=C2=A0 result +=3D output.rstrip()</div><div>=C2=A0 =C2=A0 return result</d=
iv><div>BUILD_GIT_POSITION :=3D &quot;${@get_git_position(d)}&quot;</div></=
div><div>-----------------------</div><div><br></div><div>I have a task tha=
t I wont the checksum to change when &quot;BUILD_GIT_POSITION&quot; changes=
.</div><div><br></div><div>-----------------------</div><div><div>do_compil=
e() {</div><div>=C2=A0 =C2=A0 gitversion &quot;${LAYERROOT}&quot; &gt; ${S}=
/version.json</div><div>}</div><div><br></div><div>do_compile[vardeps] +=3D=
 &quot;BUILD_GIT_POSITION&quot;</div></div><div>-----------------------</di=
v><div><br></div><div>What I am trying to do is trigger a recipe to rebuild=
 if the git commit has changed or we changed to a different branch.</div><d=
iv><br></div><div>However, this is not working. It seems that &quot;BUILD_G=
IT_POSITION&quot; is getting cached with a checksum.</div><div><br></div><d=
iv>How do I prevent BUILD_GIT_POSITION from being cached, forcing the check=
sum &quot;do_compile&quot; to be recomputed?</div></div>

--089e08281d6005f056055f8b1000--
