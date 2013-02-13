Return-Path: <twoerner@gmail.com>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 893F6E006DE
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2013 05:12:31 -0800 (PST)
Received: by mail-ob0-f175.google.com with SMTP id uz6so1188846obc.6
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2013 05:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=vFowb7fO2bpiMqgGscmGhtVuG9YgjPA7tYyakLM15NA=;
	b=QzIQ3xUyH1E3p1xc3uiYlhvqsdzqeIy9tHBPeMsgM89ZaS0y9WpVVgz83oNGrO5Rhm
	HPVQWXmqashGDZZLa7M+6sic5sOW9LKgLK1qIKWL5U2eciwKe2cM5o84UJ69J4r0JmYf
	9Z3ITAHoqI0fB6CqcMn82GgtSZW2zbM2SsTLC0qurjiTEHD72pd/ZearxhZpZ2QRC0oT
	JIJKZUUxVZ+43LERuiKO/0cgeFEXaLrtSVXQ59gbN+OuUsYaNCxN2yUI0jFjE2c+5BJf
	/EAmw03nHPElATnwQP955VnEQiq8TZUKBaYvvjs5ipoiLC2u9SPCQIqTpJu71a+Xl5ij
	hCjA==
MIME-Version: 1.0
X-Received: by 10.182.146.13 with SMTP id sy13mr16264931obb.45.1360761150666; 
	Wed, 13 Feb 2013 05:12:30 -0800 (PST)
Received: by 10.76.75.36 with HTTP; Wed, 13 Feb 2013 05:12:30 -0800 (PST)
In-Reply-To: <511B663E.7010403@openwide.fr>
References: <CAHUNapSm1V6thRmYzNX-Z7PwohFUs=R6ruqiWYFCdhHtdMJ3cA@mail.gmail.com>
	<511B663E.7010403@openwide.fr>
Date: Wed, 13 Feb 2013 08:12:30 -0500
Message-ID: <CAHUNapTp1h=n9+Ojrru6Ypmb4uB4n=e_T84_ucDSADO8xqj2fA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Pierre Ficheux <pierre.ficheux@openwide.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: package list for image build
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
X-List-Received-Date: Wed, 13 Feb 2013 13:12:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Pierre,

On Wed, Feb 13, 2013 at 5:09 AM, Pierre Ficheux
<pierre.ficheux@openwide.fr> wrote:
> $ bitbake -g core-image-minimal
>
> result in pn-buildlist.


Thank you, that works great on master.

This must be new-ish, the bitbake from my gumstix build (HEAD at
846b7c, or roughly Oct 11, 2012) doesn't produce a pn-buildlist.

