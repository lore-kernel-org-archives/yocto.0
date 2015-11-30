Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82255E007C3; Mon, 30 Nov 2015 12:21:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21785E005B7
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 12:21:41 -0800 (PST)
Received: by igbxm8 with SMTP id xm8so81423883igb.1
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 12:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Acusles4hsJAcdFPOFp9zCaEB4+nPgnBFQEyaqd81cw=;
	b=F6BribVhudurRAhPzKwPpouAvGirN6IttZIGc2IlMa281N+xjASN9NIsDHE5BRr1T2
	m9GJiiT0O/gv9Rler9KjA70AJfdSkjtDSjsX0MuSEHcGMTZTDSZkBM9YOS5iSDIw90p6
	EklhQnAogqDpmPX63cA5zXRNZoUvtzXrtPA+5ZMmyYEXOYnqkNsy+9gq9ZkPFAIpjE9k
	JLpwAY8OBuqHSrUct5GTa1Vp1nmtZfNcehexCcfNgomuXmyyly+dPEY9FwWbAj7sVH9X
	Q87vMdvVFSWKsrsJUQ+8oxPvB/Mbe5NesjTzPseeI/vDU/KRaqHmC4rIrfr/XYZVuYBX
	plyA==
MIME-Version: 1.0
X-Received: by 10.50.4.40 with SMTP id h8mr20408107igh.75.1448914901188; Mon,
	30 Nov 2015 12:21:41 -0800 (PST)
Received: by 10.107.12.205 with HTTP; Mon, 30 Nov 2015 12:21:41 -0800 (PST)
Received: by 10.107.12.205 with HTTP; Mon, 30 Nov 2015 12:21:41 -0800 (PST)
In-Reply-To: <1721359978.8800564.1448508568109.JavaMail.yahoo@mail.yahoo.com>
References: <1721359978.8800564.1448508568109.JavaMail.yahoo.ref@mail.yahoo.com>
	<1721359978.8800564.1448508568109.JavaMail.yahoo@mail.yahoo.com>
Date: Mon, 30 Nov 2015 12:21:41 -0800
Message-ID: <CAMKF1spk9bvgwxMgx5wGi1yaMFK9dapqX08YpB2awkrtfmRs_Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Edward Vidal <develone@sbcglobal.net>
Cc: yocto@yoctoproject.org, Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: Problem using unix source in do_compile
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
X-List-Received-Date: Mon, 30 Nov 2015 20:21:44 -0000
Content-Type: multipart/alternative; boundary=001a11c32324fec8dd0525c7c994

--001a11c32324fec8dd0525c7c994
Content-Type: text/plain; charset=UTF-8

On Nov 25, 2015 7:30 PM, "Edward Vidal" <develone@sbcglobal.net> wrote:
>
> Hello all,
> After a long time of trying to get Michael Looijmans fpga-image-adi.bb
from meta-topic to work.  I wanted to share the fix.  I was running Ubuntu
12.04.
> which sh
> /bin/sh
> cd /bin
> ls -la sh
> lrwxrwxrwx 1 root root 4 May 16  2015 sh -> dash
> ln -sf bash sh
> ls -la /bin/sh
> lrwxrwxrwx 1 root root 4 Nov 25 17:28 /bin/sh -> bash
> which gmake
> /usr/bin/gmake
> cd /usr/bin
> ln -sf make gmake
> ls -la /usr/bin/gmake
> Thanks for all the help.

There are better ways to switch default sh to be bash or dash
dpkg-reconfigure dash would offer you the selection choice. But why did you
not try Paul's suggestions
>
> Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c32324fec8dd0525c7c994
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Nov 25, 2015 7:30 PM, &quot;Edward Vidal&quot; &lt;<a href=3D"mailto:dev=
elone@sbcglobal.net">develone@sbcglobal.net</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello all,<br>
&gt; After a long time of trying to get Michael Looijmans <a href=3D"http:/=
/fpga-image-adi.bb">fpga-image-adi.bb</a> from meta-topic to work.=C2=A0 I =
wanted to share the fix.=C2=A0 I was running Ubuntu 12.04.<br>
&gt; which sh<br>
&gt; /bin/sh<br>
&gt; cd /bin<br>
&gt; ls -la sh<br>
&gt; lrwxrwxrwx 1 root root 4 May 16=C2=A0 2015 sh -&gt; dash<br>
&gt; ln -sf bash sh<br>
&gt; ls -la /bin/sh<br>
&gt; lrwxrwxrwx 1 root root 4 Nov 25 17:28 /bin/sh -&gt; bash<br>
&gt; which gmake<br>
&gt; /usr/bin/gmake<br>
&gt; cd /usr/bin<br>
&gt; ln -sf make gmake<br>
&gt; ls -la /usr/bin/gmake<br>
&gt; Thanks for all the help.</p>
<p dir=3D"ltr">There are better ways to switch default sh to be bash or das=
h dpkg-reconfigure dash would offer you the selection choice. But why did y=
ou not try Paul&#39;s suggestions<br>
&gt;<br>
&gt; Edward Vidal Jr. e-mail <a href=3D"mailto:develone@sbcglobal.net">deve=
lone@sbcglobal.net</a> 915-595-1613<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</p>

--001a11c32324fec8dd0525c7c994--
