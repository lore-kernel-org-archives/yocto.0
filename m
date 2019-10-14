Return-Path: <ycnakajsph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF91FE00BF7; Mon, 14 Oct 2019 05:36:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ycnakajsph[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88029E00AE6
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 05:36:52 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id h144so37467479iof.7
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 05:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3nuLGSpE8Ka0x3qQWfN40sgsm7Rc8136ZN3zysLtmv0=;
	b=rrROr/+MfNy88vgyg7f78HdIm2i/MXe/hmKo6a8DJwutEl3x2mKR2JfzMXc4qGa2kI
	M9YRDD2ZLNco9ROMj/4JPwfVjaClyyYTIDP5cXFhImZ24hQz4iQho9i162RwfOGyH5A7
	NHd/WxxOGEM+9VD2fcMlbcAYBo2yi0WsUDntK835879/CNLUtcdz1cM2SBQeDbrplc0d
	AEKGmj1jeIxCJVsF5+90OuIAHb2n9SvNl4ACYXz5y4o6JfE2lo5wwVc5Q1QBJCH8Pujs
	YL5qm8Ybbju/lU1K1B/ULlwqu2Tl+aAMFw3Pa62pJgGIc8f3FWArvAfS7DGzW+oPIRBp
	bNaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3nuLGSpE8Ka0x3qQWfN40sgsm7Rc8136ZN3zysLtmv0=;
	b=ONGufADsRh/0zEml5RjUmsrfvAC57BTtQQmjVxro0AUIgGIro/TnwefCjLcojefOut
	4NOdDLgSDxycy/F9NY2A/9YTVPT+rr5m7g+ucjrxUJtLLN4qsfPYYrCMAjDW3egPBxdB
	9DI8l49RUVD2YSaIZr80psgwj1iMyH9sRLzY5d6LIxVUsUqtels/3ku7ee+OWQpZqxXY
	YkvK814GoMcFz6vcGrM9cj7VA+Te7O1TyQxIirZEIVcdkIUfzmx/r8o2mxdAG6+fcREX
	vaZT+FCBwtm04IVJFnhETRjAiEUKwQl/R2K6jEkIPQ7H7Tj8GvosQfjNkaMz/yKKIEqM
	Ie3Q==
X-Gm-Message-State: APjAAAU9NnXxGdLxlWNBeha0cP63msqmbpuggfwpazaSIYr6wSGZLqKZ
	zPuOlPgSP+2z5spq8fo1JJMENiiwpHVYINEkbJg=
X-Google-Smtp-Source: APXvYqzR89xEaxWn/lR4W128ARQB4wSwjUmUe4+MdfUYDAlhU4Hc8EkOtgngXqW7ARCn3clTNpb3VDfXG6Ua8XSxUHE=
X-Received: by 2002:a5e:9816:: with SMTP id s22mr6782387ioj.149.1571056611141; 
	Mon, 14 Oct 2019 05:36:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAC3TgAKRkeRjHDasNM6S_eSeBe82i3VYVWWuwLkUxm4GxTca4Q@mail.gmail.com>
	<2e40c398-ccf3-ee90-56df-3a2c6d458088@ni.com>
	<bec60eb90762feb06f014079d98aca92464d5568.camel@linuxfoundation.org>
In-Reply-To: <bec60eb90762feb06f014079d98aca92464d5568.camel@linuxfoundation.org>
From: Ycn aKaJoseph <ycnakajsph@gmail.com>
Date: Mon, 14 Oct 2019 14:36:39 +0200
Message-ID: <CAC3TgA+ai=LNV5Aq+6Nc+e+yFnXJ_bpUBZnqce4q_wWiSCUiOA@mail.gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: Haris Okanovic <haris.okanovic@ni.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>
Subject: Re: [opkg-devel] [OE-core][opkg-utils ] Bug 13528 : adding SPDX license identifier
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
X-List-Received-Date: Mon, 14 Oct 2019 12:36:55 -0000
X-Groupsio-MsgNum: 46927
Content-Type: multipart/mixed; boundary="0000000000003ada740594de1fac"

--0000000000003ada740594de1fac
Content-Type: multipart/alternative; boundary="0000000000003ada700594de1faa"

--0000000000003ada700594de1faa
Content-Type: text/plain; charset="UTF-8"

Hi,

GPL-2.0-only was applied to script without previous Licences and
GPL-2.0-or-later to those mentioning it, however I'm wondering if I should
also add a SPDX id to the makefile ?

Here's first attempt without identifier to the Makefile.

Best regards,



On Fri, Oct 11, 2019 at 6:45 PM <richard.purdie@linuxfoundation.org> wrote:

> On Fri, 2019-10-11 at 15:54 +0000, Alejandro Del Castillo wrote:
> > On 10/11/19 8:51 AM, Ycn aKaJoseph wrote:
> > > Hi guys,
> > >
> > > https://bugzilla.yoctoproject.org/show_bug.cgi?id=13528
> > > <
> > >
> https://urldefense.com/v3/__https://bugzilla.yoctoproject.org/show_bug.cgi?id=13528__;!fqWJcnlTkjM!8RtsWJXbDz_l063ZSVKrRMwvQ5KGdD0lk9aSjlUW9VHM2wufITJnBuIvovQxoT0yJXu-6Q$
> > > >
> > >
> > > I'm about to work on that bug however most of the script in opkg-
> > > utils
> > > dir are un-licenced and there's no hint for me to decide what SPDX
> > > Identifier to add.
> >
> > thanks for doing this!
> >
> > > The doubt concerns those script :
> > > makePackage
> > > opkg-build
> > > opkg-buildpackage
> > > opkg-compare-indexes
> > > opkg-diff
> > > opkg-extract-file
> > > opkg-graph-deps
> > > opkg-list-fields
> > > opkg-make-index
> > > opkg-show-deps
> > > opkg-unbuild
> > > opkg-update-index
> > >
> > > What license do you want them to carry ?
> >
> > Looking at the commit history, opkg-graph-deps was authored by Haris
> > Okanovic, and the rest by Richard Purdie (included them on the
> > thread).
> >
> > My take on it:  since opkg is licensed as GPLv2+, and the files that
> > have a license in opkg-utils are GPLv2+, make sense to me to license
> > the rest as GPLv2+ too.
>
> I didn't author these, they were imported from ipkg-utils which was
> part of handhelds.org. I did modify things quite a bit during the
> import.
>
> handhelds.org's CVS repos aren't there any more but I do have old
> sources lying around locally. I have a snapshot of the CVS repo from
> 20050930 and it has GPLv2 COPYING file (not 2+, just 2).
>
> I'd suggest we follow the original licensing of that and go with GPLv2.
>
> Cheers,
>
> Richard
>
>
>
>
>

--0000000000003ada700594de1faa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>GPL-2.0-only was applied=
 to script without previous Licences and GPL-2.0-or-later to those mentioni=
ng it, however I&#39;m wondering if I should also add a SPDX id to the make=
file ? <br></div><div><br></div><div>Here&#39;s first attempt without ident=
ifier to the Makefile. <br></div><div><br></div><div>Best regards,<br></div=
><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019 at 6:45 PM &lt;<a href=
=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundati=
on.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">On Fri, 2019-10-11 at 15:54 +0000, Alejandro Del Castillo wrote:<br>
&gt; On 10/11/19 8:51 AM, Ycn aKaJoseph wrote:<br>
&gt; &gt; Hi guys,<br>
&gt; &gt; <br>
&gt; &gt; <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13=
528" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org=
/show_bug.cgi?id=3D13528</a> <br>
&gt; &gt; &lt;<br>
&gt; &gt; <a href=3D"https://urldefense.com/v3/__https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D13528__;!fqWJcnlTkjM!8RtsWJXbDz_l063ZSVKrRMwvQ5KG=
dD0lk9aSjlUW9VHM2wufITJnBuIvovQxoT0yJXu-6Q$" rel=3D"noreferrer" target=3D"_=
blank">https://urldefense.com/v3/__https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D13528__;!fqWJcnlTkjM!8RtsWJXbDz_l063ZSVKrRMwvQ5KGdD0lk9aSjlUW9V=
HM2wufITJnBuIvovQxoT0yJXu-6Q$</a><br>
&gt; &gt; &gt;<br>
&gt; &gt; <br>
&gt; &gt; I&#39;m about to work on that bug however most of the script in o=
pkg-<br>
&gt; &gt; utils <br>
&gt; &gt; dir are un-licenced and there&#39;s no hint for me to decide what=
 SPDX <br>
&gt; &gt; Identifier to add.<br>
&gt; <br>
&gt; thanks for doing this!<br>
&gt; <br>
&gt; &gt; The doubt concerns those script :<br>
&gt; &gt; makePackage<br>
&gt; &gt; opkg-build<br>
&gt; &gt; opkg-buildpackage<br>
&gt; &gt; opkg-compare-indexes<br>
&gt; &gt; opkg-diff<br>
&gt; &gt; opkg-extract-file<br>
&gt; &gt; opkg-graph-deps<br>
&gt; &gt; opkg-list-fields<br>
&gt; &gt; opkg-make-index<br>
&gt; &gt; opkg-show-deps<br>
&gt; &gt; opkg-unbuild<br>
&gt; &gt; opkg-update-index<br>
&gt; &gt; <br>
&gt; &gt; What license do you want them to carry ?<br>
&gt; <br>
&gt; Looking at the commit history, opkg-graph-deps was authored by Haris <=
br>
&gt; Okanovic, and the rest by Richard Purdie (included them on the<br>
&gt; thread).<br>
&gt; <br>
&gt; My take on it:=C2=A0 since opkg is licensed as GPLv2+, and the files t=
hat <br>
&gt; have a license in opkg-utils are GPLv2+, make sense to me to license<b=
r>
&gt; the rest as GPLv2+ too.<br>
<br>
I didn&#39;t author these, they were imported from ipkg-utils which was<br>
part of <a href=3D"http://handhelds.org" rel=3D"noreferrer" target=3D"_blan=
k">handhelds.org</a>. I did modify things quite a bit during the<br>
import.<br>
<br>
<a href=3D"http://handhelds.org" rel=3D"noreferrer" target=3D"_blank">handh=
elds.org</a>&#39;s CVS repos aren&#39;t there any more but I do have old<br=
>
sources lying around locally. I have a snapshot of the CVS repo from<br>
20050930 and it has GPLv2 COPYING file (not 2+, just 2).<br>
<br>
I&#39;d suggest we follow the original licensing of that and go with GPLv2.=
<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--0000000000003ada700594de1faa--

--0000000000003ada740594de1fac
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-add-SPDX-license-identifiers.patch"
Content-Disposition: attachment; 
	filename="0001-add-SPDX-license-identifiers.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k1qeioy70>
X-Attachment-Id: f_k1qeioy70

RnJvbSBmNjYwZTU5ZDBhMWI4MGU0ZTdkMjA2Mzg2NTc3MTA1YTQ0NjVkYjJhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBZYW5uIENBUkRBSUxMQUMgPHljbmFrYWpzcGhAZ21haWwuY29t
PgpEYXRlOiBNb24sIDE0IE9jdCAyMDE5IDE0OjE1OjAzICswMjAwClN1YmplY3Q6IFtQQVRDSF0g
YWRkIFNQRFggbGljZW5zZSBpZGVudGlmaWVycwoKU2lnbmVkLW9mZi1ieTogWWFubiBDQVJEQUlM
TEFDIDx5Y25ha2Fqc3BoQGdtYWlsLmNvbT4KLS0tCiBhcmZpbGUucHkgICAgICAgICAgICB8IDEg
Kwogb3BrZy1idWlsZCAgICAgICAgICAgfCAyICstCiBvcGtnLWJ1aWxkcGFja2FnZSAgICB8IDEg
Kwogb3BrZy1jb21wYXJlLWluZGV4ZXMgfCAxICsKIG9wa2ctZGlmZiAgICAgICAgICAgIHwgMiAr
LQogb3BrZy1leHRyYWN0LWZpbGUgICAgfCAyICstCiBvcGtnLWdyYXBoLWRlcHMgICAgICB8IDEg
Kwogb3BrZy1saXN0LWZpZWxkcyAgICAgfCAxICsKIG9wa2ctbWFrZS1pbmRleCAgICAgIHwgMSAr
CiBvcGtnLXNob3ctZGVwcyAgICAgICB8IDEgKwogb3BrZy11bmJ1aWxkICAgICAgICAgfCAxICsK
IG9wa2ctdXBkYXRlLWluZGV4ICAgIHwgMSArCiBvcGtnLnB5ICAgICAgICAgICAgICB8IDEgKwog
dXBkYXRlLWFsdGVybmF0aXZlcyAgfCAxICsKIDE0IGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJmaWxlLnB5IGIvYXJmaWxlLnB5
CmluZGV4IDYwZWRkOWIuLjNiMzUxZDggMTAwNjQ0Ci0tLSBhL2FyZmlsZS5weQorKysgYi9hcmZp
bGUucHkKQEAgLTEsMyArMSw0IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
LW9ubHkKICIiIgogYXJmaWxlIC0gQSBtb2R1bGUgdG8gcGFyc2UgR05VIGFyIGFyY2hpdmVzLgog
CmRpZmYgLS1naXQgYS9vcGtnLWJ1aWxkIGIvb3BrZy1idWlsZAppbmRleCAyNTE3YTJiLi5kMDli
YmZlIDEwMDc1NQotLS0gYS9vcGtnLWJ1aWxkCisrKyBiL29wa2ctYnVpbGQKQEAgLTEsNSArMSw1
IEBACiAjIS9iaW4vc2gKLQorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5
CiA6IDw8PWN1dAogPWhlYWQxIE5BTUUKIApkaWZmIC0tZ2l0IGEvb3BrZy1idWlsZHBhY2thZ2Ug
Yi9vcGtnLWJ1aWxkcGFja2FnZQppbmRleCBiN2MwZThjLi45ZTAwZTQyIDEwMDc1NQotLS0gYS9v
cGtnLWJ1aWxkcGFja2FnZQorKysgYi9vcGtnLWJ1aWxkcGFja2FnZQpAQCAtMSw0ICsxLDUgQEAK
ICMhL2Jpbi9zaAorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CiAjCiAj
IEF1dGhvcjogT2xpdmVyIEt1cnRoIDxvbGl2ZXIua3VydGhAaW5ub21pbmF0ZS5jb20+CiAjCmRp
ZmYgLS1naXQgYS9vcGtnLWNvbXBhcmUtaW5kZXhlcyBiL29wa2ctY29tcGFyZS1pbmRleGVzCmlu
ZGV4IGI2MGQyMGEuLjQ1MTM0ZTIgMTAwNzU1Ci0tLSBhL29wa2ctY29tcGFyZS1pbmRleGVzCisr
KyBiL29wa2ctY29tcGFyZS1pbmRleGVzCkBAIC0xLDQgKzEsNSBAQAogIyEvdXNyL2Jpbi9lbnYg
cHl0aG9uCisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKIGZyb20gX19m
dXR1cmVfXyBpbXBvcnQgYWJzb2x1dGVfaW1wb3J0CiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHBy
aW50X2Z1bmN0aW9uCiAKZGlmZiAtLWdpdCBhL29wa2ctZGlmZiBiL29wa2ctZGlmZgppbmRleCBi
YWQwYjNjLi4wNmU2MDIwIDEwMDc1NQotLS0gYS9vcGtnLWRpZmYKKysrIGIvb3BrZy1kaWZmCkBA
IC0xLDUgKzEsNSBAQAogIyEvYmluL3NoCi0KKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQ
TC0yLjAtb25seQogcGtnMT0kMQogZGlyMT1gZWNobyAkcGtnMSB8IHNlZCBzLy5vcGsvL2AKIGRp
cjE9YGJhc2VuYW1lICRkaXIxYCAKZGlmZiAtLWdpdCBhL29wa2ctZXh0cmFjdC1maWxlIGIvb3Br
Zy1leHRyYWN0LWZpbGUKaW5kZXggN2M5NTJhZC4uYmM3YzliZCAxMDA3NTUKLS0tIGEvb3BrZy1l
eHRyYWN0LWZpbGUKKysrIGIvb3BrZy1leHRyYWN0LWZpbGUKQEAgLTEsNSArMSw1IEBACiAjIS9i
aW4vc2gKLQorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CiBzZXQgLWUK
IAogaWYgWyAkIyAtbHQgMSBdOyB0aGVuCmRpZmYgLS1naXQgYS9vcGtnLWdyYXBoLWRlcHMgYi9v
cGtnLWdyYXBoLWRlcHMKaW5kZXggNjY1M2ZkNS4uMzE2MDU3YSAxMDA3NTUKLS0tIGEvb3BrZy1n
cmFwaC1kZXBzCisrKyBiL29wa2ctZ3JhcGgtZGVwcwpAQCAtMSw0ICsxLDUgQEAKICMhL3Vzci9i
aW4vZW52IHB5dGhvbgorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CiBm
cm9tIF9fZnV0dXJlX18gaW1wb3J0IGFic29sdXRlX2ltcG9ydAogZnJvbSBfX2Z1dHVyZV9fIGlt
cG9ydCBwcmludF9mdW5jdGlvbgogCmRpZmYgLS1naXQgYS9vcGtnLWxpc3QtZmllbGRzIGIvb3Br
Zy1saXN0LWZpZWxkcwppbmRleCA4YTVhNTg4Li40MzRmMmFlIDEwMDc1NQotLS0gYS9vcGtnLWxp
c3QtZmllbGRzCisrKyBiL29wa2ctbGlzdC1maWVsZHMKQEAgLTEsNCArMSw1IEBACiAjIS91c3Iv
YmluL2VudiBweXRob24KKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQog
ZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCBhYnNvbHV0ZV9pbXBvcnQKIGZyb20gX19mdXR1cmVfXyBp
bXBvcnQgcHJpbnRfZnVuY3Rpb24KIApkaWZmIC0tZ2l0IGEvb3BrZy1tYWtlLWluZGV4IGIvb3Br
Zy1tYWtlLWluZGV4CmluZGV4IDgzZTUxNjAuLjZjNmVjYWQgMTAwNzU1Ci0tLSBhL29wa2ctbWFr
ZS1pbmRleAorKysgYi9vcGtnLW1ha2UtaW5kZXgKQEAgLTEsNCArMSw1IEBACiAjIS91c3IvYmlu
L2VudiBweXRob24KKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQogIiIi
CiAgICBVdGlsaXR5IHRvIGNyZWF0ZSBvcGtnIGNvbXBhdGlibGUgaW5kZXhlcwogIiIiCmRpZmYg
LS1naXQgYS9vcGtnLXNob3ctZGVwcyBiL29wa2ctc2hvdy1kZXBzCmluZGV4IDE1M2YyMWUuLmYz
NDUwODcgMTAwNzU1Ci0tLSBhL29wa2ctc2hvdy1kZXBzCisrKyBiL29wa2ctc2hvdy1kZXBzCkBA
IC0xLDQgKzEsNSBAQAogIyEvdXNyL2Jpbi9lbnYgcHl0aG9uCisjIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wLW9ubHkKIGZyb20gX19mdXR1cmVfXyBpbXBvcnQgYWJzb2x1dGVfaW1w
b3J0CiBmcm9tIF9fZnV0dXJlX18gaW1wb3J0IHByaW50X2Z1bmN0aW9uCiAKZGlmZiAtLWdpdCBh
L29wa2ctdW5idWlsZCBiL29wa2ctdW5idWlsZAppbmRleCA0ZjM2YmVjLi45NjgzZGU3IDEwMDc1
NQotLS0gYS9vcGtnLXVuYnVpbGQKKysrIGIvb3BrZy11bmJ1aWxkCkBAIC0xLDQgKzEsNSBAQAog
IyEvdXNyL2Jpbi9lbnYgcHl0aG9uCisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
LW9ubHkKIGZyb20gX19mdXR1cmVfXyBpbXBvcnQgYWJzb2x1dGVfaW1wb3J0CiBmcm9tIF9fZnV0
dXJlX18gaW1wb3J0IHByaW50X2Z1bmN0aW9uCiAKZGlmZiAtLWdpdCBhL29wa2ctdXBkYXRlLWlu
ZGV4IGIvb3BrZy11cGRhdGUtaW5kZXgKaW5kZXggMzQxYzFjMi4uNDNmMTIzNCAxMDA3NTUKLS0t
IGEvb3BrZy11cGRhdGUtaW5kZXgKKysrIGIvb3BrZy11cGRhdGUtaW5kZXgKQEAgLTEsNCArMSw1
IEBACiAjIS91c3IvYmluL2VudiBweXRob24KKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQ
TC0yLjAtb25seQogZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCBhYnNvbHV0ZV9pbXBvcnQKIAogaW1w
b3J0IHN5cywgb3MKZGlmZiAtLWdpdCBhL29wa2cucHkgYi9vcGtnLnB5CmluZGV4IGQ0ZTc4MjUu
LjQzYTJlYWQgMTAwNjQ0Ci0tLSBhL29wa2cucHkKKysrIGIvb3BrZy5weQpAQCAtMSw0ICsxLDUg
QEAKICMhL3Vzci9iaW4vZW52IHB5dGhvbgorIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BM
LTIuMC1vci1sYXRlcgogIyAgIENvcHlyaWdodCAoQykgMjAwMSBBbGV4YW5kZXIgUy4gR3V5IDxh
N3JAYW5kZXJuLm9yZz4KICMgICAgICAgICAgICAgICAgICAgICAgQW5kZXJuIFJlc2VhcmNoIExh
YnMKICMKZGlmZiAtLWdpdCBhL3VwZGF0ZS1hbHRlcm5hdGl2ZXMgYi91cGRhdGUtYWx0ZXJuYXRp
dmVzCmluZGV4IGQ0ZmE3ZWIuLjEzODliM2YgMTAwNjQ0Ci0tLSBhL3VwZGF0ZS1hbHRlcm5hdGl2
ZXMKKysrIGIvdXBkYXRlLWFsdGVybmF0aXZlcwpAQCAtMSw0ICsxLDUgQEAKICMhL2Jpbi9zaAor
IyAgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIKICMgdXBkYXRlLWFs
dGVybmF0aXZlcwogIwogIyBDb3B5cmlnaHQgKEMpIDIwMDEgQ2FybCBELiBXb3J0aAotLSAKMi43
LjQKCg==

--0000000000003ada740594de1fac--
