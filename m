Return-Path: <jfdavis@anuvainnovations.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1584BE009E5; Fri, 31 Jul 2015 07:09:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-yk0-f177.google.com (mail-yk0-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0C39E009E5
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 07:09:19 -0700 (PDT)
Received: by ykdu72 with SMTP id u72so59912318ykd.2
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 07:09:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=E3vQj0bu8kTzUeU8903Pf2I7tG05x2KTj+CGt6qdSG8=;
	b=jxwGK7mfybv1KYOe+ckQuZIKQqDmccKWqa2wWFFiWTD5wccByGrYVeQXilhkmlOQGP
	FItQrdOeWtL3CRp96VtYKWmNjrVpgNcgQzfSwjXlmckfeCGNM7+Pj3dREn1CAxqc2Tdb
	LQXdMW8DxbYTkzTXM3eyqVtnVRl4QlK8zOy6Eb7cLbRCNk6GFBds3njFXKUblH1NY+4t
	TVzFQMuvg4ZwthW5yxf5Ehloz/a2fClXd7ib3rVQ9+yOL69WtsRWmbc6p+vd+SthPd6g
	vrOotfxsf9s54ttmps04IuqI5jyDTXh9+wQgSix8MuHR+kbMYIT+XW7FdmzB7GLHfalr
	s9AQ==
X-Gm-Message-State: ALoCoQmObciSUYiNMV0yNpf6E3152Nyn75dozzPFLrFReeBuh+xbD33QGLRdL+YhRenpuQcyMGGw
MIME-Version: 1.0
X-Received: by 10.170.70.66 with SMTP id m63mr3392589ykm.72.1438351758680;
	Fri, 31 Jul 2015 07:09:18 -0700 (PDT)
Received: by 10.37.44.137 with HTTP; Fri, 31 Jul 2015 07:09:18 -0700 (PDT)
Received: by 10.37.44.137 with HTTP; Fri, 31 Jul 2015 07:09:18 -0700 (PDT)
In-Reply-To: <87vbd0xxhj.fsf@email.parenteses.org>
References: <87vbd0xxhj.fsf@email.parenteses.org>
Date: Fri, 31 Jul 2015 10:09:18 -0400
Message-ID: <CAPTvctUQOCU_5v7jOBqSpZpOs_BCGL=5aqijGiSuQOWGRO3weg@mail.gmail.com>
From: John Davis <jfdavis@anuvainnovations.com>
To: Mario Domenech Goulart <mario@ossystems.com.br>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java] oracle-jse-jre fetch issue
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
X-List-Received-Date: Fri, 31 Jul 2015 14:09:25 -0000
Content-Type: multipart/alternative; boundary=001a1139cf14a396cf051c2c5d2b

--001a1139cf14a396cf051c2c5d2b
Content-Type: text/plain; charset=UTF-8

I have the same error.  Im interested if you find a work around.
On Jul 31, 2015 9:34 AM, "Mario Domenech Goulart" <mario@ossystems.com.br>
wrote:

> Hi,
>
> I started a build of oracle-jse-jre with an empty $DL_DIR and noticed
> do_fetch fails due to checksum mismatch.
>
> The downloaded file
>
> (ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz_bad-checksum_b72400960629e7403c4b579dada2a804)
> is actually an HTML file which contains a page indicating a login
> failure.
>
> Is this a known issue?
>
> Best wishes.
> Mario
> --
> http://www.ossystems.com.br
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1139cf14a396cf051c2c5d2b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I have the same error.=C2=A0 Im interested if you find a wor=
k around.</p>
<div class=3D"gmail_quote">On Jul 31, 2015 9:34 AM, &quot;Mario Domenech Go=
ulart&quot; &lt;<a href=3D"mailto:mario@ossystems.com.br">mario@ossystems.c=
om.br</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>Hi,<br>
<br>
I started a build of oracle-jse-jre with an empty $DL_DIR and noticed<br>
do_fetch fails due to checksum mismatch.<br>
<br>
The downloaded file<br>
(ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz_ba=
d-checksum_b72400960629e7403c4b579dada2a804)<br>
is actually an HTML file which contains a page indicating a login<br>
failure.<br>
<br>
Is this a known issue?<br>
<br>
Best wishes.<br>
Mario<br>
--<br>
<a href=3D"http://www.ossystems.com.br" rel=3D"noreferrer" target=3D"_blank=
">http://www.ossystems.com.br</a><br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a1139cf14a396cf051c2c5d2b--
