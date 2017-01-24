Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CCA7E00B7D; Tue, 24 Jan 2017 09:56:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matt.hoosier[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.47 listed in dnsbl.sorbs.net]
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
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3F83E00B79
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 09:56:06 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id r126so194404008wmr.0
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 09:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=AeaHLhaBZYcFb9C+dyLkZYv4aIRUOc8rQLjCeRmgzuo=;
	b=RpNcgWKwIOtPuwfRvdhU2yS6m2rjx0JyBeMYYyTLKMmBcWwraWplzfa1U2OFvwKaVJ
	CaS16Up2FNUz3bgsDxVgPWFi3mkvlpXjwIxPrnMpTjzQp0JbLdOpUo+soMm7UW3Z8ed+
	RhRKvvXgRtdBbH6lthNwfGTafZuCivSNVriF8ikyV+6mfZtqB0yEjKY/LLumQpRrfYMS
	/PXvjApz+OdHoQQgB5F06NjcMvOWmayFsQElNW3TxuTVebyjMXYQb4Q4Q+FBtJvCZk8m
	FEuYWdeOTgmchKNIeCAMPK5OB1RfBnII0SRQ1YGz55wHrzft1OE95E0TeHHqee0M79Pa
	i4Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AeaHLhaBZYcFb9C+dyLkZYv4aIRUOc8rQLjCeRmgzuo=;
	b=ULJduYDZxzVYUNIHYm+BoFIvQ6qSOiIjvrQeDo82etcvfm0QgnnJXIVLzfj+6bwKKd
	/WvxqUtCAGvVh7cfY3rhLhuCV9gY9gFl67ZXIFtLvq+w/UsVqHhtON3MjIRN+x9qZOae
	uyQtzMDntbkScbEZb9YqJWiuHHwm5eFBH1llvx4jlTe6qPZHiyokheoalBiboAFYtA3z
	NJgoMEes2O3ncqPO1SOxh4Umjhz1ijXT1VWOCSZNuT1OA4FkC6FPuXwaGJ+KKk8ArnLH
	+F7qlmmbLu/3VRmhvoPVMEHUTJN6crYh5NSn4TFZHLk9GML6ciBZL9C1bMoj1j6AWYZE
	deYQ==
X-Gm-Message-State: AIkVDXJKbEaFJqK2CN3FacRANfHIX8bQx47bo4IJz/h80PSj6osyDNc3J+7TzimHLaT7xzJJc89ewJ2sNZgWSQ==
X-Received: by 10.28.132.2 with SMTP id g2mr6588557wmd.103.1485280565089; Tue,
	24 Jan 2017 09:56:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.206.76 with HTTP; Tue, 24 Jan 2017 09:55:24 -0800 (PST)
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Tue, 24 Jan 2017 11:55:24 -0600
Message-ID: <CAJgxT3_QyunmpzGW69j27sR_BFvvhisQVtG+-uGnMxhsO8mCLg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Ordering of anonymous Python functions and task signature calculations
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
X-List-Received-Date: Tue, 24 Jan 2017 17:56:10 -0000
Content-Type: multipart/alternative; boundary=001a114423c6795bd40546dad448

--001a114423c6795bd40546dad448
Content-Type: text/plain; charset=UTF-8

In order to support a use-case that embeds information about the Git
revision of Yocto itself that was used to make a build, I would like to run
some arbitrary Python code and dump the results (Git SHA1's, tag names,
etc) into a Bitbake variable.

The idea is that the variable would get consumed in a do_install() task to
populate some cookie-crumb file in the package payload.

Something like:

  DEPENDS = "git-native"

  python () {
    # This pseudocode isn't strictly functional for invoking Git, but you
get the idea
    d.setVar('GIT_INFO', subprocess.Popen(['git', 'rev-list',
...]).communicate().stdout)
  }

  do_install () {
    install -d ${D}/etc
    echo "${GIT_INFO}" > ${D}/etc/git-info.txt
  }

This all works on a fresh run, but Bitbake appears not to be evaluating the
anonymous Python function on each execution. This leads it to have
out-of-date information about the Git working copy when global state
changes but happens not to impact the particular recipe holding this logic.

Is there any trick available to cause the Python function to execute (and
hence update the value of ${GIT_INFO} each Bitbake execution so that the
up-to-the-moment contents of it filter into the calculation of the
signature for do_install()? Or am I just trying a wrong-headed approach and
doing something illegitimate?

-Matt

--001a114423c6795bd40546dad448
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In order to support a use-case that embeds information abo=
ut the Git revision of Yocto itself that was used to make a build, I would =
like to run some arbitrary Python code and dump the results (Git SHA1&#39;s=
, tag names, etc) into a Bitbake variable.<div><br></div><div>The idea is t=
hat the variable would get consumed in a do_install() task to populate some=
 cookie-crumb file in the package payload.</div><div><br></div><div>Somethi=
ng like:</div><div><br></div><div>=C2=A0 DEPENDS =3D &quot;git-native&quot;=
</div><div><br></div><div>=C2=A0 python () {</div><div>=C2=A0 =C2=A0 # This=
 pseudocode isn&#39;t strictly functional for invoking Git, but you get the=
 idea</div><div>=C2=A0 =C2=A0 d.setVar(&#39;GIT_INFO&#39;, subprocess.Popen=
([&#39;git&#39;, &#39;rev-list&#39;, ...]).communicate().stdout)</div><div>=
=C2=A0 }</div><div><br></div><div>=C2=A0 do_install () {</div><div>=C2=A0 =
=C2=A0 install -d ${D}/etc</div><div>=C2=A0 =C2=A0 echo &quot;${GIT_INFO}&q=
uot; &gt; ${D}/etc/git-info.txt</div><div>=C2=A0 }</div><div><br></div><div=
>This all works on a fresh run, but Bitbake appears not to be evaluating th=
e anonymous Python function on each execution. This leads it to have out-of=
-date information about the Git working copy when global state changes but =
happens not to impact the particular recipe holding this logic.</div><div><=
br></div><div>Is there any trick available to cause the Python function to =
execute (and hence update the value of ${GIT_INFO} each Bitbake execution s=
o that the up-to-the-moment contents of it filter into the calculation of t=
he signature for do_install()? Or am I just trying a wrong-headed approach =
and doing something illegitimate?</div><div><br></div><div>-Matt</div></div=
>

--001a114423c6795bd40546dad448--
