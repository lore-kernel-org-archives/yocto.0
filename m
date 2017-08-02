Return-Path: <katutxakurra@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10B31E00CAB; Wed,  2 Aug 2017 00:40:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (katutxakurra[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FD38E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 00:40:12 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id g35so17236210ioi.3
	for <yocto@yoctoproject.org>; Wed, 02 Aug 2017 00:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=0hyDoqBq6WdIVyDtxkTsxOFmEmW1Z2fYQNOxE64TXM8=;
	b=I8Ah4VCRUTIvglsPkPqPSNXds/rTcwA0NvxhHTVizbNAdJOj90V1TbTZ6YRSLDUAHG
	1jjxhPrlek4fh1WW2iiOuD5JusaFm1JqY/8BqTi3WnLnjlR+IX3N7WI6olp/cVJlTGwL
	Y0uhWXUY7O6eGR1FtHyQuauhB+ow851VC9p6uu2szAfRMFdyKR4HpTrKHX35xo5c79se
	YPtSIA9mdXcXkVr/nNxF/Dq2/pusFgoGx9ri83W+P6BVk3BPYtr//EStnOvqali5Mc6A
	31/IiXEGVhOxs9TA+j7/bS4KtA0W5eAUTxCilRU4fcr6DDY44/7eg//LkCxrcksSsVNS
	gnjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=0hyDoqBq6WdIVyDtxkTsxOFmEmW1Z2fYQNOxE64TXM8=;
	b=CfngrqXWSkS7slNKp9J8yXe65/7PmKDMN+JrYKrjsF2MXB790D3ZVmWwqUCwpGB5G2
	mKQPZ3r/4ZFru7pBPdY6ztA9jIiAp2bXY3i6YCkk5sg5Y1EUtcX5TaZ1RgUr8OoGzcle
	M72waZozs7rjLYFHZPl0QHGZlHxtHMfVsWPARYOt9BcSSFzIKYPXa4PxUn3y322Giekk
	QdOVIjYfo+rPeutW1+uFox6glL/chmr3aTDjMsMFFftBIE0GFmKUIc/YfaYuk2LJmepY
	Qo3mXGH6iq8GuamzrzmZi7pyHUSaJrBt3aqv8rhJ2OexxKoNfWzxPy0ixE5paEOzxv3R
	B7KQ==
X-Gm-Message-State: AIVw110+L2BC/iQKix8wzPoDwukvCT7pBxiDjVVmfulcCW6rCKmACkPM
	QHyiQfJvPvHlXzgwnN8syLhkOmxLL8V2
X-Received: by 10.107.133.151 with SMTP id p23mr27797575ioi.328.1501659611412; 
	Wed, 02 Aug 2017 00:40:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.111.194 with HTTP; Wed, 2 Aug 2017 00:40:10 -0700 (PDT)
In-Reply-To: <CAM1ZcoVg_NuFbLkAHCRJmXAhX7g9EA04h+9NYmWb9QAJWCcnKA@mail.gmail.com>
References: <CAM1ZcoVg_NuFbLkAHCRJmXAhX7g9EA04h+9NYmWb9QAJWCcnKA@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
Date: Wed, 2 Aug 2017 08:40:10 +0100
Message-ID: <CAM1ZcoUYPs_TRwcCT=_9o6pWO1XDpmaRUuTZn=X1O5qkPkY3Eg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Perforce fetcher ignores module and label
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
X-List-Received-Date: Wed, 02 Aug 2017 07:40:13 -0000
Content-Type: multipart/alternative; boundary="001a113ec2acb63e170555c05f9c"

--001a113ec2acb63e170555c05f9c
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm still having problems fetching from Perforce. Is there any
documentation based on the latest implementation of the
poky/bitbake/lib/bb/fetch2/perforce.py file?
The copyright 2016 points to Kodak Alaris, Inc. Should I contact them?

I would appreciate if someone could point me in the right direction.

Regards,
Katu

2017-07-25 10:05 GMT+01:00 Katu Txakur <katutxakurra@gmail.com>:

> Hi,
>
> I'm upgrading a recipe that fetches the source code from Perforce.
>
> The old recipe was:
>
> SRC_URI = " \
>   p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/path/pe
> rforce/...;module=local/path/relativeto/p4;label=${P4CHANGELIST} \
>   "
>
> With the new version of /lib/bb/fetch2/perforce.py, I had to set P4PORT
> outside SRC_URI, leaving the recipe with:
>
> SRC_URI = " \
>   p4://${P4USER}:${P4PASSWD}@Depot/path/perforce/...;module=
> local/path/relativeto/p4;label=${P4CHANGELIST} \
>   "
>
> The Perforce fetcher kind of works, but it seems to be ignoring the
> "module" and the "label" attributes. After reading the Python script I can
> see that after the "@", only the substring before the first ";" is used.
>
> Is there a way to set module and label/changelist? I have several folders
> per recipe that I need to map to different subfolders and with the current
> script some of the folders don't get fetched.
>
> Thanks for your time.
>
> Regards,
> Katu
>

--001a113ec2acb63e170555c05f9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>I&#39;m still ha=
ving problems fetching from Perforce. Is there any documentation based on t=
he latest implementation of the poky/bitbake/lib/bb/fetch2/perforce.py file=
?<br></div>The copyright 2016 points to Kodak Alaris, Inc. Should I contact=
 them?<br><br></div>I would appreciate if someone could point me in the rig=
ht direction.<br><br></div>Regards,<br></div><div>Katu<br></div><div><div><=
div><div><div><div><div><div><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">2017-07-25 10:05 GMT+01:00 Katu Txakur <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:katutxakurra@gmail.com" target=3D"_blank">katutxakurra@gmai=
l.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div><div><div><div><div>Hi,<br><br></div>I&#39;m upgradin=
g a recipe that fetches the source code from Perforce.<br><br>The old recip=
e was:<br><br>SRC_URI =3D &quot; \<br>=C2=A0 p4://${P4USER}:${P4PASSWD}:${P=
<wbr>4HOST}:${P4PORT}@Depot/path/pe<wbr>rforce/...;module=3Dlocal/path/<wbr=
>relativeto/p4;label=3D${P4CHANGE<wbr>LIST} \<br>=C2=A0 &quot;<br><br>With =
the new version of /lib/bb/fetch2/perforce.py, I had to set P4PORT outside =
SRC_URI, leaving the recipe with:<br><br>SRC_URI =3D &quot; \<br>=C2=A0 p4:=
//${P4USER}:${P4PASSWD}@Dep<wbr>ot/path/perforce/...;module=3D<wbr>local/pa=
th/relativeto/p4;<wbr>label=3D${P4CHANGELIST} \<br>=C2=A0 &quot;<br><br></d=
iv>The
 Perforce fetcher kind of works, but it seems to be ignoring the=20
&quot;module&quot; and the &quot;label&quot; attributes. After reading the =
Python script I=20
can see that after the &quot;@&quot;, only the substring before the first &=
quot;;&quot; is=20
used.<br><br></div>Is there a way to set module and label/changelist? I=20
have several folders per recipe that I need to map to different=20
subfolders and with the current script some of the folders don&#39;t get=20
fetched.<br><br></div><div>Thanks for your time.<br></div><div><br></div>Re=
gards,<br></div>Katu</div>
</blockquote></div><br></div></div></div></div></div></div></div></div></di=
v></div>

--001a113ec2acb63e170555c05f9c--
