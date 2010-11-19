Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D61E4C80A74
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 03:42:31 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn6 with SMTP id 6so1571047iwn.35
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 01:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:content-type;
	bh=idcj+3YHHCNgp4UxzoXhlwqNTvWjiGdP790WSVn5Ks8=;
	b=n84IlorKB21uHHyns304JoHhSGXmbhDbDIxvOlartcl1PE4iDJrZfikfS6rbTkKjUk
	b9OdmrakNiT6ZFuE1Ay7wXpGEhiSRz6Pd/Ywi/mgXnk9Pxh631UxiEZYZUauPbWMJxPH
	KWCXXrDxTrHB7pd3rVPi8XzZR4o7AAkAxC6j4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=ttXSM2PNyzf37Wv8asXfh0TaDPhp13QKqQHalaQ1Hp4xvp28S7NhskTQvq09P71HwI
	L5RQ/6iX1dQK2hXBDRw0wGMBAZyEzIkHBCBPUhjltGuu20FpgzVvG978J8hbiKGi9YDb
	keOCZbAUhZOlI1ohCinFGg7ehz3b7zszWJM+k=
MIME-Version: 1.0
Received: by 10.231.15.136 with SMTP id k8mr1799836iba.51.1290159750946; Fri,
	19 Nov 2010 01:42:30 -0800 (PST)
Received: by 10.231.33.4 with HTTP; Fri, 19 Nov 2010 01:42:30 -0800 (PST)
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D3667EC0C@shsmsx502.ccr.corp.intel.com>
References: <AANLkTim9rqmdOZf2bHwuqbkJRMAnWP4sFj11S1LPtUbG@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D3667EC0C@shsmsx502.ccr.corp.intel.com>
Date: Fri, 19 Nov 2010 10:42:30 +0100
Message-ID: <AANLkTim+W1qVYXnbJ448oNmOhCGTU=e2UX33RZebcN=r@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 19 Nov 2010 09:42:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

2010/11/19 Tian, Kevin <kevin.tian@intel.com>:
>>From: Frans Meulenbroeks
>>Sent: Friday, November 19, 2010 4:45 PM
>>
>>Dear all,
>>
>>Peeking at flex I was wondering whether we should try to avoid using
>>.inc files in recipes especially if there is only one recipe.
>>
>>flex has:
>>frans@frans-desktop:~/yocto/poky-laverne-4.0$ ls meta/recipes-devtools/flex
>>flex_2.5.35.bb flex.inc
>
> I think most .inc come from historical reason when the 1st poky repo is
> created from OE side. After that Poky chooses to maintain only one version
> which results in the fact that some .inc exists for one recipe

Guess so.
>
>>
>>Here the inc file could be merged into the bb file.
>>This has the advantage of having only a single file, so it is slightly
>>easier if you want to read or maintain the recipe.
>
> One advantage of not doing so is to retrieve change history in git easily.
> Version change on .bb is a rename which in git is simply a remove and
> create, while with .inc you can easily track history. This also reduces the
> commit size.

If I am correct git mv does preserve history although the name change
makes it a little bit more difficult to track them.

Wrt commit size: I agree that the commit size is bigger.
If you want to minimize this you should maximize what goes into the inc.
Personally when it comes to choosing between readability, cleanness
etc and commit size, I go for the former.
>
>>
>>For recipes with multiple versions (e.g. tar) it might be useful to
>>have inc files. It is really a tradeoff between easy access/reading
>>and maintainability here.
>
> There's one case we actually suggest not using .inc for multiple versions:
> both GPLv2 and GPLv3 exist for one package. That way we can avoid potential
> contamination as much as possible.

If you want to avoid contamination as much as possible I would suggest
creating two different folders. They are two different beasts that you
want to maintain separately.

The same also holds if you want to keep two versions because they are
e.g. functionwise very different.
Sometimes this is already done (at least in OE, there we have e.g
libsigc++-1.2 and libsigc++-2.0 and apache and apache2 directories,
also sometimes there are differently named recipes (different PN) in
the same folder, e.g. bluez and bluez4)

Frans

