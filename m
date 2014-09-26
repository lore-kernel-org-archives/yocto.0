Return-Path: <doug.geiger@bioradiation.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1962BE006DB; Fri, 26 Sep 2014 10:57:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58303E0056A
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 10:57:50 -0700 (PDT)
Received: by mail-qc0-f180.google.com with SMTP id m20so1188037qcx.39
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 10:57:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=WuNmntuy6j/dTfsp5d/BrdkMBCvXCxUtlqrV3n8wsd8=;
	b=gX1JR6WuWg4DCgd0mDIq7dOqukqzCKfDLaxkYQhNEToh0ZRI2laZVPOEArzlA2VOZc
	nSNCXeaPJOVsNwoBC0TEUf1pGw/snZcBJQGTGcAVG5HSbwCrmuQ0nMFJSNbSE7yArMs5
	u7xWyIHVS/nqAh3nbGyRyDB4ezwRXG2WfrkRdF+IXfaL2asodqncGtVGehm1dN9V0ZSk
	FE1wfO6vU1xSAD/iOHX5Wa1KCMMK4uWBGZ6CYxBtG498ylDplRgpctmIOhZOWJaiojda
	1ThCHYmMNqo/8xYmZsGQpsRNmALhRthTr+7IqNeY4HFlfB+Rr7J5DENMLnsVQ3VYFbuB
	iWKw==
X-Gm-Message-State: ALoCoQkveLvWyg2FibgbnIhU0SwX69/BTsiXmmNmGP728FZatK73P7YaWcsgTLyoMaFOiy0m6bjn
MIME-Version: 1.0
X-Received: by 10.140.84.11 with SMTP id k11mr35174311qgd.75.1411754269611;
	Fri, 26 Sep 2014 10:57:49 -0700 (PDT)
Received: by 10.229.211.202 with HTTP; Fri, 26 Sep 2014 10:57:49 -0700 (PDT)
In-Reply-To: <CAAqtnPQMvQdaX9ZVuPQek6KU5UYan5wrU4XQwmyBuSF_jPGRZA@mail.gmail.com>
References: <CALb224-2biSJpCoLBojkMgjGKX4a_YUayfUQwByFTDNYqVKeCA@mail.gmail.com>
	<540F4F0B.7010707@balister.org>
	<1548923.UYKtK7c5ZH@peggleto-mobl5.ger.corp.intel.com>
	<54259DB5.4060506@balister.org>
	<CAAqtnPQMvQdaX9ZVuPQek6KU5UYan5wrU4XQwmyBuSF_jPGRZA@mail.gmail.com>
Date: Fri, 26 Sep 2014 13:57:49 -0400
Message-ID: <CAAqtnPRLdhHZuXnt81HogRv+DjmL_Koii1qvuW4jQsT3dnng7w@mail.gmail.com>
From: Douglas Geiger <doug.geiger@bioradiation.net>
To: Philip Balister <philip@balister.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Leo Schwab <lschwab@sensity.com>, yocto@yoctoproject.org
Subject: Re: Adding 'build-id' to Build Image
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
X-List-Received-Date: Fri, 26 Sep 2014 17:57:58 -0000
Content-Type: multipart/alternative; boundary=001a11c13204c039520503fba7e9

--001a11c13204c039520503fba7e9
Content-Type: text/plain; charset=UTF-8

FWIW: most of that file is based off a discussion from back in 2012 - I
think Marc Ferland posted a similar file to the list.

On Fri, Sep 26, 2014 at 1:55 PM, Douglas Geiger <
doug.geiger@bioradiation.net> wrote:

> I've attached a build_info.inc that I've used in some of my image to the
> issue - comments welcome.
> Currently I include a build timestamp, and the names and version info on
> all the layers used in the build and put it in /etc/build
>
>  Doug
>
> On Fri, Sep 26, 2014 at 1:09 PM, Philip Balister <philip@balister.org>
> wrote:
>
>> I added https://bugzilla.yoctoproject.org/show_bug.cgi?id=6770
>>
>> Sorry no patch yet :)
>>
>> Philip
>>
>> On 09/10/2014 12:38 AM, Paul Eggleton wrote:
>> > On Tuesday 09 September 2014 15:03:39 Philip Balister wrote:
>> >> On 09/08/2014 07:08 PM, Leo Schwab wrote:
>> >>> We'd like to have the system images we build to contain a build id, or
>> >>> at least a pile of information inside the image itself that lets us
>> >>> identify which build is being run/tested.  Indeed, the information
>> >>> 'bitbake' kicks out just as it starts a build is exactly the sort of
>> >>> thing we'd like sitting in a file in the image somewhere.
>> >>>
>> >>> I turned on the 'buildhistory' feature in conf/local.conf which, among
>> >>> other things, generates a 'build-id' file.  However, it doesn't place
>> >>> it in the image, but in an entirely separate directory hierarchy.
>> >>>
>> >>> Surely this sort of thing has been done before.  Is there an existing
>> >>> recipe I can use, or will I have to cobble together a custom recipe
>> >>> out of buildhistory_get_layers() or get_layers_branch_rev()?
>> >>
>> >> I was asking the same question yesterday. I have a hacky solution for
>> my
>> >> immediate need, but I'd like a long term solution along these lines
>> also.
>> >>
>> >> Should we add this to bugzilla and see if we can get it done for 1.8?
>> (I
>> >> think I ahve the version number right)
>> >
>> > Yes, please add this to the bugzilla. This has also come up before
>> several
>> > times, we should just do it (and bonus points if someone wants to send
>> a patch
>> > ;).
>> >
>> > Cheers,
>> > Paul
>> >
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> Doug Geiger
> doug.geiger@bioradiation.net
>



