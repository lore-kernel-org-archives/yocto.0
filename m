Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1491BE009E5; Thu, 14 May 2015 08:30:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 108CFE009BB
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 08:30:10 -0700 (PDT)
Received: by qgfi89 with SMTP id i89so39237987qgf.1
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 08:30:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=umoR9Y+wajH3drUSvLMQCtV6HExCUWf18VlEwnBH+Eg=;
	b=jBv8ypwcnpOZ3Ju9KgTH/sf1XxQSgg17inCTL2bQc95xuB6O9suV0fH+S0fjYO+KBe
	punEuAqcJSjVS5LNM5WQ60dbhdAma0GTRZLKUVQcHi34zd02B0/W46ncveAHDAzTLeuc
	M2z4NXRLh6hfztlKruoRsZ7AQGB4K4mVVq7BtgiLHQx+9JHz17SmbruXi6Iqr5qMhDqo
	RGPjrTb1llpNzacqc4H0PfwAakHYredRQD/EAvdm0cx5rUb7AiL2Ns5eXVn5Chw9eAIr
	ra/hnvB8ez/V9FfKOEtUTgB+87wfHdhOZDQdhQSR369rAnZKxMT3eKYlePORTp4iJoQm
	JgMw==
X-Gm-Message-State: ALoCoQnNptRmjximeTxlLzfSAe0yI78uobcJ2OL03R/6jZX06EBn5R473Mj/tvljtJFAg32kufHn
X-Received: by 10.140.235.77 with SMTP id g74mr6562299qhc.64.1431617410171;
	Thu, 14 May 2015 08:30:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Thu, 14 May 2015 08:29:49 -0700 (PDT)
In-Reply-To: <5554BED8.2090607@mlbassoc.com>
References: <5554ADDE.7030508@mlbassoc.com>
	<CAJTo0LZZsuEQfizOctX5VnK5KiCJ9iyyuTPUxtum_DpYoqmsWA@mail.gmail.com>
	<5554B152.8030401@mlbassoc.com>
	<CAJTo0Lai_StnhatYDa8tZvjt8jKs-EGnYgX7KvPwCOzk-1D6kQ@mail.gmail.com>
	<5554BED8.2090607@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 May 2015 16:29:49 +0100
Message-ID: <CAJTo0LadZdQAtCD=REUBjVbwHahnGAi1nLJMiCjZbNKzqYLECA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gtk-play issues
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
X-List-Received-Date: Thu, 14 May 2015 15:30:20 -0000
Content-Type: multipart/alternative; boundary=001a11354a00304e9e05160c6712

--001a11354a00304e9e05160c6712
Content-Type: text/plain; charset=UTF-8

On 14 May 2015 at 16:27, Gary Thomas <gary@mlbassoc.com> wrote:

> Interesting - the version in OE-core is 84 revisions behind the
> master/HEAD.
> Should I bother debugging what's in OE-core or see what's up with the
> latest
> code?
>
>
Try updating to the latest commit (and send the patch...).


> If you want to know what elements get dynamically created then I believe
>> turning on debug (see the packageconfig) will let you write out dot files
>> for each stage of the pipeline.
>>
>
> I don't see any 'debug' PACKAGECONFIG settings, only GSTREAMER_1_DEBUG
> variable and that seems to only affect the core.
>

Erm yeah, that's the one.

Ross

--001a11354a00304e9e05160c6712
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 May 2015 at 16:27, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":2n" class=3D"a3s" style=
=3D"overflow:hidden">Interesting - the version in OE-core is 84 revisions b=
ehind the master/HEAD.<br>
Should I bother debugging what&#39;s in OE-core or see what&#39;s up with t=
he latest<br>
code?<span class=3D""><br>
<br></span></div></blockquote><div><br></div><div>Try updating to the lates=
t commit (and send the patch...).</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div id=3D":2n" class=3D"a3s" style=3D"overflow:hidden"><span=
 class=3D"">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">If you want to know what elements get dynami=
cally created then I believe turning on debug (see the packageconfig) will =
let you write out dot files for each stage of the pipeline.<br>
</blockquote>
<br></span>
I don&#39;t see any &#39;debug&#39; PACKAGECONFIG settings, only GSTREAMER_=
1_DEBUG<br>
variable and that seems to only affect the core.</div></blockquote></div><b=
r>Erm yeah, that&#39;s the one.</div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra">Ross</div></div>

--001a11354a00304e9e05160c6712--
