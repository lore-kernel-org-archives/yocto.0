Return-Path: <jatedev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15125E007AD; Tue, 19 Aug 2014 06:12:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jatedev[at]gmail.com)
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
	*      [209.85.192.54 listed in list.dnswl.org]
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9091E0079B
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 06:12:25 -0700 (PDT)
Received: by mail-qg0-f54.google.com with SMTP id j5so3090334qga.13
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 06:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=VarH0XoP1K6lWpa+Q//zztEdBgmR0DagM+MyG+QpBMI=;
	b=iyv9jzwoWrUHNv6fEqXSFnyoE+2Mm8RtCAQ5xmSgDh+cpJaFL2kXyp8ZnOYU5Q5x70
	mNie2ZWphxAmpliucm/E3ZrNG81J2IIJbbVIjuzLz12SiulsnIfJlDDvr1xpwv5hfBrO
	n8SxHeIEcxLVEpegvasZnglqNR98lZq2/nz6oWZMhtwZythtPZ7wl36kTJvA6nUgnvuG
	ASKOw2M4hng6dE7jUXZCeu8a9Xqrdz+41wQSVsZ6ReRiGQxoDgZDx2KCGjKBdlNrjw+R
	mXati/1iHfHurmZxQG+Ts7e5taIsYFV+HWSYEh1hc4oGoYImWJsLrWLEfxxtSZFc+FgK
	ReTQ==
MIME-Version: 1.0
X-Received: by 10.224.131.8 with SMTP id v8mr68177644qas.31.1408453944405;
	Tue, 19 Aug 2014 06:12:24 -0700 (PDT)
Received: by 10.140.34.76 with HTTP; Tue, 19 Aug 2014 06:12:24 -0700 (PDT)
In-Reply-To: <CAPphmgb+C-mHeZVm-RbD-Ap4UG4VG_3jwoTdO7XP49dbG+dTGw@mail.gmail.com>
References: <CAPphmgb+C-mHeZVm-RbD-Ap4UG4VG_3jwoTdO7XP49dbG+dTGw@mail.gmail.com>
Date: Tue, 19 Aug 2014 09:12:24 -0400
Message-ID: <CAPphmga9unzhAnDFq2f+cP01gs0cQ_wRsbyNc1dQNvaqvbK8jQ@mail.gmail.com>
From: Jate Sujjavanich <jatedev@gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: base-files: /etc/profile profile.d execution order
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
X-List-Received-Date: Tue, 19 Aug 2014 13:12:28 -0000
Content-Type: multipart/alternative; boundary=047d7b624e7209f6750500fb3d90

--047d7b624e7209f6750500fb3d90
Content-Type: text/plain; charset=UTF-8

I moved the profile.d loop in my build the end of the etc profile script.

Should this change be made in base-files?


- Jate S.

On Thursday, August 7, 2014, Jate S <jatedev@gmail.com> wrote:

> I am trying to use a file in profile.d to override the default umask
> in /etc/profile. However, the umask line in /etc/profile comes after
> the code which sources profile.d files.
>
> I suggest moving the umask line and the exports to before the profile.d
> code.
>

--047d7b624e7209f6750500fb3d90
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I moved the profile.d loop in my build the end of the etc profile script.<d=
iv><br></div><div>Should this change be made in base-files?</div><div><br><=
/div><div><br></div><div>- Jate S.<br><br>On Thursday, August 7, 2014, Jate=
 S &lt;<a href=3D"mailto:jatedev@gmail.com">jatedev@gmail.com</a>&gt; wrote=
:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">I am trying to use a file in profile.d to ov=
erride the default umask<br>
in /etc/profile. However, the umask line in /etc/profile comes after<br>
the code which sources profile.d files.<br>
<br>
I suggest moving the umask line and the exports to before the profile.d cod=
e.<br>
</blockquote></div>

--047d7b624e7209f6750500fb3d90--
