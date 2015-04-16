Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7135E0091A; Thu, 16 Apr 2015 07:25:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AB0AE0049A
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 07:25:34 -0700 (PDT)
Received: by obfe9 with SMTP id e9so43122928obf.1
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 07:25:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=2zgcoUKt2CRF4Wdaruune1UhsnKGrfXmcpY9JOy+3fg=;
	b=BF4UYyUgeTUi512+2Qe0A20CMrZOTbZ8aOOo0jCKvFlXPuIONzCsg14RotG2gQ4QZ+
	xDOR52dW6H+5fhYJrpE8WyyX61ivoU+g/nvDaub7M6BbEQp4KG2xBkHV9/Q87TFrlhB0
	m3Z2IKmJJyvXQD4oIISJhlxX5WU0h+Y6RhBIJu0OwjNzNvqE9vAhq346SFH+9lCxVfya
	HE26BF4KSHOISWzy3tgUXsLb2TbBCAaH1d1jkZD1ZBuiq9MaFIH1toNo+RnKzTiuY2rO
	77AcxTbkPrmAoaIj3FUyEp+6V0NHlcbu0RBxoWtcUP3pPFoaMLYAalNZwdgU+BA8IjBm
	Q1Yg==
X-Gm-Message-State: ALoCoQmOBQZE0lHYIYraifvYQ2f/EG22sPusJl8QTNtqnQ6a/mrWGR0arLc/wtnn8argD4O3wTSJ
X-Received: by 10.202.95.198 with SMTP id t189mr8246950oib.105.1429194334088; 
	Thu, 16 Apr 2015 07:25:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.94.175 with HTTP; Thu, 16 Apr 2015 07:25:13 -0700 (PDT)
In-Reply-To: <20150416131144.GA9092@ad.chargestorm.se>
References: <552FA28B.5010507@actia.se>
	<14610153.uBZ2VKfICl@peggleto-mobl.ger.corp.intel.com>
	<20150416131144.GA9092@ad.chargestorm.se>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 16 Apr 2015 16:25:13 +0200
Message-ID: <CAP71WjyfbFWiTdGt5FQ46MK1w_3wf9g50mrAixaRDRfC4t7Dug@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	John Ernberg <john.ernberg@actia.se>, 
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Badly formatted subpath for git SRC_URI deletes portions of hard drive.
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
X-List-Received-Date: Thu, 16 Apr 2015 14:25:37 -0000
Content-Type: multipart/alternative; boundary=001a113ccfa6994d080513d83c20

--001a113ccfa6994d080513d83c20
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 16, 2015 at 3:11 PM, Anders Darander <anders@chargestorm.se>
wrote:

> > > Running the recipe resulted in do_fetch (or do_unpack) failing again
> and
> > > complaining about missing files. This time the deletion was on a much
> > > greater scale, it had deleted so much of my home-dir that my user
> > > account was rendered entirely useless. The fastest way to recover this
> > > time was re-installing the machine.
>
> It's most likely a call to bb.utils.prunedir(destdir), with destdir
> being set to '/'...



ouch... this is a bit scary ;-)

maybe we should assert the folder name is 'sane' when we do destructive
operations like that. e.g. check that we are in TMPDIR, or TOPDIR..

hopefully nobody does sudo bitbake ;-)

--001a113ccfa6994d080513d83c20
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Apr 16, 2015 at 3:11 PM, Anders Darander <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:anders@chargestorm.se" target=3D"_blank">anders@chargestorm.s=
e</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">=
&gt; &gt; Running the recipe resulted in do_fetch (or do_unpack) failing ag=
ain and<br>
&gt; &gt; complaining about missing files. This time the deletion was on a =
much<br>
&gt; &gt; greater scale, it had deleted so much of my home-dir that my user=
<br>
&gt; &gt; account was rendered entirely useless. The fastest way to recover=
 this<br>
&gt; &gt; time was re-installing the machine.<br>
<br>
</span>It&#39;s most likely a call to bb.utils.prunedir(destdir), with dest=
dir<br>
being set to &#39;/&#39;...</blockquote></div><br><br></div><div class=3D"g=
mail_extra">ouch... this is a bit scary ;-)<br><br></div><div class=3D"gmai=
l_extra">maybe we should assert the folder name is &#39;sane&#39; when we d=
o destructive operations like that. e.g. check that we are in TMPDIR, or TO=
PDIR.. <br><br></div><div class=3D"gmail_extra">hopefully nobody does sudo =
bitbake ;-)<br><br></div></div>

--001a113ccfa6994d080513d83c20--
