Return-Path: <peachj@lexmark.com>
Received: from exprod8og112.obsmtp.com (exprod8og112.obsmtp.com [64.18.3.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53593E011F3
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 06:15:36 -0700 (PDT)
Received: from mail-qc0-f200.google.com ([209.85.216.200]) (using TLSv1) by
	exprod8ob112.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUIVG+EDB5xBMiDBlbKLwH9XvyRMzmHT4@postini.com;
	Mon, 22 Oct 2012 06:15:36 PDT
Received: by mail-qc0-f200.google.com with SMTP id l42so4948781qco.11
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 06:15:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=jz2yWFuyFO7dwdRnytsB/8cv+q5MYxvXukgb0lKxKnM=;
	b=g1oZmMBbUVVBhsZd3G2WZWLI3uCw3mv4wFFUstepW5EahdHXbqQ87pyTdfzSQB1V52
	rlFMF2vs+SlXRAj0CSW2ttyZXoQr2og5k55of2nZo4eW2AI+wCEXuA6EtwHBZNMndX2i
	cxmx+WJo5n20s9UdYM01Dl+12ZOq46Jhx51SSRpQ38eLvLhgQQP5+o5h/ABBCzLbAxZS
	qgE2+Al/yM4IbyZg499elFwqyRGdAmoQPoawZJhIsNPaLnoB46Hz9AyK0nFHTLeR3NBK
	ejFKqixn6VetyMengKD5bWxBxcKh2VfFypp3rbTDAPPYDxk6dsrDyojWSCFaTYiymPmJ
	Vvaw==
Received: by 10.224.189.65 with SMTP id dd1mr4029336qab.79.1350911735438;
	Mon, 22 Oct 2012 06:15:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.189.65 with SMTP id dd1mr4029333qab.79.1350911735284; Mon,
	22 Oct 2012 06:15:35 -0700 (PDT)
Received: by 10.49.107.136 with HTTP; Mon, 22 Oct 2012 06:15:35 -0700 (PDT)
In-Reply-To: <CA+QkY1D5mHVDudQ+BmjgJdcughy1Bcyw559ct2tCtFpYgu8BJg@mail.gmail.com>
References: <CA+JN8xNGvDMQKRQ18ME22DKXDaCY+UrZz+YCrW_ROHbxxf9UeA@mail.gmail.com>
	<CA+QkY1D5mHVDudQ+BmjgJdcughy1Bcyw559ct2tCtFpYgu8BJg@mail.gmail.com>
Date: Mon, 22 Oct 2012 09:15:35 -0400
Message-ID: <CA+QkY1Cr1QV3DMNwa0_9PTorvFRZx666dXq-s3q2Hdd3==NwXg@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: Seth Bollinger <seth.boll@gmail.com>
X-Gm-Message-State: ALoCoQn3O3EJJCjLpRCGHEFkMMi3srB+hIqFZhAKtI9naDhMKlRdVVPeA59H41KLO+KX+/OaRwY86wUu1yd5xABHcvLV52XBC6HHNrrFnFIDPG3pDqW5WDi8viTO2rJkPx7pIBO0A0ZKOhchW2UXoGAPh8Fa+tasRA==
Cc: yocto@yoctoproject.org
Subject: Re: AUTOREV problems
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 Oct 2012 13:15:37 -0000
Content-Type: multipart/alternative; boundary=20cf3033463f1ac3b104cca5a67d

--20cf3033463f1ac3b104cca5a67d
Content-Type: text/plain; charset=ISO-8859-1

Correction: I'm wrong on the standard for PV.  The standard (after looking
through some BB files) appears to be this:

PV = "<version number>+<vcs>${SRCPV}"

On Mon, Oct 22, 2012 at 8:46 AM, Jerrod Peach <peachj@lexmark.com> wrote:

> Seth,
>
> Like Tomas said, it's hard to say for sure without seeing the recipe in
> question, but I know one way this could happen: AUTOREV, by itself, does
> not permute your hash.  It ends up just resolving to the string "AUTOINC"
> every time.  You *also *need the SRCPV variable somewhere in your recipe,
> as it will contain the real revision the was retrieved from version
> control.  I believe the normal way to use SRCPV is as follows:
>
> PV = "<vcs>-<version>-${SRCPV}"
>
> For example:
>
> PV = "svn-1.0.0-${SRCPV}"
>
> If you aren't using SRCPV, your hash won't permute, and you won't rebuild.
>
> The reason for this behavior isn't obvious off-hand, but I suspect it's so
> you can set AUTOREV for a specific package in local.conf and not force half
> the world to get reparsed every time a revision updates.
>
> Kind regards,
>
> Jerrod
>
> On Mon, Oct 22, 2012 at 7:56 AM, Seth Bollinger <seth.boll@gmail.com>wrote:
>
>> Hello All,
>>
>> I've been having some serious problems trying to get my image to rebuild
>> recipes when their upstream repositories have changed.  I have SRCREV =
>> ${AUTOREV} in my recipe and in bitbake -e I see these 2 lines:
>> # SRCREV=${AUTOREV}
>> SRCREV="AUTOINC"
>>
>> I've found BB_SRCREV_POLICY and I've set that explicitly to clear, even
>> though that seems to be the default.  Auto didn't seem to work, even
>> though
>> it looks like it should from the code.
>>
>> When I try rebuilding my recipe, it seems to find that everything is
>> cached
>> and doesn't even attempt the fetch, even though I know the repository has
>> changed (that's the reason I want to rebuild :)).  I've tried whacking
>> tmp/cache/*, but that didn't help.  I tried whacking the stamp for
>> do_fetch.  That didn't help unless I explicitly built using the "fetch"
>> command, then it at least appeared to fetch.  However, when I tried to
>> build the image after that, it didn't try to rebuild the recipe that had
>> just fetched.
>>
>> The only way I could get it to rebuild was to cleansstate on the recipe
>> and
>> then rebuild the image.  I assume this isn't the way it should be working.
>>
>> 1.  What is the expected operation of bitbake builds for recipes using
>> autorev?
>> 2.  How can I get my autorev recipes to rebuild when their repositories
>> change?
>> 3.  If this is working for everyone else, how can I find what I have
>> screwed up?  :)
>>
>> Thanks,
>>
>> Seth
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--20cf3033463f1ac3b104cca5a67d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Correction: I&#39;m wrong on the standard for PV. =A0The standard (after lo=
oking through some BB files) appears to be this: =A0<div><br></div><div>PV =
=3D &quot;&lt;version number&gt;+&lt;vcs&gt;${SRCPV}&quot;</div><div><br><d=
iv class=3D"gmail_quote">
On Mon, Oct 22, 2012 at 8:46 AM, Jerrod Peach <span dir=3D"ltr">&lt;<a href=
=3D"mailto:peachj@lexmark.com" target=3D"_blank">peachj@lexmark.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
Seth,<div><br></div><div>Like Tomas said, it&#39;s hard to say for sure wit=
hout seeing the recipe in question, but I know one way this could happen: A=
UTOREV, by itself, does not permute your hash. =A0It ends up just resolving=
 to the string &quot;AUTOINC&quot; every time. =A0You <i>also </i>need the =
SRCPV variable=A0somewhere in your recipe, as it will contain the real revi=
sion the was retrieved from version control. =A0I believe the normal way to=
 use SRCPV is as follows:</div>

<div><br></div><div>PV =3D &quot;&lt;vcs&gt;-&lt;version&gt;-${SRCPV}&quot;=
</div><div><br></div><div>For example:</div><div><br></div><div>PV =3D &quo=
t;svn-1.0.0-${SRCPV}&quot;</div><div><br></div><div>If you aren&#39;t using=
 SRCPV, your hash won&#39;t permute, and you won&#39;t rebuild.</div>

<div><br></div><div>The reason for this behavior isn&#39;t obvious off-hand=
, but I suspect it&#39;s so you can set AUTOREV for a specific package in l=
ocal.conf and not force half the world to get reparsed every time a revisio=
n updates.</div>

<div><br></div><div>Kind regards,</div><div><br></div><div>Jerrod<br><br><d=
iv class=3D"gmail_quote"><div><div class=3D"h5">On Mon, Oct 22, 2012 at 7:5=
6 AM, Seth Bollinger <span dir=3D"ltr">&lt;<a href=3D"mailto:seth.boll@gmai=
l.com" target=3D"_blank">seth.boll@gmail.com</a>&gt;</span> wrote:<br>

</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><div>Hell=
o All,</div><div><br></div><div>I&#39;ve been having some serious problems =
trying to get my image to rebuild</div>

<div>recipes when their upstream repositories have changed. =A0I have SRCRE=
V =3D</div><div>${AUTOREV} in my recipe and in bitbake -e I see these 2 lin=
es:</div>
<div># SRCREV=3D${AUTOREV}</div><div>SRCREV=3D&quot;AUTOINC&quot;</div><div=
><br></div><div>I&#39;ve found BB_SRCREV_POLICY and I&#39;ve set that expli=
citly to clear, even</div><div>though that seems to be the default. =A0Auto=
 didn&#39;t seem to work, even though</div>


<div>it looks like it should from the code.</div><div><br></div><div>When I=
 try rebuilding my recipe, it seems to find that everything is cached</div>=
<div>and doesn&#39;t even attempt the fetch, even though I know the reposit=
ory has</div>


<div>changed (that&#39;s the reason I want to rebuild :)). =A0I&#39;ve trie=
d whacking</div><div>tmp/cache/*, but that didn&#39;t help. =A0I tried whac=
king the stamp for</div><div>do_fetch. =A0That didn&#39;t help unless I exp=
licitly built using the &quot;fetch&quot;</div>


<div>command, then it at least appeared to fetch. =A0However, when I tried =
to</div><div>build the image after that, it didn&#39;t try to rebuild the r=
ecipe that had</div><div>just fetched.</div><div><br></div><div>The only wa=
y I could get it to rebuild was to cleansstate on the recipe and</div>


<div>then rebuild the image. =A0I assume this isn&#39;t the way it should b=
e working.</div><div><br></div><div>1. =A0What is the expected operation of=
 bitbake builds for recipes using</div><div>autorev?</div><div>2. =A0How ca=
n I get my autorev recipes to rebuild when their repositories</div>


<div>change?</div><div>3. =A0If this is working for everyone else, how can =
I find what I have</div><div>screwed up? =A0:)</div><div><br></div><div>Tha=
nks,</div><div><br></div><div>Seth</div>
<br></div></div><div class=3D"im">_________________________________________=
______<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></div></blockquote></div><br></div>
</blockquote></div><br></div>

--20cf3033463f1ac3b104cca5a67d--
