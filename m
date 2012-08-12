Return-Path: <kergoth@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AAF7E01304
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 09:15:05 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1827681lag.35
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2012 09:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=2GlnwkjkyXXVJuvhnyzVQKrkWVrd0AYr4Y1R/fqmv38=;
	b=v79Vp2DPgVoUQlFtRBYPCIslrX0Xhyo+fDZMtZ+4npF+oiaZDzEqVl9ryXyABIWFm+
	j3ANVg7ezsHCFmh494hpOmQdoZKsYSZ+NTwQ/FodP57o6OqaRvEUtX/V+8OgrpchZI9g
	JdehHUKkPFVbEV1IUQIqbv02Kel6RplARmzKmewzJGr75At1N4inQTurJyHhhV/3+k3u
	XvGF3cq65AtWxotQflRzwk1Tu8IkLnHDHvzzgwOQJCnVWTaUPvDqXPsKeR7GPMwhKx1O
	/iJnS0GfBIbwqvSJmkQBwvwZyypNHwXTx2ouNwMaZEl761lr1pz102b9NPMhELZhu2cP
	Xnew==
Received: by 10.112.83.229 with SMTP id t5mr5165831lby.8.1344788104091; Sun,
	12 Aug 2012 09:15:04 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.5.104 with HTTP; Sun, 12 Aug 2012 09:14:43 -0700 (PDT)
In-Reply-To: <194A260C-67A5-4EE5-8F9F-D5DBFB38C2F1@gmail.com>
References: <194A260C-67A5-4EE5-8F9F-D5DBFB38C2F1@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sun, 12 Aug 2012 09:14:43 -0700
X-Google-Sender-Auth: LJZqeFPoCYdTApsrwtRtpP43bZU
Message-ID: <CABcZANkH8v44cc-ecnvOihGBe3v4BWKiosFvuCjAUwui014kzA@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Over-riding insane LDFLAGS check
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
X-List-Received-Date: Sun, 12 Aug 2012 16:15:06 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Aug 12, 2012 at 4:45 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>        Is there anyway I can over-ride the insane LDFLAGS check for
> GNU_HASH?

Remove it from ERROR_QA and (optionally) add it to WARN_QA instead. If
you're using an external toolchain, see what I did at
https://github.com/MentorEmbedded/meta-sourcery/blob/master/conf/distro/include/tcmode-external-sourcery.inc#L91-98
for this one.
-- 
Christopher Larson

