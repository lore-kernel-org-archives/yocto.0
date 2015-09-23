Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 114B6E0102F; Wed, 23 Sep 2015 12:51:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
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
	*      [209.85.160.178 listed in list.dnswl.org]
Received: from mail-yk0-f178.google.com (mail-yk0-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA97AE00AB0
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 12:51:01 -0700 (PDT)
Received: by ykdg206 with SMTP id g206so52759118ykd.1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 12:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=VbTrhVs940kkKoJOZyGGnxQeT9+SNGmsjIT3SNXOpzQ=;
	b=e4xjI+8JKQA2MOZoigkPNKyVqU73qV6UxT8fEon9SPD/68Zc43tz+U2UCCwwvmGYzu
	FLw8d3f1rgnRJMetkzkjH/p6ziEPDTyYXAOpdlKFVDPrLpXaZvU38uwPId0LBBwDweRP
	JCL9ds+apAfp9uvnp5TpvGOmzIkdbxgMjaLoAUMrXZQfH57edbqSDTWCcl5a2hN6t6qQ
	mygE2/+AGxmL+YZR8xS7DEM3ahuW+zbiJOZouLPYRQ/StQBLoSdfgdfRB5pFqJqOxYEe
	IcEgSYOGqaqUTlflIYsV+wfn1qbyEUe/44fbtmIyaKkzSP2J26QngPshtc2S4Liwm3WW
	29xA==
MIME-Version: 1.0
X-Received: by 10.170.215.195 with SMTP id h186mr27723524ykf.126.1443037860857;
	Wed, 23 Sep 2015 12:51:00 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Wed, 23 Sep 2015 12:51:00 -0700 (PDT)
In-Reply-To: <CAJTo0Lbxnov1czjowK5k4NZDrO=9qP871tTAGdrVzw5zmeCYxw@mail.gmail.com>
References: <20150923132707.4b1dfc77@seebs-worktop>
	<CAF3SDA5EL7FCf5pp9Bj2i3iR8Q8esFGGn9m31NrknxGOwrWg9g@mail.gmail.com>
	<CAJTo0Lbxnov1czjowK5k4NZDrO=9qP871tTAGdrVzw5zmeCYxw@mail.gmail.com>
Date: Wed, 23 Sep 2015 16:51:00 -0300
Message-ID: <CAF3SDA4o6GaLPtZSjOqW72=sv0aEd0b9AAhNcroCwF+w2fz4=w@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-mingw] gcc 5.2 partial patches
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
X-List-Received-Date: Wed, 23 Sep 2015 19:51:04 -0000
Content-Type: multipart/alternative; boundary=001a113aa8a61819e005206f6f95

--001a113aa8a61819e005206f6f95
Content-Type: text/plain; charset=UTF-8

Hmm, that's really useful.

Thanks Burton!
Regards,
- dhs

2015-09-23 16:41 GMT-03:00 Burton, Ross <ross.burton@intel.com>:

>
> On 23 September 2015 at 20:33, Daniel. <danielhilst@gmail.com> wrote:
>
>> I'm really curious, what that % means on recipe names?
>>
>
> It's a wildcard character that's only valid on bbappends: instead of
> needing to version accurately you can say recipe_1.%.bbappend to append to
> all 1.* versions of recipe.
>
> Ross
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a113aa8a61819e005206f6f95
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hmm, that&#39;s really useful.<br><br></div=
>Thanks Burton!<br></div>Regards,<br></div>- dhs<br></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">2015-09-23 16:41 GMT-03:00 Burton,=
 Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span>:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><span class=3D""><br><=
div class=3D"gmail_quote">On 23 September 2015 at 20:33, Daniel. <span dir=
=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">dan=
ielhilst@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div>I&#39;m really curious, what that % means on recipe names?<br></div></=
blockquote></div><br></span>It&#39;s a wildcard character that&#39;s only v=
alid on bbappends: instead of needing to version accurately you can say rec=
ipe_1.%.bbappend to append to all 1.* versions of recipe.</div><span class=
=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature"><div style=3D"text-align:right"><i>&quot;Do or do not. There is no =
try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div>

--001a113aa8a61819e005206f6f95--
