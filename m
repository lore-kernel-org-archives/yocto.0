Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C91EE00DA7; Wed, 27 Apr 2016 07:14:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D04EAE00DA2
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 07:14:45 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id f89so47414126ioi.0
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 07:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0AKGtBVtqR3pkkOk6pItJ+oSuQUF/yvvhmAxbAHKh5Q=;
	b=jSOplr8ImcgG0JJ0RiOH9/fGp74or3Upj3Rz8osBTevnLnok5oCpmsdAcUJEz0UISb
	Y8wIL9fg8eDiFQLJYUCAqTCitQvQGdS3QhnFNXX1e9jaXqIfnAoqAsPY57kPxEuAQQb6
	MXVg3ElVGsY5iqOObdr4LbckfCABYaB9OljUsHBiHCWpf7+/Nf4TZF4Vve6MWoayiwwO
	FnzpMRTBtK9Gi472ZypB4qRpL2ee6lnXkeof5xYNC/dJCNAP/JdZnDo/yBxFSh/G6UYW
	NxHTabeVIYkArtLHv27OkZ4Rfb7Ivt0se9dqXkeIW++c+uc38xnCrFVIaWu3leXAbwE9
	Ro9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0AKGtBVtqR3pkkOk6pItJ+oSuQUF/yvvhmAxbAHKh5Q=;
	b=NTBP5MqeKnGVw4FCmqUb4fLaw0pyp5z1TomknbR1HYTmBi1WKzNMIiyBOT/b4VehCJ
	OXP/wWBCmQI+PJUuYKf3u3yYLKEumVn/cEwLFDz6j118sqBcDBVbdCBHyhL5ynqtj9nX
	KzH21ZCirHlq4RJMtjzuy087mHITXNDbP6GGriAS9kDnD85E3r+8q1cBHvOU7QQk+aqS
	JovYglqxybrwY60vda8a9tIvcab+oHL+Xqn7k6VXWWgdOEM9evywBUlykXfitRaOy4sY
	tVVmIOPxlTruTkLM1R68H7P27e8Ool1J0z6/SyqZLdReiBkmdKwY16Q51U9M6C+AMvyf
	+I0w==
X-Gm-Message-State: AOPr4FXJTr9sbHAdc0PHZefHV1LlJn90qvGjClE1FOAOM2YLfTiRo3z0m5RrxoJFtSaw6PpXfp57EUiOqKxE+XGN
X-Received: by 10.107.179.136 with SMTP id c130mr10261313iof.99.1461766485066; 
	Wed, 27 Apr 2016 07:14:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Wed, 27 Apr 2016 07:14:25 -0700 (PDT)
In-Reply-To: <5720B8BF.6060000@visionweeding.com>
References: <5720A4B2.2060509@visionweeding.com>
	<5720AEE7.8050905@mlbassoc.com>
	<5720B8BF.6060000@visionweeding.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Apr 2016 15:14:25 +0100
Message-ID: <CAJTo0Lb-=zFi9AP6jkmCsHJmv5T2DYe-8C059HNKMufJYg2uEA@mail.gmail.com>
To: Lars Larsen <lars@visionweeding.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Manipulating code and Building in offline environment
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
X-List-Received-Date: Wed, 27 Apr 2016 14:14:50 -0000
Content-Type: multipart/alternative; boundary=001a1148578c165c9705317808f6

--001a1148578c165c9705317808f6
Content-Type: text/plain; charset=UTF-8

On 27 April 2016 at 14:03, Lars Larsen <lars@visionweeding.com> wrote:
>
> BRANCH ?="develop"
> SRC_URI =
 "git:///eserver/GIT/autodiscover/;branch=${BRANCH};;name=discover "
> SRCREV_discover= "${AUTOREV}"
> SRCREV_FORMAT= "discover"

This is likely the problem.

$(AUTOREV) means "go and get the latest revision every build", which is
incompatible with offline builds.  Set the SRCREV to a specific SHA and
then the mirror can contain the SHA that the recipe wants to build.

Ross

--001a1148578c165c9705317808f6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br>On 27 April 2016 at 14:03, =
Lars Larsen &lt;<a href=3D"mailto:lars@visionweeding.com">lars@visionweedin=
g.com</a>&gt; wrote:<br>&gt;<br>&gt; BRANCH ?=3D&quot;develop&quot;<br>&gt;=
 SRC_URI =3D =C2=A0&quot;git:///eserver/GIT/autodiscover/;branch=3D${BRANCH=
};;name=3Ddiscover &quot; <br>&gt;=C2=A0SRCREV_discover=3D &quot;${AUTOREV}=
&quot;<br>&gt; SRCREV_FORMAT=3D &quot;discover&quot;=C2=A0<br><br>This is l=
ikely the problem.</div><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">$(AUTOREV) means &quot;go and get the latest revision every bu=
ild&quot;, which is incompatible with offline builds.=C2=A0 Set the SRCREV =
to a specific SHA and then the mirror can contain the SHA that the recipe w=
ants to build.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">Ross</div></div>

--001a1148578c165c9705317808f6--
