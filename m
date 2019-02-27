Return-Path: <tfroehlich@archsys.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1493EE00D00; Tue, 26 Feb 2019 16:29:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4196E00C1B
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 16:29:52 -0800 (PST)
Received: by mail-qt1-f195.google.com with SMTP id o6so17267012qtk.6
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 16:29:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=archsys-io.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=R2h/Yztij7zTVGe4deXRyc0zvPiuaSfTlArmM6obah0=;
	b=VXWyC+Q0vb7/h/IjskIBb7RKTpppIkRgBUHzkjIZwoBjnqyKChIRxuLsQNgryiMrSU
	yGegXD+BsNVZx9uvIUj+Sn8t3U4ezdVtwo5S7zTCdyEnLnvXcEomepxjNl6SGNS3cIwe
	6kHrQ5X7lX2/tKrY4d7ASgMYOu6Y2NfecFa14pcH0RynVhdrgtAjB3u+U870uzVhvrFy
	unRz2ZWJatwQW2EkDfzmwHC/hc7vlQZNaGwwlL/aHJ3JkXJ+Bix2qEfM4dWGeGFv4WX/
	9rhOTQs30LdVlPJjAufSIEZdzjW9kXwv2lBVJuGIg20sHJCV96AYaU5K3/CK93uvbl+A
	Ccug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=R2h/Yztij7zTVGe4deXRyc0zvPiuaSfTlArmM6obah0=;
	b=eyInt5XoeXLTCPAEZ33RzVlokOIU7Ez+L1xgVArCqdk2Cm5Ap5iDQjhXAXaaM9o5/h
	7BtP8OyU6OuJ0vA94p2+6/PF90wELfUMw1NcIGQE7J6fFCaw1MOwof+iEpVq0JUu4hXJ
	yRSD+3fdgOhC4gwL2rPPvEYzM4HzcTj+qzVyD794JT1ZaiDXzm2XXY23rtBZiEoyiSo/
	V24rFs/azrq8l6DZVYlFPMZ4Y2pnd2kR4qmiq3C5XC9kkM6okhuFUOiAy7REltfn/d9/
	yqmimf0siuAjdddQJQkP+IOkl+USdMCbcJziOeEoU+LXydYvKKr99Zsly0P/CvzXAbhK
	W1uw==
X-Gm-Message-State: AHQUAuYlYvvBLjxtTNK19SgORpLpLbGZy2kyZovyHuk6xoHVJq6v9RTQ
	vH4JhBRTpaLnY1r/kGon5HWSPed/YVcD9XXvt17f9Jih
X-Google-Smtp-Source: AHgI3Ib185z5U4pM6sneMGKp0X97sekcqlKcDuHpoRlDu4mi/dBb0WOQVJxdIQ5FVFEa5eu9H2yOtJsry3UsGgpTFoY=
X-Received: by 2002:ac8:1888:: with SMTP id s8mr20824302qtj.338.1551227392251; 
	Tue, 26 Feb 2019 16:29:52 -0800 (PST)
MIME-Version: 1.0
References: <CAHSUxjS=7_yLBOVMJLbzrtKNbGL_fKhTMh7fcOXc=wsqyZe+hQ@mail.gmail.com>
	<CAG0OLMYHYmDRMApuEW72Q_fm_yWRnBP-vUCPTtBsnkL2D9z3gg@mail.gmail.com>
In-Reply-To: <CAG0OLMYHYmDRMApuEW72Q_fm_yWRnBP-vUCPTtBsnkL2D9z3gg@mail.gmail.com>
From: Timothy Froehlich <tfroehlich@archsys.io>
Date: Tue, 26 Feb 2019 16:29:41 -0800
Message-ID: <CAHSUxjQiUG-D=34UjV9TKN5pmLVOWYW3e8=+RDRzRAoKH9zEYw@mail.gmail.com>
To: Brian Walsh <brian@walsh.ws>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Storing Sstate in S3 success stories?
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
X-List-Received-Date: Wed, 27 Feb 2019 00:29:54 -0000
Content-Type: multipart/alternative; boundary="000000000000ae68f70582d5454f"

--000000000000ae68f70582d5454f
Content-Type: text/plain; charset="UTF-8"

This doesn't seem to be an issue. I have multiple files with plus signs in
their names that made it back down to my local cache without requiring a
rebuild (including the whole Linux kernel)

On Tue, Feb 26, 2019 at 11:35 AM Brian Walsh <brian@walsh.ws> wrote:

