Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C03DE014BD
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 13:33:04 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id hm14so3695980wib.9
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 13:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=wjcOs0ELBYeatPYFolfUbw+LESgvN9YpMFEDRLayvL4=;
	b=DbOSq8KkjoOk7+fb5oDrKrOJUo3TkQ9AeV5LGpVBB2boXvoap+CQtH8/DojHS++yMl
	B/+re8LGnkNh/eM46OOIt4Ng5o3Yn36Fs4Vxx8fzA69LnMAGxKWykYY+HEiWjt9yoIoV
	us8FdJmfZe3vmJmcwnq0X6lDJqK/eqDFjQ/yPc4PqXaIY1SwRhgJzuwwAevf2Chwqoqb
	HuXQ5nWwYnYnL675v/EhNtk7JMiED392o9GUVGfsy8JqNPfqFBnWcwxyObTBRcbwRny4
	i7DXe6XFZ5BBHaX4TEeZTlo7QwORlwQcnXLDGGxpC+Ifsn4ckyoMey7DPssXgRgQ5afZ
	I/FA==
MIME-Version: 1.0
X-Received: by 10.180.39.207 with SMTP id r15mr31389wik.16.1364502783887; Thu,
	28 Mar 2013 13:33:03 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Thu, 28 Mar 2013 13:33:03 -0700 (PDT)
In-Reply-To: <5153A67F.9070702@windriver.com>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD>
	<20130307104051.GH32228@jama.dyndns-home.com>
	<96E98E10F7094D32B371FD84AFF0FFFC@PAULD>
	<20130307182933.GS32228@jama.dyndns-home.com>
	<50BB56BA2C44400C9B6A31B0C2641BD2@PAULD>
	<20130307224223.GU32228@jama.dyndns-home.com>
	<D5340F46DF5F458D9096EA823C3A9EAE@PAULD>
	<20130327090320.GA13837@ad.chargestorm.se>
	<2AE00AC2A89C48A38A01262D58FA692A@PAULD>
	<5153A67F.9070702@windriver.com>
Date: Thu, 28 Mar 2013 16:33:03 -0400
Message-ID: <CAHUNapSVECmuLk8gMhcMisMTLpjA1xbFaG7Q3Ro9edFKbNGiBg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	"Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Samba server?
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
X-List-Received-Date: Thu, 28 Mar 2013 20:33:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm kinda surprised Robert Day hasn't jumped in, I know he's got all
this straightened out :-)

On Wed, Mar 27, 2013 at 10:10 PM, ChenQi <Qi.Chen@windriver.com> wrote:
> In your case, you could add the following line to local.conf.
> IMAGE_INSTALL_append += "samba"

I thought this was not the generally accepted notation. I thought

    IMAGE_INSTALL_append = " samba"

(note the space before 'samba') was better. Having an _append bitbake
option and using += seems a bit redundant.

Sorry, Paul, for only noticing this thread now. I wrote a very quick
bunch of notes when I was going through this as well. Some of these
notes are probably out of date (they were "correct" at the time, but
trying to keep pace with Yocto is isn't easy!) but hopefully there's
something there that might help.

My notes are at:
https://github.com/twoerner/meta-trevor/blob/master/misc/notes

Specifically item #8 might be useful.

Robert Day wrote lots of notes which you can find starting here:
http://www.crashcourse.ca/wiki/index.php/Yocto_Project

Tim Bird too has written some good stuff:
http://elinux.org/Yocto_Project_Introduction

I'm sure there are others as well.

