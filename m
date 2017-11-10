Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9C86E00D14; Fri, 10 Nov 2017 00:27:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F832E00C59
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 00:27:40 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id A8855260DB7
Message-ID: <1510302457.5010.2.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 10 Nov 2017 09:27:37 +0100
In-Reply-To: <CAJ2oMh+UWj9z5oKWQ-9KR4ktFXL-QcWyGg_5YL0dASQ0+jUt-g@mail.gmail.com>
References: <CAJ2oMh+UWj9z5oKWQ-9KR4ktFXL-QcWyGg_5YL0dASQ0+jUt-g@mail.gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Subject: Re: recipe name vs. package name
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
X-List-Received-Date: Fri, 10 Nov 2017 08:27:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Fri, 2017-11-10 at 10:16 +0200, Ran Shalit wrote:
> Hello,
> 
> I read somewhere that a recipe can contain more than one package and recipe name is not the same
> as package name.
> But in
> https://wiki.yoctoproject.org/wiki/Building_your_own_recipes_from_first_principles
> I see that package name (used in IMAGE_INSTALL_append) is actually the same as recipe name, and I
> also don't find inside recipe any mention of package name,
> 
> Can anyone help to understand where the package is actually named in recipes ?
> 

You can add more package in a recipe by appending new package name to PACKAGES in your recipe.

 https://www.yoctoproject.org/docs/2.4/mega-manual/mega-manual.html#var-PACKAGES

Then in order to install your new package, You have to make your image to depend on it.

$ grep -rn PACKAGES meta

will show you a lot of recipes implementing this mechanism.

> Thank you,
> Ran
-- 
Fabien

