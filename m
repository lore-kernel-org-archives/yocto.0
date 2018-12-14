Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A9F5E009B2; Fri, 14 Dec 2018 08:57:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.47 listed in list.dnswl.org]
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FBB1E003E1
	for <yocto@lists.yoctoproject.org>;
	Fri, 14 Dec 2018 08:57:04 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id w25so5980895otm.13
	for <yocto@lists.yoctoproject.org>;
	Fri, 14 Dec 2018 08:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=U8blPR7vmtrNfC1TYyqEwekto139KUESwFq23YXQXPs=;
	b=h3duLd98AbvEJZsy283CFD6zSdmXnw2pm8SgSeVYNFDnK1ssKzgnxxVpLq67ECQ2bE
	Mk1opodCkeEBQV5YIiWNmXrLvEcT3nZxtafzunAI4+PxicsNendaJtXJwqEkAttWYDdR
	rhSK4XRvVcQS1p051t9ghypieaSTeuDgo38AASYZlyJsCbei1CpMGysp6bTNdooZZsHb
	Fy94lCrVc2ofRSF0BYmxd1aQFv9ixq+f6zl0UZGdkAsDce0QFnoWWdw9rlgsc9NAj11c
	3WhXDJrAPdIjvEOmAF69dzSsdNFWqwMcjuGs88GWV93e6oWRwxa2i+o0LGLhk9dqSucM
	1lVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=U8blPR7vmtrNfC1TYyqEwekto139KUESwFq23YXQXPs=;
	b=t0TSj4eBc9D+hasFiQ4Nvotc5nlVdH02quR7LNY5hxaHKbavCXijvOj9gcF5uQ0+o9
	Ne+5MGD/tJeg6fbwxE2W5so3+gHFI068KJuJ2L92yPmuWkcPqtvbHEa/AMYVRvg/p0sY
	44XqvPZ2ZIwDlfWu6ew9+IBbnd3evJJl9ObY9o1A0WE/OZd4KVIiYwh69d9Zf8HGtk7G
	HvPlUTXP1rCP2YlV7Nx+QlvshYzh2miARcQ5Q1Y3svMGdnHXZ0AkoyL1la41nA98yvNs
	xtz3opvh4kz3YcTkiX5CrkAhHwYVZuUGsIvMb9qi0X1W+byJSyO58S+pX0StnqMl+rK5
	x1Eg==
X-Gm-Message-State: AA+aEWb4BOJ5azNPo0rz4MO5SFzhUdWcWsVAjnxgfjkP4ImGtEYbMTh4
	d0J0SigriFz8zr0wdCUbKp3KCepVbxuThRkkXlo=
X-Google-Smtp-Source: AFSGD/UkUcOKiyBn76HPPAsuHFZjVATumIRbvKObEXySNh7csiPMWgFg8JCJhDq4bFDUPphEszJoTEuBK+RzUyDz81Q=
X-Received: by 2002:a9d:4c88:: with SMTP id m8mr2669894otf.360.1544806623698; 
	Fri, 14 Dec 2018 08:57:03 -0800 (PST)
MIME-Version: 1.0
References: <20181214160747.4732-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20181214160747.4732-1-richard.purdie@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 14 Dec 2018 17:56:51 +0100
Message-ID: <CANNYZj8P-L1q2hF9V-HUqMEp-VUGyciNDPkx2d4fP+gx7zgCng@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][auh] upgradehelper: Replace do_checkpkg usage with direct tinfoil calls
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
X-List-Received-Date: Fri, 14 Dec 2018 16:57:05 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 14 Dec 2018 at 17:07, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> +        with bb.tinfoil.Tinfoil() as tinfoil:
> +            tinfoil.prepare(config_only=False)
> +            recipes = self.recipes
> +            if not recipes:
> +                recipes = tinfoil.all_recipe_files(variants=False)
> +
> +            for fn in recipes:
> +                try:
> +                    if fn.startswith("/"):
> +                        data = tinfoil.parse_recipe_file(fn)
> +                    else:
> +                        data = tinfoil.parse_recipe(fn)
> +                except bb.providers.NoProvider:
> +                    I(" No provider for %s" % fn)
> +                    continue
> +
> +                unreliable = data.getVar('UPSTREAM_CHECK_UNRELIABLE')
> +                if unreliable == "1":
> +                    I(" Skip package %s as upstream check unreliable" % pn)
> +                    continue
> +
> +                uv = oe.recipeutils.get_recipe_upstream_version(data)
> +
> +                pn = data.getVar('PN')
> +                cur_ver = uv['current_version']
> +
> +
> +                upstream_version_unknown = data.getVar('UPSTREAM_VERSION_UNKNOWN')
> +                if not uv['version']:
> +                    status = "UNKNOWN" if upstream_version_unknown else "UNKNOWN_BROKEN"
> +                else:
> +                    cmp = vercmp_string(uv['current_version'], uv['version'])
> +                    if cmp == -1:
> +                        status = "UPDATE" if not upstream_version_unknown else "KNOWN_BROKEN"
> +                    elif cmp == 0:
> +                        status = "MATCH" if not upstream_version_unknown else "KNOWN_BROKEN"
> +                    else:
> +                        status = "UNKNOWN" if upstream_version_unknown else "UNKNOWN_BROKEN"
> +

This part is generally useful, and should be placed somewhere in
lib/oe/recipeutils.py perhaps? I can imagine having a script (AUH
itself perhaps) that can use the data to print statistics or detect
broken upstream checks. Agree about issues with do_checkpkg  and
general awfulness of distrodata class :)

Alex

