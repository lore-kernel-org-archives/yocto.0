Return-Path: <twoerner@gmail.com>
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id C910EE002AB
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 08:56:08 -0800 (PST)
Received: by mail-wg0-f49.google.com with SMTP id 15so1588938wgd.28
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 08:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=D93UPH/2u7HMiuOGGUM55AMyDiIN68itebbtES585iI=;
	b=h4vQWok+HQ2mnD+Wzh9qWKBWjUhIApAGNJVuA15rxNTGJ3zltiH/PZ28TEFUUa6Vih
	VC27N3UcwlIclsGqfyY5LfUeO+VAyhOy2GZxv3Pdhe/r8rVf4wbHQPi+s8vPPue4ZdHk
	CN19hRjKRP1MbORpb1aBwoIl23aW3xME6KTXz6LN4ADV8VHED9UONlzK5K7pvAz5VmFY
	ZO6vXxxpWEV+lM2tzewQCjycx/Qs2RWOMfFjJ1bNN9GixNb0azYzuQoSq4nFh8fQS5L8
	Yn6SZx24EH7nAvs4zW/hiMSFuxcDgpbEu9RCe6iwXk/eEbe6JNKJ/CfGhO6Y5wCTtVEI
	f76g==
MIME-Version: 1.0
X-Received: by 10.180.104.10 with SMTP id ga10mr11945943wib.23.1362070566199; 
	Thu, 28 Feb 2013 08:56:06 -0800 (PST)
Received: by 10.194.45.100 with HTTP; Thu, 28 Feb 2013 08:56:06 -0800 (PST)
In-Reply-To: <12F9B0C37BAC49429468AA27112A5F5B3FB2FBF1@DB3PRD0510MB368.eurprd05.prod.outlook.com>
References: <12F9B0C37BAC49429468AA27112A5F5B3FB2FBF1@DB3PRD0510MB368.eurprd05.prod.outlook.com>
Date: Thu, 28 Feb 2013 11:56:06 -0500
Message-ID: <CAHUNapRdWVwnhe7je9FC496tEJb4xPTEBWn9U0ueZstnpik8zw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Tim O'Callaghan" <tocallaghan@meyn.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Flavors help.
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
X-List-Received-Date: Thu, 28 Feb 2013 16:56:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Feb 28, 2013 at 9:43 AM, Tim O'Callaghan <tocallaghan@meyn.com> wrote:
> I've been digging through the documentation, and dipping into the recipes, but have not been able to come up with a definitive approach to managing what I call different build flavors. I

I believe the functionality you're looking for is not (yet) part of
this build process. There has been talk regarding this issue on the
mailing list several times in the past. I believe the current thinking
is that some binary-post-processing tool might be an approach to
consider:

https://lists.yoctoproject.org/pipermail/yocto/2012-November/012847.html
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-July/026938.html

