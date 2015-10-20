Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B50E4E006D5; Mon, 19 Oct 2015 20:20:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DDF4E0059B
	for <yocto@yoctoproject.org>; Mon, 19 Oct 2015 20:20:51 -0700 (PDT)
Received: by igbkq10 with SMTP id kq10so66118158igb.0
	for <yocto@yoctoproject.org>; Mon, 19 Oct 2015 20:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ocz68C8UXScyrjePFThtU5+vFSglcgvFnoWow2qbCrE=;
	b=eXNXMERMMMHYSLcstM6qzN1EGYn+Yk5+YYJw2Besw1BR0xk1zH/RsEJBBslfqb65Ou
	weM3FnTnmyJgM/7HlmYiIkKzgtL8p63BBveQhMbrxK2MmUG4WmpGjhy2wagM4mwh88A+
	vy3IZuYTjgT1lAc/lW/glnHqwxKL1sZcYoM40z7HdmOVhd3jAnS2HiUG8fFOJt8otvbk
	JjKZw1Hw2FW6tAtPQ65fTC1PBTw9bO1NRYKH+eqbkjImDTZ99aQcqno3f4FhXiNebXUw
	HDGG4TfRgkkpc1HBfsbegSni+EX485Jbr8hoW2KSougRutsSK8K7V+uvM8qfBbr+1yfz
	Wf3Q==
MIME-Version: 1.0
X-Received: by 10.50.50.173 with SMTP id d13mr21727478igo.66.1445311251060;
	Mon, 19 Oct 2015 20:20:51 -0700 (PDT)
Received: by 10.107.170.139 with HTTP; Mon, 19 Oct 2015 20:20:50 -0700 (PDT)
Received: by 10.107.170.139 with HTTP; Mon, 19 Oct 2015 20:20:50 -0700 (PDT)
In-Reply-To: <20151019120812.GA2549@jama>
References: <CAH21_vGLfHN=hYHeWNA3Epsf0QPpnOg47NDtE7Do5BsBz+vuFQ@mail.gmail.com>
	<20151019120812.GA2549@jama>
Date: Tue, 20 Oct 2015 08:50:50 +0530
Message-ID: <CAH21_vFrTWYUkjnTTsH6JCOQqk5R00ABQNhLE80-=CLhib_E7Q@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Nightly build and world build
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
X-List-Received-Date: Tue, 20 Oct 2015 03:20:52 -0000
Content-Type: multipart/alternative; boundary=e89a8f83a20bb5a27d052280bfa3

--e89a8f83a20bb5a27d052280bfa3
Content-Type: text/plain; charset=UTF-8

Hi Martin,

Thanks for your reply.
But the link you mentioned has a status of world build for various
versions, while I am looking for what world build and nightly build meant
for and what is the difference between them.

--Atul

On 19-Oct-2015 5:38 pm, "Martin Jansa" <martin.jansa@gmail.com> wrote:
>
> On Sat, Oct 17, 2015 at 08:01:59AM +0530, atulkumar singh wrote:
> > Hi All,
> >
> > I am going through the mailing list and I found some communication
related
> > to world build and nightly build.
> > I even search in the documentation regarding the same but didn't found
any
> > useful information regarding the same.
> > Can anyone please tel me what is nightly build and world build and what
is
> > the difference between the same.
>
> My world builds are described here:
> http://www.openembedded.org/wiki/Bitbake_World_Status
>
> See link on first line.
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--e89a8f83a20bb5a27d052280bfa3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi Martin,</p>
<p dir=3D"ltr">Thanks for your reply.<br>
But the link you mentioned has a status of world build for various versions=
, while I am looking for what world build and nightly build meant for and w=
hat is the difference between them.</p>
<p dir=3D"ltr">--Atul</p>
<p dir=3D"ltr">On 19-Oct-2015 5:38 pm, &quot;Martin Jansa&quot; &lt;<a href=
=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt; wrote:<br=
>
&gt;<br>
&gt; On Sat, Oct 17, 2015 at 08:01:59AM +0530, atulkumar singh wrote:<br>
&gt; &gt; Hi All,<br>
&gt; &gt;<br>
&gt; &gt; I am going through the mailing list and I found some communicatio=
n related<br>
&gt; &gt; to world build and nightly build.<br>
&gt; &gt; I even search in the documentation regarding the same but didn&#3=
9;t found any<br>
&gt; &gt; useful information regarding the same.<br>
&gt; &gt; Can anyone please tel me what is nightly build and world build an=
d what is<br>
&gt; &gt; the difference between the same.<br>
&gt;<br>
&gt; My world builds are described here:<br>
&gt; <a href=3D"http://www.openembedded.org/wiki/Bitbake_World_Status">http=
://www.openembedded.org/wiki/Bitbake_World_Status</a><br>
&gt;<br>
&gt; See link on first line.<br>
&gt;<br>
&gt; --<br>
&gt; Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mail=
to:Martin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
</p>

--e89a8f83a20bb5a27d052280bfa3--
