Return-Path: <jeffrey.osier-mixon@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8394E0044A
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 11:00:28 -0700 (PDT)
Received: from mail-vb0-f52.google.com ([209.85.212.52])
	by mga03.intel.com with ESMTP/TLS/RC4-MD5; 13 Jun 2012 11:00:27 -0700
Received: by vbzb23 with SMTP id b23so532893vbz.25
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 11:00:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=OEg5PE3y21F5tsdrInqoc5ylmdl7pDqBgYP0EFfZsHQ=;
	b=VnlTuDyyqyy6g7qjlBVG0d7LNNMt5RbAxbr8Vv7uiFfplLNewI9vVWDJFYR3omvj2d
	SLqODnBEjrYCtQsDtGGZ098OuAiGJ2Nnk92gPELhpd/gzM+GzwrnKC+O+KtM+yTG96JM
	lCqFyTtf+nZWafz1CPPCAeJYcVYUIPtz9QfsdHqo8WXD8Lq1gq+XNDW0GyQBVRPTrp6x
	0wvhOx8hinqy2mmPsTFTflcXIC635PCSzDszCTEKdIramk0qIRUH44VsAYSTN3t1O1hL
	Hgs7PdvhScNOT2Gg3s8nusPX5RZVhW55Aw643sepWqZ7+16BBgB1OBMWfW4dZ5HCY5CT
	sh9A==
MIME-Version: 1.0
Received: by 10.52.29.176 with SMTP id l16mr14349403vdh.80.1339610426752; Wed,
	13 Jun 2012 11:00:26 -0700 (PDT)
Received: by 10.52.25.4 with HTTP; Wed, 13 Jun 2012 11:00:26 -0700 (PDT)
In-Reply-To: <CDED78A957032E45B3239CDDA7642D151C848539@ORSMSX105.amr.corp.intel.com>
References: <0FABE48C74734648B69F641A84298A59190B8A98@IRSMSX104.ger.corp.intel.com>
	<0FABE48C74734648B69F641A84298A59190B9CF9@IRSMSX104.ger.corp.intel.com>
	<F27469E0A1C1456C807477C954225267@halfman.com>
	<CDED78A957032E45B3239CDDA7642D151C848539@ORSMSX105.amr.corp.intel.com>
Date: Wed, 13 Jun 2012 11:00:26 -0700
Message-ID: <CALZ2gZVqs1s8nhwhwh0V3gHSss75Swbcw2Lv1HaAk6z=Sksbfw@mail.gmail.com>
From: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>
X-Gm-Message-State: ALoCoQnpqY1pL8Tx3EoJaezD/jiKzbjnnz6/7Cs9KPhmknEV4KRFnF7bBQd9amJUfwhKikerA/1a
Cc: Konstantinos Papagiannopoulos <hello@konputer.net>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Jim Kosem <jim@halfman.com>
Subject: Re: Web HOB planning discussion
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
X-List-Received-Date: Wed, 13 Jun 2012 18:00:29 -0000
Content-Type: multipart/alternative; boundary=20cf3078151a9fbd6804c25e5b6d

--20cf3078151a9fbd6804c25e5b6d
Content-Type: text/plain; charset=ISO-8859-1

I agree, it is looking really interesting. Some comments below.

On Wed, Jun 13, 2012 at 10:39 AM, Stewart, David C <
david.c.stewart@intel.com> wrote:

> * This could be a great way for an organization to implement a workflow
> process using YP, rather than try to invent one themselves. We have gotten
> the feedback that some larger organizations want something like this, so
> I'm pleased with that direction.
>

Agreed - I have fielded a few questions about this as well


> * With the above in mind, a key meta-usage is installing and configuring
> the server. For example, I could imagine an organization wanting to easily
> customize the home page with their own news and design information, etc.
>
> * I could also see the opportunity for an OSV or service provider to brand
> the interface with their own goodness and extending it with their own
> features so this might be another meta-usage.
>
> * And while I'm on a roll... whenever we talk about how the administrator
> installs this, we need consider how they update from a previous version,
> particularly if they have customized the home screen or other bits.
>

