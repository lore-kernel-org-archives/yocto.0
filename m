Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 293F2E00A44; Mon, 26 Mar 2018 13:47:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 266FBE00857
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 13:47:32 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id j137-v6so12414385ita.1
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 13:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hgHGeXTCrcCVQsbYijqw3uqx0NHiwWpBvqApQNusm1g=;
	b=ZvIxwhD9M7V+xvWR2rq4zVCHQzUU6nBV7oofELluG/4dVxSI2s/Xx4eTJu1CYcWPiq
	wxHJLgMX8NkqaEWLHsm/1qWpo+0WSEccnLBqoNzpKz8sUfFJ9s72hJEtUj+FzrXOBwNL
	B4Pt6gX3jowcAS2u7PYjYKLf5fW+ZOyrGXUiPmyNPGK0N4Vc/U1D3NWZy70M5japDTKS
	XR2W9sqGaDnpA1fospN7d1euBO6kshouzlYmZzWnkxkg3+Ajogfo5Oa6Pz8kh6o6k6cz
	ywamioiMLIbxiq7cPuq2KWNJ8QuEKk4R2+OdykjleMu5YEpcrbjnJ8UiEChHmwFeYrP4
	whyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hgHGeXTCrcCVQsbYijqw3uqx0NHiwWpBvqApQNusm1g=;
	b=b0XJEVOtPAiFJ6M3APZTNFz/nMuGdZtOSaOj1GR4xctWZdxr8KHoJJzUvY5hsJIU3g
	1OR1eZC22TfJKg2+9RXEowv3dwty5vQBBalSWnA+3jV6eaFwm1BJK6tUH646vVHgvqYD
	jGf3q2dy0RPyHBj03t4lC21HZnOZgtRdiIq57soZycjXsT7/M3LpxRj8hF2CRb1Ce1VW
	EtJSBDl79Lzx7w5v6JFXMkNoJoltfMs3UOCXRKjtHCRvV4I4sVcg4NaKldSINQJda6kH
	SG8LEsMNuEFOowk2er7x6lUZyp41BdIOcMWbzMWirdWRgHov1Th8B9iDmw1QKvNGf0VU
	smRA==
X-Gm-Message-State: AElRT7FYVNVxYO8IktYoTUAgWmFJN9s8IQUi4qVOWvIkbt8Q9K6BgLXL
	DTns+OwrsUm7Kl7Gi3I3NXmgoqbo03OyCCdJVd7tag==
X-Google-Smtp-Source: AIpwx480ekj8+8/nM06a1tB3OhlQYOmthvF1h7Bt2pvURCaI6ZI2EFL6Vv6eaD+QSA9lUaxH8MxuYwyva1UgLqxwrog=
X-Received: by 2002:a24:2f49:: with SMTP id
	j70-v6mr8007853itj.127.1522097251616; 
	Mon, 26 Mar 2018 13:47:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 26 Mar 2018 13:47:11 -0700 (PDT)
In-Reply-To: <a4c194cc-78bc-08c3-491b-3130d7d3d019@emagii.com>
References: <a4c194cc-78bc-08c3-491b-3130d7d3d019@emagii.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 26 Mar 2018 21:47:11 +0100
Message-ID: <CAJTo0LYdof+yo+92aB3SMv-r-1eTLdFegNFJhBS5gywuPmta_Q@mail.gmail.com>
To: Ulf Samuelsson <yocto@emagii.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: How to add a module to python-native
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
X-List-Received-Date: Mon, 26 Mar 2018 20:47:34 -0000
Content-Type: text/plain; charset="UTF-8"

You'll need to run $bindir_native/python/python, we isolate the native
Python from the host python so you need to invoke the native one
explicitly.  In a recipe you can just do inherit pythonnative, but
don't do that in a class which every recipe is inheriting!

Ross

On 26 March 2018 at 21:01, Ulf Samuelsson <yocto@emagii.com> wrote:
> Need some advice on how to extend python-native with a python-2.7 module.
>
> I am planning to upload the result of cve-check to our JIRA server.
> I wrote a python application which reads the CVE manifest,
> downloads the contents of a JIRA project and if a CVE issue
> is not present in the database, it will create new issues.
>
> The python application is using the python-restkit module, which has all the
> functionality I need, so I can call <script> -f <manifest>
> and the JIRA will be updated.
>
> Would like to integrate this with bitbake using a bbclass.
>
> The class will be inherited in local.conf, and will check
> if the recipe is an image, and if so, it will call a task
> which executes right after the manifest is created and calls
> the python script.
>
> do_cve_update_jira () {
>     <call python scripts>
> }
>
> python-native does not build python-restkit, so I have
> created a recipe python-restkit which bbextends native.
>
> do_cve_update_jira[depends] = "python-restkit-native"
>
> This seems to ensure that the python-restkit is built and
> in the x86 sysroot I have /usr/lib/python-2.7/sitepackages/restkit.
>
> Still, when the python script is called, "import restkit" fails.
>
> Would like to understand how to make sure that python-restkit-native
> is always available to a recipe.
>
>
> I guess, I could make each image somehow depend on python-restkit native,
> but it would be better if it was always available to a recipe.
>
> Would appreciate some advice here.
>
> python-restkit is unfortunately only available for python2, not for python3.
> Any advice on a good replacement?
>
>
> Best Regards.
> Ulf Samuelsson
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

