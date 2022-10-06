Return-Path: <poberauer@yahoo.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC0CFC4332F
	for <webhook@archiver.kernel.org>; Thu,  6 Oct 2022 13:27:48 +0000 (UTC)
Subject: other ways of removing GPLv3 components (than meta-gplv2) #GPLv3
To: yocto@lists.yoctoproject.org
From: "Peter" <poberauer@yahoo.co.uk>
X-Originating-Location: Salisbury, England, GB (217.39.183.102)
X-Originating-Platform: Linux Firefox 105
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 06 Oct 2022 06:27:45 -0700
Message-ID: <dh6q.1665062865199915963.1z69@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PzJ9MEDC3WzrIFJRYDCn"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Oct 2022 13:27:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58273

--PzJ9MEDC3WzrIFJRYDCn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi

" It is over. There are no excuses left if you are still using meta-gplv2."
-- https://twitter.com/yoctoproject/status/1552209990148145153
" There are other ways of removing GPLv3 components from modern OE/YP build=
s and we'd like to focus people's attention onto those. "
-- https://git.yoctoproject.org/meta-gplv2/commit/?id=3D43bf0e8d5985945d19d=
01f94bfbbda420c4435f3

Where can we find more details re the best ways of removing GPLv3 component=
s please?

Or, starting with a clean slate and adding back only what we actually need =
(for i.MX 8X and Qt Commercial).

Have tried searching, but going round in circles, as all the results so far=
 still point back to meta-gplv2.
Including the "How do I":
"If you use INCOMPATIBLE_LICENSE to exclude GPLv3 or set PREFERRED_VERSION =
to substitute a GPLv2 version of a GPLv3 recipe, then you must add the meta=
-gplv2 layer to your configuration."
-- https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_build_an_image_w=
ithout_GPLv3_Licensed_packages_.3F

The context is that some of our customers require Secure Boot and Chain of =
Trust (in an embedded environment).
If we keep GPLv3 components, then we need to provide "any methods, procedur=
es, authorization keys, or other information required to install and execut=
e modified versions of a covered work".

Thank you
-- Peter

--PzJ9MEDC3WzrIFJRYDCn
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi<br /><br />"<span class=3D"css-901oao css-16my406 r-poiln3 r-bcqeeo r=
-qvutc0">It is over. There are no excuses left if you are still using meta-=
gplv2." <br /></span><span class=3D"css-901oao css-16my406 r-poiln3 r-bcqee=
o r-qvutc0">-- <a href=3D"https://twitter.com/yoctoproject/status/155220999=
0148145153" target=3D"_blank" rel=3D"noopener">https://twitter.com/yoctopro=
ject/status/1552209990148145153</a><br /></span><span class=3D"css-901oao c=
ss-16my406 r-poiln3 r-bcqeeo r-qvutc0"></span><span class=3D"css-901oao css=
-16my406 r-poiln3 r-bcqeeo r-qvutc0">"</span>There are other ways of removi=
ng GPLv3 components from modern OE/YP builds and we'd like to focus people'=
s attention onto those.<span class=3D"css-901oao css-16my406 r-poiln3 r-bcq=
eeo r-qvutc0">" <br />-- <a href=3D"https://git.yoctoproject.org/meta-gplv2=
/commit/?id=3D43bf0e8d5985945d19d01f94bfbbda420c4435f3" target=3D"_blank" r=
el=3D"noopener">https://git.yoctoproject.org/meta-gplv2/commit/?id=3D43bf0e=
8d5985945d19d01f94bfbbda420c4435f3</a><br /><br />Where can we find more de=
tails re the best</span> ways of removing GPLv3 components please?<br /><br=
 />Or, starting with a clean slate and adding back only what we actually ne=
ed (for i.MX 8X and Qt Commercial).<br /><br /><span class=3D"css-901oao cs=
s-16my406 r-poiln3 r-bcqeeo r-qvutc0">Have tried searching, but going round=
 in circles, as all the results so far still point back to </span><span cla=
ss=3D"css-901oao css-16my406 r-poiln3 r-bcqeeo r-qvutc0">meta-gplv2. </span=
><br /><span class=3D"css-901oao css-16my406 r-poiln3 r-bcqeeo r-qvutc0">In=
cluding the</span><span class=3D"css-901oao css-16my406 r-poiln3 r-bcqeeo r=
-qvutc0"> "How do I":<br /></span>"If you use INCOMPATIBLE_LICENSE to exclu=
de GPLv3 or set PREFERRED_VERSION to substitute a GPLv2 version of a GPLv3 =
recipe, then you must add the meta-gplv2 layer to your configuration."<br /=
>-- <span class=3D"css-901oao css-16my406 r-poiln3 r-bcqeeo r-qvutc0"><a hr=
ef=3D"https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_build_an_imag=
e_without_GPLv3_Licensed_packages_.3F" target=3D"_blank" rel=3D"noopener">h=
ttps://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_build_an_image_witho=
ut_GPLv3_Licensed_packages_.3F</a><br /><br /></span>The context is that so=
me of our customers require Secure Boot and Chain of Trust (in an embedded =
environment).<br />If we keep GPLv3 components, then we need to provide "an=
y methods, procedures, authorization keys, or other information required to=
 install and execute modified versions of a covered work".<br /><br />Thank=
 you<br />-- Peter<br /><br /><span class=3D"css-901oao css-16my406 r-poiln=
3 r-bcqeeo r-qvutc0"></span></p>

--PzJ9MEDC3WzrIFJRYDCn--

