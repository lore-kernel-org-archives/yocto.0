Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54AE8E009BF; Wed, 22 Jun 2016 01:06:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6F47E008D2
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 01:06:46 -0700 (PDT)
Received: by mail-yw0-f179.google.com with SMTP id v77so36041449ywg.0
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 01:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=a+xRVp3NGr/XIyDIsqpS5E9+siiYZstvwIixHIOKdCM=;
	b=XvYSohSo9aCiqmkwGyL5zGRZGIQnWoYWwLjhw9IThiNxVp4IwjqUcXfG5bP65uw2EN
	bpapERCnt7LYSGHgEM0TeheWXK0p8l02uCLt88ttkCLNnNkUNJaPvtX9kNZjtsbyJ88Q
	NoOXd9aA8Mw5GVByCKolLacwFksY1MsSKB9DNjh12EtUlWfQRmDSvwLs/uRx93DzHfda
	2HIRjMunF6W7iM2wD/usHpyvVo5H7FPJt9u0VAh3pCct6ZM17EPbfFRLJJ8LlsZb2xRU
	WGI/DHsVwGOL1X2ozOvQ0J2WviQ4dHrQMDEKSPsIG6gQS8rQU8pl9XYicxFmuNwhtCTb
	mlnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=a+xRVp3NGr/XIyDIsqpS5E9+siiYZstvwIixHIOKdCM=;
	b=jx7Gg2Gc4F97lWyTBo1oXwWfsaVWnlumxqwcpU1n+ew/Owkv3s9QPCCWc+HYD4ITx4
	UGB7q4S3OGXEvVPGdi2i/FaHkoDFtdvpVPZYnP+lvWE1anlH+2fwsm3s6OTpVb1l1JT/
	baQotN1oPlEcP8TLAg6nmBjOzIokU04H1UaW9NnUknkDLhtktF+pTA6VZqoKoUpfka/2
	/hzqu3uRGQfzrfweE2hV4fz8qodG7Lfu5NJTPhmOj5gG0JI8YcQf3nwMyxTGSPzBwyqT
	jtk7A/661AYUqTs5yBe/Yk9Z7eQNQuYNi9qLLc/TjU++VT3F0XAAD97NfgyBFW9rOLKS
	kiNw==
X-Gm-Message-State: ALyK8tIZEf4W7zSJh3EfzfaBqqDZTXY6vhc52qdr6t9yi4ZDYTtX5EGYFCIHo/nCFbWH7zN1uODY23leZz38ow==
X-Received: by 10.129.86.5 with SMTP id k5mr14187681ywb.141.1466582806128;
	Wed, 22 Jun 2016 01:06:46 -0700 (PDT)
MIME-Version: 1.0
Sender: krussell7711@gmail.com
Received: by 10.129.41.139 with HTTP; Wed, 22 Jun 2016 01:06:26 -0700 (PDT)
In-Reply-To: <856fbb9f-74bc-545b-f5e5-3405d452c0f2@windriver.com>
References: <CAFrQVPMhmCAT+TfdOmQ95LsaTSc13=6GNvc=L=6cHmACGHRZgw@mail.gmail.com>
	<856fbb9f-74bc-545b-f5e5-3405d452c0f2@windriver.com>
From: Kyle Russell <bkylerussell@gmail.com>
Date: Wed, 22 Jun 2016 04:06:26 -0400
X-Google-Sender-Auth: -h74FSYLk_wtUPkG0ZPlOec3gaI
Message-ID: <CAFrQVPOE2bwaiQ9iDx8ogKuc_CCG2RjVu8NKfW-UOgp+LPLR8w@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: prelink support
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
X-List-Received-Date: Wed, 22 Jun 2016 08:06:49 -0000
Content-Type: multipart/alternative; boundary=001a1143198431739d0535d96bdf

--001a1143198431739d0535d96bdf
Content-Type: text/plain; charset=UTF-8

The cross_prelink_staging branch seems to work for our ARM Cortex-A53
configuration.

The only issue that I ran into was building src/rtld/dl-open.c.  I guess
the GCCVERSION we declared (4.9%) was defaulting to a language standard
that didn't support for loop initial declarations.

On Mon, Jun 20, 2016 at 9:15 AM, Mark Hatle <mark.hatle@windriver.com>
wrote:

