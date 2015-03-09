Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34CD9E0076F; Mon,  9 Mar 2015 12:57:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADBF0E0090E
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 12:57:22 -0700 (PDT)
Received: by qgdz107 with SMTP id z107so31367700qgd.4
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 12:57:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=oy7fH272M2EnFW0C6JHhfSH5XztndSnnN9NkmJvOmAs=;
	b=Fe47W5isSb3LsNOf+9pOrBJkTfZ8I/xjrM+8hfJx5PdQcpQwoywZra07VaNvxPK4ux
	CYse7Ob1xaldkSguHH0sHjzZ8ryRS9TSaTePIQCDq/pA94YXeZ7gN6l98gVHQRhmK97P
	o49F8MgBZB7rgrfQBcE3VwTZrOvnrGvc6nsDkB5ruU+w24uBR/xlXtFPMLiy8s886fKP
	Bv8lmb1wnvH2WglsAj9ysSHJNggYxqBPc4lB4HUV0R3dUTPPmWXYPT8GPFdCxk1x2wmm
	n1kfd5Ln8rUN5EBxxuh2/6GOLii4br/73NVKscKZpgijwjPvgc2oCfP4w4xANmFU+63+
	MpVA==
X-Gm-Message-State: ALoCoQkRCJw3xTqu3vV8V20b3WDCqlpttYZ92pAGuxrt/bRd6I2QpjviCUrDUccmSncfcSZZidTi
X-Received: by 10.140.165.76 with SMTP id l73mr37558597qhl.16.1425931041315;
	Mon, 09 Mar 2015 12:57:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Mon, 9 Mar 2015 12:57:00 -0700 (PDT)
In-Reply-To: <loom.20150309T192445-878@post.gmane.org>
References: <loom.20150309T171019-54@post.gmane.org>
	<CAJTo0LZSqxRZ7uyQ42rtuuqfrzjn2wr8+5Fvb2paxa5WhA9fvg@mail.gmail.com>
	<loom.20150309T192445-878@post.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 9 Mar 2015 19:57:00 +0000
Message-ID: <CAJTo0LZpdzKULyQ5Hhmzb+cU=JbGTDm0kxekSma4NtcthYBQ-Q@mail.gmail.com>
To: Kfrell <snoopp.5.20@hotmail.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding new library to yocto project
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
X-List-Received-Date: Mon, 09 Mar 2015 19:57:27 -0000
Content-Type: multipart/alternative; boundary=001a1134ef8c3168940510e07103

--001a1134ef8c3168940510e07103
Content-Type: text/plain; charset=UTF-8

On 9 March 2015 at 18:30, Kfrell <snoopp.5.20@hotmail.fr> wrote:

> ERROR: This autoconf log indicates errors, it looked at host include and/or
> library paths while determining system capabilities.
> Rerun configure task after fixing this.
> build/tmp/work/oe-linux-gnueabi/libxerces/3.1.1-r1/xerces-c-3.1.1'
> ERROR: Function failed: do_qa_configure
> ERROR: Logfile of failure stored
>
> in:build/tmp/work/oe-linux-gnueabi/libxerces/3.1.1-r1/temp/log.do_configure.21943
> ERROR: Task 541
>

Oh right, you never included this in your first mail.  As it says,
configure is failing.  There are no packages because nothing was compiled.

You'll need to have a look at the configure log output and configure script
and determine what paths it is using from the host when it shouldn't be,
and fix it.  Obviously xerces has a pretty bad build system as I seem to
recall this coming up once a year.  Someone should fix it *and send the
patch to Apache*.

Ross

--001a1134ef8c3168940510e07103
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 March 2015 at 18:30, Kfrell <span dir=3D"ltr">&lt;<a href=3D"mailto:sn=
oopp.5.20@hotmail.fr" target=3D"_blank">snoopp.5.20@hotmail.fr</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div id=3D":7fw" class=3D"a3s" =
style=3D"overflow:hidden">ERROR: This autoconf log indicates errors, it loo=
ked at host include and/or<br>
<span class=3D"">library paths while determining system capabilities.<br>
Rerun configure task after fixing this.<br>
</span>build/tmp/work/oe-linux-gnueabi/libxerces/3.1.1-r1/xerces-c-3.1.1&#3=
9;<br>
<span class=3D"">ERROR: Function failed: do_qa_configure<br>
ERROR: Logfile of failure stored<br>
</span>in:build/tmp/work/oe-linux-gnueabi/libxerces/3.1.1-r1/temp/log.do_co=
nfigure.21943<br>
ERROR: Task 541</div></blockquote></div><br>Oh right, you never included th=
is in your first mail.=C2=A0 As it says, configure is failing.=C2=A0 There =
are no packages because nothing was compiled.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">You&#39;ll need to have a look at t=
he configure log output and configure script and determine what paths it is=
 using from the host when it shouldn&#39;t be, and fix it.=C2=A0 Obviously =
xerces has a pretty bad build system as I seem to recall this coming up onc=
e a year.=C2=A0 Someone should fix it *and send the patch to Apache*.</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><=
/div>

--001a1134ef8c3168940510e07103--
