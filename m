Return-Path: <garbados@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E7B7E00C7E; Wed, 26 Jul 2017 18:02:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (garbados[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.49 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAB18E00C7B
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 18:02:47 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id b8so14296916pgn.0
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 18:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oWn5yXSg0l6XmVZB94pqNafiA0SMUXho0TwkvJ3PVOY=;
	b=qyM0r1Fx0pRU0m0J5e3vZSfZpt4y+DyeacjDysoIE+YU/MvUR9qszZpHZPrUhAEWJg
	oui3TSfPwKJBGhmPpFNf79CSXO9uYKbRd+AAwo8e906mmAW5xIlI9jVM2zn824c8V37+
	SwcDOOX1ilrGdzeLFIRynBLqaDN/BnYghf4Au5EQDKPhCGM+i/EXQMd2VO1mUWDk+lX8
	0IMRQO4d8KNoXsjUt6uSFkJkBhd57oRpglrK64WW13/LzVu7bS18wCnZyR/2Cd99FwPk
	J4j6XpU/qTl+U/MyZAmudfqny9UI7rDzEvbsqaqXJmDRpyZVpggVCl79qBySlJJRlVAJ
	/j/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oWn5yXSg0l6XmVZB94pqNafiA0SMUXho0TwkvJ3PVOY=;
	b=No0U23vWfQj6YfKeHccYsggNPQJkaREeBFFeALrQf/zRDSGwOCJjdpp3cN4mp0RaVS
	vKOVFFgz5Z+qMkbTSjiPkLn5Syy4I6OhX0dWQ4NpcUxhB5Mr+qJKM871T2UWphYUve0u
	OiEDrmxcu19/kKkSUDg8k4ctzY4nupntPiDgWaWfUI9JQ7mdphUbgcLRyIZf+KmAHycf
	+hx2ItguILVSLtpGF6pjYHl9IQYD0ZsJPzkFDpETBQbMEj0PuhZ2sIwFIkAD5E5QPov2
	L0RIurTVcs5Jv2oJpK0TjdwD2YfePVCb4NzKt+2UupJGxEvUfTWIxCEvJtgAfE34TST0
	Vv7w==
X-Gm-Message-State: AIVw111b3PH/eAyb7d9jZs9d9gbXeqfUEeLSWKiqcIJpdIzUxtnaoIXx
	IBWsrftY0K6ZaF6KQb1Wxn4EztEAgg==
X-Received: by 10.99.101.135 with SMTP id z129mr2471728pgb.66.1501117367149;
	Wed, 26 Jul 2017 18:02:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.218.196 with HTTP; Wed, 26 Jul 2017 18:02:06 -0700 (PDT)
In-Reply-To: <2092872.EczXXc7Pe0@peggleto-mobl.ger.corp.intel.com>
References: <1498521563-26590-1-git-send-email-garbados@gmail.com>
	<1540054.pZpUqmJ2aX@peggleto-mobl.ger.corp.intel.com>
	<2092872.EczXXc7Pe0@peggleto-mobl.ger.corp.intel.com>
From: Diana Thayer <garbados@gmail.com>
Date: Wed, 26 Jul 2017 18:02:06 -0700
Message-ID: <CA++8a_AifOWh0KaVrKdXuWs64r=zLpd_pnzV8Zpco9ura_5ivw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH] layerindex-web : adding asynchronous task execution
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
X-List-Received-Date: Thu, 27 Jul 2017 01:02:49 -0000
Content-Type: multipart/alternative; boundary="94eb2c116f686f68fe0555421f9f"

--94eb2c116f686f68fe0555421f9f
Content-Type: text/plain; charset="UTF-8"

Great! Thanks for testing it out and identifying that issue.

I've put together a PR on GitHub
<https://github.com/garbados/layerindex-web/pull/1> that includes some
changes that appear to fix the issue you're describing. It also updates the
readme to document how to configure the connection to the RabbitMQ server,
and how to start the Celery worker. You can see all the file changes here
<https://github.com/garbados/layerindex-web/pull/1/files>.

On Mon, Jul 24, 2017 at 2:49 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Friday, 21 July 2017 4:15:26 PM CEST Paul Eggleton wrote:
> > On Tuesday, 27 June 2017 1:59:23 AM CEST Diana Thayer wrote:
> > > This is a work-in-progress solution to issue 11197 within
> layerindex-web:
> > > adding asynchronous task execution.
> > > I used RabbitMQ and Celery. I'm still working with Paul Eggleton on
> adding
> > > install instructions for RabbitMQ to
> > > the site's Dockerfile.
> > >
> > > Previously, when a user submitted a layer, Django would synchronously
> send
> > > emails to users able to publish layers,
> > > such that if an email bounced or otherwise failed, the user submitting
> the
> > > layer would see an error.
> > > This patch sends those emails as asynchronous tasks, so any sending
> errors
> > > don't reach the user submitting a layer.
> >
> > I had a chance to try your patch out today, although I had to apply it
> > partially - I figured a good test would just be the email part. I
> installed
> > rabbitmq and ensured it got started. I started the web interface and
> > submitted  a dummy layer, and the email sent as expected. I then tried
> > killing my local  SMTP server and the layer submission returned an error
> > page, which is what  happened previously - it looks to me as if the
> sending
> > is still being done synchronously. The celery worker isn't reporting
> > anything so I can only assume  the django app is not trying to connect to
> > it.
> >
> > I've pushed just the changes I applied to a new branch here:
> >
> > http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/
> log/?h=paule/celery
> >
> > Any idea what's going wrong? Did I mess up in applying the changes, or
> > misconfigure something else?
>
> I figured out the issue - in order to have the task executed asynchronously
> you need to call .delay(<args>) on the task object rather than the task
> function itself. That leads to a "django.core.exceptions.
> ImproperlyConfigured"
> error reported by the worker since in my configuration the "import
> settings"
> succeeds but Django isn't set up properly, but at least it's actually
> executing the task via the worker now.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--94eb2c116f686f68fe0555421f9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Great! Thanks for testing it out and identifying=
 that issue.<br><br></div><div>I&#39;ve put together a PR <a href=3D"https:=
//github.com/garbados/layerindex-web/pull/1">on GitHub</a> that includes so=
me changes that appear to fix the issue you&#39;re describing. It also upda=
tes the readme to document how to configure the connection to the RabbitMQ =
server, and how to start the Celery worker. You can see all the file change=
s <a href=3D"https://github.com/garbados/layerindex-web/pull/1/files">here<=
/a>.<br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On Mon, Jul 24, 2017 at 2:49 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a =
href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.egglet=
on@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div class=3D"HOEnZb"><div class=3D"h5">On Friday, 21 July 2017 4:15:26 PM =
CEST Paul Eggleton wrote:<br>
&gt; On Tuesday, 27 June 2017 1:59:23 AM CEST Diana Thayer wrote:<br>
&gt; &gt; This is a work-in-progress solution to issue 11197 within layerin=
dex-web:<br>
&gt; &gt; adding asynchronous task execution.<br>
&gt; &gt; I used RabbitMQ and Celery. I&#39;m still working with Paul Eggle=
ton on adding<br>
&gt; &gt; install instructions for RabbitMQ to<br>
&gt; &gt; the site&#39;s Dockerfile.<br>
&gt; &gt;<br>
&gt; &gt; Previously, when a user submitted a layer, Django would synchrono=
usly send<br>
&gt; &gt; emails to users able to publish layers,<br>
&gt; &gt; such that if an email bounced or otherwise failed, the user submi=
tting the<br>
&gt; &gt; layer would see an error.<br>
&gt; &gt; This patch sends those emails as asynchronous tasks, so any sendi=
ng errors<br>
&gt; &gt; don&#39;t reach the user submitting a layer.<br>
&gt;<br>
&gt; I had a chance to try your patch out today, although I had to apply it=
<br>
&gt; partially - I figured a good test would just be the email part. I inst=
alled<br>
&gt; rabbitmq and ensured it got started. I started the web interface and<b=
r>
&gt; submitted=C2=A0 a dummy layer, and the email sent as expected. I then =
tried<br>
&gt; killing my local=C2=A0 SMTP server and the layer submission returned a=
n error<br>
&gt; page, which is what=C2=A0 happened previously - it looks to me as if t=
he sending<br>
&gt; is still being done synchronously. The celery worker isn&#39;t reporti=
ng<br>
&gt; anything so I can only assume=C2=A0 the django app is not trying to co=
nnect to<br>
&gt; it.<br>
&gt;<br>
&gt; I&#39;ve pushed just the changes I applied to a new branch here:<br>
&gt;<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/lo=
g/?h=3Dpaule/celery" rel=3D"noreferrer" target=3D"_blank">http://git.yoctop=
roject.org/<wbr>cgit/cgit.cgi/layerindex-web/<wbr>log/?h=3Dpaule/celery</a>=
<br>
&gt;<br>
&gt; Any idea what&#39;s going wrong? Did I mess up in applying the changes=
, or<br>
&gt; misconfigure something else?<br>
<br>
</div></div>I figured out the issue - in order to have the task executed as=
ynchronously<br>
you need to call .delay(&lt;args&gt;) on the task object rather than the ta=
sk<br>
function itself. That leads to a &quot;django.core.exceptions.<wbr>Improper=
lyConfigured&quot;<br>
error reported by the worker since in my configuration the &quot;import set=
tings&quot;<br>
succeeds but Django isn&#39;t set up properly, but at least it&#39;s actual=
ly<br>
executing the task via the worker now.<br>
<br>
Cheers,<br>
<div class=3D"HOEnZb"><div class=3D"h5">Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div></div>

--94eb2c116f686f68fe0555421f9f--
