Return-Path: <yoctomailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CBFEE006EE; Mon, 10 Aug 2015 04:50:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yoctomailinglist[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f66.google.com (mail-qg0-f66.google.com
	[209.85.192.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 015EEE00306
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 04:50:37 -0700 (PDT)
Received: by qgl69 with SMTP id 69so11906880qgl.1
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 04:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=aDkrxMjF7L4SJqqoLs/UO9NlNdwVoWG3o6VMaADiau4=;
	b=cXzQS7VcCiQTKQddvNqnfwNBSvdGwoWXCc7jUh+/LTZhbmCpG+cwsLTWH3wzay0G4Q
	fiqIYtnXModoB5L01jEqb3MzHWQCOeaa1XmNpqEwx9pTnOSnAIV7MzFI3hpLfurj/6J1
	OPaaT3x/QrF2Ie1uhueRtxXNB89CdlHFYNJuDPMVa4GMh32skIwnDo2gPTLTPBHwPh2d
	cMWhE6KrglhDaL3NRL8cFYS+Rj6dDc0rpctjBO44Z9esun6jVq97g3RtJB4Djtz8X5hL
	i4CTmKLXPwrcCcgFba+gS+/U8HcjTy+aqeO2vvuQRVNdsHE9XakOV54xnvd7k9xBOjBt
	XIJg==
MIME-Version: 1.0
X-Received: by 10.140.25.132 with SMTP id 4mr545569qgt.104.1439207436962; Mon,
	10 Aug 2015 04:50:36 -0700 (PDT)
Received: by 10.140.39.148 with HTTP; Mon, 10 Aug 2015 04:50:36 -0700 (PDT)
In-Reply-To: <CAJTo0LYOJ_T3rTg9o2=Qo1twUfHFi1OTKBBnLqed1u+rxHKWTw@mail.gmail.com>
References: <CACTu1LjN5JStnAA8Gyu=xJED4feXTpj7JA-GNiE_f7JbKUhy_w@mail.gmail.com>
	<CAJTo0LYOJ_T3rTg9o2=Qo1twUfHFi1OTKBBnLqed1u+rxHKWTw@mail.gmail.com>
Date: Mon, 10 Aug 2015 13:50:36 +0200
Message-ID: <CACTu1Ljn2ven-b51Q+X9gGcWYxxe1-nv1T9+N=y4LSy6juLnoQ@mail.gmail.com>
From: yocto yocto <yoctomailinglist@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Header-Files of DEPEND recipe not found
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
X-List-Received-Date: Mon, 10 Aug 2015 11:50:45 -0000
X-Groupsio-MsgNum: 25982
Content-Type: multipart/mixed; boundary=001a11c120ac0a3703051cf3982a

--001a11c120ac0a3703051cf3982a
Content-Type: multipart/alternative; boundary=001a11c120ac0a36fe051cf39828

--001a11c120ac0a36fe051cf39828
Content-Type: text/plain; charset=UTF-8

Please see the attachment for a simplified example. A library (consisting
of 1 cpp and 1 header) is being built using soci. Compiling fails since
soci.h is not found.

2015-08-10 13:16 GMT+02:00 Burton, Ross <ross.burton@intel.com>:

>
> On 10 August 2015 at 12:13, yocto yocto <yoctomailinglist@gmail.com>
> wrote:
>
>> However, when compiling my own recipe I get compiling errors ("soci.h not
>> found"). I am 100% sure that I specified the correct paths.
>>
>
> The headers are likely installed in the sysroot, but your script can't
> find them.  The first step would be to verify that the sysroot does in fact
> have the headers installed in, and then you'll have to debug your configure
> scripts to find out why they don't find the headers.  Sharing your recipe
> and sources will help here.
>
> Ross
>

--001a11c120ac0a36fe051cf39828
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please see the attachment for a simplified example. A libr=
ary (consisting of 1 cpp and 1 header) is being built using soci. Compiling=
 fails since soci.h is not found.</div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">2015-08-10 13:16 GMT+02:00 Burton, Ross <span dir=3D"=
ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.bu=
rton@intel.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_extra"><span class=3D""><br><div class=3D"gmai=
l_quote">On 10 August 2015 at 12:13, yocto yocto <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:yoctomailinglist@gmail.com" target=3D"_blank">yoctomailinglis=
t@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Ho=
wever, when compiling my own recipe I get compiling errors (&quot;soci.h no=
t found&quot;). I am 100% sure that I specified the correct paths.</div><di=
v></div></blockquote></div><br></span>The headers are likely installed in t=
he sysroot, but your script can&#39;t find them.=C2=A0 The first step would=
 be to verify that the sysroot does in fact have the headers installed in, =
and then you&#39;ll have to debug your configure scripts to find out why th=
ey don&#39;t find the headers.=C2=A0 Sharing your recipe and sources will h=
elp here.</div><span class=3D"HOEnZb"><font color=3D"#888888"><div class=3D=
"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></span>=
</div>
</blockquote></div><br></div>

--001a11c120ac0a36fe051cf39828--

--001a11c120ac0a3703051cf3982a
Content-Type: application/x-bzip2; name="soci-example.tar.bz2"
Content-Disposition: attachment; filename="soci-example.tar.bz2"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_id5uwpc20

QlpoNjFBWSZTWSbrDO0AAk3///////////////////////////////++///v////v//+0AOedt2w
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
Z0UVykviyC4zCprX0Lo/6BLP/xdyRThQkCbrDO0=

--001a11c120ac0a3703051cf3982a--
