Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46002E00D9D; Thu,  7 Dec 2017 07:47:49 -0800 (PST)
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
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F2CCE00D90
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 07:47:41 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id f190so15291953ita.5
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 07:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=UeubxL2MujEiSoSh/BRVw6Ip0gDmfmjcwNWraW4spRM=;
	b=sqncfi7aqYsZ9pkvZ5P9HXsS2Pc8EISztO2tqZ0LqrdFFSWyJsJJjMIo0b7NKcqpJo
	7ZBUDrlPLzZWuQRdRVPwR3DZhHrkOm2K/NJOFo6EekN/WnQ6YhXdpOxnyEAFuGlgTpK8
	nJrQpwncKs5HI5KCsm7S6XPi4t+RAdb5BUmHvx6DP8vzrTLnKnssDPyoQkXdy8o9xnkq
	Jw9wlJVeMOFmdzuv0mYHmLZjblu2WYYMhpTPm3he4yfq+Jhepzl4HirEM299sze5Tb//
	1D4FYeDu8k2Q1f5eW/oqEMApKK0LjBad6VaMv6l9qiaUsOnKJoZd6wAYBcuGQygz1GNx
	ZKCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=UeubxL2MujEiSoSh/BRVw6Ip0gDmfmjcwNWraW4spRM=;
	b=tO+lvwbDxT7CxJrB0d42gM8AeSzSiwbJexYYNOpl5zDp64mZxIbk5AuhX62+1ViVAY
	BIJoWVSY/ePW+IaFCJKQOFAWokgPIlYrWytcrLFF1ajhRVo1ZWA4yWpt23ajzrCJ2dJo
	WjGp36lae3w2524xoTx7WOLRdsMPxm/mKn6XX8aVO8XHD05GZR8FgzBtRVioXqrJ2FCc
	zEegDu5FXVoaaqNWP6Rx5c2/7jTsol7oSTj0tLmY95o7ODgZpp7aG2RDz+07W21HmpH2
	kiJeremGk1SUp+Bbv3+bx4RGJgwFA6narQEh8B6QR6T6vEKU2eB3K8doNJfWQBQvk2OB
	WW+w==
X-Gm-Message-State: AKGB3mLpG2CZU6x3pl9fRdzpJsRMdXvLJ2JxHNKoNpk2q/qzJzkzI8CK
	tfJ/Pf1lPvb+EaqmJ44mem6mqPvKF3UGfkpB0io=
X-Google-Smtp-Source: AGs4zMa+0W4ip+wZY1p3yPQup5fqQIIOV5LWsWGdSxNxat8izioxB8zaJevxRENXFFJ59YYbnjQwrp5rYNBS/Ysm6sw=
X-Received: by 10.36.55.136 with SMTP id r130mr1813569itr.3.1512661660675;
	Thu, 07 Dec 2017 07:47:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.132.96 with HTTP; Thu, 7 Dec 2017 07:47:40 -0800 (PST)
In-Reply-To: <CAKmWj-1fwjsLE9SU05JBO0Q3BHXqRHdOYfN759=0D-OtYYXJrA@mail.gmail.com>
References: <CAKmWj-1fwjsLE9SU05JBO0Q3BHXqRHdOYfN759=0D-OtYYXJrA@mail.gmail.com>
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Thu, 7 Dec 2017 10:47:40 -0500
Message-ID: <CAKmWj-0_JS5WTDC+ih2oW9_MPTnZJZurHj0cRy4N1jXcH5vSPg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Preventing a variable from being cached
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
X-List-Received-Date: Thu, 07 Dec 2017 15:47:49 -0000
Content-Type: multipart/alternative; boundary="001a1140ab16f335a5055fc1fc1f"

--001a1140ab16f335a5055fc1fc1f
Content-Type: text/plain; charset="UTF-8"

I take it that this is not possible?

On Mon, Dec 4, 2017 at 5:15 PM, Paul Knopf <pauldotknopf@gmail.com> wrote:

> I have a variable that has a dynamic value that is set from python.
>
> -----------------------
> def get_git_position(d):
>     import bb.process
>     (output, error) = bb.process.run("git rev-parse --abbrev-ref HEAD")
>     result = output.rstrip()
>     (output, error) = bb.process.run("git rev-parse HEAD")
>     result += "-"
>     result += output.rstrip()
>     return result
> BUILD_GIT_POSITION := "${@get_git_position(d)}"
> -----------------------
>
> I have a task that I wont the checksum to change when "BUILD_GIT_POSITION"
> changes.
>
> -----------------------
> do_compile() {
>     gitversion "${LAYERROOT}" > ${S}/version.json
> }
>
> do_compile[vardeps] += "BUILD_GIT_POSITION"
> -----------------------
>
> What I am trying to do is trigger a recipe to rebuild if the git commit
> has changed or we changed to a different branch.
>
> However, this is not working. It seems that "BUILD_GIT_POSITION" is
> getting cached with a checksum.
>
> How do I prevent BUILD_GIT_POSITION from being cached, forcing the
> checksum "do_compile" to be recomputed?
>

--001a1140ab16f335a5055fc1fc1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I take it that this is not possible?</div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Mon, Dec 4, 2017 at 5:15 PM, P=
aul Knopf <span dir=3D"ltr">&lt;<a href=3D"mailto:pauldotknopf@gmail.com" t=
arget=3D"_blank">pauldotknopf@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr">I have a variable that has a dynamic =
value that is set from python.<div><br></div><div>-----------------------</=
div><div><div>def get_git_position(d):</div><div>=C2=A0 =C2=A0 import bb.pr=
ocess</div><div>=C2=A0 =C2=A0 (output, error) =3D bb.process.run(&quot;git =
rev-parse --abbrev-ref HEAD&quot;)</div><div>=C2=A0 =C2=A0 result =3D outpu=
t.rstrip()</div><div>=C2=A0 =C2=A0 (output, error) =3D bb.process.run(&quot=
;git rev-parse HEAD&quot;)</div><div>=C2=A0 =C2=A0 result +=3D &quot;-&quot=
;</div><div>=C2=A0 =C2=A0 result +=3D output.rstrip()</div><div>=C2=A0 =C2=
=A0 return result</div><div>BUILD_GIT_POSITION :=3D &quot;${@get_git_positi=
on(d)}&quot;</div></div><div>-----------------------</div><div><br></div><d=
iv>I have a task that I wont the checksum to change when &quot;BUILD_GIT_PO=
SITION&quot; changes.</div><div><br></div><div>-----------------------</div=
><div><div>do_compile() {</div><div>=C2=A0 =C2=A0 gitversion &quot;${LAYERR=
OOT}&quot; &gt; ${S}/version.json</div><div>}</div><div><br></div><div>do_c=
ompile[vardeps] +=3D &quot;BUILD_GIT_POSITION&quot;</div></div><div>-------=
----------------</div><div><br></div><div>What I am trying to do is trigger=
 a recipe to rebuild if the git commit has changed or we changed to a diffe=
rent branch.</div><div><br></div><div>However, this is not working. It seem=
s that &quot;BUILD_GIT_POSITION&quot; is getting cached with a checksum.</d=
iv><div><br></div><div>How do I prevent BUILD_GIT_POSITION from being cache=
d, forcing the checksum &quot;do_compile&quot; to be recomputed?</div></div=
>
</blockquote></div><br></div>

--001a1140ab16f335a5055fc1fc1f--