> On 6/20/16 7:24 AM, Kyle Russell wrote:
> > It looks like the image-prelink support is still disabled in master
> because of
> > an issue with IFUNC symbol relocation.
> >
> >
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta-poky/conf/local.conf.sample?id=8debfea81e69d038bd2d56314b272cb74f5582ed
> >
> > Is there still a problem, or is it safe to reenable image-prelink?  I
> see a "Fix
> > ARM IFUNC support" in the prelink-cross repo, but that appears to have
> been
> > committed several months before image-prelink was disabled.  We'd like
> to enable
> > image-prelink on a build off jethro.
> >
> > Any help or links to a recent discussion thread would be helpful.
> Thanks!
> >
> >
>
> The ARM fix is for a different IFUNC problem.
>
> Disabling the prelinker was caused by a serious of problems that started
> with a
> fork failure traced back to shared library processing orders.
>
> (For comments below, I'm referring to the repository:
> http://git.yoctoproject.org/cgit/cgit.cgi/prelink-cross/)
>
> The initial problem, IFUNC processing, showed that processing order of the
> shared libraries could lead to a case where the wrong IFUNC was used.  We
> believe this particular issues was fixed in the staging tree.
>
> In the tree you'll see a cross_prelink_staging branch.  In that branch the
> fix
> is commit ID: "8f55afd84b3580b1f1d6af904e8c2a39221055b7"  This fixes the
> 'fork'
> issue by ensuring the proper sort order for shared library processing.
> (This
> was finally fixed in March.)
>
> However with that we determined there was at least one more issue related
> to
> section ordering.  The prelink test suite was failing due to various
> integrity
> checks showing that once we prelinked something, we could not reverse the
> process.  It has taken us months to identify the cause of the problem and
> the
> solution.  (Cause BTW was a change in binutils-2.22 that no longer ensured
> that
> the section order was sorted by offset order... a small amount of the
> prelink
> processing needed to be changed to deal with that behavior.  It's taken far
> longer to fix then we had ever expected.)
>
> See commit (33be255d62af533189f1f7bc66c06602b703980a) in the
> cross_prelink_staging branch.
>
> With this commit, I think the two major issues have been resolved.  I've
> got a
> small set of additional patches I need to put into place -- and then I
> have to
> finish going through the regression suite to verify everything is working
> properly.  (Seems like every time I get to this step, something else comes
> up
> and I'm not getting it done...)
>
> So if you've read this far, the point in all of this is that I THINK that
> the
> cross_prelink_staging branch and current top commit
> "33be255d62af533189f1f7bc66c06602b703980a" are working.  However, I've not
> completed testing so I'm not sure of that yet.
>
> If you can help with testing, you should modify your prelink recipe to use
> the
> 'cross_prelink_staging' branch, and the 33be255 commit.  Verify that this
> is
> working for your use cases.  If you are using glib or graphical
> environments pay
> particular attention to process startup messages that indicate failures.
>
> If this IS working for you, I'd like a reply back with the architecture and
> processor you are using so I can add that to my matrix.  (I'm traveling
> for the
> next couple of days, and then should be back in the officer where I hope to
> finish my regression testing, apply the last couple of patches from Gentoo
> developers, regression test again and prepare a release version.)
>
> Any help is appreciated, thanks for understanding why this is taking so
> long.
>
> --Mark
>

--001a1143198431739d0535d96bdf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The cross_prelink_staging branch seems to work for our ARM=
 Cortex-A53 configuration.<div><br></div><div>The only issue that I ran int=
o was building src/rtld/dl-open.c.=C2=A0 I guess the GCCVERSION we declared=
 (4.9%) was defaulting to a language standard that didn&#39;t support for l=
oop initial declarations.</div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Mon, Jun 20, 2016 at 9:15 AM, Mark Hatle <span dir=
=3D"ltr">&lt;<a href=3D"mailto:mark.hatle@windriver.com" target=3D"_blank">=
mark.hatle@windriver.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 6/20/16 7:24 AM, Kyle Russ=
ell wrote:<br>
&gt; It looks like the image-prelink support is still disabled in master be=
cause of<br>
&gt; an issue with IFUNC symbol relocation.<br>
&gt;<br>
&gt; <a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta=
-poky/conf/local.conf.sample?id=3D8debfea81e69d038bd2d56314b272cb74f5582ed"=
 rel=3D"noreferrer" target=3D"_blank">https://git.yoctoproject.org/cgit/cgi=
t.cgi/poky/commit/meta-poky/conf/local.conf.sample?id=3D8debfea81e69d038bd2=
d56314b272cb74f5582ed</a><br>
&gt;<br>
&gt; Is there still a problem, or is it safe to reenable image-prelink?=C2=
=A0 I see a &quot;Fix<br>
&gt; ARM IFUNC support&quot; in the prelink-cross repo, but that appears to=
 have been<br>
&gt; committed several months before image-prelink was disabled.=C2=A0 We&#=
39;d like to enable<br>
&gt; image-prelink on a build off jethro.<br>
&gt;<br>
&gt; Any help or links to a recent discussion thread would be helpful.=C2=
=A0 Thanks!<br>
&gt;<br>
&gt;<br>
<br>
</div></div>The ARM fix is for a different IFUNC problem.<br>
<br>
Disabling the prelinker was caused by a serious of problems that started wi=
th a<br>
fork failure traced back to shared library processing orders.<br>
<br>
(For comments below, I&#39;m referring to the repository:<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/prelink-cross/" rel=3D=
"noreferrer" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/pr=
elink-cross/</a>)<br>
<br>
The initial problem, IFUNC processing, showed that processing order of the<=
br>
shared libraries could lead to a case where the wrong IFUNC was used.=C2=A0=
 We<br>
believe this particular issues was fixed in the staging tree.<br>
<br>
In the tree you&#39;ll see a cross_prelink_staging branch.=C2=A0 In that br=
anch the fix<br>
is commit ID: &quot;8f55afd84b3580b1f1d6af904e8c2a39221055b7&quot;=C2=A0 Th=
is fixes the &#39;fork&#39;<br>
issue by ensuring the proper sort order for shared library processing.=C2=
=A0 (This<br>
was finally fixed in March.)<br>
<br>
However with that we determined there was at least one more issue related t=
o<br>
section ordering.=C2=A0 The prelink test suite was failing due to various i=
ntegrity<br>
checks showing that once we prelinked something, we could not reverse the<b=
r>
process.=C2=A0 It has taken us months to identify the cause of the problem =
and the<br>
solution.=C2=A0 (Cause BTW was a change in binutils-2.22 that no longer ens=
ured that<br>
the section order was sorted by offset order... a small amount of the preli=
nk<br>
processing needed to be changed to deal with that behavior.=C2=A0 It&#39;s =
taken far<br>
longer to fix then we had ever expected.)<br>
<br>
See commit (33be255d62af533189f1f7bc66c06602b703980a) in the<br>
cross_prelink_staging branch.<br>
<br>
With this commit, I think the two major issues have been resolved.=C2=A0 I&=
#39;ve got a<br>
small set of additional patches I need to put into place -- and then I have=
 to<br>
finish going through the regression suite to verify everything is working<b=
r>
properly.=C2=A0 (Seems like every time I get to this step, something else c=
omes up<br>
and I&#39;m not getting it done...)<br>
<br>
So if you&#39;ve read this far, the point in all of this is that I THINK th=
at the<br>
cross_prelink_staging branch and current top commit<br>
&quot;33be255d62af533189f1f7bc66c06602b703980a&quot; are working.=C2=A0 How=
ever, I&#39;ve not<br>
completed testing so I&#39;m not sure of that yet.<br>
<br>
If you can help with testing, you should modify your prelink recipe to use =
the<br>
&#39;cross_prelink_staging&#39; branch, and the 33be255 commit.=C2=A0 Verif=
y that this is<br>
working for your use cases.=C2=A0 If you are using glib or graphical enviro=
nments pay<br>
particular attention to process startup messages that indicate failures.<br=
>
<br>
If this IS working for you, I&#39;d like a reply back with the architecture=
 and<br>
processor you are using so I can add that to my matrix.=C2=A0 (I&#39;m trav=
eling for the<br>
next couple of days, and then should be back in the officer where I hope to=
<br>
finish my regression testing, apply the last couple of patches from Gentoo<=
br>
developers, regression test again and prepare a release version.)<br>
<br>
Any help is appreciated, thanks for understanding why this is taking so lon=
g.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--Mark<br>
</font></span></blockquote></div><br></div>

--001a1143198431739d0535d96bdf--
