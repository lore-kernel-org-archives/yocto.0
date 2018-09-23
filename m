Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80FFFE0078F; Sun, 23 Sep 2018 06:23:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 374D3E003D7
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2018 06:23:39 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id o18-v6so7513235wmc.0
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2018 06:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=r1ClhKjqpJf8oqF20589QpDg/Pt8kwJjGmHXN24p+wg=;
	b=pZJJ2IEfFwSXhtf/gned/ai//HvnOizKJI2hF/4DXFB3vahU6u+6A/1/B3fiywWA05
	bSHVf+r8CJOf7IzKrY1Q2TIcL0YlFSAyp8b7q/kkcYboK3zYUXTlAkd/z0dDupI0kmtx
	Wlh/znXCCa/gkCCvnWf5qcHitH0wM6LJFg7JMFL/2mbrUyy+P+QB+3c2SYKUn/z8NlYA
	lkK3SU8qPk87BmpS8taIKiIeewzcG6XtH/fU5EncLGFwtkbTQrmp+pJppprV+uWcJXf3
	4zx8Lq8LKqQT5D3VAAR+dOuah7VTIDbgHgw8siKZCEQuaQnJ1wqHQgHh9k+xuWYQJYX6
	bE2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=r1ClhKjqpJf8oqF20589QpDg/Pt8kwJjGmHXN24p+wg=;
	b=nOH1JJPjvOBwDmyUV95W6XQP7Wy8aHkq/rFlxFOWKb8dEZUwdkJa5ffhTMfP/CLZdz
	aPCw5e60Dtf1WGSlnavSSUnMx167tlNGJC7Qz/DoPTZN4oongwZf/43jTI3CZJfO0SaF
	TgSEfUlnvtqwgxlpBRRaAc7UGjfHdeuRGqu5BEoRlGfT45Piubeytxn2h2/bkLtHjX2q
	j2vIsX4iXszt443cK32kIbRA+RDrzTtNGJFccUo53Etoe8e7WcSvGRkxq/SwFPaGPDGC
	icRcs4ZeVihNVb1/wZh4JxTwfVtusEhU+dlTTGB8AWK6/t+eYnRrAEXGWet5gjUqcrlX
	BhgQ==
X-Gm-Message-State: APzg51Bw1WA/GrjU7HU3r7z3u3IDzAkN3Zk+d58Mu/4ake3bnKQuHI24
	wfoKdzzDyKijAS5x4fAxTuTnyZL8yA01QUIEqgs=
X-Google-Smtp-Source: ANB0VdZ3Htbt0wEE88f25xCwqTTq36KdVdAQOp4n/zCXJyesNgDMFVppx3j7CcgmI5kdFAUpAcBXJRD7VVuKbE/3yvg=
X-Received: by 2002:a1c:1510:: with SMTP id 16-v6mr3983337wmv.74.1537709019028;
	Sun, 23 Sep 2018 06:23:39 -0700 (PDT)
MIME-Version: 1.0
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
	<ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
	<0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
	<340e2fcca899a6691605df89eb89f0e7e7802916.camel@linuxfoundation.org>
	<767f0527074648f48702fedcdb928152@AUSX13MPC104.AMER.DELL.COM>
	<20180918160944.43679aec@seebsdell>
	<CAJdd5Gb64JqHY3gv=r+_ZnKpDzO63CLpOF0fP8MQy_Dd_bshQQ@mail.gmail.com>
	<20180918162048.35454f8d@seebsdell>
	<CAJTo0LZ1qDr2DAFWJcHBrzWWwERYh-6eSiXNO5gcJwT=HXMb-w@mail.gmail.com>
	<20180920141600.1e7fae12@seebsdell>
	<7fa6c890755b4712828365593fcfe088@AUSX13MPC104.AMER.DELL.COM>
	<20180920155026.43686693@seebsdell>
	<CAJTo0LbHfuQxE_iGbpo1--Bn77N0mHW555R-Oew4r+ha5WO-qw@mail.gmail.com>
