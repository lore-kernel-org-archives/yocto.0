Return-Path: <twoerner@gmail.com>
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3087E00499
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 13:27:41 -0700 (PDT)
Received: by mail-wg0-f49.google.com with SMTP id e11so6428159wgh.16
	for <yocto@yoctoproject.org>; Mon, 08 Apr 2013 13:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=z7GQFCmYV6cI9QJPbzI7xtOJ/D7KXRxJpiUkzCmJy6w=;
	b=N9+kaTN07aXRVW6KqaPkqur3GFmolM1x5bAjSLFkJvmnNNH8EXHpcEEiIw4vW46+C0
	sBxIUlqxEwq3LdJh8b6hZVQzTUoNoDz2+4tjBgeyMUIyTB0p0nEQyL3WEC3w1fgGBfjZ
	iZVvWvX5e6tfIsB8K9cbqvv4cZ5hNTiiAYbhRtsPcs5V3bp0U/q43oiqFpwyt8X3lCLr
	WUC21iAwynmBjeTSIDv4a66U9miva7f7006MRetmZAgDrHmN1ON+9+7y2bZM0vbuJ+XD
	5+VvnPKy3nK7THi1aKxx5EnxwpWxTc8XRQaCMHEJOLY7sNvUy+umTMCHWA5u+spkw0AD
	F2Aw==
MIME-Version: 1.0
X-Received: by 10.180.97.132 with SMTP id ea4mr15271746wib.23.1365452860932;
	Mon, 08 Apr 2013 13:27:40 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Mon, 8 Apr 2013 13:27:40 -0700 (PDT)
In-Reply-To: <000301ce3185$ab049a20$010dce60$@annabooks.com>
References: <36ED13F3654AE54CA763E6821D93A571104C91C9@szxeml534-mbx.china.huawei.com>
	<000301ce3185$ab049a20$010dce60$@annabooks.com>
Date: Mon, 8 Apr 2013 16:27:40 -0400
Message-ID: <CAHUNapRQ+hWo7P2eXUYNof=MsqJVDRY2HE4KV8-=dOeUro=scQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Sean Liming <sean.liming@annabooks.com>
Cc: Sanil kumar <sanil.kumar@huawei.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Post build configuration
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
X-List-Received-Date: Mon, 08 Apr 2013 20:27:42 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Apr 4, 2013 at 6:42 PM, Sean Liming <sean.liming@annabooks.com> wrote:
> Why post-build instead of pre-build?

The idea is that you have one build, and you are manufacturing 5000 devices.

So you take this one build and load it on each of your identical
devices which you then sell to your customers. But if each device you
sell is supposed to have a unique piece of configuration information,
you don't want to have to create 5000 builds, one for each device, do
you? In other words, this unique data shouldn't be part of the build,
you wouldn't want to have to start a new build just because you want
to change this unique data?

Ideally you would create one build. Then, just before loading this
build onto a given device, you do something to set this unique piece
of information (i.e. post-build) for this one device, then you repeat
for the remaining 4999 devices.

The assumption here is that builds are "expensive" (i.e. slow) while
post-build configuration would be "cheap" (i.e. quick, easy, fast).

