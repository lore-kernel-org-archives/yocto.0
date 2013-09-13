Return-Path: <carlo.caione@gmail.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4FD9E01554
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 08:26:31 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id ht10so1063849vcb.10
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 08:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=DqhAu9/BYMmHeRooxSQv9GVMA/dCxF9z6j/72mzEeq0=;
	b=PwcbqULzaYFv5RiwZmW48je6x1fmB+5l4GGUAXhbNTSzWx9qLGZ3yBXJBw9XCssquc
	cAKOPqw3hFy2ssy+I/QSbA6oTV9TYtr5lY1GFbLt5oFJWK5AmSZBnB21gmhogue58GH/
	Z4qIemkZZaOJ975WBAMpd6+J55Y7UBHPih2RLTkq61Dunwt0AYmnqV0xeVA2fDcl+6Ui
	btdDiow8KG31fPoSd8uTdrvjmDZnsGJVT9ZPHLioo4EQTW82PprOPwpXc6/cAGOn6HxA
	qScmumPjd70oklwgfZfiLtWuQSTJ1+EBHaXnxe/ilQGTOb/YHS8Jg7peyg8THdvTaqTX
	kSJg==
MIME-Version: 1.0
X-Received: by 10.52.230.202 with SMTP id ta10mr550518vdc.41.1379085991047;
	Fri, 13 Sep 2013 08:26:31 -0700 (PDT)
Received: by 10.220.220.138 with HTTP; Fri, 13 Sep 2013 08:26:30 -0700 (PDT)
In-Reply-To: <CADkTA4N21uh1UGMU1ZeUuhkE-Z3wU-YTynyhb2eYR3PqiSgZHA@mail.gmail.com>
References: <CAOQ7t2b-UphcCwiQrbKqJmzjdGo=fyfQ7mh0UgWdeUTyUQEb=g@mail.gmail.com>
	<CADkTA4N21uh1UGMU1ZeUuhkE-Z3wU-YTynyhb2eYR3PqiSgZHA@mail.gmail.com>
Date: Fri, 13 Sep 2013 17:26:30 +0200
Message-ID: <CAOQ7t2abVKDp=e-zoxaXGcdOW66koPY+PFWDpSg5KDFM4qGJVw@mail.gmail.com>
From: Carlo Caione <carlo.caione@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: linux-yocto-custom error on do_validate_branches()
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
X-List-Received-Date: Fri, 13 Sep 2013 15:26:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Sep 9, 2013 at 4:12 AM, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
[cut]

> Your upstream. The one in ~/work/linux-stable isn't Linus's tree :){

Oooops :) thank you!

--
Carlo Caione