In-Reply-To: <CAJTo0LbHfuQxE_iGbpo1--Bn77N0mHW555R-Oew4r+ha5WO-qw@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 23 Sep 2018 15:23:32 +0200
Message-ID: <CA+chaQf6hC_RKzWqp_qE8CAdLvuC1rKrJ4fwe2HdEKVSB709nA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Seebs <seebs@seebs.net>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: [pseudo] Pseudo 1.8+ xattr sqlite corruption
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
X-List-Received-Date: Sun, 23 Sep 2018 13:23:41 -0000
Content-Type: multipart/alternative; boundary="000000000000d8e1d4057689c761"

--000000000000d8e1d4057689c761
Content-Type: text/plain; charset="UTF-8"

I did the same SRCREV bump locally and can confirm that
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12434 pseudo: Incorrect
UID/GID in packaged files
is still reproducible:
ERROR: glibc-locale-2.24-r0 do_package_qa: QA Issue: glibc-locale:
/glibc-binary-localedata-sw-ke/usr/lib/locale/sw_KE/LC_NUMERIC is owned by
uid 1101, which is the same as the user running bitbake. This may be due to
host contamination [host-user-contaminated]

On Fri, Sep 21, 2018 at 2:51 PM Burton, Ross <ross.burton@intel.com> wrote:

> Wired: I've just sent a patch to update oe-core to use the current
> HEAD of pseudo.
> Tired: WARNING: glibc-locale-2.28-r0 do_package_qa: QA Issue:
> glibc-locale:
> /glibc-binary-localedata-en-za.iso-8859-1/usr/lib/locale/en_ZA.ISO-8859-1/LC_PAPER
> is owned by uid 1000, which is the same as the user running bitbake.
> This may be due to host contamination [host-user-contaminated]
>
> I was *really* hoping this would solve the problem.
>
> Ross
>
> On Thu, 20 Sep 2018 at 21:51, Seebs <seebs@seebs.net> wrote:
> >
> > Nice catch. Merged a patch that applies this also.
> >
> > -s
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000d8e1d4057689c761
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I did t=
he same SRCREV bump locally and can confirm that</div><div dir=3D"ltr"><a h=
ref=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12434">https://b=
ugzilla.yoctoproject.org/show_bug.cgi?id=3D12434</a>=C2=A0pseudo: Incorrect=
 UID/GID in packaged files</div><div>is still reproducible:</div><div dir=
=3D"ltr">ERROR: glibc-locale-2.24-r0 do_package_qa: QA Issue: glibc-locale:=
 /glibc-binary-localedata-sw-ke/usr/lib/locale/sw_KE/LC_NUMERIC is owned by=
 uid 1101, which is the same as the user running bitbake. This may be due t=
o host contamination [host-user-contaminated]<br></div></div></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Sep 21, 2018 at 2:51 =
PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@in=
tel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Wired: I&#39=
;ve just sent a patch to update oe-core to use the current<br>
HEAD of pseudo.<br>
Tired: WARNING: glibc-locale-2.28-r0 do_package_qa: QA Issue:<br>
glibc-locale: /glibc-binary-localedata-en-za.iso-8859-1/usr/lib/locale/en_Z=
A.ISO-8859-1/LC_PAPER<br>
is owned by uid 1000, which is the same as the user running bitbake.<br>
This may be due to host contamination [host-user-contaminated]<br>
<br>
I was *really* hoping this would solve the problem.<br>
<br>
Ross<br>
<br>
On Thu, 20 Sep 2018 at 21:51, Seebs &lt;<a href=3D"mailto:seebs@seebs.net" =
target=3D"_blank">seebs@seebs.net</a>&gt; wrote:<br>
&gt;<br>
&gt; Nice catch. Merged a patch that applies this also.<br>
&gt;<br>
&gt; -s<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000d8e1d4057689c761--
