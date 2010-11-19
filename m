Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 33DFA4C80A74
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 02:55:30 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 0451F1660174; Fri, 19 Nov 2010 01:55:30 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id DA4C8166015B;
	Fri, 19 Nov 2010 01:55:28 -0700 (MST)
Message-ID: <4CE63B80.30802@mlbassoc.com>
Date: Fri, 19 Nov 2010 01:55:28 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <AANLkTim9rqmdOZf2bHwuqbkJRMAnWP4sFj11S1LPtUbG@mail.gmail.com>
In-Reply-To: <AANLkTim9rqmdOZf2bHwuqbkJRMAnWP4sFj11S1LPtUbG@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: inc files in recipes
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
X-List-Received-Date: Fri, 19 Nov 2010 08:55:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2010 01:44 AM, Frans Meulenbroeks wrote:
> Dear all,
>
> Peeking at flex I was wondering whether we should try to avoid using
> .inc files in recipes especially if there is only one recipe.
>
> flex has:
> frans@frans-desktop:~/yocto/poky-laverne-4.0$ ls meta/recipes-devtools/flex
> flex_2.5.35.bb	flex.inc
>
> Here the inc file could be merged into the bb file.
> This has the advantage of having only a single file, so it is slightly
> easier if you want to read or maintain the recipe.
>
> For recipes with multiple versions (e.g. tar) it might be useful to
> have inc files. It is really a tradeoff between easy access/reading
> and maintainability here.
>
> (and I think for some packages (e.g. gcc) the inc file is actually very useful!)

The fact that there is only one recipe using a particular .inc is (I believe)
a Poky/Yocto design practice.  Once a given recipe is known to work and cause
no other dependencies or regressions, older versions are purged.  This is how
Poky can build a very useful embedded system with only ~1000 recipes, whereas
OE has terrible bloat (IMO) of nearly 8000!

The practice of using a well-crafted .inc file should make it easier to keep
up with the upstream changes.  Often, moving to a new version is as simple as
creating a new recipe with the appropriate PN and you're done.  Very little
duplication of effort, code or rules.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

