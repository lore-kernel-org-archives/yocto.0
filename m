Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C1F0E0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 07:20:10 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkvi18 with SMTP id i18so802244bkv.35
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 07:20:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=sKFkvjTw45fs5s9o5goELeaOz0MthrPZY6+PI9Mrwyg=;
	b=gglhjknbLExoBFz9hIbjOxDOtpUuu8KAiJ3CMkLtG9rMl6dnU+FVjKCU3W9WWNtyzy
	t+/d0ZuKGvvOl8szatKY9zdLh6wN/8t5Ov0yhcnc1mx/y9FakKTDcaeWsgXDWhTbCC8M
	80/7NCgnXD/50eakdR2Sywo/2nWsVxDQp3r2o=
MIME-Version: 1.0
Received: by 10.204.146.79 with SMTP id g15mr9786561bkv.121.1326295208943;
	Wed, 11 Jan 2012 07:20:08 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Wed, 11 Jan 2012 07:20:08 -0800 (PST)
In-Reply-To: <4F0DA377.9090903@windriver.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DA377.9090903@windriver.com>
Date: Wed, 11 Jan 2012 10:20:08 -0500
Message-ID: <CAFZh4h_0R_vt94Twh_Pm=7ED7XRpQ_ddo_+FN30TnDBC8wae_A@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Wed, 11 Jan 2012 15:20:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 11, 2012 at 9:57 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> It will. I sent patches recently to make that the preferred version
> in the master branch. Cherry picking that change would probably
> be all you would need.
>
>
>> 2. =A0Is the example for setting up for kernel modification in the
>> development manual still valid for Edison?
>
>
> Should be.
>

Would I get that change if I just did a git pull or do I have to do
something else?  I did a git pull to update my Edison checkout last
night realizing that I hadn't done one in a while and then ran a new
clean build and still ran into the same problem.  After triple
checking my work I figured it was time to post.

Regards,

Brian

