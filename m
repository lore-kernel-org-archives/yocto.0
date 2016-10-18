Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41490E009FD; Tue, 18 Oct 2016 15:37:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B76FDE009C9
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 15:37:51 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id j37so13547779ioo.3
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 15:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=g2TdDl+1122ubNjlAy2f9/zdu6f0Xzd0NAgbod3/n10=;
	b=OaEXWJrWrjv0jqjd5uV9tSHYFg95aILxQoXilCYgr8OmLei2V/oNLtwogbtz05FF5j
	lcZnMwDFP7tfLvGggUjg16WaiQFD9mtL4R6V4B84eEgQvUtVKpvS7e9yhx7TomVprRBb
	hZKS1pW/uIPkv7GZTD1Cxd6DNF8DjeqzivWHypkpOXTRF808gxGa+TDutF9BFU8fvo6n
	ttIflCt1Q5KGsTqWENoMV78xLe6gDAr0IB9HfpVVL/+hYVC62M1eLD1cHAsvbHdTFg5H
	ZQyey/uKRd/JUL5a7K/1NMEQJii8aHLJ0ZSqAQZ+kTApwm+hM1d9VNfrXiAMpDj+c68p
	udyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=g2TdDl+1122ubNjlAy2f9/zdu6f0Xzd0NAgbod3/n10=;
	b=XTS9UXJXQ07ngFrA//PvOPFHjDh1S8DTIIS5Bo+mEkp1SV0uA6mH1wbT6luIdtTY7W
	xA3EB1yCOt7h1OqtoqoDl6atwGNwY7trGLoc5ClkFGZF/D9+yaL92V3GOj8YXjd7V+w9
	LEpjo/a2nvnfQYAFN+XmR8UTA0WDEfaCC7vx8iFLXdcEoCboGrsqvJ15NWdyQD4Humwj
	ZKsiowUrakCAVc7BqGCS4zFcVT8ivC8HChee6jnfPX3CFTyO21HP+kXwiA8ADV6dV6sV
	Fw/hBMvkG1R6dnQGq0xxzyAihFoz9J7GpOtBz6KAqGkCoBlGgm8y+izH7oabQJswEMrw
	mpgQ==
X-Gm-Message-State: AA6/9Rn1TA2OpSOsr+6CXNRMUMobQAA9mSk7lvNhSVa+7CzjTZipOtZcje3OXL/SGTMBFpTH/MoguNs/SH6LkA==
X-Received: by 10.107.146.67 with SMTP id u64mr3570621iod.34.1476830270566;
	Tue, 18 Oct 2016 15:37:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.54.36 with HTTP; Tue, 18 Oct 2016 15:37:50 -0700 (PDT)
From: Davis Roman <davis.roman84@gmail.com>
Date: Tue, 18 Oct 2016 18:37:50 -0400
Message-ID: <CACfi_Z1gqXxGMgqwvs0YwT73VBWb4-GXsjKkkUxRZ5HehwL7-Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Difference between bitbake inclusion and inheritance
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
X-List-Received-Date: Tue, 18 Oct 2016 22:37:53 -0000
Content-Type: multipart/alternative; boundary=94eb2c055794abb863053f2b574d

--94eb2c055794abb863053f2b574d
Content-Type: text/plain; charset=UTF-8

Hello,

I'm a yocto newbie and so I'm becoming familiar with the documentation.

I came across a bitbake feature that is somewhat confusing to me regarding
the difference between optional/required inclusion versus inheritance.

As far as optional/required inclusion is concerned, the documentation
states quite clearly that the main difference is that the former will not
issue an error message if the specified file is not found while the latter
will so there is no issue here.

My issue has to do with the 'inherit' command. Sounds to me like 'include'
and 'require' already do the trick so I'm curious to know what value does
'inherit' bring ?

Any clarification would be extremely appreciated.

Thank you,

Davis

--94eb2c055794abb863053f2b574d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"monospace, monospace" style=3D"font-size:12.=
8px">Hello,</font><div style=3D"font-size:12.8px"><font face=3D"monospace, =
monospace"><br></font></div><div style=3D"font-size:12.8px"><font face=3D"m=
onospace, monospace">I&#39;m a yocto newbie and so I&#39;m becoming familia=
r with the documentation.=C2=A0</font></div><div style=3D"font-size:12.8px"=
><font face=3D"monospace, monospace"><br></font></div><div style=3D"font-si=
ze:12.8px"><font face=3D"monospace, monospace">I came across a bitbake feat=
ure that is somewhat confusing to me regarding the difference between optio=
nal/required inclusion versus inheritance.</font></div><div style=3D"font-s=
ize:12.8px"><font face=3D"monospace, monospace"><br></font></div><div style=
=3D"font-size:12.8px"><font face=3D"monospace, monospace">As far as optiona=
l/required inclusion is concerned, the documentation states quite clearly t=
hat the main difference is that the former will not issue an error message =
if the specified file is not found while the latter will so there is no iss=
ue here.</font></div><div style=3D"font-size:12.8px"><font face=3D"monospac=
e, monospace"><br></font></div><div style=3D"font-size:12.8px"><font face=
=3D"monospace, monospace">My issue has to do with the &#39;inherit&#39; com=
mand. Sounds to me like &#39;include&#39; and &#39;require&#39; already do =
the trick so I&#39;m curious to know what value does &#39;inherit&#39; brin=
g ?</font></div><div style=3D"font-size:12.8px"><font face=3D"monospace, mo=
nospace"><br></font></div><div style=3D"font-size:12.8px"><font face=3D"mon=
ospace, monospace">Any clarification would be extremely appreciated.</font>=
</div><div style=3D"font-size:12.8px"><font face=3D"monospace, monospace"><=
br></font></div><div style=3D"font-size:12.8px"><font face=3D"monospace, mo=
nospace">Thank you,</font></div><div style=3D"font-size:12.8px"><font face=
=3D"monospace, monospace"><br></font></div><div style=3D"font-size:12.8px">=
<font face=3D"monospace, monospace">Davis</font></div></div>

--94eb2c055794abb863053f2b574d--
