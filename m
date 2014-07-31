Return-Path: <bobsummerwill@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 271EEE0056A; Thu, 31 Jul 2014 08:40:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAA6EE003FA
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 08:40:44 -0700 (PDT)
Received: by mail-vc0-f171.google.com with SMTP id hq11so4505922vcb.2
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 08:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:reply-to:sender:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=6aIf0jIiCzDtxcJxhL/jyQXFYlyF2ODedU3cHmZGnA4=;
	b=wdafzLe5cMeygKAIr3phk0MPEfI5HNzA+Mqh6hJoJjCstfVWb6CndFEXOrxsOpptCh
	eNQkuAri79Akz0UR+Q/MpFcvrDeZ9BZPmMNkXR0veQ92/l+huWpzCLLfB9Zpfu+p97Rl
	hL4Xw4ROtSeEy8mt/6E2IiqupJ/G7jZ1QQ1ZpIeTyxepbUovKFy03+U0AH2Idf9bn6eN
	apWYE1juR27EiVV8FJ3xPT5Pv9mwNgXhIWd9GuIQ39rZccxhjmOoohHPxbnGZTbOuqTW
	AmUXOnpmXrFsCP1PcQxXb17y06O7CmkQepRlNsPLfN9QxGZwYzwdZamX7yt+BrkBJsbl
	evag==
MIME-Version: 1.0
X-Received: by 10.53.7.204 with SMTP id de12mr15561592vdd.41.1406821241976;
	Thu, 31 Jul 2014 08:40:41 -0700 (PDT)
Sender: bobsummerwill@gmail.com
Received: by 10.58.118.12 with HTTP; Thu, 31 Jul 2014 08:40:41 -0700 (PDT)
In-Reply-To: <53DA58C9.50705@open.eurogiciel.org>
References: <53DA58C9.50705@open.eurogiciel.org>
Date: Thu, 31 Jul 2014 08:40:41 -0700
X-Google-Sender-Auth: 88iku1uzK_Ro6pa4wPEP-m22VAM
Message-ID: <CAFTheUHO=LX+wXKNQt4AdWnNiGKhjFymx-TDOoPYN0ROx5h2ew@mail.gmail.com>
From: Bob Summerwill <bob@summerwill.net>
To: ronan <ronan.lemartret@open.eurogiciel.org>
X-Mailman-Approved-At: Thu, 31 Jul 2014 11:46:50 -0700
Cc: yocto@yoctoproject.org, general@lists.tizen.org
Subject: Re: [Tizen General] Build Tizen with yocto work-flow
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: bob@summerwill.net
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 31 Jul 2014 15:40:54 -0000
Content-Type: multipart/alternative; boundary=001a1133f016640abb04ff7f18d8

--001a1133f016640abb04ff7f18d8
Content-Type: text/plain; charset=ISO-8859-1

Congratulations, Ronan!


Cheers,
Bob


On Thu, Jul 31, 2014 at 7:55 AM, ronan <ronan.lemartret@open.eurogiciel.org>
wrote:

> Hi all,
> presently we are working on a project "Tizen on Yocto" that provides an
> alternative to gbs tools or OBS.
>     - https://wiki.tizen.org/wiki/Tizen_on_yocto
>
> We are glad to announce the first release 0.1 of our project.
>
> The main features as the same found in Tizen common:
> - Smack security
> - Pure wayland environment, with tz-launcher
> - Crosswalk
> - Multi-user support
> - ...
>
> We would like to share this project with Tizen and Yocto communities.
>
> If you are interested to build Tizen with yocto, just follow this link:
>     - https://wiki.tizen.org/wiki/Build_Tizen_with_Yocto
>
> If you have any question or issue feel free to contact us, on the Tizen
> mailing list (dev@lists.tizen.org) .
>
> Here a link to the yocto project:
>     - https://www.yoctoproject.org/
>
>
> Regards,
> Ronan
> _______________________________________________
> General mailing list
> General@lists.tizen.org
> https://lists.tizen.org/listinfo/general
>



-- 
bob@summerwill.net

--001a1133f016640abb04ff7f18d8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Congratulations, Ronan!<div><br></div><div><br>Cheers,</di=
v><div>Bob</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmai=
l_quote">On Thu, Jul 31, 2014 at 7:55 AM, ronan <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:ronan.lemartret@open.eurogiciel.org" target=3D"_blank">ronan.l=
emartret@open.eurogiciel.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi all,<br>
presently we are working on a project &quot;Tizen on Yocto&quot; that provi=
des an alternative to gbs tools or OBS.<br>
=A0 =A0 - <a href=3D"https://wiki.tizen.org/wiki/Tizen_on_yocto" target=3D"=
_blank">https://wiki.tizen.org/wiki/<u></u>Tizen_on_yocto</a><br>
<br>
We are glad to announce the first release 0.1 of our project.<br>
<br>
The main features as the same found in Tizen common:<br>
- Smack security<br>
- Pure wayland environment, with tz-launcher<br>
- Crosswalk<br>
- Multi-user support<br>
- ...<br>
<br>
We would like to share this project with Tizen and Yocto communities.<br>
<br>
If you are interested to build Tizen with yocto, just follow this link:<br>
=A0 =A0 - <a href=3D"https://wiki.tizen.org/wiki/Build_Tizen_with_Yocto" ta=
rget=3D"_blank">https://wiki.tizen.org/wiki/<u></u>Build_Tizen_with_Yocto</=
a><br>
<br>
If you have any question or issue feel free to contact us, on the Tizen mai=
ling list (<a href=3D"mailto:dev@lists.tizen.org" target=3D"_blank">dev@lis=
ts.tizen.org</a>) .<br>
<br>
Here a link to the yocto project:<br>
=A0 =A0 - <a href=3D"https://www.yoctoproject.org/" target=3D"_blank">https=
://www.yoctoproject.org/</a><br>
<br>
<br>
Regards,<br>
Ronan<br>
______________________________<u></u>_________________<br>
General mailing list<br>
<a href=3D"mailto:General@lists.tizen.org" target=3D"_blank">General@lists.=
tizen.org</a><br>
<a href=3D"https://lists.tizen.org/listinfo/general" target=3D"_blank">http=
s://lists.tizen.org/<u></u>listinfo/general</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><a href=3D"m=
ailto:bob@summerwill.net">bob@summerwill.net</a><br><br>
</div>

--001a1133f016640abb04ff7f18d8--
