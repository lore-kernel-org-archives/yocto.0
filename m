Return-Path: <ross.burton@intel.com>
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 268D9E00B93
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 05:27:35 -0700 (PDT)
Received: by mail-qg0-f44.google.com with SMTP id a108so2612991qge.17
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 05:27:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=KewBei+3M0AKDb95xK/z4j+qVa0Yn/v6XGNfaUQEGC4=;
	b=aBcF1PB4g1oKGJwOhuV2ahOwKX+MNd9xg6r5zDTZQMHLYyAT8MTQQhdjZYlE/cOkQU
	Rdpp+2SlZx7CdQY6jTwXvhZvZyYWwJRjFYsjHSALZfTPOfAqMgue4NriEHinfvcKIyR7
	n5Ycm9u+SvGh3UEnfOn1XZxd6QKs68q/ONbGuirGBv44ja5NToHu/a71IsipuqZ4EdPv
	3tbJYBgP9KTnZ8hoscQkRObkcbpW/gdbgmRbqZqB0SnNO5OcHsaWhdRHLQ1PGdQ9QGU2
	Ije/GDgOwf5MkD+hRvaU/FxZDdgamxDkcASodXBxttIcMszyZ+p9+gTWH5lekzMlbOG1
	o3Tw==
X-Gm-Message-State: ALoCoQkdrKb/rtWzjX73ISc2ODRqhnEDgeBL2+kn9n0O6mzvvw/CdORX9vpUehHLHWyzGTRXkwFo
X-Received: by 10.140.41.197 with SMTP id z63mr1522510qgz.102.1395923255136;
	Thu, 27 Mar 2014 05:27:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Thu, 27 Mar 2014 05:27:15 -0700 (PDT)
In-Reply-To: <5333BC31.1030405@vrt.com.au>
References: <5333BC31.1030405@vrt.com.au>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 27 Mar 2014 12:27:15 +0000
Message-ID: <CAJTo0LaHX3fFfdCkROuaj69SmA7LKAL79MinWtXRPUG-1rCZxw@mail.gmail.com>
To: Stuart Longland <stuartl@vrt.com.au>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: matchbox-terminal and function keys
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
X-List-Received-Date: Thu, 27 Mar 2014 12:27:37 -0000
Content-Type: text/plain; charset=UTF-8

On 27 March 2014 05:50, Stuart Longland <stuartl@vrt.com.au> wrote:
> The terminal reports itself as TERM=xterm.  When I do a `cat`, I observe
> that matchbox-terminal is reporting F1-F5 using VT100 terminal
> sequences, but F6-F10 using VT220 sequences.  If I set TERM=vt100, I get
> F1-F5 working, but unfortunately, I need F10 as well.
>
> So the terminal that matchbox-terminal emulates is neither a VT100 nor a
> VT220 (or the superset it claims to be: xterm), but a confused mix of
> the two.

Can you paste the output of cat to confirm the values you're seeing?
The xterm guide says VT100 for F1-F4 (as VT100 doesn't define F5
onwards) and VT220 for F5-F10 and that's what I'm seeing when I
attempt this (F10 specifically being ^[[21~).

Ross

