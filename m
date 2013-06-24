Return-Path: <btraynor@gmail.com>
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22386E01525
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 05:53:27 -0700 (PDT)
Received: by mail-wg0-f45.google.com with SMTP id j13so8460313wgh.24
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 05:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=wYXv6VtF062PJFLLjN8n2snKIWgyj+XhiFYZ4n0392U=;
	b=IcQvLSjzfA4T0D7l+9S9XmXMyV6zMGja5Z1oMcDCm5SmmPOPY88iuvnojqLEEJnF60
	xbCWVXYba59s9dLDsDBeUsSqEY4+WuzidAflRhZYXEadKXzuxaqKJBW4BV0/qp/L217x
	cWff5sMdZJZ3LpOJ2M/ZIRvyJWms237Qt7pwP4jx0Fc6nfjIkL8aAOBnAm4gDgQBptIN
	hdYM/f3ODcbQDITrNMOFYYkwc7YauehYyvpbArwd/94XxDiJ0mh4zsAXnDwNjLBp3r3k
	HKZ+7cmO9oVd5Md2OqOLh+tfdWZU9A2ai/SpioXLNNcxe3Z/olFEozAT8kHYSBIaRuP/
	cB5A==
X-Received: by 10.194.22.1 with SMTP id z1mr16806656wje.14.1372078406178; Mon,
	24 Jun 2013 05:53:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.16.69 with HTTP; Mon, 24 Jun 2013 05:52:46 -0700 (PDT)
In-Reply-To: <CA+gsK-orLA13kBxTSj-E451GQKKdy8L6hUHQxKQgFqg-VNiK8Q@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50C1A@ORSMSX101.amr.corp.intel.com>
	<CDE892AD.36CA0%david.c.stewart@intel.com>
	<000001ce6de8$70639de0$512ad9a0$@annabooks.com>
	<CALmOhg=h=j+uHiPdGShjZwtL97jsnhz1v6T4GRfcge0jJypTKQ@mail.gmail.com>
	<CA+gsK-orLA13kBxTSj-E451GQKKdy8L6hUHQxKQgFqg-VNiK8Q@mail.gmail.com>
From: Bill Traynor <btraynor@gmail.com>
Date: Mon, 24 Jun 2013 08:52:46 -0400
Message-ID: <CAN20qYr+n5ugpoPFSxjL=p1+aSh8TaDZXEbqBEXV=cuYNpJF_g@mail.gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail
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
X-List-Received-Date: Mon, 24 Jun 2013 12:53:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jun 24, 2013 at 1:41 AM, Rudolf Streif
<rstreif@linuxfoundation.org> wrote:
> Hi Trever et al:
>
>
>>
>> If I were writing a book about Yocto/OE,
>
>
> This is a project I am currently working on, a book about the Yocto Project.
> The goal is to enable readers to do practical projects with YP. As the
> subject matter for the project described in the book I have chosen a home
> automation project. Reason being, it interests me personally and it uses
> different devices such as a UI-less controller, remotes with touch screens
> etc.
>
> I have gotten a lot of feedback from the YP training class I have developed
> and been teaching for the Linux Foundation. I am putting this out here to
> solicit more feedback from the community on what you think a book on YP
> should include. For instance as an advanced topic I included a chapter on
> how to run YP on AWS EC2 and I will be adding Autobuilder to it too.
>
>>
>> in the first chapter I would
>> have the readers build their own filesystem/kernel from scratch (I
>> can't decide if I would also have them build their own cross-compiler
>> from scratch or if I'd cheat and let them use crosstool-NG).
>
>
> I thought about that too but I found it distracting. It's like "let me show
> you the hard way with crosstool-ng and buildroot and then I show you a
> better way with YP." What I am doing though is an intro into Bitbake: how to
> use just Bitbake to build something. That proved valuable during the
> training classes. It's like a HelloWorld (and I published that before on
> this mailing list) introducing the concepts of Bitbake with it's layers,
> recipes, syntax etc.
>

FWIW, I'm incorporating a HelloWorld chapter into the new BitBake
manual.  It builds on your post of the same that you made to the
mailing list.

>
> Cheers,
> Rudi
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

