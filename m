Return-Path: <twoerner@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DA71E0027F
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2012 07:13:50 -0700 (PDT)
Received: by lagr15 with SMTP id r15so249483lag.35
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2012 07:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JTBDy9W4J93wEHS7CuqWPRtfM7FTjOYTircTdOlFRPs=;
	b=aI5iUL5GO9QAPpdlxNZsGLIp17ZHhHF+R35yNqjoCDDyMqmLE3f5Jt+Z3N4CVD3X0r
	8iOdpP6bYK6kuW80+fGeSDHZqb+BzGkXAyv+Fb8fx1E/3oe3+2QdYvxqC1MMhDpX8jz0
	fHzdJJTTDpmctmquRG1KpTtdRHqVtPhTLpdU4koHe/IcZ3jwqSkXJr4SBYqGPXOxDYCz
	rQbF1mHW1+9FjsWfdSFN3j7DgxqTI3QSXsJYizUapLANflOl3mYbfSpD2vK1GaCFrerM
	ZREMKfGfCzbeHNqu1UhCd8VzHL7lLKDG15tLDW67LwChB7BKjsxLLXsc0BsxHUuskoXH
	E4kA==
MIME-Version: 1.0
Received: by 10.152.132.233 with SMTP id ox9mr15869339lab.25.1344953629636;
	Tue, 14 Aug 2012 07:13:49 -0700 (PDT)
Received: by 10.112.21.9 with HTTP; Tue, 14 Aug 2012 07:13:49 -0700 (PDT)
In-Reply-To: <5029DBA4.5090500@windriver.com>
References: <1344909019-5708-1-git-send-email-twoerner@gmail.com>
	<5029DBA4.5090500@windriver.com>
Date: Tue, 14 Aug 2012 10:13:49 -0400
Message-ID: <CAHUNapRRLuwySgJBu2vGyqn8H3XypEsNBp8kurpJv8OBQCcWdA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH poky-extras] layer.conf: clarify comments
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
X-List-Received-Date: Tue, 14 Aug 2012 14:13:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Bruce,

On Tue, Aug 14, 2012 at 1:01 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> I grabbed this and pushed it to the poky-extras repo.

Awesome, thanks.

Any word on whether the other two can be applied as well? The one for
meta-intel and the one for the poky base?

Best regards,
    Trevor

