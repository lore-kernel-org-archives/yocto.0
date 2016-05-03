Return-Path: <mtl1nuxd3v@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66B31E006C7; Tue,  3 May 2016 08:31:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtl1nuxd3v[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.179 listed in list.dnswl.org]
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86B3BE00566
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 08:31:10 -0700 (PDT)
Received: by mail-yw0-f179.google.com with SMTP id t10so24636176ywa.0
	for <yocto@yoctoproject.org>; Tue, 03 May 2016 08:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=f/sWSZ2VPGCOb5vj+YNKBbjmE3OEJYj97N8ZyiWVfmw=;
	b=rRZx61w+qq9T5CXQT05qZ9hysnIkNJEGVTguwcZF+5S9HXgca0slUZ1CMpQKAcYLx3
	dTmMY0NvzUnUdn6ElxfkkJLuCVCfu8l+zg1xaFV/oIeQ4yllP+wioI5XDH7BHaYhD3LM
	vGWshdA/bkp57kRlqSQ6tU3LsN0EgcskFYSBc2n9cm2NpgQTCLg+sO9/buplB0AL6qq2
	rfWbZ+k28/gMxw+IpQzE1Pc5sAqYhhqYvdWf7vew4JbTy8PCbKCdyTr8ZWUbINQSnol5
	zWT8Sq/SKKvk1BzdinqopDZ9evXaiNZcLkTkKXPrIBu1ZlAkWrUtRXBbxTFlyGd/VJbE
	IksQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=f/sWSZ2VPGCOb5vj+YNKBbjmE3OEJYj97N8ZyiWVfmw=;
	b=eVMGG/Gc2o4p3kYLS/h3Ko1L89NCaFow0xgeWejkPNhcu6oAyKqSZuedyX5Q/UUUpz
	zRz0Gc2rX6/8yxL3yzowDsZiTZa/vVIx3j/RBE2VQ/PAF83DzABcm67KQyyfx+5fPkT7
	otoxVPzBTDZrGX34SE4ZMAXto4rqHtn0ENyCqT3L/tzpjYsnwNEkPwRw9qA6QCGAMYH6
	cdSHZPlQ1hQvwOtD2QIdI7YGpYRjpO6AiquPpLSilSpituNUEjnO7K1ueJ9LQjj7NhQX
	wnDB184cucJOpaCVUKJ4aziTCJdYLei6qyzl1/lylxoZeDUt3dzFLXV7fqIgwqWgXfF9
	JJtw==
X-Gm-Message-State: AOPr4FWBgrCOZav3Lnt/yvjAMZYQArnkkNdRe0Kr4fE6ZoBQiqQMW/p+GLhTQDqc8GP+JX1/snuofzSZla0jpQ==
MIME-Version: 1.0
X-Received: by 10.37.207.80 with SMTP id f77mr1371062ybg.78.1462289469657;
	Tue, 03 May 2016 08:31:09 -0700 (PDT)
Received: by 10.37.36.82 with HTTP; Tue, 3 May 2016 08:31:09 -0700 (PDT)
In-Reply-To: <CABcZANkp8WvE3OXFxXcrKV_mi2WwPiyPqwjrgVYHOzQTL3Tk9w@mail.gmail.com>
References: <CALf_N3bfJ5etAAVs5JAF7mX=HQ60BQ9P02ragzdk4y1JGv5KCA@mail.gmail.com>
	<CABcZANkp8WvE3OXFxXcrKV_mi2WwPiyPqwjrgVYHOzQTL3Tk9w@mail.gmail.com>
Date: Tue, 3 May 2016 16:31:09 +0100
Message-ID: <CALf_N3aXL1Lpk1ds1M+XLYH59dB=ha1BByUQtpAFQs=gkp_=aA@mail.gmail.com>
From: Mark T <mtl1nuxd3v@gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: What version of Jethro do we get with - git clone -b jethro git://git.yoctoproject.org/poky.git ?
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
X-List-Received-Date: Tue, 03 May 2016 15:31:11 -0000
Content-Type: multipart/alternative; boundary=94eb2c05578e65db4d0531f1ccf7

--94eb2c05578e65db4d0531f1ccf7
Content-Type: text/plain; charset=UTF-8

Hi Christopher,

Thanks. What is the command option to specify the tag and is there a list
or tags available ?

Cheers,
Mark

On 3 May 2016 at 16:23, Christopher Larson <clarson@kergoth.com> wrote:

>
>
> On Tue, May 3, 2016 at 3:18 PM, Mark T <mtl1nuxd3v@gmail.com> wrote:
>
>> Hi,
>>
>> When we started working with Yocto we cloned via -
>>
>> git clone -b jethro git://git.yoctoproject.org/poky.git  mydir/
>> cd mydir
>> git clone git://git.yoctoproject.org/meta-intel -b jethro
>>
>> If we do the same a month or so later do we get the same version ?  we
>> suspect not the distro version has changed.
>>
>> Is there a way we can clone the same version all the time ?
>>
>> Secondly, what should be considered a stable version to clone ?
>>
>
> The release branch will get bug fixes and security updates after the
> release. If you don't want it to change at all, use the tag or tarballs,
> not the branch.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>

--94eb2c05578e65db4d0531f1ccf7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Christopher,<br><br></div>Thanks. What i=
s the command option to specify the tag and is there a list or tags availab=
le ?<br><br></div>Cheers,<br></div>Mark<br></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On 3 May 2016 at 16:23, Christopher Larson =
<span dir=3D"ltr">&lt;<a href=3D"mailto:clarson@kergoth.com" target=3D"_bla=
nk">clarson@kergoth.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote"><span class=3D"">On Tue, May 3, 2016 at 3:18 PM, Mark T <span dir=
=3D"ltr">&lt;<a href=3D"mailto:mtl1nuxd3v@gmail.com" target=3D"_blank">mtl1=
nuxd3v@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv dir=3D"ltr"><div><div><div>Hi,<br><br></div>When we started working with=
 Yocto we cloned via -<br><br>git clone -b jethro git://<a href=3D"http://g=
it.yoctoproject.org/poky.git" target=3D"_blank">git.yoctoproject.org/poky.g=
it</a>=C2=A0 mydir/<br>cd mydir<br>git clone git://<a href=3D"http://git.yo=
ctoproject.org/meta-intel" target=3D"_blank">git.yoctoproject.org/meta-inte=
l</a> -b jethro<br><br></div>If we do the same a month or so later do we ge=
t the same version ?=C2=A0 we suspect not the distro version has changed.<b=
r><br></div>Is there a way we can clone the same version all the time ?<br>=
<div><div><br></div><div>Secondly, what should be considered a stable versi=
on to clone ?</div></div></div></blockquote><div><br></div></span><div>The =
release branch will get bug fixes and security updates after the release. I=
f you don&#39;t want it to change at all, use the tag or tarballs, not the =
branch.=C2=A0</div></div><span class=3D"HOEnZb"><font color=3D"#888888">-- =
<br><div>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitB=
ake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engi=
neer, Mentor Graphics</div>
</font></span></div></div>
</blockquote></div><br></div>

--94eb2c05578e65db4d0531f1ccf7--
