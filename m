Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34245E011CC
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 08:33:00 -0800 (PST)
Received: by mail-ie0-f176.google.com with SMTP id 13so2185541iea.35
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 08:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=rpnQaGh6YqFavQ1tmzPDHrVZ1c7ZXHGGisnxJCsvWs8=;
	b=t++ZuVqMZEDW+VKJY5/OGk+w4Y694/qFhuxRxrt6Kb0edVupxBXEeNu85KKdbXoJyL
	a9MMudy8o9fM6xHuxjQ6fVsPvu0DdLhKXF1+5bWWoItF9HClLsc6sxsFHXIvNzn8bGBG
	85T1Ils8Z68W9GMiVUNHEkPNEKUuXKMzpYFDNPfKZCNX9hb6Y2PCQkDN0S56RECJJw3K
	WpNAOuATo84E8fFIVEsNkV9gLfnS3xdQacam1EHb1XDTJ+VRdc6dBoZjaOXkwvVRGFOi
	GrAWC0shC9Zj9sLqG06yICj6KFTy3PTqBgdRzn20atWQCrL/fN5aYH2qfg6e9ubjvSzz
	vsyA==
Received: by 10.42.75.6 with SMTP id y6mr1261427icj.30.1355329979848; Wed, 12
	Dec 2012 08:32:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.167.165 with HTTP; Wed, 12 Dec 2012 08:32:39 -0800 (PST)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC79C@ORSMSX101.amr.corp.intel.com>
References: <CANge7vV0M3t1r3e+=76+r7+_BwdaQfW2eOQ=AeLTXn5-R7XX-A@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC39E@ORSMSX101.amr.corp.intel.com>
	<CANge7vWRftA1-RgR4HYX58e744ZFR9at39NeTyqex_UXkZUxdg@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC6D6@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC79C@ORSMSX101.amr.corp.intel.com>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Wed, 12 Dec 2012 11:32:39 -0500
Message-ID: <CANge7vWPf-sqGH_sdoVHoLvnpK_wPXC_QBAkUG2dEvMUzz99UQ@mail.gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, 
	Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Disabling PREMIRRORS and upstream sources
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
X-List-Received-Date: Wed, 12 Dec 2012 16:33:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

>>Hi Jon,
>>
>>Thanks for the clarification on which manual release you were looking
>>at.  I am the technical writer for the project so hopefully someone from
>>the team will address the technical aspect of you issue.  If there is a
>>way to disable these within a specific recipe then I can get that
>>information into the documentation.
>>
>>Does anyone know if this is possible and how to do it?
>>
>>Scott
>
> I guess the easiest thing would be just to set PREMIRRORS and MIRRORS to
> "" in the recipe.
>
> Cheers,
> Paul
>
> Scott
>

Scott and Paul,

Thank you both very much for your time and help!

I confirmed this does indeed work.

Just to make sure I'm understanding this... so when I place PREMIRRORS = ""
in a recipe, I see that it doesn't affect the associated variables in other
recipes.

Is this because I'm inherently setting up PREMIRRORS_${PN}, which is
initialized with the PREMIRROR defaults (and what was appended and
prepended in the local.conf)?

I'm also guessing that touching PREMIRRORS and MIRRORS within recipes
is generally a bad practice. I'd be curious to hear if my use case
sounds totally
wacky, as I'm still very much getting up to speed on Yocto/OE and best
practices.


Many thanks,
Jon

