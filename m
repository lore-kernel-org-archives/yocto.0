Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 317AAE00D63; Thu, 13 Jun 2019 07:46:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
	[209.85.208.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12B2EE00C7D
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 07:46:31 -0700 (PDT)
Received: by mail-ed1-f54.google.com with SMTP id d4so8253157edr.13
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 07:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=c+ir2hdGzG63BQqhqjrcNm1vQeoIeOyEeu5fBL/gQmY=;
	b=BaTRvXGaF/uyFJ1yqaoe+TUs2ffRWXEGMrQI27YMuyJLUUa6oizcia/HmHPs8kLL1W
	UgxoxElm1ec/gFNcRCIprGcJT3xvgdos0FqKzWJ8Co7Ce9+tNfzYlc2gmMc+NJ4h+mqF
	lI4fA6zuhGnSjJu/99gl4ZBKe2vx9xRgiErFpkZAJvp3fo1MPEPs0CLjnLKlobZgHtOE
	EWYwBp2wbq85FBnJoqr8XM5GDAft+c49zUGwiyn2As6Q3frHohzNEO96XEi8PG1rfl2R
	Vy7WzU+1akp6mKEObxdi45sxD1NCmBAl9iMrHPx32rgvtbsvGQqV4dKhU509nHCafmHt
	1tyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=c+ir2hdGzG63BQqhqjrcNm1vQeoIeOyEeu5fBL/gQmY=;
	b=nfXd/6tAuP/fnYThbUm6fiSaHWpEtOP5Ocp9f1FmSdL2ZHw4yKs/qJubiCWK8XgwVz
	eddu4XVu7t9bGA90MaMUi2BrIrgyZH/lb9Ioe62y203nsOyB5uFvA4sK93yHqDiVx/BY
	5AzPmnM63cJr9qi3r8/CtqiGvfaWZOx0+fIN+SR/ule5C1mvxTUfx6uIVuIqbwkfpZ0b
	ltzggbPeGQpLl1aWOWjPqoSPCy62zlegZwZtEn6BGnFEollgk9Fi87MFE5P0B4vlHSTD
	LC2T2D6n8BqCp8JNbvxPJrpUVKszTS7JbDWQzTAwvsR5JOnYHDnpchOqhw0yYesIHgQI
	wUHQ==
X-Gm-Message-State: APjAAAWDoOzRhv66/9EAM72kxZhXDpb90E4p+ab3Cr3dBdjdXtpuHO2D
	azL9n3Oh/EBXCnyWQ3Jvw7ZpOkR7+F0T/bNN7J/N0/v5
X-Google-Smtp-Source: APXvYqzn+sP8x97T6kAKziHAieeq/0WCsx8DXOyevS1ZPi8UJIyJ+1VxTMP1xkSfGy1jB9jOFaD2+M0YpqBbdTHP+rU=
X-Received: by 2002:a17:906:55d4:: with SMTP id
	z20mr68587692ejp.205.1560437191128; 
	Thu, 13 Jun 2019 07:46:31 -0700 (PDT)
MIME-Version: 1.0
References: <8f5ed5e0-c695-4db9-40dc-2075daa1210d@ti.com>
In-Reply-To: <8f5ed5e0-c695-4db9-40dc-2075daa1210d@ti.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 13 Jun 2019 16:46:24 +0200
Message-ID: <CA+chaQeT90YznR2uoxLZ9ioLFY5g-Vc3URTXycHBwiqnYMmCDQ@mail.gmail.com>
To: William Mills <wmills@ti.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: YP sstate example conf file
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
X-List-Received-Date: Thu, 13 Jun 2019 14:46:33 -0000
Content-Type: multipart/alternative; boundary="00000000000078bbe9058b359837"

--00000000000078bbe9058b359837
Content-Type: text/plain; charset="UTF-8"

Good question.

I've one related to this as well.

It would be also good to document (if it isn't somewhere already) what
builds populate this mirror.

I assume it will be some autobuilder job with DISTRO = poky, but without
file listing enabled over http I cannot even guess which MACHINEs were
included.

It would be useful to provide one tarball with all sigdata files, which
could be manually downloaded to check what's available there and to debug
why the sstate cache from this mirror wasn't reused in local build.

Cheers,

On Thu, Jun 13, 2019 at 4:32 PM William Mills <wmills@ti.com> wrote:

> Hello,
>
> From poky warrior tip, file meta-poky/conf/local.conf.sample
> """
> #
> #SSTATE_MIRRORS ?= "file://.*
> http://sstate.yoctoproject.org/2.5/PATH;downloadfilename=PATH"
> """
>
> Should that be 2.7??  Or are you relying on the intelligence of the user
> to fix this up?
>
> If the former then it needs to go on a checklist.
> If the later then perhaps it would be better to use X.Y or something
> that does not appear to work.  Some verbage to suggest the edit would
> probably be good as well.
>
> (and no, I did not run it like that. I'm slightly smarted than that.)
>
>
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-poky/conf/local.conf.sample?h=warrior#n235
>
> Thanks,
> Bill
>
> ----------------
> William A. Mills
> Chief Technologist, Open Solutions, SDO
> Texas Instruments, Inc.
> 20450 Century Blvd
> Germantown MD 20878
> 240-643-0836
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000078bbe9058b359837
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good question.<div><br></div><div>I&#39;ve one related to =
this as well.</div><div><br></div><div>It would be also good to document (i=
f it isn&#39;t somewhere already) what builds populate this mirror.</div><d=
iv><br></div><div>I assume it will be some autobuilder job with DISTRO =3D =
poky, but without file listing enabled over http I cannot even guess which =
MACHINEs were included.</div><div><br></div><div>It would be useful to prov=
ide one tarball with all sigdata files, which could be manually downloaded =
to check what&#39;s available there and to debug why the sstate cache from =
this mirror wasn&#39;t reused in local build.</div><div><br></div><div>Chee=
rs,</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Jun 13, 2019 at 4:32 PM William Mills &lt;<a href=3D"mailt=
o:wmills@ti.com">wmills@ti.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Hello,<br>
<br>
From poky warrior tip, file meta-poky/conf/local.conf.sample<br>
&quot;&quot;&quot;<br>
#<br>
#SSTATE_MIRRORS ?=3D &quot;file://.*<br>
<a href=3D"http://sstate.yoctoproject.org/2.5/PATH;downloadfilename=3DPATH"=
 rel=3D"noreferrer" target=3D"_blank">http://sstate.yoctoproject.org/2.5/PA=
TH;downloadfilename=3DPATH</a>&quot;<br>
&quot;&quot;&quot;<br>
<br>
Should that be 2.7??=C2=A0 Or are you relying on the intelligence of the us=
er<br>
to fix this up?<br>
<br>
If the former then it needs to go on a checklist.<br>
If the later then perhaps it would be better to use X.Y or something<br>
that does not appear to work.=C2=A0 Some verbage to suggest the edit would<=
br>
probably be good as well.<br>
<br>
(and no, I did not run it like that. I&#39;m slightly smarted than that.)<b=
r>
<br>
<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-poky/c=
onf/local.conf.sample?h=3Dwarrior#n235" rel=3D"noreferrer" target=3D"_blank=
">https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-poky/conf/local=
.conf.sample?h=3Dwarrior#n235</a><br>
<br>
Thanks,<br>
Bill<br>
<br>
----------------<br>
William A. Mills<br>
Chief Technologist, Open Solutions, SDO<br>
Texas Instruments, Inc.<br>
20450 Century Blvd<br>
Germantown MD 20878<br>
240-643-0836<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000078bbe9058b359837--