> On Mon, Feb 25, 2019 at 8:46 PM Timothy Froehlich <tfroehlich@archsys.io>
> wrote:
> >
> > I've been spending a bit too long this past week trying to build up a
> reproducable build infrastructure in AWS and I've got very little
> experience with cloud infrastucture and I'm wondering if I'm going in the
> wrong direction. I'm attempting to host my sstate_cache as a mirror in a
> private S3 bucket, and I believe I have everything configured properly,
> including exposing the bucket to http requests, since I can wget files that
> I've previously synced up to the bucket. However if I add in the
> SSTATE_MIRRORS to my build, bitbake slows to a crawl (it's a powerful VM)
> and barely seems to get anything. The EC2 instance is in the same region as
> the S3 bucket, roles have been configured properly to allow access, etc.
> >
> > I'm not looking for help debugging this, I just want to know whether I'm
> right that hosting my sstate in an S3 bucket should work. I've only been
> able to find one mention of it being done with no reproduction hints.
> >
>
> A lot of the files end up with plus signs in the name. This causes
> problems with retrieving files through http access with S3. S3
> translates all plus signs to spaces, even those in the file path. So
> if my-file_v1.0+g1241876 actually exists as named in S3 an http
> request for that file will trigger the server to look for
> "my-file_v1.0 g1241876"
>
> I ran into this problem trying to host an opkg repository in S3 for
> upgrading.
>
> It may mostly work for you but there will be many files that it will
> never be able to find in your S3 hosted sstate.
>
> Maybe this has been fixed by AWS. I noticed the problem a year or two ago.
>
>
> https://stackoverflow.com/questions/36734171/how-to-decide-if-the-filename-has-a-plus-sign-in-it#36758133
> https://news.ycombinator.com/item?id=15398804
>


-- 
Tim Froehlich
Embedded Linux Engineer
tfroehlich@archsys.io
215-218-8955

--000000000000ae68f70582d5454f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This doesn&#39;t seem to be an issue. I have multiple file=
s with plus signs in their names that made it back down to my local cache w=
ithout requiring a rebuild (including the whole Linux kernel)</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 26=
, 2019 at 11:35 AM Brian Walsh &lt;<a href=3D"mailto:brian@walsh.ws">brian@=
walsh.ws</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">On Mon, Feb 25, 2019 at 8:46 PM Timothy Froehlich &lt;<a href=3D"ma=
ilto:tfroehlich@archsys.io" target=3D"_blank">tfroehlich@archsys.io</a>&gt;=
 wrote:<br>
&gt;<br>
&gt; I&#39;ve been spending a bit too long this past week trying to build u=
p a reproducable build infrastructure in AWS and I&#39;ve got very little e=
xperience with cloud infrastucture and I&#39;m wondering if I&#39;m going i=
n the wrong direction. I&#39;m attempting to host my sstate_cache as a mirr=
or in a private S3 bucket, and I believe I have everything configured prope=
rly, including exposing the bucket to http requests, since I can wget files=
 that I&#39;ve previously synced up to the bucket. However if I add in the =
SSTATE_MIRRORS to my build, bitbake slows to a crawl (it&#39;s a powerful V=
M) and barely seems to get anything. The EC2 instance is in the same region=
 as the S3 bucket, roles have been configured properly to allow access, etc=
.<br>
&gt;<br>
&gt; I&#39;m not looking for help debugging this, I just want to know wheth=
er I&#39;m right that hosting my sstate in an S3 bucket should work. I&#39;=
ve only been able to find one mention of it being done with no reproduction=
 hints.<br>
&gt;<br>
<br>
A lot of the files end up with plus signs in the name. This causes<br>
problems with retrieving files through http access with S3. S3<br>
translates all plus signs to spaces, even those in the file path. So<br>
if my-file_v1.0+g1241876 actually exists as named in S3 an http<br>
request for that file will trigger the server to look for<br>
&quot;my-file_v1.0 g1241876&quot;<br>
<br>
I ran into this problem trying to host an opkg repository in S3 for upgradi=
ng.<br>
<br>
It may mostly work for you but there will be many files that it will<br>
never be able to find in your S3 hosted sstate.<br>
<br>
Maybe this has been fixed by AWS. I noticed the problem a year or two ago.<=
br>
<br>
<a href=3D"https://stackoverflow.com/questions/36734171/how-to-decide-if-th=
e-filename-has-a-plus-sign-in-it#36758133" rel=3D"noreferrer" target=3D"_bl=
ank">https://stackoverflow.com/questions/36734171/how-to-decide-if-the-file=
name-has-a-plus-sign-in-it#36758133</a><br>
<a href=3D"https://news.ycombinator.com/item?id=3D15398804" rel=3D"noreferr=
er" target=3D"_blank">https://news.ycombinator.com/item?id=3D15398804</a><b=
r>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Tim Froehlich<div>Embedded Linu=
x Engineer</div><div><a href=3D"mailto:tfroehlich@archsys.io" target=3D"_bl=
ank">tfroehlich@archsys.io</a></div><div>215-218-8955</div></div></div>

--000000000000ae68f70582d5454f--
