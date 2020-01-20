Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.15175.1579544876019867601
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 10:27:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NF5NJeHt;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: ticotimo@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CC0AE01545; Mon, 20 Jan 2020 10:27:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11B38E0044F
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 10:27:51 -0800 (PST)
Received: by mail-il1-f176.google.com with SMTP id c4so267440ilo.7
        for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 10:27:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uKIYxDv49Q78WM9kVZg4wFhVdkTQPY0Suv0h3dUON9s=;
        b=NF5NJeHtoMoSZMqZRJYhBkVn7o8oa8wvzeN+0Sf3AJTKtl74K4iVqbQ5Aie3BaveDm
         0c8belJo7oW2i+og7xsx/mSXqBsUv7YRxHBUfq4tUNmPdDUvMCu9FSNOrpABilehCDfV
         dx+I164OXLCOywoACyNlO3VXHO185QWQ4ss8gZPISMw3AmcBpLURZPxs3YoVLQ2sk8jg
         pXgoBmwqntJEy7VS8pAOoDJdBdX4Qn7Mf7bvL8X98P33vSgA4/UxNUyd53YY5m9x9Qoq
         fuaNJLJ89+2Wk/v7H5Kb59bVmq7Lh0o+eZJBUXbLNPRLbtNn8byA2FtCO5gAeB5Ho5qQ
         seUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uKIYxDv49Q78WM9kVZg4wFhVdkTQPY0Suv0h3dUON9s=;
        b=X4a5pnYfuB4wfAVr7pRlUvv81yHAR0UgjT5pDDz8yOTVWkIKjVCURnCOBOprSrokkR
         ukxVkQ+MHNNi/L5h/hZNll6hPsntuOmN5p9mcD4ElGOcjF1yslDxUPJEFokWSVjSHEKW
         tlnOG3aImkzIQC0Kdvx4fp+SXMGvWRcYhCd9QvJ2MTLxRbAO4g6i7jlvUn3+/ihdakM4
         BpNDm+y85nSnN7e/VXoFbpop2FmigtusGtdbSgvFPkkC7l/+GPjwjGtllQxRehRkzcPN
         5en95+14pCYGlf1jyNTnFPkgVOKc3UJ5C8VrWKjqVillISUfplpLuiCNPOR8pPkXISlY
         QZbA==
X-Gm-Message-State: APjAAAWyj8Mx0ZLgporotvvWKQcs36jmo+FZAYcLWLrxuN2RN6w2HrbF
	GhkWE6wwPBas3WQYbJD0LqlwnbKeN3LpMqiknDo=
X-Google-Smtp-Source: APXvYqw6o+RW2WQVIrwoV3W5q/5h0BnnsuUSXYfLeVZM4IeTj7vJCWjy89QoKaJfS9vFZJI9FNX+pFyBYTVoquzlN9Y=
X-Received: by 2002:a92:911b:: with SMTP id t27mr346971ild.142.1579544871382;
 Mon, 20 Jan 2020 10:27:51 -0800 (PST)
MIME-Version: 1.0
References: <20200120171433.28109-1-ross.burton@intel.com>
In-Reply-To: <20200120171433.28109-1-ross.burton@intel.com>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Mon, 20 Jan 2020 10:27:40 -0800
Message-ID: <CANx9H-A+1UwheNMNM+8Mgu9Gxseg=ygGo5rFxaHSHz1xF-u1jg@mail.gmail.com>
Subject: Re: [yocto] [meta-python2 v2] python: add 2.7.17 from oe-core
To: Ross Burton <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f73391059c96729e"

--000000000000f73391059c96729e
Content-Type: text/plain; charset="UTF-8"

There was one additional patch for python-setuptools-native needed, but I
have taken care of that under separate cover.

Can you double check that anything remaining in oe-core is cleaned up,
while I continue to focus on meta-python2?

This is now merged (as is the other python-setuptools patch).

THANK YOU!

On Mon, Jan 20, 2020 at 9:15 AM Ross Burton <ross.burton@intel.com> wrote:

> Python 2 ceased being maintained on the 1st January 2020.  All users of
> Python 2 in oe-core have already been ported to Python 3, so in oe-core
> 390f3eda Python 2 was finally removed from oe-core itself.
>
> The following are added to meta-python2 in this commit:
> - python and python-native 2.7.17
> - python-setuptools
> - The classes pythonnative, pythondir, distutils, setuptools
>
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  classes/distutils-base.bbclass                |    4 +
>  classes/distutils.bbclass                     |   87 ++
>  classes/python-dir.bbclass                    |    5 +
>  classes/pythonnative.bbclass                  |   27 +
>  classes/setuptools.bbclass                    |    3 +
>
> <snip>

> --
> 2.20.1
>
> 
>

--000000000000f73391059c96729e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There was one additional patch for python-setuptools-=
native needed, but I have taken care of that under separate cover.</div><di=
v><br></div><div>Can you double check that anything remaining in oe-core is=
 cleaned up, while I continue to focus on meta-python2?</div><div><br></div=
><div>This is now merged (as is the other python-setuptools patch).</div><d=
iv><br></div><div>THANK YOU!<br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 20, 2020 at 9:15 AM Ross Burton=
 &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Python 2=
 ceased being maintained on the 1st January 2020.=C2=A0 All users of<br>
Python 2 in oe-core have already been ported to Python 3, so in oe-core<br=
>
390f3eda Python 2 was finally removed from oe-core itself.<br>
<br>
The following are added to meta-python2 in this commit:<br>
- python and python-native 2.7.17<br>
- python-setuptools<br>
- The classes pythonnative, pythondir, distutils, setuptools<br>
<br>
Signed-off-by: Ross Burton &lt;<a href=3D"mailto:ross.burton@intel.com" ta=
rget=3D"_blank">ross.burton@intel.com</a>&gt;<br>
---<br>
=C2=A0classes/distutils-base.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 4 +<br>
=C2=A0classes/distutils.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A087 ++<br>
=C2=A0classes/python-dir.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 5 +<br>
=C2=A0classes/pythonnative.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A027 +<br>
=C2=A0classes/setuptools.bbclass=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 3 +<br><br></blockquote><div>&l=
t;snip&gt; <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
-- <br>
2.20.1<br>
<br>
<br>
</blockquote></div></div>

--000000000000f73391059c96729e--
