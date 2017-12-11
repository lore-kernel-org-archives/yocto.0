Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00F76E00D69; Mon, 11 Dec 2017 03:26:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CCE0E008FB
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 03:26:05 -0800 (PST)
Received: by mail-qt0-f196.google.com with SMTP id m59so37428556qte.11
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 03:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=e7FQnHSjIKXXX7dM/TVVv6LWH8VavitG2gmr5u3KFXA=;
	b=VIotkVyBmLqiVMbL1/dOVDMq2+vCRr9uOfcY5J1V4GdDi1oh3nShreh89+h2IBVxsv
	bb7XvNrJo6xM7iOJ0/9rs9MNit3rPFU12w6LzR+baZkixOF0W05QxjiRVZB0GK0voFcM
	BOFPLStLQ6xdVDb4gyiHSICK5seYhrH78BbvDVwdDAqMNpatnAJUifEKF2pS4JFYxBgh
	Ucpr/ZI6wsGGV5UveQwFqYOLjzWJoHkux8jQMaznc86RlGo4+nTUBefI8UTedyuMNK6J
	zS8+F8uYLaYRKhPBWQ0C9a3hCIHpkaj4Cy4fNMuP8lxsjueWJgJlwnP9jtt0NPLk9MMK
	PxGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=e7FQnHSjIKXXX7dM/TVVv6LWH8VavitG2gmr5u3KFXA=;
	b=rXH1psYD8qcuDDNdUdK1/4ps0MYUQ4qS40x1kZ17r0eIWSjjbADdlYbTG3IgJC6Ms4
	pqk+ZUizoAERLDed25nqNRlSKEWfK+s1r7n8+q0U0vnMvaKXJnWzzCBetlPD2ATXC/9V
	t15PIQpZBGG9rfubdGyR3kW3ra38llhPucaF/BflbCbyFjcfIgbnOutiToYY1UFJ+orr
	/dMf+Wi0qLSov3g7lOZLNoO/spbhtYonNdUoBg4gOyUp7/9HukjiJZJHmE0bzS55j7tD
	cw5TW0gRofvBUnMH8txDO8hjaAKgrJN2E9ximD00h3Ln0SRVhCpa9MlVtxR80ZYN4Pjm
	1Kug==
X-Gm-Message-State: AKGB3mJbl/eOrY3hKFntK8o4CdF9axVhyee4S7s+yE+Vd5ZCVBYqSRT7
	Pzhc6KDQElO+AUv2xWmDvz1c56EUxkV0592Osns=
X-Google-Smtp-Source: ACJfBouTdDqH/BLoFnlfJgs8OJsJq/oOuNIRKUu6j2Y14FH+pGxtX9w5JygtQqVvtjtfzYb0xrhSNOeDVU3yBvv6Foo=
X-Received: by 10.200.57.80 with SMTP id t16mr96083qtb.98.1512991565482; Mon,
	11 Dec 2017 03:26:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.21.241 with HTTP; Mon, 11 Dec 2017 03:26:04 -0800 (PST)
Received: by 10.140.21.241 with HTTP; Mon, 11 Dec 2017 03:26:04 -0800 (PST)
In-Reply-To: <CAPyrkgxkcO+3UW4jqy9Uh0pVSRwFH9Pss5d2ihVBtRZ3Y+B08A@mail.gmail.com>
References: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
	<CAPyrkgxkcO+3UW4jqy9Uh0pVSRwFH9Pss5d2ihVBtRZ3Y+B08A@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 11 Dec 2017 09:26:04 -0200
Message-ID: <CAF3SDA7qCEUGNfmoJ0MXM4OAMSsC=rgnx3xPira7cZSch0ATMQ@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@yoctoproject.org
Subject: Re: .kernel-meta/configs folder missing make linux-raspberrypi to fail
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
X-List-Received-Date: Mon, 11 Dec 2017 11:26:07 -0000
Content-Type: multipart/alternative; boundary="001a11406a52cf10dc05600ecc51"

--001a11406a52cf10dc05600ecc51
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yeah but I got to face the error again, maybe tonight when I get home :)

On Dec 11, 2017 9:17 AM, "Paul Barker" <pbarker@toganlabs.com> wrote:

> On Sun, Dec 10, 2017 at 5:14 PM, Daniel. <danielhilst@gmail.com> wrote:
> > Hi everybody,
> >
> > I'm building a vanilla image for MACHINE=3Draspberrypi3-64. I'm doing t=
he
> > build for the first time and faced an error at
> > linux-raspberrypi:do_kernel_configme. I found that .kernel-meta/configs
> > folder was missing, so I fired a devshell and created it. After that
> > everything works as expected and linux-raspberrypi build fines.
> >
> > The solution I got is palliative, what would be the real solution and
> what
> > is this .kernel-meta folder? I had never seem this folder before.
>
> I have seen this issue occasionally when the do_kernel_configme task
> is re-executed. A "bitbake virtual/kernel -c clean" has always
> resolved this for me, allowing the next build to succeed. It doesn't
> occur on my autobuild systems though so I figure it's an edge case I'm
> hitting when building locally as I'm hacking around on recipes.
>
> I've never seen this on the first build of the kernel though.
>
> Which version of Yocto are you using? Could you send us the build
> configuration summary and the full error messages printed by bitbake?
>
> Thanks,
>
> --
> Paul Barker
> Tog=C3=A1n Labs Ltd
>

--001a11406a52cf10dc05600ecc51
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Yeah but I got to face the error again, maybe tonight whe=
n I get home :)</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Dec 11, 2017 9:17 AM, &quot;Paul Barker&quot; &lt;<a href=3D"mailto:=
pbarker@toganlabs.com">pbarker@toganlabs.com</a>&gt; wrote:<br type=3D"attr=
ibution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">On Sun, Dec 10, 2017 at 5:14 PM, Da=
niel. &lt;<a href=3D"mailto:danielhilst@gmail.com">danielhilst@gmail.com</a=
>&gt; wrote:<br>
&gt; Hi everybody,<br>
&gt;<br>
&gt; I&#39;m building a vanilla image for MACHINE=3Draspberrypi3-64. I&#39;=
m doing the<br>
&gt; build for the first time and faced an error at<br>
&gt; linux-raspberrypi:do_kernel_<wbr>configme. I found that .kernel-meta/c=
onfigs<br>
&gt; folder was missing, so I fired a devshell and created it. After that<b=
r>
&gt; everything works as expected and linux-raspberrypi build fines.<br>
&gt;<br>
&gt; The solution I got is palliative, what would be the real solution and =
what<br>
&gt; is this .kernel-meta folder? I had never seem this folder before.<br>
<br>
I have seen this issue occasionally when the do_kernel_configme task<br>
is re-executed. A &quot;bitbake virtual/kernel -c clean&quot; has always<br=
>
resolved this for me, allowing the next build to succeed. It doesn&#39;t<br=
>
occur on my autobuild systems though so I figure it&#39;s an edge case I&#3=
9;m<br>
hitting when building locally as I&#39;m hacking around on recipes.<br>
<br>
I&#39;ve never seen this on the first build of the kernel though.<br>
<br>
Which version of Yocto are you using? Could you send us the build<br>
configuration summary and the full error messages printed by bitbake?<br>
<br>
Thanks,<br>
<br>
--<br>
Paul Barker<br>
Tog=C3=A1n Labs Ltd<br>
</blockquote></div></div>

--001a11406a52cf10dc05600ecc51--
