Return-Path: <kergoth@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 444BCE0049A
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 10:51:55 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1558999lag.35
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 10:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=T0zyndCNPXpGN3cJiFrv1HdTqL+6LbOdu285sljRpME=;
	b=utw4gjr6WL5E3grU1qqzOFgJ7TNE+agLLyuPTHTZuWZCj9qmNVLFzaqIKH5cOOaNyj
	CP4JCvSjiI1+QMSDVTi6u63gpgbVyFMzrwatbBYCxX89MLFS835KHWpfpyt7A8HH2Q14
	9CwhsbwHvoyvStCUKsAq+vLjTgsjhNJiMviA/ewMIC27zSsoX6h4gSTffP8oUQ64VOvG
	vQk2kYf0ioI2lRolOcY+UjU9jP/pfZSRonK/q4bEHZfyVEnoNjUxeeslq0ooEAvJjgFu
	xcXkprgpxfwPg6k/EDk/hi/sgNMYo+D8agcA8dGDMqvS5Cz4GVvnXzjKiEd7Uv9qglzk
	OutA==
Received: by 10.152.46.49 with SMTP id s17mr6635814lam.17.1344707513808; Sat,
	11 Aug 2012 10:51:53 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.5.104 with HTTP; Sat, 11 Aug 2012 10:51:32 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1208111301170.5438@oneiric>
References: <alpine.DEB.2.02.1208111301170.5438@oneiric>
From: Chris Larson <clarson@kergoth.com>
Date: Sat, 11 Aug 2012 10:51:32 -0700
X-Google-Sender-Auth: XVPxMQX1bzqAc3QrAnJcBSlqmU0
Message-ID: <CABcZANmw1WJKkAUeZL3L=+NqJxTm1eTHMrQsJ44dBK_fwDen0Q@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: under what circumstances is BBCLASSEXTEND = "native" required in a recipe?
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
X-List-Received-Date: Sat, 11 Aug 2012 17:51:55 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Aug 11, 2012 at 10:03 AM, Robert P. J. Day
<rpjday@crashcourse.ca> wrote:
>   however, the "chrpath" command is not listed in bitbake as part of
> ASSUME_PROVIDED, and its recipe includes the line
>
>   BBCLASSEXTEND = "native"
>
> that's what's confusing -- if the QS guide demands that the user
> install "chrpath" manually, what is the subsequent value of its recipe
> dictating that it be natively buildable?

At a guess, it's possible that not all recipes that needed
chrpath-native had an explicit dependency on it, or similar. Your
question is specific to chrpath, not at all general to BBCLASSEXTEND.
Adding native to bbclassextend means that a -native version of the
recipe can be built. The question of why certain things are expected
on the host vs built from that recipe is an entirely different one.
-- 
Christopher Larson