-- 
Doug Geiger
doug.geiger@bioradiation.net

--001a11c13204c039520503fba7e9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">FWIW: most of that file is based off a discussion from bac=
k in 2012 - I think Marc Ferland posted a similar file to the list.</div><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Sep 26, 201=
4 at 1:55 PM, Douglas Geiger <span dir=3D"ltr">&lt;<a href=3D"mailto:doug.g=
eiger@bioradiation.net" target=3D"_blank">doug.geiger@bioradiation.net</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I&#39;=
ve attached a build_info.inc that I&#39;ve used in some of my image to the =
issue - comments welcome.<div>Currently I include a build timestamp, and th=
e names and version info on all the layers used in the build and put it in =
/etc/build</div><div><br></div><div>=C2=A0Doug</div></div><div class=3D"gma=
il_extra"><div><div class=3D"h5"><br><div class=3D"gmail_quote">On Fri, Sep=
 26, 2014 at 1:09 PM, Philip Balister <span dir=3D"ltr">&lt;<a href=3D"mail=
to:philip@balister.org" target=3D"_blank">philip@balister.org</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">I added <a href=3D"https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D6770" target=3D"_blank">https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D6770</a><br>
<br>
Sorry no patch yet :)<br>
<span><font color=3D"#888888"><br>
Philip<br>
</font></span><span><br>
On 09/10/2014 12:38 AM, Paul Eggleton wrote:<br>
&gt; On Tuesday 09 September 2014 15:03:39 Philip Balister wrote:<br>
&gt;&gt; On 09/08/2014 07:08 PM, Leo Schwab wrote:<br>
&gt;&gt;&gt; We&#39;d like to have the system images we build to contain a =
build id, or<br>
&gt;&gt;&gt; at least a pile of information inside the image itself that le=
ts us<br>
&gt;&gt;&gt; identify which build is being run/tested.=C2=A0 Indeed, the in=
formation<br>
&gt;&gt;&gt; &#39;bitbake&#39; kicks out just as it starts a build is exact=
ly the sort of<br>
&gt;&gt;&gt; thing we&#39;d like sitting in a file in the image somewhere.<=
br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I turned on the &#39;buildhistory&#39; feature in conf/local.c=
onf which, among<br>
&gt;&gt;&gt; other things, generates a &#39;build-id&#39; file.=C2=A0 Howev=
er, it doesn&#39;t place<br>
&gt;&gt;&gt; it in the image, but in an entirely separate directory hierarc=
hy.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Surely this sort of thing has been done before.=C2=A0 Is there=
 an existing<br>
&gt;&gt;&gt; recipe I can use, or will I have to cobble together a custom r=
ecipe<br>
&gt;&gt;&gt; out of buildhistory_get_layers() or get_layers_branch_rev()?<b=
r>
&gt;&gt;<br>
&gt;&gt; I was asking the same question yesterday. I have a hacky solution =
for my<br>
&gt;&gt; immediate need, but I&#39;d like a long term solution along these =
lines also.<br>
&gt;&gt;<br>
&gt;&gt; Should we add this to bugzilla and see if we can get it done for 1=
.8? (I<br>
&gt;&gt; think I ahve the version number right)<br>
&gt;<br>
&gt; Yes, please add this to the bugzilla. This has also come up before sev=
eral<br>
&gt; times, we should just do it (and bonus points if someone wants to send=
 a patch<br>
&gt; ;).<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt;<br>
--<br>
</span><div><div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div></div><=
/div><span class=3D"HOEnZb"><font color=3D"#888888">-- <br>Doug Geiger<br><=
a href=3D"mailto:doug.geiger@bioradiation.net" target=3D"_blank">doug.geige=
r@bioradiation.net</a>
</font></span></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Doug Geiger<=
br><a href=3D"mailto:doug.geiger@bioradiation.net">doug.geiger@bioradiation=
.net</a>
</div>

--001a11c13204c039520503fba7e9--
