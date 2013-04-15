Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3B59E01498
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 04:46:43 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id l13so864288wie.0
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 04:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=ccQgZYi+itSVBJLKkqGE/N1dmJICy3V8AL74TMsq/FI=;
	b=0Wltdc54h+E+n5oRpD5WsY9ib1t2OYwcLtZMIIixLqVtYMJtmEWpKStPgdj1iokRSn
	ETkRVzgUqj+q7+4a8W8o4x34n6NBZkih0WQeKgFt8XHlpp9kCb0S4hjDcP6ymlko6OqI
	x4/IIC4+iOtAT7qk5glXtGuy8K0KfXrOB4h3N2UWMGdUQgaIFxzr7viPLtZbhschtxkS
	j9CbKQ/70Rri2suQbzNcCRel2yYcbP8m2hCSGm66GtObMbJiZjQyK5EQjRLBUJQcTWEE
	l6RUtEehOS+QzYUP1kQoD7P0RhUacEbQ8Wo29iA94Qscz53zhI7akLSWRC74oSDZStxT
	Q28g==
MIME-Version: 1.0
X-Received: by 10.181.11.164 with SMTP id ej4mr11435404wid.29.1366026402323;
	Mon, 15 Apr 2013 04:46:42 -0700 (PDT)
Received: by 10.194.167.73 with HTTP; Mon, 15 Apr 2013 04:46:42 -0700 (PDT)
In-Reply-To: <CAPhnLPBKA7RmB5_KZ-m12O_ehR4BobYgB2qJYL1DPj071ouVYA@mail.gmail.com>
References: <CAPhnLPBKA7RmB5_KZ-m12O_ehR4BobYgB2qJYL1DPj071ouVYA@mail.gmail.com>
Date: Mon, 15 Apr 2013 07:46:42 -0400
Message-ID: <CAHUNapQBeYp_2-zDcOEU81VFoTtYmWaKEiiB8-9Z=_tXWV6rcg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 1.4_M5 released
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
X-List-Received-Date: Mon, 15 Apr 2013 11:46:44 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Apr 13, 2013 at 5:59 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> The fifth milestone for the upcoming Yocto Project 1.4 release is now
> available

If I want to get an idea of what's going to be in the next release,
dylan, which branch do I use: dylan or 1.4_M5?

When I use dylan I'm able to "bitbake world" for a qemux86 target just
fine; when I use 1.4_M5, alsa-tools fails (No package 'gtk+-2.0'
found) and openSUSE-12.3 isn't yet validated (i.e. it seems to be
quite a bit older).

Maybe I'm doing something wrong with git?

Best regards,
    Trevor

