Return-Path: <peachj@lexmark.com>
Received: from exprod8og107.obsmtp.com (exprod8og107.obsmtp.com [64.18.3.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90308E01481
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 05:55:32 -0700 (PDT)
Received: from mail-qe0-f69.google.com ([209.85.128.69]) (using TLSv1) by
	exprod8ob107.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUVLsQ/sf64FXiiGWPyZ0A8ClCQ7t2/52@postini.com;
	Wed, 27 Mar 2013 05:55:32 PDT
Received: by mail-qe0-f69.google.com with SMTP id b4so14976486qen.0
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 05:55:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-received:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=wgVxtBBh16ekE+mZafCFKzz2dYllTElGkG6LmY3VA0o=;
	b=RWkQn1hUtEh7bA7C+NpjU4/mM8fxd+uA13JvXKhLcg12fuaTlLWMac8UU3Bjv3wsNu
	7hx72i0jIBU7LaX3FpaVZimH6ju31CIXzlHiIdHe61RfoYHprWuFARlKf/71j6Aji4jK
	u7rCCJARPNzpVAm773yHNfolafR4VyBsa43Xo5m8wOcTVvQIjxW1zp6pg41fIIqlNZE0
	Z3TYXi6HhisKOxBgc3EgQ0jNR33N6q8V0G9W0KiiLOEL73nhKzn2MNrBQ8X8cHH1zoTa
	jLK+ZiRG1Ie73iF+eFccgRh4K+MpYrlzQkk1YXWxcd5nI2F1nPF7gIhheB5N44vc5XA7
	OU9w==
X-Received: by 10.224.198.67 with SMTP id en3mr10456198qab.23.1364388930802;
	Wed, 27 Mar 2013 05:55:30 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.224.198.67 with SMTP id en3mr10456178qab.23.1364388930660;
	Wed, 27 Mar 2013 05:55:30 -0700 (PDT)
Received: by 10.49.47.112 with HTTP; Wed, 27 Mar 2013 05:55:30 -0700 (PDT)
In-Reply-To: <5151F532.70304@windriver.com>
References: <CA+QkY1DZCJnYH-3wUc_z+SXOBtBS7NQU3GV+kCaTTeK8Co+8eA@mail.gmail.com>
	<5151F532.70304@windriver.com>
Date: Wed, 27 Mar 2013 08:55:30 -0400
Message-ID: <CA+QkY1Dc_AgQ+3sQGGxRAE7hLGvogm+C=VHcyQQsu47qm2Dp8w@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Gm-Message-State: ALoCoQn9VaLlHOrzmo4QCK0SCitzQqPJMAj7HrrLMdICQc6SVb6dmz1h3bjNXP9PaBFQOSlUw8HjXTLltj/RZgHaqP2gwT+V3CSsuimUczChqq4SQq80dEthLwP/Jo36Is0H5gWMSE0KhVfopYjBkUkf2E4urVYQlQ==
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Building "restricted" source code
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
X-List-Received-Date: Wed, 27 Mar 2013 12:55:33 -0000
Content-Type: multipart/alternative; boundary=20cf300fb1078c46b104d8e78df7

--20cf300fb1078c46b104d8e78df7
Content-Type: text/plain; charset=ISO-8859-1

Mark,

Option 1 isn't a very big concern since it's likely only developers working
on the restricted code will cause its hashes to permute.

Option 2 is precisely what we were thinking about doing.  The concern,
though, is what happens when a developer who doesn't have access to the
code changes a dependency of the restricted code in such a way that it
actually affects the restricted code.  That developer is unable to test the
effects of his changes without pushing them to a back-end build, which
would involve pushing untested changes somewhere.  I don't love that
thought.

Another option would be to make the recipe smart enough to build restricted
source on a different machine from the user's using an SDK (which is what I
think you were suggesting), but that involves transferring the user's
uncommitted code and/or built objects to the separate machine, adding a
fairly significant layer of complexity (and likely a significant amount of
time) to what is otherwise a relatively straightforward build process.

I'm not the biggest fan of any of these options presently, but if we have
to choose one of these routes, we will.  (We were likely going to use what
you presented as your second option, but that's still going to involve
someone updating recipes for restricted source every time new binaries
become available.)  I do very much appreciate the input and I'm glad to
know the ideas we came up with aren't completely crazy, since someone else
has thought of them too ;-)  Any other thoughts on this issue?

Kind regards,

Jerrod


On Tue, Mar 26, 2013 at 3:21 PM, Mark Hatle <mark.hatle@windriver.com>wrote:

> On 3/26/13 7:53 AM, Jerrod Peach wrote:
>
>> As part of my company's firmware builds, we have to build some code that
>> only a
>> handful of developers are allowed to view.  We call this restricted
>> source code.
>>   Getting our official "system" builds to build this code isn't a
>> problem.  What
>> is a problem is a regular developer's build of this code.
>>
>> Imagine this scenario: The restricted source depends upon eglibc.  Our
>> low-level
>> team, who doesn't have access to the restricted source, updates the
>> recipe for
>> eglibc.  The hash for the restricted package is permuted, and so they
>> can't get
>> an sstate hit and are required to rebuild the source.  But, since they
>> can't
>> check out the source, they can't build it.  This would cause a build
>> failure.
>>
>> Is anyone dealing with this scenario while using Yocto currently?  If so,
>> how?
>>   I know it may be unlikely that many people are hitting this since Yocto
>> is
>> primarily used to build open-source code, but I thought I'd take a shot
>> in the
>> dark and hope for the best.  :-)
>>
>>
> Two ways I know of doing this.  Slightly different way of doing things:
>
> 1) If the code does -not- rely on outside influences, such as eglibc.
>  Configure the recipe and pretty much ignore everything else with a
> vardepsexp.  Then ship the sstate-cache files that cover the compiled code.
>  (Along with the original recipe...)
>
> 2) For code that DOES rely on outside influences.. create a custom recipe
> that either downloads the source and builds it [if the user has access to
> the source], or will pull the binaries from a specific location and simply
> install/package them.   This is actually the more common approach.
>
> (To seed that location, you can extract the items from your restricted
> build -- or build it outside the tree using an SDK or similar.)
>
> --Mark
>
>  ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--20cf300fb1078c46b104d8e78df7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style>Mark,</div><div><br></div>Option 1 isn&#39;t a =
very big concern since it&#39;s likely only developers working on the restr=
icted code will cause its hashes to permute. =A0<div><br></div><div>Option =
2 is precisely what we were thinking about doing. =A0The concern, though, i=
s what happens when a developer who doesn&#39;t have access to the code cha=
nges a dependency of the restricted code in such a way that it actually aff=
ects the restricted code. =A0That developer is unable to test the effects o=
f his changes without pushing them to a back-end build, which would involve=
 pushing untested changes somewhere. =A0I don&#39;t love that thought. =A0<=
/div>
<div><br></div><div>Another option would be to make the recipe smart enough=
 to build restricted source on a different machine from the user&#39;s usin=
g an SDK (which is what I think you were suggesting), but that involves tra=
nsferring the user&#39;s uncommitted code and/or built objects to the separ=
ate machine, adding a fairly significant layer of complexity (and likely a =
significant amount of time) to what is otherwise a relatively straightforwa=
rd build process.</div>
<div><br></div><div style>I&#39;m not the biggest fan of any of these optio=
ns presently, but if we have to choose one of these routes, we will. =A0(We=
 were likely going to use what you presented as your second option, but tha=
t&#39;s still going to involve someone updating recipes for restricted sour=
ce every time new binaries become available.) =A0I do very much appreciate =
the input and I&#39;m glad to know the ideas we came up with aren&#39;t com=
pletely crazy, since someone else has thought of them too ;-) =A0Any other =
thoughts on this issue?</div>
<div style><br></div><div style>Kind regards,</div><div style><br></div><di=
v style>Jerrod =A0</div></div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Tue, Mar 26, 2013 at 3:21 PM, Mark Hatle <span dir=3D"l=
tr">&lt;<a href=3D"mailto:mark.hatle@windriver.com" target=3D"_blank">mark.=
hatle@windriver.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 3=
/26/13 7:53 AM, Jerrod Peach wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
As part of my company&#39;s firmware builds, we have to build some code tha=
t only a<br>
handful of developers are allowed to view. =A0We call this restricted sourc=
e code.<br>
=A0 Getting our official &quot;system&quot; builds to build this code isn&#=
39;t a problem. =A0What<br>
is a problem is a regular developer&#39;s build of this code.<br>
<br>
Imagine this scenario: The restricted source depends upon eglibc. =A0Our lo=
w-level<br>
team, who doesn&#39;t have access to the restricted source, updates the rec=
ipe for<br>
eglibc. =A0The hash for the restricted package is permuted, and so they can=
&#39;t get<br>
an sstate hit and are required to rebuild the source. =A0But, since they ca=
n&#39;t<br>
check out the source, they can&#39;t build it. =A0This would cause a build =
failure.<br>
<br>
Is anyone dealing with this scenario while using Yocto currently? =A0If so,=
 how?<br>
=A0 I know it may be unlikely that many people are hitting this since Yocto=
 is<br>
primarily used to build open-source code, but I thought I&#39;d take a shot=
 in the<br>
dark and hope for the best. =A0:-)<br>
<br>
</blockquote>
<br></div></div>
Two ways I know of doing this. =A0Slightly different way of doing things:<b=
r>
<br>
1) If the code does -not- rely on outside influences, such as eglibc. =A0Co=
nfigure the recipe and pretty much ignore everything else with a vardepsexp=
. =A0Then ship the sstate-cache files that cover the compiled code. =A0(Alo=
ng with the original recipe...)<br>

<br>
2) For code that DOES rely on outside influences.. create a custom recipe t=
hat either downloads the source and builds it [if the user has access to th=
e source], or will pull the binaries from a specific location and simply in=
stall/package them. =A0 This is actually the more common approach.<br>

<br>
(To seed that location, you can extract the items from your restricted buil=
d -- or build it outside the tree using an SDK or similar.)<br>
<br>
--Mark<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</blockquote>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--20cf300fb1078c46b104d8e78df7--