If branding & customization happen in CSS, the whole customization part
should be portable from one version to another (as long as no one breaks
anything structural). If we want to enable customization of functionality,
though - e.g. pre-filter package selection, restrict certain features... -
I could see that being tricky to implement in a portable way.


> * Project creation and member add/remove should perhaps be an
> administrator role and password protected?
>

I vote yes on user management, but why password-protect project creation?

Other thoughts:

My feeling is that both Hob and WebHob will be most useful as tools to get
people started. At some point, anyone who is doing more esoteric work than
the Hob allows will need to learn how to get their hands dirty with
recipes, config files, etc. For that reason, I really like the workflow
focus, as that translates directly to the expected workflow of the whole
build system. I suggest a future step might be guided configuration, guided
recipe (and layer?) creation, and other progressive types of features that
also show the workflow in action the way the current Hob does.

And I totally agree that the usability work you guys have done is making a
huge difference in design. I like it! Want more!
-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

--20cf3078151a9fbd6804c25e5b6d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I agree, it is looking really interesting. Some comments below.<br><br><div=
 class=3D"gmail_quote">On Wed, Jun 13, 2012 at 10:39 AM, Stewart, David C <=
span dir=3D"ltr">&lt;<a href=3D"mailto:david.c.stewart@intel.com" target=3D=
"_blank">david.c.stewart@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">* This could be a great way for an organizat=
ion to implement a workflow process using YP, rather than try to invent one=
 themselves. We have gotten the feedback that some larger organizations wan=
t something like this, so I&#39;m pleased with that direction.<br>
</blockquote><div><br></div><div>Agreed - I have fielded a few questions ab=
out this as well</div><div>=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">* With t=
he above in mind, a key meta-usage is installing and configuring the server=
. For example, I could imagine an organization wanting to easily customize =
the home page with their own news and design information, etc.<br>

<br>
* I could also see the opportunity for an OSV or service provider to brand =
the interface with their own goodness and extending it with their own featu=
res so this might be another meta-usage.<br>
<br>
* And while I&#39;m on a roll... whenever we talk about how the administrat=
or installs this, we need consider how they update from a previous version,=
 particularly if they have customized the home screen or other bits.<br>
</blockquote><div><br></div><div>If branding &amp; customization happen in =
CSS, the whole customization part should be portable from one version to an=
other (as long as no one breaks anything structural). If we want to enable =
customization of functionality, though - e.g. pre-filter package selection,=
 restrict certain features... - I could see that being tricky to implement =
in a portable way.</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">* Project creation and member =
add/remove should perhaps be an administrator role and password protected?<=
br>
</blockquote><div><br></div><div>I vote yes on user management, but why pas=
sword-protect project creation?</div><div><br></div><div>Other thoughts:</d=
iv><div><br></div><div>My feeling is that both Hob and WebHob will be most =
useful as tools to get people started. At some point, anyone who is doing m=
ore esoteric work than the Hob allows will need to learn how to get their h=
ands dirty with recipes, config files, etc. For that reason, I really like =
the workflow focus, as that translates directly to the expected workflow of=
 the whole build system. I suggest a future step might be guided configurat=
ion, guided recipe (and layer?) creation, and other progressive types of fe=
atures that also show the workflow in action the way the current Hob does.<=
/div>
<div><br></div><div>And I totally agree that the usability work you guys ha=
ve done is making a huge difference in design. I like it! Want more!</div><=
/div>-- <br>Jeff Osier-Mixon=A0<a href=3D"http://jefro.net/blog" target=3D"=
_blank">http://jefro.net/blog</a><div>
Yocto Project Community Manager @Intel=A0<a href=3D"http://yoctoproject.org=
/" target=3D"_blank">http://yoctoproject.org</a></div><br>

--20cf3078151a9fbd6804c25e5b6d--
