Return-Path: <twoerner@gmail.com>
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8241DE0159D
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 10:30:42 -0800 (PST)
Received: by mail-ob0-f174.google.com with SMTP id 16so1544942obc.5
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 10:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=mryd6BDBmp9df4Ef1B5Aap5BXONsz/UoFKFfo7d+4lU=;
	b=ADN+/y5YUNYDxgGsdOMfNb2t6zL6G0z92O3n83eOMe9XK8el4jPZFTArtqWMOZu3mY
	wK2whbmmkuml6GmdrY53L/n2KSXV1rlnIZuJoFIehctv1kBAN7+K5MWEW0S3/+vP63r8
	rmSePZn65rf6kXEIyrxuAPLpgmpIl+EaEevbS27MFM0FGEXZzyUiZ+jXTgjwwocobgBn
	tZO0aI+4l7hJ2B7dxh99gIGxFPuwf3Bn6b3gcfbqN+83jvgiHhHpHTk56/iTMQcEB6JL
	xanomVTYOkbBFQycWgUGM1Vlrl9EJCI0VOnhIBuuCYgVM66QHT+mH5G3aUBX9g2puHDb
	Vkvw==
MIME-Version: 1.0
X-Received: by 10.60.22.169 with SMTP id e9mr2523900oef.70.1362767441909; Fri,
	08 Mar 2013 10:30:41 -0800 (PST)
Received: by 10.76.173.138 with HTTP; Fri, 8 Mar 2013 10:30:41 -0800 (PST)
In-Reply-To: <55CE8992-9DD2-4F6C-99A7-97CDE29B9A3F@gmail.com>
References: <CAHUNapRb8W=qiwysYo+iuBB6mBZxn88XEhXg8sx_=3tEOXonqg@mail.gmail.com>
	<55CE8992-9DD2-4F6C-99A7-97CDE29B9A3F@gmail.com>
Date: Fri, 8 Mar 2013 13:30:41 -0500
Message-ID: <CAHUNapRWzHDQBzCJPq8OCq-hHdoWsvR70OeSdJffiWEn-=CxCw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK-only build
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
X-List-Received-Date: Fri, 08 Mar 2013 18:30:42 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Khem,

Thanks for adding your thoughts; you were exactly who I was hoping
would have input to my question :-)

On Fri, Mar 8, 2013 at 3:59 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> Sometimes I like to work with a "sub-Linux" device, something that is
>> too small to run Linux, or a device on which, for whatever reason,
>> I've decided I don't want to run Linux.
>
> However adding a pure bare metal
> SDK generation is a whole different story and may be out of scope here
>
>> I've been wondering lately if, theoretically, it would be possible to
>> use yocto to create a development environment for such projects
>> (specifically an SDK).

I watched the video of your presentation a couple years ago at some
ELC(E?) where you discussed using Yocto to generate an SDK. That
presentation struck a chord with me because I know exactly how I would
use such an SDK. I knew, of course, of using Yocto to create a Linux
distribution, and I was aware of creating a -dev form of that
distribution for doing development on the target, but I wasn't aware
of the SDK option for putting together the -native programs, sysroot,
and cross-development tools for independent development for a given
distribution.

I recently started working with a Cortex-M4 based device. Knowing that
simply pushing my code to github wasn't going to help many people
unless I provided instructions on how to setup an environment to work
with the code and the device, I wrote a script that aims to easily
setup someone's environment to be the same as mine. Setting up an
environment involves generating cross-development tools, building a
set of native tools which are used with the device (for example some
sort of flash programmer or openOCD), and having a sysroot-like area
populated with libraries, linker scripts, and header files specific to
the device which the cross-development tools can find without
requiring any -L and -I options.

The whole time I was writing my script I couldn't help think to myself
how nice it would be to be able to write recipes instead of a script,
how nice it would be to make use of bitbake's fetchers, and the
ability to apply patches etc., and then have that all wrapped up into
a nice, self-extracting SDK! Why re-invent the wheel?

Somehow I can't help think this could/should be possible. I can
perform all the necessary steps by hand, but when I consider using
OE/Yocto I feel a bit overwhelmed. Maybe all I need is just bitbake?

