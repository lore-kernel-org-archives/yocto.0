Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62735E00D57; Thu,  9 Jun 2016 10:35:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8110E00D4F
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 10:35:42 -0700 (PDT)
Received: by mail-qg0-f48.google.com with SMTP id p34so24123556qgp.1
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2016 10:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hm2pwrRh/uogm/KN0CLcQ+SEcnaa4j0U8cV0JUj6YXA=;
	b=e7NtcoVuyIq/b5NuHCOExVtBcjHsYJVdSkIZmTIue3pmYAwmisPePhu+hL8/TZtonD
	93f44bauyqxv+fSN6roZIx3at3Tpaxa3FIQaVmX4pmxygnh63Dkb0uVFTRgDRX1AkHOT
	H/d8dseEalH15ybDSzdd1H1osGkhSFwS9js2BRFXEndrJqz7apULJ56AAERW1J4RvMJy
	G0Nj0Errc6PNKFaljrOfxVJRAHoyKRJ6/UyOFtmZQX5Ky0tdCxq3DqrHJ+VggA/fVKAV
	6EMd0ZUEl3XLTNamGC7p85VARw9lVYWwqVxuuUoFG2K6M964lWL4FCI7EF1uI64UgHXT
	MuIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hm2pwrRh/uogm/KN0CLcQ+SEcnaa4j0U8cV0JUj6YXA=;
	b=Wf+cusQ0bFAR0U8ADP7Qv/KsymCo7NoPZbkbyhk2k1JUXWR5ON6iQWMCMTnQaa4J7M
	7ptfBaRDw5qi54Ek6HzvaqhEq5Y8mYMYrnGSyvTDTPE334Ug+N+rVBMiowoh/iRm78Y+
	ntA3RG2ZdsUC5aXb2Eul90sTje1xDn863BCQiga+BR9cPW7GsOZLEN3wrcuzvUyQMVYD
	TTvNeddJIVVPxh4U0aGaHXOJenauTaaNw2XM/EP53KGoMKODq1E2T8/Kv0Sl3ocVXpCO
	eS6cfTTVAnuXWzur6/MDEmx9B7pHMsBV++MM3vW8D2F/UlaTlJrycf6M+RrzLb4h1fOA
	9PpQ==
X-Gm-Message-State: ALyK8tKkGyzB4KEun0xnqOF7yYtJrhZp2I3En67VmtAbt13Yj3aQMw9p4plcUykn8z6AjVjwKKmwLwK80RbOig==
X-Received: by 10.140.156.149 with SMTP id c143mr11552075qhc.58.1465493741854; 
	Thu, 09 Jun 2016 10:35:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.35 with HTTP; Thu, 9 Jun 2016 10:35:41 -0700 (PDT)
In-Reply-To: <CABcZANnBsAnTVyRiF6rWTJMRZQBaLEXUS4TKc6dZfJGTO3-1jA@mail.gmail.com>
References: <CAGMdoFnEYZ_qPL4=zem10xHfogbcVRB+Zo9yZdWium0OwvXYsw@mail.gmail.com>
	<CAJTo0LazbRgW=xxF5cHMv0LtvUUxh7fjh8WQPoTOc7STtWpzfg@mail.gmail.com>
	<CABcZANnBsAnTVyRiF6rWTJMRZQBaLEXUS4TKc6dZfJGTO3-1jA@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Thu, 9 Jun 2016 10:35:41 -0700
Message-ID: <CAGMdoFnJ0xWy6U+0=jhdk4hUD4mCGM-RnTbwQ3F0iKP23DGFqQ@mail.gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python module from git repo recipe
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
X-List-Received-Date: Thu, 09 Jun 2016 17:35:45 -0000
Content-Type: text/plain; charset=UTF-8

Thanks all!  Was having a fit trying to get it to work until
Christopher's advice to set S to ${WORKDIR}/git.

On Thu, Jun 9, 2016 at 9:59 AM, Christopher Larson <clarson@kergoth.com> wrote:
>
> On Thu, Jun 9, 2016 at 9:03 AM, Burton, Ross <ross.burton@intel.com> wrote:
>>
>> On 9 June 2016 at 16:58, Edward Wingate <edwingate8@gmail.com> wrote:
>>>
>>> Does anyone have an example of a recipe that installs a python module
>>> from a git repo?  There is a python module that is not regularly
>>> updated on PyPI, but its git repo is up to date.  All the examples of
>>> python module recipes I can find uses PyPI:
>>
>>
>> Just change the SRC_URI to a git URI, that's all you need to do.
>
>
> And S to ${WORKDIR}/git, set SRCREV, and depending on whether you're
> tracking a branch or a tag, add SRCPV to PV :)
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics

