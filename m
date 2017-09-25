Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8250E00D13; Mon, 25 Sep 2017 13:21:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DC32E00C89
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 13:21:33 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id b195so1161360wmb.5
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 13:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=S38dFW3ZB5DQ+GykHC5yEZvPkfUVTPYDXDP0JPF2+ok=;
	b=LnZEeWCQNNO5f36Nr883FAddVaSAlS34uRpwDggHfVAQT3kByx6pFJGrP3eLBDbxwz
	3FDn5ri2mgFbANaObRTrnlOoaH0wgh/9jA8mlAX6lQvNTwVeOEoyz4FXVHYKgW1TxzyN
	P8m/evbZ032lOaj7G73mIAQV9Huftz/LwNx9L1wXlnV+gRBvSEomV+CY/i4/nsE1t0we
	hNW+rqutkMn+AiqV+HEEF5YZSYmxpLEtAPGHhZjvxNdoiKEr364tsaH3zWEqMQ8XKZia
	4VP39WmyRDep4dl/9AEgzvvJ9zb1h6dwm2et5rZkhWAag8XCZy1DfAEan1LFH2xviqZx
	sQ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=S38dFW3ZB5DQ+GykHC5yEZvPkfUVTPYDXDP0JPF2+ok=;
	b=J/aJIeqNFU6bHBcHCz93auSYSNXrRTdCzN/af9Sfd2JnhIP2qmTi0xAitY+6MSuW0A
	gsWytnJ0a4rdSJ71qJqn55cqyydX5c/DVztH77c76yeX3w1pG6wY77MTRoL9qCR+9src
	Jw132sV163R/F7KgfkXqhkUJYKuCNVhKDFd3z+w4NGDvaGMYpk6/uj4xdtDqwkacZ7FB
	I20wQBN4IOyo/kg17WOtnjPiw7+o1gfjaThryARMbvh6sMyJO/e4LSItUb0b3y8qMqWr
	syO6sShx4b4Q/taXEjbZvy2ETJCzOJQsGU0QIAriK1ScDlOJ5GOPROmMfYhIVoidPu08
	bLjg==
X-Gm-Message-State: AHPjjUi9vv4x7TqI02SX9nIUT++zcQqjQgP2d0D0KK/XcW17pYjUJjGI
	DuCUVqMKRpzTa+BOhdPYXPdFJNUZtRlKFxdR9pM=
X-Google-Smtp-Source: AOwi7QCe/2Ibu3KDStcEK6FnF1jTXRROi5+kWXrk1Ht+/ANxUcS9RV6l80pusLOGEHF+bqO0u/k3HvePlOMiBkBDayM=
X-Received: by 10.28.19.10 with SMTP id 10mr1266902wmt.87.1506370892196; Mon,
	25 Sep 2017 13:21:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.228.213 with HTTP; Mon, 25 Sep 2017 13:21:31 -0700 (PDT)
In-Reply-To: <CAJTo0La=g2tyQu1Uac6213PPwb+XE+hCvL+S7YD3YbJ86DU3ng@mail.gmail.com>
References: <CAFQ+Dij+yJFtAyMnAQ_-3T5HJRzf0V9ZcxiSe1S59ZHQz1-gSg@mail.gmail.com>
	<CAJTo0La=g2tyQu1Uac6213PPwb+XE+hCvL+S7YD3YbJ86DU3ng@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 25 Sep 2017 22:21:31 +0200
Message-ID: <CAGAf8LxxbX5W9KiDCv2FzViR_vGZgFm1YEUPF9YKZQir_45p+Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Unclear sstate-cache dir permissions
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
X-List-Received-Date: Mon, 25 Sep 2017 20:21:34 -0000
Content-Type: multipart/alternative; boundary="001a1145a820edf2a8055a094d4b"

--001a1145a820edf2a8055a094d4b
Content-Type: text/plain; charset="UTF-8"

My best guess is that being user1 from the user-group, I would NOT want my
permissions to be 775, since any other user of this user-group would have
unrestricted RWX access to my private /home/user1 space. Rather 640 by
default.

And sharing cache among different users of the same group with the same
permissions 775 still, in my opinion, is not a good idea, since, as my best
understanding is, having different packages/releases, sstate-cache will be
superposition of these different packages/releases (humongous
sstate-cache)... In the sense, that any user can do whatever to shared
sstate-cache, and to harm other users (unintentionally).

Divide and conquer is better approach. Agree if the same user shares two
different releases with the same sstate-cache, as single user. Has only
control over, does not harm anyone else if something go awry.

Much more cleaner... Seems. IMHO.

Zoran
_______

