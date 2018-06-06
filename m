Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D5B7E016A1; Wed,  6 Jun 2018 10:49:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26450E00DE3
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2018 10:49:37 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id q6-v6so7273343qtn.7
	for <yocto@yoctoproject.org>; Wed, 06 Jun 2018 10:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=7QSuHLxe0kPeGpFPRn/X51xd15R9+wfOVT+Mnljw+0c=;
	b=LW4v7lPuDt6DbOVYi7a+75GEWhWhSedTEJOVzgHNy3op+yDi1rLdSz+tTjrRdIagvj
	H5DdSdBI+fKptoJ2Mfb+3sYKQkCCHr4IEzsZBhXu+o6DJI2IuEMwbtzTCA1U1jGxuKNY
	gIXCdDeHA+qIn+Gc6O568aPgNQAk2i2pNnHeZdgTx64HjLtwnsSiYX7Jd48Zga19KTzu
	Ncerk/akqtDBXhnk5MgfednMSKSuckqiBeV0hG+sYAuVd6JNnY/c5bXeenuLSqyUBpZ2
	PY3i/mcJL+8mUDvsN6YzN3af67WRYHf+4RTv58l6YOQquxbGt01tu9mWNhSvw5sfaWW7
	7daw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=7QSuHLxe0kPeGpFPRn/X51xd15R9+wfOVT+Mnljw+0c=;
	b=ohnMH75oSZvNo4M0d4HZmVp9vTbRCv+ISPlySOZl69yRmp0RV2Cdn2S1zpt2tQ5L3q
	5HfQCGaMH8Q4PWCWqhVPgjaR4V6WRJySRqpoF1Zcn/IhiGck69dEYWJZqNcvZQp18bNl
	zQzfrukiwgpJzWBVRT5Ph7uQ5WEvt+7GWEj7kOSiFEVfkd8c5IUWYZdEpkZdCJLlTaOz
	jRv6Syhfg8c8I6rd0o7ZbANoAe6y/3g1RmRyvw9cTZEB8/K0kXkXqceH8Iva6OTVpRpZ
	DnSrdOT6OtC7YukzOfjhSM2BDomfTR9eiNQLETqS/p4P7mohpydGgmIboISFgOJZ7ged
	PoOg==
X-Gm-Message-State: APt69E1P+WJOoansxxeYNWmks9kDk5p7GyLiMU69Zqt0JvVbDv+J8NDL
	jTwyv4/Ay8MkpKnH2mdh26DX5vyW6BZP0YET1zw=
X-Google-Smtp-Source: ADUXVKJnKLvwNqtKy23R8FqGTluLRKlLM7G50UCzZdq+QhDcWFVN40Ca/CYG//PH0C0DQV3tVHFCYRW4wEM7DZLzqEY=
X-Received: by 2002:ac8:4407:: with SMTP id
	j7-v6mr3793470qtn.117.1528307377186; 
	Wed, 06 Jun 2018 10:49:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e486:0:0:0:0:0 with HTTP;
	Wed, 6 Jun 2018 10:49:06 -0700 (PDT)
In-Reply-To: <800E589716441541A37F6120DCDD24557A2D8296@IRSMSX101.ger.corp.intel.com>
References: <800E589716441541A37F6120DCDD24557A2D8296@IRSMSX101.ger.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 6 Jun 2018 10:49:06 -0700
Message-ID: <CAMKF1sq1n7nLFaCLQVmRmdSHjGair-J3mk3XGBK+4maLMKEAJA@mail.gmail.com>
To: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Gratitude
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
X-List-Received-Date: Wed, 06 Jun 2018 17:49:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jefro

you have been very helpful all along has been great working with you. Your
contributions have been significant for project, thanks for all your
contributions.
Small world I am sure I will see you around :)

-Khem

On Tue, Jun 5, 2018 at 11:42 PM, Osier-mixon, Jeffrey
<jeffrey.osier-mixon@intel.com> wrote:
> I have been the Yocto Project community manager for over 7 years now, and=
 have had the pleasure of knowing or conversing individually with several h=
undred of you. It is with mixed feelings that I must announce that I am ste=
pping down from my position as the YP community manager and the Advisory Bo=
ard chair after 7 years, as I am taking on a new role in my job.
>
> I am very proud of the progress that the project has made, growing from a=
 small set of build tools into an industry standard for building and workin=
g with embedded Linux-based operating systems, supporting upstream projects=
 including the Linux kernel, hosting projects like opkg, and inspiring many=
 very successful downstream projects, including AGL and OpenBMC among many =
others, and also supporting countless configurations of hardware among seve=
n different architectures. We have also seen the community of users grow fr=
om fewer than 1000 in 2010 to a large city-sized community, estimated in th=
e tens of thousands of developers.
>
> Please continue to participate, collaborate, and come together as a commu=
nity! The Yocto Project is a success because every one of you participates.
>
> Jeffrey "Jefro" Osier-Mixon, Intel Corporation
> Open Source Community Ecosystem Strategist
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

