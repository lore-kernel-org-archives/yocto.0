Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BBDAE00A45; Fri, 26 Jun 2015 07:17:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12CBAE00A2C
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 07:17:08 -0700 (PDT)
Received: by wgjx7 with SMTP id x7so16531573wgj.2
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 07:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=8puOJwU3NF5+WSk0kXDwE5kHXlVq9Izjo3zmm9YaDic=;
	b=tBXqNRlymkFj2c5ClfHz0Y3emlajAgWqWakcND4s8MShr/fUM1LiiBpsNjkNw0RQK4
	nOpkNqqKUg2KgJV9hOe2+M/tkTRqAAIzgYluWFyE+uTtroMP2tuhGhxNSLP/wg2ZtipZ
	VDISQPkwYJPVhScp8mkTL9RUW1WTY3QHocNx0acdOdYMDBK9eZqbA5oC7eYuwoviIunV
	M/wz+tMHuOObF/EncMSXRypCOw23XARqwTVz0lAgnJOu2u9caODjphL4eVvVxslpyoL6
	/pZLKLkDXvy9IKTnkMjS8dmBNgnTjdOkSEVjRIl3zTG3f0+USDsvJwcoxPRSyWbt20ZZ
	mGfQ==
X-Received: by 10.180.105.227 with SMTP id gp3mr5358124wib.56.1435328226941;
	Fri, 26 Jun 2015 07:17:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.27.19.6 with HTTP; Fri, 26 Jun 2015 07:16:47 -0700 (PDT)
In-Reply-To: <CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>
References: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>
	<CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Fri, 26 Jun 2015 10:16:47 -0400
Message-ID: <CANge7vUQG3p3L7R5ZiZJJ62=zsYoGdjieiHwHktPD7yQ-ZsPag@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Fri, 26 Jun 2015 14:17:13 -0000
Content-Type: multipart/alternative; boundary=f46d0418257e1a5f5405196c65a4

--f46d0418257e1a5f5405196c65a4
Content-Type: text/plain; charset=UTF-8

On Fri, Jun 26, 2015 at 4:31 AM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 26 June 2015 at 05:16, Jon Szymaniak <jon.szymaniak@gmail.com> wrote:
>
>> GitHub provides this ability to download repository contents at
>> a specified changeset as a zip file. This is generally *much* quicker
>> than fetching the entire git repository.
>>
>
> Github also can and will regenerate these tarballs whenever it feels like
> it, so you'll need to periodically update the checksums.  Obviously as
> existing developers will tend to have the tarballs cached locally, it can
> be a while before this failure is reported back.
>
> A better solution might be to add support for "depth" to the git fetcher,
> so you can grab just the commit you are interested in instead of the entire
> repository.
>
> Ross
>

Hi Ross,

Excellent point about the regeneration potentially yielding different
checksums.  I suppose they could change the compression level they use at
any moment in time... I'll look into adding that depth support to the
fetcher, as that doesn't look too hard at all.

I'm open to other suggestions as well, as this was just a first stab at it.
I've been seeing that cloning this git repo containing binary firmware
blobs takes an absurd amount of time, if it even finishes at all
successfully.

Cheers,
Jon

--f46d0418257e1a5f5405196c65a4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Jun 26, 2015 at 4:31 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"=
mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div cl=
ass=3D"gmail_extra"><span class=3D""><br><div class=3D"gmail_quote">On 26 J=
une 2015 at 05:16, Jon Szymaniak <span dir=3D"ltr">&lt;<a href=3D"mailto:jo=
n.szymaniak@gmail.com" target=3D"_blank">jon.szymaniak@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"overflow:hidden=
">GitHub provides this ability to download repository contents at<br>
a specified changeset as a zip file. This is generally *much* quicker<br>
than fetching the entire git repository.</div></blockquote></div><br></span=
>Github also can and will regenerate these tarballs whenever it feels like =
it, so you&#39;ll need to periodically update the checksums.=C2=A0 Obviousl=
y as existing developers will tend to have the tarballs cached locally, it =
can be a while before this failure is reported back.</div><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra">A better solution might be t=
o add support for &quot;depth&quot; to the git fetcher, so you can grab jus=
t the commit you are interested in instead of the entire repository.=C2=A0<=
/div><span class=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gmail_ext=
ra"><br></div><div class=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div><div class=3D"gmail_extra">Hi Ross,<br><br></d=
iv><div class=3D"gmail_extra">Excellent point about the regeneration potent=
ially yielding different checksums.=C2=A0 I suppose they could change the c=
ompression level they use at any moment in time... I&#39;ll look into addin=
g that depth support to the fetcher, as that doesn&#39;t look too hard at a=
ll.<br><br></div><div class=3D"gmail_extra">I&#39;m open to other suggestio=
ns as well, as this was just a first stab at it. I&#39;ve been seeing that =
cloning this git repo containing binary firmware blobs takes an absurd amou=
nt of time, if it even finishes at all successfully.<br><br></div><div clas=
s=3D"gmail_extra"></div><div class=3D"gmail_extra">Cheers,<br></div><div cl=
ass=3D"gmail_extra">Jon<br></div></div>

--f46d0418257e1a5f5405196c65a4--