On Mon, Sep 25, 2017 at 8:55 PM, Burton, Ross <ross.burton@intel.com> wrote:

> I'm guessing one of the users has a different umask to the other, so is
> writing directories with mode 755 instead of 775.
>
> Ross
>
> On 25 September 2017 at 19:41, Marco <cavallini.koan@gmail.com> wrote:
>
>> Hello,
>> I am trying to share a sstate-cache between two (or more) users in a
>> shared directory.
>> Although I set the directory owner, group and permissions I face to a
>> weird condition that I don't understand.
>> Particularly why some directories don't have the group write
>> permisisons that drive me to a buld failure for mambers of the group.
>>
>> I wonder if I am doing something wrong or I have an unexpected issue.
>>
>>
>> koan@kmobile:sstate-cache$ ll
>> totale 1028
>> drwxrwxr-x   2 koan devgroup 4096 set 14 15:32 00
>> drwxrwxr-x   2 koan devgroup 4096 set 14 14:37 01
>> ...
>> drwxr-xr-x   2 koan devgroup 4096 set 14 15:31 1d
>> drwxrwxr-x   2 koan devgroup 4096 set 14 15:31 1e
>> ...
>> drwxr-xr-x   2 koan devgroup 4096 set 14 15:32 27
>> drwxrwxr-x   2 koan devgroup 4096 set 14 15:32 28
>> ...
>> etc...
>>
>>
>> Any help would be greatly appreciated.
>>
>> Thank you
>> --
>> Marco 'mckoan'
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1145a820edf2a8055a094d4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">My best guess is that being user1 from the user-group, I w=
ould NOT want my permissions to be 775, since any other user of this user-g=
roup would have unrestricted RWX access to my private /home/user1 space. Ra=
ther 640 by default.<div><br></div><div>And sharing cache among different u=
sers of the same group with the same permissions 775 still, in my opinion, =
is not a good idea, since, as my best understanding is, having different pa=
ckages/releases, sstate-cache will be superposition of these different pack=
ages/releases (humongous sstate-cache)... In the sense, that any user can d=
o whatever to shared sstate-cache, and to harm other users (unintentionally=
).</div><div><br></div><div>Divide and conquer is better approach. Agree if=
 the same user shares two different releases with the same sstate-cache, as=
 single user. Has only control over, does not harm anyone else if something=
 go awry.</div><div><br></div><div>Much more cleaner... Seems. IMHO.</div><=
div><br></div><div>Zoran</div><div>_______</div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Mon, Sep 25, 2017 at 8:55 PM, Burto=
n, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" targ=
et=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr">I&#39;m guessing one of the users has a d=
ifferent umask to the other, so is writing directories with mode 755 instea=
d of 775.<span class=3D"HOEnZb"><font color=3D"#888888"><div><br></div><div=
>Ross</div></font></span></div><div class=3D"HOEnZb"><div class=3D"h5"><div=
 class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 25 September 2017 =
at 19:41, Marco <span dir=3D"ltr">&lt;<a href=3D"mailto:cavallini.koan@gmai=
l.com" target=3D"_blank">cavallini.koan@gmail.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hello,<br>
I am trying to share a sstate-cache between two (or more) users in a<br>
shared directory.<br>
Although I set the directory owner, group and permissions I face to a<br>
weird condition that I don&#39;t understand.<br>
Particularly why some directories don&#39;t have the group write<br>
permisisons that drive me to a buld failure for mambers of the group.<br>
<br>
I wonder if I am doing something wrong or I have an unexpected issue.<br>
<br>
<br>
koan@kmobile:sstate-cache$ ll<br>
totale 1028<br>
drwxrwxr-x=C2=A0 =C2=A02 koan devgroup 4096 set 14 15:32 00<br>
drwxrwxr-x=C2=A0 =C2=A02 koan devgroup 4096 set 14 14:37 01<br>
...<br>
drwxr-xr-x=C2=A0 =C2=A02 koan devgroup 4096 set 14 15:31 1d<br>
drwxrwxr-x=C2=A0 =C2=A02 koan devgroup 4096 set 14 15:31 1e<br>
...<br>
drwxr-xr-x=C2=A0 =C2=A02 koan devgroup 4096 set 14 15:32 27<br>
drwxrwxr-x=C2=A0 =C2=A02 koan devgroup 4096 set 14 15:32 28<br>
...<br>
etc...<br>
<br>
<br>
Any help would be greatly appreciated.<br>
<br>
Thank you<br>
--<br>
Marco &#39;mckoan&#39;<br>
<span class=3D"m_8232934359801278028HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>
</div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1145a820edf2a8055a094d4b--
